// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.animation.AlphaAnimation;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import c.m.x.a.gv.d;
import c.m.x.a.gv.r;
import com.facebook.FacebookException;
import com.facebook.Request;
import com.facebook.Session;
import com.facebook.internal.SessionTracker;
import com.facebook.model.GraphObject;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.facebook.widget:
//            GraphObjectAdapter, SimpleGraphObjectCursor, GraphObjectPagingLoader

public abstract class PickerFragment extends d
{
    public static interface GraphObjectFilter
    {

        public abstract boolean includeItem(Object obj);
    }

    abstract class LoadingStrategy
    {

        protected static final int CACHED_RESULT_REFRESH_DELAY = 2000;
        protected GraphObjectAdapter adapter;
        protected GraphObjectPagingLoader loader;
        final PickerFragment this$0;

        public void attach(GraphObjectAdapter graphobjectadapter)
        {
            class _cls1
                implements c.m.x.a.gv.r.a
            {

                final LoadingStrategy this$1;

                public v onCreateLoader(int i, Bundle bundle)
                {
                    return LoadingStrategy.this.onCreateLoader();
                }

                public void onLoadFinished(v v, SimpleGraphObjectCursor simplegraphobjectcursor)
                {
                    if (v != loader)
                    {
                        throw new FacebookException("Received callback for unknown loader.");
                    } else
                    {
                        LoadingStrategy.this.onLoadFinished((GraphObjectPagingLoader)v, simplegraphobjectcursor);
                        return;
                    }
                }

                public volatile void onLoadFinished(v v, Object obj)
                {
                    onLoadFinished(v, (SimpleGraphObjectCursor)obj);
                }

                public void onLoaderReset(v v)
                {
                    if (v != loader)
                    {
                        throw new FacebookException("Received callback for unknown loader.");
                    } else
                    {
                        onLoadReset((GraphObjectPagingLoader)v);
                        return;
                    }
                }

                _cls1()
                {
                    this$1 = LoadingStrategy.this;
                    super();
                }
            }

            loader = (GraphObjectPagingLoader)getLoaderManager().a(new _cls1());
            class _cls2
                implements GraphObjectPagingLoader.OnErrorListener
            {

                final LoadingStrategy this$1;

                public void onError(FacebookException facebookexception, GraphObjectPagingLoader graphobjectpagingloader)
                {
                    hideActivityCircle();
                    if (onErrorListener != null)
                    {
                        onErrorListener.onError(_fld0, facebookexception);
                    }
                }

                _cls2()
                {
                    this$1 = LoadingStrategy.this;
                    super();
                }
            }

            loader.setOnErrorListener(new _cls2());
            adapter = graphobjectadapter;
            adapter.changeCursor(loader.getCursor());
            class _cls3
                implements GraphObjectAdapter.OnErrorListener
            {

                final LoadingStrategy this$1;

                public void onError(GraphObjectAdapter graphobjectadapter1, FacebookException facebookexception)
                {
                    if (onErrorListener != null)
                    {
                        onErrorListener.onError(_fld0, facebookexception);
                    }
                }

                _cls3()
                {
                    this$1 = LoadingStrategy.this;
                    super();
                }
            }

            adapter.setOnErrorListener(new _cls3());
        }

        protected boolean canSkipRoundTripIfCached()
        {
            return true;
        }

        public void clearResults()
        {
            if (loader != null)
            {
                loader.clearResults();
            }
        }

        public void detach()
        {
            adapter.setDataNeededListener(null);
            adapter.setOnErrorListener(null);
            loader.setOnErrorListener(null);
            loader = null;
            adapter = null;
        }

        public boolean isDataPresentOrLoading()
        {
            return !adapter.isEmpty() || loader.isLoading();
        }

        protected GraphObjectPagingLoader onCreateLoader()
        {
            return new GraphObjectPagingLoader(getActivity(), graphObjectClass);
        }

        protected void onLoadFinished(GraphObjectPagingLoader graphobjectpagingloader, SimpleGraphObjectCursor simplegraphobjectcursor)
        {
            updateAdapter(simplegraphobjectcursor);
        }

        protected void onLoadReset(GraphObjectPagingLoader graphobjectpagingloader)
        {
            adapter.changeCursor(null);
        }

        protected void onStartLoading(GraphObjectPagingLoader graphobjectpagingloader, Request request)
        {
            displayActivityCircle();
        }

        public void startLoading(Request request)
        {
            if (loader != null)
            {
                loader.startLoading(request, canSkipRoundTripIfCached());
                onStartLoading(loader, request);
            }
        }

        LoadingStrategy()
        {
            this$0 = PickerFragment.this;
            super();
        }
    }

    class MultiSelectionStrategy extends SelectionStrategy
    {

        private Set selectedIds;
        final PickerFragment this$0;

        public void clear()
        {
            selectedIds.clear();
        }

        public Collection getSelectedIds()
        {
            return selectedIds;
        }

        boolean isEmpty()
        {
            return selectedIds.isEmpty();
        }

        boolean isSelected(String s)
        {
            return s != null && selectedIds.contains(s);
        }

        void readSelectionFromBundle(Bundle bundle, String s)
        {
            if (bundle != null)
            {
                bundle = bundle.getString(s);
                if (bundle != null)
                {
                    bundle = TextUtils.split(bundle, ",");
                    selectedIds.clear();
                    Collections.addAll(selectedIds, bundle);
                }
            }
        }

        void saveSelectionToBundle(Bundle bundle, String s)
        {
            if (!selectedIds.isEmpty())
            {
                bundle.putString(s, TextUtils.join(",", selectedIds));
            }
        }

        boolean shouldShowCheckBoxIfUnselected()
        {
            return true;
        }

        void toggleSelection(String s)
        {
label0:
            {
                if (s != null)
                {
                    if (!selectedIds.contains(s))
                    {
                        break label0;
                    }
                    selectedIds.remove(s);
                }
                return;
            }
            selectedIds.add(s);
        }

        MultiSelectionStrategy()
        {
            this$0 = PickerFragment.this;
            super();
            selectedIds = new HashSet();
        }
    }

    public static interface OnDataChangedListener
    {

        public abstract void onDataChanged(PickerFragment pickerfragment);
    }

    public static interface OnDoneButtonClickedListener
    {

        public abstract void onDoneButtonClicked(PickerFragment pickerfragment);
    }

    public static interface OnErrorListener
    {

        public abstract void onError(PickerFragment pickerfragment, FacebookException facebookexception);
    }

    public static interface OnSelectionChangedListener
    {

        public abstract void onSelectionChanged(PickerFragment pickerfragment);
    }

    abstract class PickerFragmentAdapter extends GraphObjectAdapter
    {

        final PickerFragment this$0;

        boolean isGraphObjectSelected(String s)
        {
            return selectionStrategy.isSelected(s);
        }

        void updateCheckboxState(CheckBox checkbox, boolean flag)
        {
            checkbox.setChecked(flag);
            int i;
            if (flag || selectionStrategy.shouldShowCheckBoxIfUnselected())
            {
                i = 0;
            } else
            {
                i = 8;
            }
            checkbox.setVisibility(i);
        }

        public PickerFragmentAdapter(Context context)
        {
            this$0 = PickerFragment.this;
            super(context);
        }
    }

    abstract class SelectionStrategy
    {

        final PickerFragment this$0;

        abstract void clear();

        abstract Collection getSelectedIds();

        abstract boolean isEmpty();

        abstract boolean isSelected(String s);

        abstract void readSelectionFromBundle(Bundle bundle, String s);

        abstract void saveSelectionToBundle(Bundle bundle, String s);

        abstract boolean shouldShowCheckBoxIfUnselected();

        abstract void toggleSelection(String s);

        SelectionStrategy()
        {
            this$0 = PickerFragment.this;
            super();
        }
    }

    class SingleSelectionStrategy extends SelectionStrategy
    {

        private String selectedId;
        final PickerFragment this$0;

        public void clear()
        {
            selectedId = null;
        }

        public Collection getSelectedIds()
        {
            return Arrays.asList(new String[] {
                selectedId
            });
        }

        boolean isEmpty()
        {
            return selectedId == null;
        }

        boolean isSelected(String s)
        {
            return selectedId != null && s != null && selectedId.equals(s);
        }

        void readSelectionFromBundle(Bundle bundle, String s)
        {
            if (bundle != null)
            {
                selectedId = bundle.getString(s);
            }
        }

        void saveSelectionToBundle(Bundle bundle, String s)
        {
            if (!TextUtils.isEmpty(selectedId))
            {
                bundle.putString(s, selectedId);
            }
        }

        boolean shouldShowCheckBoxIfUnselected()
        {
            return false;
        }

        void toggleSelection(String s)
        {
            if (selectedId != null && selectedId.equals(s))
            {
                selectedId = null;
                return;
            } else
            {
                selectedId = s;
                return;
            }
        }

        SingleSelectionStrategy()
        {
            this$0 = PickerFragment.this;
            super();
        }
    }


    private static final String ACTIVITY_CIRCLE_SHOW_KEY = "com.facebook.android.PickerFragment.ActivityCircleShown";
    public static final String DONE_BUTTON_TEXT_BUNDLE_KEY = "com.facebook.widget.PickerFragment.DoneButtonText";
    public static final String EXTRA_FIELDS_BUNDLE_KEY = "com.facebook.widget.PickerFragment.ExtraFields";
    private static final int PROFILE_PICTURE_PREFETCH_BUFFER = 5;
    private static final String SELECTION_BUNDLE_KEY = "com.facebook.android.PickerFragment.Selection";
    public static final String SHOW_PICTURES_BUNDLE_KEY = "com.facebook.widget.PickerFragment.ShowPictures";
    public static final String SHOW_TITLE_BAR_BUNDLE_KEY = "com.facebook.widget.PickerFragment.ShowTitleBar";
    public static final String TITLE_TEXT_BUNDLE_KEY = "com.facebook.widget.PickerFragment.TitleText";
    private ProgressBar activityCircle;
    GraphObjectAdapter adapter;
    private boolean appEventsLogged;
    private Button doneButton;
    private Drawable doneButtonBackground;
    private String doneButtonText;
    HashSet extraFields;
    private GraphObjectFilter filter;
    private final Class graphObjectClass;
    private final int layout;
    private ListView listView;
    private LoadingStrategy loadingStrategy;
    private OnDataChangedListener onDataChangedListener;
    private OnDoneButtonClickedListener onDoneButtonClickedListener;
    private OnErrorListener onErrorListener;
    private android.widget.AbsListView.OnScrollListener onScrollListener;
    private OnSelectionChangedListener onSelectionChangedListener;
    private Set selectionHint;
    private SelectionStrategy selectionStrategy;
    private SessionTracker sessionTracker;
    private boolean showPictures;
    private boolean showTitleBar;
    private Drawable titleBarBackground;
    private String titleText;
    private TextView titleTextView;

    PickerFragment(Class class1, int i, Bundle bundle)
    {
        showPictures = true;
        showTitleBar = true;
        extraFields = new HashSet();
        onScrollListener = new _cls6();
        graphObjectClass = class1;
        layout = i;
        setPickerFragmentSettingsFromBundle(bundle);
    }

    private void clearResults()
    {
        if (adapter != null)
        {
            boolean flag;
            boolean flag1;
            if (!selectionStrategy.isEmpty())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (!adapter.isEmpty())
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            loadingStrategy.clearResults();
            selectionStrategy.clear();
            adapter.notifyDataSetChanged();
            if (flag1 && onDataChangedListener != null)
            {
                onDataChangedListener.onDataChanged(this);
            }
            if (flag && onSelectionChangedListener != null)
            {
                onSelectionChangedListener.onSelectionChanged(this);
            }
        }
    }

    private void inflateTitleBar(ViewGroup viewgroup)
    {
        Object obj = (ViewStub)viewgroup.findViewById(com.facebook.android.R.id.com_facebook_picker_title_bar_stub);
        if (obj != null)
        {
            obj = ((ViewStub) (obj)).inflate();
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
            layoutparams.addRule(3, com.facebook.android.R.id.com_facebook_picker_title_bar);
            listView.setLayoutParams(layoutparams);
            if (titleBarBackground != null)
            {
                ((View) (obj)).setBackgroundDrawable(titleBarBackground);
            }
            doneButton = (Button)viewgroup.findViewById(com.facebook.android.R.id.com_facebook_picker_done_button);
            if (doneButton != null)
            {
                doneButton.setOnClickListener(new _cls5());
                if (getDoneButtonText() != null)
                {
                    doneButton.setText(getDoneButtonText());
                }
                if (doneButtonBackground != null)
                {
                    doneButton.setBackgroundDrawable(doneButtonBackground);
                }
            }
            titleTextView = (TextView)viewgroup.findViewById(com.facebook.android.R.id.com_facebook_picker_title);
            if (titleTextView != null && getTitleText() != null)
            {
                titleTextView.setText(getTitleText());
            }
        }
    }

    private void loadDataSkippingRoundTripIfCached()
    {
        clearResults();
        Request request = getRequestForLoadData(getSession());
        if (request != null)
        {
            onLoadingData();
            loadingStrategy.startLoading(request);
        }
    }

    private void onListItemClick(ListView listview, View view, int i)
    {
        listview = (GraphObject)listview.getItemAtPosition(i);
        listview = adapter.getIdOfGraphObject(listview);
        selectionStrategy.toggleSelection(listview);
        adapter.notifyDataSetChanged();
        if (onSelectionChangedListener != null)
        {
            onSelectionChangedListener.onSelectionChanged(this);
        }
    }

    private void reprioritizeDownloads()
    {
        int i = listView.getLastVisiblePosition();
        if (i >= 0)
        {
            int j = listView.getFirstVisiblePosition();
            adapter.prioritizeViewRange(j, i, 5);
        }
    }

    private static void setAlpha(View view, float f)
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(f, f);
        alphaanimation.setDuration(0L);
        alphaanimation.setFillAfter(true);
        view.startAnimation(alphaanimation);
    }

    private void setPickerFragmentSettingsFromBundle(Bundle bundle)
    {
        if (bundle != null)
        {
            showPictures = bundle.getBoolean("com.facebook.widget.PickerFragment.ShowPictures", showPictures);
            String s = bundle.getString("com.facebook.widget.PickerFragment.ExtraFields");
            if (s != null)
            {
                setExtraFields(Arrays.asList(s.split(",")));
            }
            showTitleBar = bundle.getBoolean("com.facebook.widget.PickerFragment.ShowTitleBar", showTitleBar);
            s = bundle.getString("com.facebook.widget.PickerFragment.TitleText");
            if (s != null)
            {
                titleText = s;
                if (titleTextView != null)
                {
                    titleTextView.setText(titleText);
                }
            }
            bundle = bundle.getString("com.facebook.widget.PickerFragment.DoneButtonText");
            if (bundle != null)
            {
                doneButtonText = bundle;
                if (doneButton != null)
                {
                    doneButton.setText(doneButtonText);
                }
            }
        }
    }

    abstract PickerFragmentAdapter createAdapter();

    abstract LoadingStrategy createLoadingStrategy();

    abstract SelectionStrategy createSelectionStrategy();

    void displayActivityCircle()
    {
        if (activityCircle != null)
        {
            layoutActivityCircle();
            activityCircle.setVisibility(0);
        }
    }

    boolean filterIncludesItem(GraphObject graphobject)
    {
        if (filter != null)
        {
            return filter.includeItem(graphobject);
        } else
        {
            return true;
        }
    }

    String getDefaultDoneButtonText()
    {
        return getString(com.facebook.android.R.string.com_facebook_picker_done_button_text);
    }

    String getDefaultTitleText()
    {
        return null;
    }

    public String getDoneButtonText()
    {
        if (doneButtonText == null)
        {
            doneButtonText = getDefaultDoneButtonText();
        }
        return doneButtonText;
    }

    public Set getExtraFields()
    {
        return new HashSet(extraFields);
    }

    public GraphObjectFilter getFilter()
    {
        return filter;
    }

    public OnDataChangedListener getOnDataChangedListener()
    {
        return onDataChangedListener;
    }

    public OnDoneButtonClickedListener getOnDoneButtonClickedListener()
    {
        return onDoneButtonClickedListener;
    }

    public OnErrorListener getOnErrorListener()
    {
        return onErrorListener;
    }

    public OnSelectionChangedListener getOnSelectionChangedListener()
    {
        return onSelectionChangedListener;
    }

    abstract Request getRequestForLoadData(Session session);

    List getSelectedGraphObjects()
    {
        return adapter.getGraphObjectsById(selectionStrategy.getSelectedIds());
    }

    public Session getSession()
    {
        return sessionTracker.getSession();
    }

    public boolean getShowPictures()
    {
        return showPictures;
    }

    public boolean getShowTitleBar()
    {
        return showTitleBar;
    }

    public String getTitleText()
    {
        if (titleText == null)
        {
            titleText = getDefaultTitleText();
        }
        return titleText;
    }

    void hideActivityCircle()
    {
        if (activityCircle != null)
        {
            activityCircle.clearAnimation();
            activityCircle.setVisibility(4);
        }
    }

    void layoutActivityCircle()
    {
        float f;
        if (!adapter.isEmpty())
        {
            f = 0.25F;
        } else
        {
            f = 1.0F;
        }
        setAlpha(activityCircle, f);
    }

    public void loadData(boolean flag)
    {
        loadData(flag, null);
    }

    public void loadData(boolean flag, Set set)
    {
        if (!flag && loadingStrategy.isDataPresentOrLoading())
        {
            return;
        } else
        {
            selectionHint = set;
            loadDataSkippingRoundTripIfCached();
            return;
        }
    }

    void logAppEvents(boolean flag)
    {
    }

    public void onActivityCreated(Bundle bundle)
    {
label0:
        {
            super.onActivityCreated(bundle);
            sessionTracker = new SessionTracker(getActivity(), new _cls4());
            setSettingsFromBundle(bundle);
            loadingStrategy = createLoadingStrategy();
            loadingStrategy.attach(adapter);
            selectionStrategy = createSelectionStrategy();
            selectionStrategy.readSelectionFromBundle(bundle, "com.facebook.android.PickerFragment.Selection");
            if (showTitleBar)
            {
                inflateTitleBar((ViewGroup)getView());
            }
            if (activityCircle != null && bundle != null)
            {
                if (!bundle.getBoolean("com.facebook.android.PickerFragment.ActivityCircleShown", false))
                {
                    break label0;
                }
                displayActivityCircle();
            }
            return;
        }
        hideActivityCircle();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        adapter = createAdapter();
        adapter.setFilter(new _cls1());
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        layoutinflater = (ViewGroup)layoutinflater.inflate(layout, viewgroup, false);
        listView = (ListView)layoutinflater.findViewById(com.facebook.android.R.id.com_facebook_picker_list_view);
        listView.setOnItemClickListener(new _cls2());
        listView.setOnLongClickListener(new _cls3());
        listView.setOnScrollListener(onScrollListener);
        activityCircle = (ProgressBar)layoutinflater.findViewById(com.facebook.android.R.id.com_facebook_picker_activity_circle);
        setupViews(layoutinflater);
        listView.setAdapter(adapter);
        return layoutinflater;
    }

    public void onDetach()
    {
        super.onDetach();
        listView.setOnScrollListener(null);
        listView.setAdapter(null);
        loadingStrategy.detach();
        sessionTracker.stopTracking();
    }

    public void onInflate(Activity activity, AttributeSet attributeset, Bundle bundle)
    {
        super.onInflate(activity, attributeset, bundle);
        activity = activity.obtainStyledAttributes(attributeset, com.facebook.android.R.styleable.com_facebook_picker_fragment);
        setShowPictures(activity.getBoolean(com.facebook.android.R.styleable.com_facebook_picker_fragment_show_pictures, showPictures));
        attributeset = activity.getString(com.facebook.android.R.styleable.com_facebook_picker_fragment_extra_fields);
        if (attributeset != null)
        {
            setExtraFields(Arrays.asList(attributeset.split(",")));
        }
        showTitleBar = activity.getBoolean(com.facebook.android.R.styleable.com_facebook_picker_fragment_show_title_bar, showTitleBar);
        titleText = activity.getString(com.facebook.android.R.styleable.com_facebook_picker_fragment_title_text);
        doneButtonText = activity.getString(com.facebook.android.R.styleable.com_facebook_picker_fragment_done_button_text);
        titleBarBackground = activity.getDrawable(com.facebook.android.R.styleable.com_facebook_picker_fragment_title_bar_background);
        doneButtonBackground = activity.getDrawable(com.facebook.android.R.styleable.com_facebook_picker_fragment_done_button_background);
        activity.recycle();
    }

    void onLoadingData()
    {
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        saveSettingsToBundle(bundle);
        selectionStrategy.saveSelectionToBundle(bundle, "com.facebook.android.PickerFragment.Selection");
        if (activityCircle != null)
        {
            boolean flag;
            if (activityCircle.getVisibility() == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            bundle.putBoolean("com.facebook.android.PickerFragment.ActivityCircleShown", flag);
        }
    }

    public void onStop()
    {
        if (!appEventsLogged)
        {
            logAppEvents(false);
        }
        super.onStop();
    }

    void saveSettingsToBundle(Bundle bundle)
    {
        bundle.putBoolean("com.facebook.widget.PickerFragment.ShowPictures", showPictures);
        if (!extraFields.isEmpty())
        {
            bundle.putString("com.facebook.widget.PickerFragment.ExtraFields", TextUtils.join(",", extraFields));
        }
        bundle.putBoolean("com.facebook.widget.PickerFragment.ShowTitleBar", showTitleBar);
        bundle.putString("com.facebook.widget.PickerFragment.TitleText", titleText);
        bundle.putString("com.facebook.widget.PickerFragment.DoneButtonText", doneButtonText);
    }

    public void setArguments(Bundle bundle)
    {
        super.setArguments(bundle);
        setSettingsFromBundle(bundle);
    }

    public void setDoneButtonText(String s)
    {
        doneButtonText = s;
    }

    public void setExtraFields(Collection collection)
    {
        extraFields = new HashSet();
        if (collection != null)
        {
            extraFields.addAll(collection);
        }
    }

    public void setFilter(GraphObjectFilter graphobjectfilter)
    {
        filter = graphobjectfilter;
    }

    public void setOnDataChangedListener(OnDataChangedListener ondatachangedlistener)
    {
        onDataChangedListener = ondatachangedlistener;
    }

    public void setOnDoneButtonClickedListener(OnDoneButtonClickedListener ondonebuttonclickedlistener)
    {
        onDoneButtonClickedListener = ondonebuttonclickedlistener;
    }

    public void setOnErrorListener(OnErrorListener onerrorlistener)
    {
        onErrorListener = onerrorlistener;
    }

    public void setOnSelectionChangedListener(OnSelectionChangedListener onselectionchangedlistener)
    {
        onSelectionChangedListener = onselectionchangedlistener;
    }

    void setSelectedGraphObjects(List list)
    {
        list = list.iterator();
        do
        {
            if (!list.hasNext())
            {
                break;
            }
            String s = (String)list.next();
            if (!selectionStrategy.isSelected(s))
            {
                selectionStrategy.toggleSelection(s);
            }
        } while (true);
    }

    void setSelectionStrategy(SelectionStrategy selectionstrategy)
    {
        if (selectionstrategy != selectionStrategy)
        {
            selectionStrategy = selectionstrategy;
            if (adapter != null)
            {
                adapter.notifyDataSetChanged();
            }
        }
    }

    public void setSession(Session session)
    {
        sessionTracker.setSession(session);
    }

    public void setSettingsFromBundle(Bundle bundle)
    {
        setPickerFragmentSettingsFromBundle(bundle);
    }

    public void setShowPictures(boolean flag)
    {
        showPictures = flag;
    }

    public void setShowTitleBar(boolean flag)
    {
        showTitleBar = flag;
    }

    public void setTitleText(String s)
    {
        titleText = s;
    }

    void setupViews(ViewGroup viewgroup)
    {
    }

    void updateAdapter(SimpleGraphObjectCursor simplegraphobjectcursor)
    {
label0:
        {
            int k;
label1:
            {
                if (adapter == null)
                {
                    break label0;
                }
                View view = listView.getChildAt(1);
                int j = listView.getFirstVisiblePosition();
                int i = j;
                if (j > 0)
                {
                    i = j + 1;
                }
                GraphObjectAdapter.SectionAndItem sectionanditem = adapter.getSectionAndItem(i);
                boolean flag;
                if (view != null && sectionanditem.getType() != GraphObjectAdapter.SectionAndItem.Type.ACTIVITY_CIRCLE)
                {
                    i = view.getTop();
                } else
                {
                    i = 0;
                }
                flag = adapter.changeCursor(simplegraphobjectcursor);
                if (view != null && sectionanditem != null)
                {
                    j = adapter.getPosition(sectionanditem.sectionKey, sectionanditem.graphObject);
                    if (j != -1)
                    {
                        listView.setSelectionFromTop(j, i);
                    }
                }
                if (flag && onDataChangedListener != null)
                {
                    onDataChangedListener.onDataChanged(this);
                }
                if (selectionHint == null || selectionHint.isEmpty() || simplegraphobjectcursor == null)
                {
                    break label0;
                }
                simplegraphobjectcursor.moveToFirst();
                j = 0;
                i = 0;
                for (; j < simplegraphobjectcursor.getCount(); j++)
                {
                    simplegraphobjectcursor.moveToPosition(j);
                    Object obj = simplegraphobjectcursor.getGraphObject();
                    if (!((GraphObject) (obj)).asMap().containsKey("id"))
                    {
                        continue;
                    }
                    obj = ((GraphObject) (obj)).getProperty("id");
                    if (!(obj instanceof String))
                    {
                        continue;
                    }
                    obj = (String)obj;
                    if (selectionHint.contains(obj))
                    {
                        selectionStrategy.toggleSelection(((String) (obj)));
                        selectionHint.remove(obj);
                        i = 1;
                    }
                    k = i;
                    if (selectionHint.isEmpty())
                    {
                        break label1;
                    }
                }

                k = i;
            }
            if (onSelectionChangedListener != null && k != 0)
            {
                onSelectionChangedListener.onSelectionChanged(this);
            }
        }
    }




/*
    static boolean access$202(PickerFragment pickerfragment, boolean flag)
    {
        pickerfragment.appEventsLogged = flag;
        return flag;
    }

*/






    private class _cls6
        implements android.widget.AbsListView.OnScrollListener
    {

        final PickerFragment this$0;

        public void onScroll(AbsListView abslistview, int i, int j, int k)
        {
            reprioritizeDownloads();
        }

        public void onScrollStateChanged(AbsListView abslistview, int i)
        {
        }

        _cls6()
        {
            this$0 = PickerFragment.this;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        final PickerFragment this$0;

        public void onClick(View view)
        {
            logAppEvents(true);
            appEventsLogged = true;
            if (onDoneButtonClickedListener != null)
            {
                onDoneButtonClickedListener.onDoneButtonClicked(PickerFragment.this);
            }
        }

        _cls5()
        {
            this$0 = PickerFragment.this;
            super();
        }
    }


    private class _cls4
        implements com.facebook.Session.StatusCallback
    {

        final PickerFragment this$0;

        public void call(Session session, SessionState sessionstate, Exception exception)
        {
            if (!session.isOpened())
            {
                clearResults();
            }
        }

        _cls4()
        {
            this$0 = PickerFragment.this;
            super();
        }
    }


    private class _cls1
        implements GraphObjectAdapter.Filter
    {

        final PickerFragment this$0;

        public boolean includeItem(GraphObject graphobject)
        {
            return filterIncludesItem(graphobject);
        }

        public volatile boolean includeItem(Object obj)
        {
            return includeItem((GraphObject)obj);
        }

        _cls1()
        {
            this$0 = PickerFragment.this;
            super();
        }
    }


    private class _cls2
        implements android.widget.AdapterView.OnItemClickListener
    {

        final PickerFragment this$0;

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            onListItemClick((ListView)adapterview, view, i);
        }

        _cls2()
        {
            this$0 = PickerFragment.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnLongClickListener
    {

        final PickerFragment this$0;

        public boolean onLongClick(View view)
        {
            return false;
        }

        _cls3()
        {
            this$0 = PickerFragment.this;
            super();
        }
    }

}
