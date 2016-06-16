// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.SectionIndexer;
import android.widget.TextView;
import com.facebook.FacebookException;
import com.facebook.internal.ImageDownloader;
import com.facebook.internal.ImageRequest;
import com.facebook.internal.ImageResponse;
import com.facebook.model.GraphObject;
import java.net.URI;
import java.net.URISyntaxException;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

// Referenced classes of package com.facebook.widget:
//            GraphObjectCursor

class GraphObjectAdapter extends BaseAdapter
    implements SectionIndexer
{
    public static interface DataNeededListener
    {

        public abstract void onDataNeeded();
    }

    static interface Filter
    {

        public abstract boolean includeItem(Object obj);
    }

    private static interface ItemPicture
        extends GraphObject
    {

        public abstract ItemPictureData getData();
    }

    private static interface ItemPictureData
        extends GraphObject
    {

        public abstract String getUrl();
    }

    public static interface OnErrorListener
    {

        public abstract void onError(GraphObjectAdapter graphobjectadapter, FacebookException facebookexception);
    }

    public static class SectionAndItem
    {

        public GraphObject graphObject;
        public String sectionKey;

        public Type getType()
        {
            if (sectionKey == null)
            {
                return Type.ACTIVITY_CIRCLE;
            }
            if (graphObject == null)
            {
                return Type.SECTION_HEADER;
            } else
            {
                return Type.GRAPH_OBJECT;
            }
        }

        public SectionAndItem(String s, GraphObject graphobject)
        {
            sectionKey = s;
            graphObject = graphobject;
        }
    }

    public static final class SectionAndItem.Type extends Enum
    {

        private static final SectionAndItem.Type $VALUES[];
        public static final SectionAndItem.Type ACTIVITY_CIRCLE;
        public static final SectionAndItem.Type GRAPH_OBJECT;
        public static final SectionAndItem.Type SECTION_HEADER;

        public static SectionAndItem.Type valueOf(String s)
        {
            return (SectionAndItem.Type)Enum.valueOf(com/facebook/widget/GraphObjectAdapter$SectionAndItem$Type, s);
        }

        public static SectionAndItem.Type[] values()
        {
            return (SectionAndItem.Type[])$VALUES.clone();
        }

        static 
        {
            GRAPH_OBJECT = new SectionAndItem.Type("GRAPH_OBJECT", 0);
            SECTION_HEADER = new SectionAndItem.Type("SECTION_HEADER", 1);
            ACTIVITY_CIRCLE = new SectionAndItem.Type("ACTIVITY_CIRCLE", 2);
            $VALUES = (new SectionAndItem.Type[] {
                GRAPH_OBJECT, SECTION_HEADER, ACTIVITY_CIRCLE
            });
        }

        private SectionAndItem.Type(String s, int i)
        {
            super(s, i);
        }
    }


    static final boolean $assertionsDisabled;
    private static final int ACTIVITY_CIRCLE_VIEW_TYPE = 2;
    private static final int DISPLAY_SECTIONS_THRESHOLD = 1;
    private static final int GRAPH_OBJECT_VIEW_TYPE = 1;
    private static final int HEADER_VIEW_TYPE = 0;
    private static final String ID = "id";
    private static final int MAX_PREFETCHED_PICTURES = 20;
    private static final String NAME = "name";
    private static final String PICTURE = "picture";
    private Context context;
    private GraphObjectCursor cursor;
    private DataNeededListener dataNeededListener;
    private boolean displaySections;
    private Filter filter;
    private Map graphObjectsById;
    private Map graphObjectsBySection;
    private String groupByField;
    private final LayoutInflater inflater;
    private OnErrorListener onErrorListener;
    private final Map pendingRequests = new HashMap();
    private Map prefetchedPictureCache;
    private ArrayList prefetchedProfilePictureIds;
    private List sectionKeys;
    private boolean showCheckbox;
    private boolean showPicture;
    private List sortFields;

    public GraphObjectAdapter(Context context1)
    {
        sectionKeys = new ArrayList();
        graphObjectsBySection = new HashMap();
        graphObjectsById = new HashMap();
        prefetchedPictureCache = new HashMap();
        prefetchedProfilePictureIds = new ArrayList();
        context = context1;
        inflater = LayoutInflater.from(context1);
    }

    private void callOnErrorListener(Exception exception)
    {
        if (onErrorListener != null)
        {
            if (!(exception instanceof FacebookException))
            {
                exception = new FacebookException(exception);
            }
            onErrorListener.onError(this, (FacebookException)exception);
        }
    }

    private static int compareGraphObjects(GraphObject graphobject, GraphObject graphobject1, Collection collection, Collator collator)
    {
label0:
        {
            collection = collection.iterator();
            String s;
            String s1;
label1:
            do
            {
                int i;
                do
                {
                    if (!collection.hasNext())
                    {
                        break label0;
                    }
                    s1 = (String)collection.next();
                    s = (String)graphobject.getProperty(s1);
                    s1 = (String)graphobject1.getProperty(s1);
                    if (s == null || s1 == null)
                    {
                        continue label1;
                    }
                    i = collator.compare(s, s1);
                } while (i == 0);
                return i;
            } while (s == null && s1 == null);
            return s != null ? 1 : -1;
        }
        return 0;
    }

    private void downloadProfilePicture(final String profileId, URI uri, final ImageView imageView)
    {
        if (uri != null)
        {
            boolean flag;
            if (imageView == null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag || !uri.equals(imageView.getTag()))
            {
                if (!flag)
                {
                    imageView.setTag(profileId);
                    imageView.setImageResource(getDefaultPicture());
                }
                uri = (new com.facebook.internal.ImageRequest.Builder(context.getApplicationContext(), uri)).setCallerTag(this).setCallback(new _cls2()).build();
                pendingRequests.put(profileId, uri);
                ImageDownloader.downloadAsync(uri);
                return;
            }
        }
    }

    private View getActivityCircleView(View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = inflater.inflate(com.facebook.android.R.layout.com_facebook_picker_activity_circle_row, null);
        }
        ((ProgressBar)view.findViewById(com.facebook.android.R.id.com_facebook_picker_row_activity_circle)).setVisibility(0);
        return view;
    }

    private void processImageResponse(ImageResponse imageresponse, String s, ImageView imageview)
    {
        pendingRequests.remove(s);
        if (imageresponse.getError() != null)
        {
            callOnErrorListener(imageresponse.getError());
        }
        if (imageview == null)
        {
            if (imageresponse.getBitmap() != null)
            {
                if (prefetchedPictureCache.size() >= 20)
                {
                    imageview = (String)prefetchedProfilePictureIds.remove(0);
                    prefetchedPictureCache.remove(imageview);
                }
                prefetchedPictureCache.put(s, imageresponse);
            }
        } else
        if (s.equals(imageview.getTag()))
        {
            s = imageresponse.getError();
            android.graphics.Bitmap bitmap = imageresponse.getBitmap();
            if (s == null && bitmap != null)
            {
                imageview.setImageBitmap(bitmap);
                imageview.setTag(imageresponse.getRequest().getImageUri());
                return;
            }
        }
    }

    private void rebuildSections()
    {
        sectionKeys = new ArrayList();
        graphObjectsBySection = new HashMap();
        graphObjectsById = new HashMap();
        displaySections = false;
        if (cursor == null || cursor.getCount() == 0)
        {
            return;
        }
        cursor.moveToFirst();
        int i = 0;
        do
        {
            GraphObject graphobject = cursor.getGraphObject();
            if (filterIncludesItem(graphobject))
            {
                String s = getSectionKeyOfGraphObject(graphobject);
                if (!graphObjectsBySection.containsKey(s))
                {
                    sectionKeys.add(s);
                    graphObjectsBySection.put(s, new ArrayList());
                }
                ((List)graphObjectsBySection.get(s)).add(graphobject);
                graphObjectsById.put(getIdOfGraphObject(graphobject), graphobject);
                i++;
            }
        } while (cursor.moveToNext());
        if (sortFields != null)
        {
            final Collator collator = Collator.getInstance();
            for (Iterator iterator = graphObjectsBySection.values().iterator(); iterator.hasNext(); Collections.sort((ArrayList)iterator.next(), new _cls1())) { }
        }
        Collections.sort(sectionKeys, Collator.getInstance());
        boolean flag;
        if (sectionKeys.size() > 1 && i > 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        displaySections = flag;
    }

    private boolean shouldShowActivityCircleCell()
    {
        return cursor != null && cursor.areMoreObjectsAvailable() && dataNeededListener != null && !isEmpty();
    }

    public boolean areAllItemsEnabled()
    {
        return displaySections;
    }

    public boolean changeCursor(GraphObjectCursor graphobjectcursor)
    {
        if (cursor == graphobjectcursor)
        {
            return false;
        }
        if (cursor != null)
        {
            cursor.close();
        }
        cursor = graphobjectcursor;
        rebuildAndNotify();
        return true;
    }

    protected View createGraphObjectView(GraphObject graphobject)
    {
        graphobject = inflater.inflate(getGraphObjectRowLayoutId(graphobject), null);
        ViewStub viewstub = (ViewStub)graphobject.findViewById(com.facebook.android.R.id.com_facebook_picker_checkbox_stub);
        if (viewstub != null)
        {
            if (!getShowCheckbox())
            {
                viewstub.setVisibility(8);
            } else
            {
                updateCheckboxState((CheckBox)viewstub.inflate(), false);
            }
        }
        viewstub = (ViewStub)graphobject.findViewById(com.facebook.android.R.id.com_facebook_picker_profile_pic_stub);
        if (!getShowPicture())
        {
            viewstub.setVisibility(8);
            return graphobject;
        } else
        {
            ((ImageView)viewstub.inflate()).setVisibility(0);
            return graphobject;
        }
    }

    boolean filterIncludesItem(GraphObject graphobject)
    {
        return filter == null || filter.includeItem(graphobject);
    }

    public int getCount()
    {
        if (sectionKeys.size() == 0)
        {
            return 0;
        }
        Iterator iterator;
        int i;
        if (displaySections)
        {
            i = sectionKeys.size();
        } else
        {
            i = 0;
        }
        for (iterator = graphObjectsBySection.values().iterator(); iterator.hasNext();)
        {
            i = ((ArrayList)iterator.next()).size() + i;
        }

        if (shouldShowActivityCircleCell())
        {
            return i + 1;
        } else
        {
            return i;
        }
    }

    public GraphObjectCursor getCursor()
    {
        return cursor;
    }

    public DataNeededListener getDataNeededListener()
    {
        return dataNeededListener;
    }

    protected int getDefaultPicture()
    {
        return com.facebook.android.R.drawable.com_facebook_profile_default_icon;
    }

    Filter getFilter()
    {
        return filter;
    }

    protected int getGraphObjectRowLayoutId(GraphObject graphobject)
    {
        return com.facebook.android.R.layout.com_facebook_picker_list_row;
    }

    protected View getGraphObjectView(GraphObject graphobject, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = createGraphObjectView(graphobject);
        }
        populateGraphObjectView(view, graphobject);
        return view;
    }

    public List getGraphObjectsById(Collection collection)
    {
        Object obj = new HashSet();
        ((Set) (obj)).addAll(collection);
        collection = new ArrayList(((Set) (obj)).size());
        obj = ((Set) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            Object obj1 = (String)((Iterator) (obj)).next();
            obj1 = (GraphObject)graphObjectsById.get(obj1);
            if (obj1 != null)
            {
                collection.add(obj1);
            }
        } while (true);
        return collection;
    }

    public String getGroupByField()
    {
        return groupByField;
    }

    String getIdOfGraphObject(GraphObject graphobject)
    {
        if (graphobject.asMap().containsKey("id"))
        {
            graphobject = ((GraphObject) (graphobject.getProperty("id")));
            if (graphobject instanceof String)
            {
                return (String)graphobject;
            }
        }
        throw new FacebookException("Received an object without an ID.");
    }

    public Object getItem(int i)
    {
        SectionAndItem sectionanditem = getSectionAndItem(i);
        if (sectionanditem.getType() == SectionAndItem.Type.GRAPH_OBJECT)
        {
            return sectionanditem.graphObject;
        } else
        {
            return null;
        }
    }

    public long getItemId(int i)
    {
        Object obj;
        obj = getSectionAndItem(i);
        if (obj == null || ((SectionAndItem) (obj)).graphObject == null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        obj = getIdOfGraphObject(((SectionAndItem) (obj)).graphObject);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        long l = Long.parseLong(((String) (obj)));
        return l;
        NumberFormatException numberformatexception;
        numberformatexception;
        return 0L;
    }

    public int getItemViewType(int i)
    {
        SectionAndItem sectionanditem = getSectionAndItem(i);
        static class _cls3
        {

            static final int $SwitchMap$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type[];

            static 
            {
                $SwitchMap$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type = new int[SectionAndItem.Type.values().length];
                try
                {
                    $SwitchMap$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type[SectionAndItem.Type.SECTION_HEADER.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type[SectionAndItem.Type.GRAPH_OBJECT.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type[SectionAndItem.Type.ACTIVITY_CIRCLE.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (_cls3..SwitchMap.com.facebook.widget.GraphObjectAdapter.SectionAndItem.Type[sectionanditem.getType().ordinal()])
        {
        default:
            throw new FacebookException("Unexpected type of section and item.");

        case 1: // '\001'
            return 0;

        case 2: // '\002'
            return 1;

        case 3: // '\003'
            return 2;
        }
    }

    public OnErrorListener getOnErrorListener()
    {
        return onErrorListener;
    }

    String getPictureFieldSpecifier()
    {
        Object obj = (ImageView)createGraphObjectView(null).findViewById(com.facebook.android.R.id.com_facebook_picker_image);
        if (obj == null)
        {
            return null;
        } else
        {
            obj = ((ImageView) (obj)).getLayoutParams();
            return String.format(Locale.US, "picture.height(%d).width(%d)", new Object[] {
                Integer.valueOf(((android.view.ViewGroup.LayoutParams) (obj)).height), Integer.valueOf(((android.view.ViewGroup.LayoutParams) (obj)).width)
            });
        }
    }

    protected URI getPictureUriOfGraphObject(GraphObject graphobject)
    {
        graphobject = ((GraphObject) (graphobject.getProperty("picture")));
        if (!(graphobject instanceof String)) goto _L2; else goto _L1
_L1:
        graphobject = (String)graphobject;
_L6:
        if (graphobject == null) goto _L4; else goto _L3
_L3:
        graphobject = new URI(graphobject);
        return graphobject;
        graphobject;
_L4:
        return null;
_L2:
        if (graphobject instanceof JSONObject)
        {
            graphobject = ((ItemPicture)com.facebook.model.GraphObject.Factory.create((JSONObject)graphobject).cast(com/facebook/widget/GraphObjectAdapter$ItemPicture)).getData();
            if (graphobject != null)
            {
                graphobject = graphobject.getUrl();
                continue; /* Loop/switch isn't completed */
            }
        }
        graphobject = null;
        if (true) goto _L6; else goto _L5
_L5:
    }

    int getPosition(String s, GraphObject graphobject)
    {
        int i;
        int j;
        Iterator iterator = sectionKeys.iterator();
        i = 0;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_184;
            }
            String s1 = (String)iterator.next();
            j = i;
            if (displaySections)
            {
                j = i + 1;
            }
            if (s1.equals(s))
            {
                boolean flag = true;
                i = j;
                j = ((flag) ? 1 : 0);
                break MISSING_BLOCK_LABEL_70;
            }
            i = ((ArrayList)graphObjectsBySection.get(s1)).size() + j;
        } while (true);
_L2:
        if (j == 0)
        {
            return -1;
        }
        if (graphobject == null)
        {
            if (displaySections)
            {
                j = 1;
            } else
            {
                j = 0;
            }
            return i - j;
        }
        for (s = ((ArrayList)graphObjectsBySection.get(s)).iterator(); s.hasNext();)
        {
            if (com.facebook.model.GraphObject.Factory.hasSameId((GraphObject)s.next(), graphobject))
            {
                return i;
            }
            i++;
        }

        return -1;
        j = 0;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public int getPositionForSection(int i)
    {
        if (displaySections)
        {
            i = Math.max(0, Math.min(i, sectionKeys.size() - 1));
            if (i < sectionKeys.size())
            {
                return getPosition((String)sectionKeys.get(i), null);
            }
        }
        return 0;
    }

    SectionAndItem getSectionAndItem(int i)
    {
        if (sectionKeys.size() == 0)
        {
            return null;
        }
        if (displaySections) goto _L2; else goto _L1
_L1:
        Object obj;
        Object obj1;
        obj1 = (String)sectionKeys.get(0);
        obj = (List)graphObjectsBySection.get(obj1);
        if (i < 0 || i >= ((List) (obj)).size()) goto _L4; else goto _L3
_L3:
        obj = (GraphObject)((ArrayList)graphObjectsBySection.get(obj1)).get(i);
_L6:
        if (obj1 != null)
        {
            return new SectionAndItem(((String) (obj1)), ((GraphObject) (obj)));
        } else
        {
            throw new IndexOutOfBoundsException("position");
        }
_L4:
        if (!$assertionsDisabled && (dataNeededListener == null || !cursor.areMoreObjectsAvailable()))
        {
            throw new AssertionError();
        } else
        {
            return new SectionAndItem(null, null);
        }
_L2:
        obj1 = sectionKeys.iterator();
        do
        {
            if (!((Iterator) (obj1)).hasNext())
            {
                break;
            }
            obj = (String)((Iterator) (obj1)).next();
            int j = i - 1;
            if (i == 0)
            {
                obj1 = obj;
                obj = null;
                continue; /* Loop/switch isn't completed */
            }
            Object obj2 = (List)graphObjectsBySection.get(obj);
            if (j < ((List) (obj2)).size())
            {
                obj2 = (GraphObject)((List) (obj2)).get(j);
                obj1 = obj;
                obj = obj2;
                continue; /* Loop/switch isn't completed */
            }
            i = j - ((List) (obj2)).size();
        } while (true);
        obj = null;
        obj1 = null;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public int getSectionForPosition(int i)
    {
        SectionAndItem sectionanditem = getSectionAndItem(i);
        if (sectionanditem != null && sectionanditem.getType() != SectionAndItem.Type.ACTIVITY_CIRCLE)
        {
            return Math.max(0, Math.min(sectionKeys.indexOf(sectionanditem.sectionKey), sectionKeys.size() - 1));
        } else
        {
            return 0;
        }
    }

    protected View getSectionHeaderView(String s, View view, ViewGroup viewgroup)
    {
        view = (TextView)view;
        if (view == null)
        {
            view = (TextView)inflater.inflate(com.facebook.android.R.layout.com_facebook_picker_list_section_header, null);
        }
        view.setText(s);
        return view;
    }

    protected String getSectionKeyOfGraphObject(GraphObject graphobject)
    {
        String s = null;
        if (groupByField != null)
        {
            s = (String)graphobject.getProperty(groupByField);
            if (s != null && s.length() > 0)
            {
                s = s.substring(0, 1).toUpperCase();
            }
        }
        if (s != null)
        {
            return s;
        } else
        {
            return "";
        }
    }

    public Object[] getSections()
    {
        if (displaySections)
        {
            return sectionKeys.toArray();
        } else
        {
            return new Object[0];
        }
    }

    public boolean getShowCheckbox()
    {
        return showCheckbox;
    }

    public boolean getShowPicture()
    {
        return showPicture;
    }

    public List getSortFields()
    {
        return sortFields;
    }

    protected CharSequence getSubTitleOfGraphObject(GraphObject graphobject)
    {
        return null;
    }

    protected CharSequence getTitleOfGraphObject(GraphObject graphobject)
    {
        return (String)graphobject.getProperty("name");
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        SectionAndItem sectionanditem = getSectionAndItem(i);
        switch (_cls3..SwitchMap.com.facebook.widget.GraphObjectAdapter.SectionAndItem.Type[sectionanditem.getType().ordinal()])
        {
        default:
            throw new FacebookException("Unexpected type of section and item.");

        case 1: // '\001'
            return getSectionHeaderView(sectionanditem.sectionKey, view, viewgroup);

        case 2: // '\002'
            return getGraphObjectView(sectionanditem.graphObject, view, viewgroup);

        case 3: // '\003'
            break;
        }
        if (!$assertionsDisabled && (!cursor.areMoreObjectsAvailable() || dataNeededListener == null))
        {
            throw new AssertionError();
        } else
        {
            dataNeededListener.onDataNeeded();
            return getActivityCircleView(view, viewgroup);
        }
    }

    public int getViewTypeCount()
    {
        return 3;
    }

    public boolean hasStableIds()
    {
        return true;
    }

    public boolean isEmpty()
    {
        return sectionKeys.size() == 0;
    }

    public boolean isEnabled(int i)
    {
        return getSectionAndItem(i).getType() == SectionAndItem.Type.GRAPH_OBJECT;
    }

    boolean isGraphObjectSelected(String s)
    {
        return false;
    }

    protected void populateGraphObjectView(View view, GraphObject graphobject)
    {
        String s;
label0:
        {
            s = getIdOfGraphObject(graphobject);
            view.setTag(s);
            CharSequence charsequence = getTitleOfGraphObject(graphobject);
            TextView textview = (TextView)view.findViewById(com.facebook.android.R.id.com_facebook_picker_title);
            if (textview != null)
            {
                textview.setText(charsequence, android.widget.TextView.BufferType.SPANNABLE);
            }
            charsequence = getSubTitleOfGraphObject(graphobject);
            textview = (TextView)view.findViewById(com.facebook.android.R.id.picker_subtitle);
            if (textview != null)
            {
                if (charsequence != null)
                {
                    textview.setText(charsequence, android.widget.TextView.BufferType.SPANNABLE);
                    textview.setVisibility(0);
                } else
                {
                    textview.setVisibility(8);
                }
            }
            if (getShowCheckbox())
            {
                updateCheckboxState((CheckBox)view.findViewById(com.facebook.android.R.id.com_facebook_picker_checkbox), isGraphObjectSelected(s));
            }
            if (getShowPicture())
            {
                graphobject = getPictureUriOfGraphObject(graphobject);
                if (graphobject != null)
                {
                    view = (ImageView)view.findViewById(com.facebook.android.R.id.com_facebook_picker_image);
                    if (!prefetchedPictureCache.containsKey(s))
                    {
                        break label0;
                    }
                    graphobject = (ImageResponse)prefetchedPictureCache.get(s);
                    view.setImageBitmap(graphobject.getBitmap());
                    view.setTag(graphobject.getRequest().getImageUri());
                }
            }
            return;
        }
        downloadProfilePicture(s, graphobject, view);
    }

    public void prioritizeViewRange(int i, int j, int k)
    {
        if (j >= i && sectionKeys.size() != 0)
        {
            for (int l = j; l >= 0; l--)
            {
                Object obj = getSectionAndItem(l);
                if (((SectionAndItem) (obj)).graphObject == null)
                {
                    continue;
                }
                obj = getIdOfGraphObject(((SectionAndItem) (obj)).graphObject);
                obj = (ImageRequest)pendingRequests.get(obj);
                if (obj != null)
                {
                    ImageDownloader.prioritizeRequest(((ImageRequest) (obj)));
                }
            }

            int i1 = Math.max(0, i - k);
            int j1 = Math.min(j + k, getCount() - 1);
            Object obj1 = new ArrayList();
            for (k = i1; k < i; k++)
            {
                SectionAndItem sectionanditem = getSectionAndItem(k);
                if (sectionanditem.graphObject != null)
                {
                    ((ArrayList) (obj1)).add(sectionanditem.graphObject);
                }
            }

            for (i = j + 1; i <= j1; i++)
            {
                SectionAndItem sectionanditem1 = getSectionAndItem(i);
                if (sectionanditem1.graphObject != null)
                {
                    ((ArrayList) (obj1)).add(sectionanditem1.graphObject);
                }
            }

            obj1 = ((ArrayList) (obj1)).iterator();
            while (((Iterator) (obj1)).hasNext()) 
            {
                Object obj2 = (GraphObject)((Iterator) (obj1)).next();
                URI uri = getPictureUriOfGraphObject(((GraphObject) (obj2)));
                obj2 = getIdOfGraphObject(((GraphObject) (obj2)));
                boolean flag = prefetchedProfilePictureIds.remove(obj2);
                prefetchedProfilePictureIds.add(obj2);
                if (!flag)
                {
                    downloadProfilePicture(((String) (obj2)), uri, null);
                }
            }
        }
    }

    public void rebuildAndNotify()
    {
        rebuildSections();
        notifyDataSetChanged();
    }

    public void setDataNeededListener(DataNeededListener dataneededlistener)
    {
        dataNeededListener = dataneededlistener;
    }

    void setFilter(Filter filter1)
    {
        filter = filter1;
    }

    public void setGroupByField(String s)
    {
        groupByField = s;
    }

    public void setOnErrorListener(OnErrorListener onerrorlistener)
    {
        onErrorListener = onerrorlistener;
    }

    public void setShowCheckbox(boolean flag)
    {
        showCheckbox = flag;
    }

    public void setShowPicture(boolean flag)
    {
        showPicture = flag;
    }

    public void setSortFields(List list)
    {
        sortFields = list;
    }

    void updateCheckboxState(CheckBox checkbox, boolean flag)
    {
    }

    static 
    {
        boolean flag;
        if (!com/facebook/widget/GraphObjectAdapter.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }




    private class _cls2
        implements com.facebook.internal.ImageRequest.Callback
    {

        final GraphObjectAdapter this$0;
        final ImageView val$imageView;
        final String val$profileId;

        public void onCompleted(ImageResponse imageresponse)
        {
            processImageResponse(imageresponse, profileId, imageView);
        }

        _cls2()
        {
            this$0 = GraphObjectAdapter.this;
            profileId = s;
            imageView = imageview;
            super();
        }
    }


    private class _cls1
        implements Comparator
    {

        final GraphObjectAdapter this$0;
        final Collator val$collator;

        public int compare(GraphObject graphobject, GraphObject graphobject1)
        {
            return GraphObjectAdapter.compareGraphObjects(graphobject, graphobject1, sortFields, collator);
        }

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((GraphObject)obj, (GraphObject)obj1);
        }

        _cls1()
        {
            this$0 = GraphObjectAdapter.this;
            collator = collator1;
            super();
        }
    }

}
