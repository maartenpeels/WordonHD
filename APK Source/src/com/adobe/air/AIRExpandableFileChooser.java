// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.util.SparseBooleanArray;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.BaseExpandableListAdapter;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.air.utils.Utils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper, AndroidAlertDialog, FileChooserStub

public class AIRExpandableFileChooser
    implements android.widget.ExpandableListView.OnChildClickListener
{
    private class FileChooserExpandableListAdapter extends BaseExpandableListAdapter
    {

        private LayoutInflater mRuntimeInflater;
        private Resources mRuntimeResources;
        final AIRExpandableFileChooser this$0;

        public Object getChild(int i, int j)
        {
            return ((List)mChildData.get(i)).get(j);
        }

        public long getChildId(int i, int j)
        {
            return (long)j;
        }

        public View getChildView(int i, int j, boolean flag, View view, ViewGroup viewgroup)
        {
            if (view == null || !(view instanceof FileChooserItem))
            {
                view = new FileChooserItem(mRuntimeInflater, mRuntimeResources, viewgroup, i, j);
            } else
            {
                view = (FileChooserItem)view;
            }
            view.bindToData((FileInfo)((Map)((List)mChildData.get(i)).get(j)).get("FILEINFO"), i, j);
            return view;
        }

        public int getChildrenCount(int i)
        {
            return ((List)mChildData.get(i)).size();
        }

        public Object getGroup(int i)
        {
            return mGroupData.get(i);
        }

        public int getGroupCount()
        {
            return mGroupData.size();
        }

        public long getGroupId(int i)
        {
            return (long)i;
        }

        public View getGroupView(int i, boolean flag, View view, ViewGroup viewgroup)
        {
            if (view == null)
            {
                view = mRuntimeInflater.inflate(0x1090006, viewgroup, false);
            }
            viewgroup = (TextView)view.findViewById(0x1020014);
            if (viewgroup != null)
            {
                viewgroup.setText((CharSequence)((Map)mGroupData.get(i)).get("TYPE"));
            }
            return view;
        }

        public boolean hasStableIds()
        {
            return true;
        }

        public boolean isChildSelectable(int i, int j)
        {
            return true;
        }

        public FileChooserExpandableListAdapter(LayoutInflater layoutinflater, Resources resources)
        {
            this$0 = AIRExpandableFileChooser.this;
            super();
            mRuntimeInflater = null;
            mRuntimeResources = null;
            mRuntimeInflater = layoutinflater;
            mRuntimeResources = resources;
        }
    }

    private class FileChooserItem extends LinearLayout
    {

        private CompoundButton mFileCheckBox;
        private TextView mFileNameView;
        private TextView mFilePathView;
        private int mListFlatPosition;
        private android.widget.CompoundButton.OnCheckedChangeListener mListener;
        final AIRExpandableFileChooser this$0;

        public void bindToData(FileInfo fileinfo, int i, int j)
        {
            mFileNameView.setText(fileinfo.mFileName);
            mFilePathView.setText(fileinfo.mFilePath);
            if (mAllowMultiple)
            {
                mListFlatPosition = expandableListPositionToFlatPosition(i, j);
                mFileCheckBox.setOnCheckedChangeListener(null);
                mFileCheckBox.setChecked(mCheckedFiles.get(mListFlatPosition));
                mFileCheckBox.setOnCheckedChangeListener(mListener);
                fileinfo.mParent = this;
            }
        }

        public void toggle()
        {
            if (mAllowMultiple)
            {
                android.widget.CompoundButton.OnCheckedChangeListener oncheckedchangelistener = mListener;
                CompoundButton compoundbutton = mFileCheckBox;
                boolean flag;
                if (!mFileCheckBox.isChecked())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                oncheckedchangelistener.onCheckedChanged(compoundbutton, flag);
                mFileCheckBox.setOnCheckedChangeListener(null);
                mFileCheckBox.setChecked(mCheckedFiles.get(mListFlatPosition));
                mFileCheckBox.setOnCheckedChangeListener(mListener);
            }
        }

        public void uncheck()
        {
            if (mAllowMultiple)
            {
                mListener.onCheckedChanged(mFileCheckBox, false);
                mFileCheckBox.setOnCheckedChangeListener(null);
                mFileCheckBox.setChecked(false);
                mFileCheckBox.setOnCheckedChangeListener(mListener);
            }
        }


        FileChooserItem(LayoutInflater layoutinflater, Resources resources, ViewGroup viewgroup, int i, int j)
        {
            this$0 = AIRExpandableFileChooser.this;
            super(AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity());
            mListFlatPosition = -1;
            if (mAllowMultiple)
            {
                layoutinflater = Utils.GetLayoutViewFromRuntime("expandable_multiple_chooser_row", resources, layoutinflater);
                resources = layoutinflater.getResources();
                mFileNameView = (TextView)(TextView)Utils.GetWidgetInViewByName("filename", resources, layoutinflater);
                mFilePathView = (TextView)(TextView)Utils.GetWidgetInViewByName("filepath", resources, layoutinflater);
                mFileCheckBox = (CompoundButton)(CompoundButton)Utils.GetWidgetInViewByName("filecheck", resources, layoutinflater);
                if (mFileNameView != null && mFilePathView != null)
                {
                    if (mFileCheckBox != null);
                }
                mListFlatPosition = expandableListPositionToFlatPosition(i, j);
                mListener = new _cls1();
                addView(layoutinflater);
                return;
            }
            airexpandablefilechooser = Utils.GetLayoutViewFromRuntime("expandable_chooser_row", resources, layoutinflater);
            layoutinflater = getResources();
            mFileNameView = (TextView)(TextView)Utils.GetWidgetInViewByName("filename", layoutinflater, AIRExpandableFileChooser.this);
            mFilePathView = (TextView)(TextView)Utils.GetWidgetInViewByName("filepath", layoutinflater, AIRExpandableFileChooser.this);
            if (mFileNameView != null)
            {
                if (mFilePathView != null);
            }
            addView(AIRExpandableFileChooser.this);
        }
    }

    private class FileInfo
    {

        public String mFileName;
        public String mFilePath;
        public FileChooserItem mParent;
        final AIRExpandableFileChooser this$0;

        public FileInfo(String s, String s1)
        {
            this$0 = AIRExpandableFileChooser.this;
            super();
            mFileName = new String();
            mFilePath = new String();
            mParent = null;
            mFileName = s;
            mFilePath = s1;
        }
    }


    private static final String FILEINFO = "FILEINFO";
    public static final String TAG = com/adobe/air/AIRExpandableFileChooser.toString();
    private static final String TYPE = "TYPE";
    private static final String USER_ACTION_CANCEL = "cancel";
    private static final String USER_ACTION_DONE = "done";
    private ExpandableListAdapter mAdapter;
    private boolean mAllowMultiple;
    private SparseBooleanArray mCheckedFiles;
    private List mChildData;
    private AndroidAlertDialog mFileChooserDialog;
    private FileChooserStub mFileChooserStub;
    private final String mFileProjection[] = {
        "_data", "_display_name"
    };
    private EditText mFileSaveName;
    private ArrayList mFilenames;
    private List mGroupData;
    private View mMultipleFileSelectionView;
    private LayoutInflater mRuntimeInflater;
    private Resources mRuntimeResources;
    private boolean mSave;
    private String mSelection;

    public AIRExpandableFileChooser(ArrayList arraylist, boolean flag, boolean flag1, String s, FileChooserStub filechooserstub)
    {
        mSelection = new String();
        mMultipleFileSelectionView = null;
        mAllowMultiple = false;
        mSave = false;
        mCheckedFiles = new SparseBooleanArray();
        mFilenames = new ArrayList();
        mFileChooserDialog = null;
        mFileChooserStub = null;
        mRuntimeResources = null;
        mRuntimeInflater = null;
        mFileSaveName = null;
        mGroupData = new ArrayList();
        mChildData = new ArrayList();
        mSave = flag;
        mAllowMultiple = flag1;
        mFileChooserStub = filechooserstub;
        if (arraylist == null)
        {
            arraylist = new ArrayList();
            arraylist.add("*");
        }
        int j = arraylist.size();
        int i = 0;
        do
        {
label0:
            {
                if (i < j)
                {
                    String s1 = (String)arraylist.get(i);
                    filechooserstub = s1;
                    if (!s1.startsWith("*"))
                    {
                        break label0;
                    }
                    s1 = s1.substring(1);
                    filechooserstub = s1;
                    if (s1.length() != 0)
                    {
                        break label0;
                    }
                }
                filechooserstub = AndroidActivityWrapper.GetAndroidActivityWrapper();
                mFileChooserDialog = new AndroidAlertDialog(filechooserstub.getActivity());
                arraylist = mFileChooserDialog.GetAlertDialogBuilder();
                arraylist.setOnKeyListener(new android.content.DialogInterface.OnKeyListener() {

                    final AIRExpandableFileChooser this$0;

                    public boolean onKey(DialogInterface dialoginterface, int k, KeyEvent keyevent)
                    {
                        if (keyevent.getKeyCode() == 4)
                        {
                            mFileChooserStub.SetUserAction("cancel");
                        }
                        return false;
                    }

            
            {
                this$0 = AIRExpandableFileChooser.this;
                super();
            }
                });
                Object obj = filechooserstub.getRuntimeContext();
                mRuntimeInflater = LayoutInflater.from(((Context) (obj)));
                mRuntimeResources = ((Context) (obj)).getResources();
                obj = Utils.GetLayoutViewFromRuntime("main", mRuntimeResources, mRuntimeInflater);
                arraylist.setView(((View) (obj)));
                Resources resources = ((View) (obj)).getResources();
                ExpandableListView expandablelistview = (ExpandableListView)(ExpandableListView)Utils.GetWidgetInViewByName("list", resources, ((View) (obj)));
                expandablelistview.setOnChildClickListener(this);
                expandablelistview.setEmptyView(filechooserstub.getActivity().findViewById(0x1020004));
                filechooserstub = (RelativeLayout)Utils.GetWidgetInViewByName("file_save_panel", resources, ((View) (obj)));
                if (mSave)
                {
                    arraylist.setTitle(Utils.GetResourceStringFromRuntime("file_download", mRuntimeResources));
                    filechooserstub.setVisibility(0);
                    mFileSaveName = (EditText)Utils.GetWidgetInViewByName("file_save_name", resources, ((View) (obj)));
                    if (s != null)
                    {
                        mFileSaveName.setText((new StringBuilder()).append(Utils.GetExternalStorageDirectory()).append("/").append(s).toString());
                    }
                    mFileSaveName.setOnKeyListener(new android.view.View.OnKeyListener() {

                        final AIRExpandableFileChooser this$0;

                        public boolean onKey(View view, int k, KeyEvent keyevent)
                        {
                            if (keyevent.getAction() == 0 && k == 66)
                            {
                                view = mFileSaveName.getText().toString();
                                if (view.length() != 0)
                                {
                                    mFilenames.clear();
                                    mFilenames.add(view);
                                    mFileChooserStub.SetUserAction("done");
                                    HideVirtualKeyboard(mFileSaveName);
                                    mFileChooserDialog.dismiss();
                                }
                                return true;
                            } else
                            {
                                return false;
                            }
                        }

            
            {
                this$0 = AIRExpandableFileChooser.this;
                super();
            }
                    });
                    ((Button)Utils.GetWidgetInViewByName("file_save_button", resources, ((View) (obj)))).setOnClickListener(new android.view.View.OnClickListener() {

                        final AIRExpandableFileChooser this$0;

                        public void onClick(View view)
                        {
                            view = mFileSaveName.getText().toString();
                            if (view.length() != 0)
                            {
                                mFilenames.clear();
                                mFilenames.add(view);
                                mFileChooserStub.SetUserAction("done");
                                HideVirtualKeyboard(mFileSaveName);
                                mFileChooserDialog.dismiss();
                            }
                        }

            
            {
                this$0 = AIRExpandableFileChooser.this;
                super();
            }
                    });
                } else
                {
                    arraylist.setTitle(Utils.GetResourceStringFromRuntime("file_upload", mRuntimeResources));
                    filechooserstub.setVisibility(8);
                }
                AddMediaSubtree(Utils.GetResourceStringFromRuntime("audio_files", mRuntimeResources), android.provider.MediaStore.Audio.Media.EXTERNAL_CONTENT_URI);
                AddMediaSubtree(Utils.GetResourceStringFromRuntime("image_files", mRuntimeResources), android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
                AddMediaSubtree(Utils.GetResourceStringFromRuntime("video_files", mRuntimeResources), android.provider.MediaStore.Video.Media.EXTERNAL_CONTENT_URI);
                if (!mGroupData.isEmpty())
                {
                    mAdapter = new FileChooserExpandableListAdapter(mRuntimeInflater, mRuntimeResources);
                    expandablelistview.setAdapter(mAdapter);
                    expandablelistview.setItemsCanFocus(true);
                    ((TextView)(TextView)Utils.GetWidgetInViewByName("empty", resources, ((View) (obj)))).setVisibility(8);
                } else
                {
                    expandablelistview.setVisibility(8);
                }
                if (mAllowMultiple)
                {
                    createInvisibleMultipleFileSelectionView();
                }
                return;
            }
            if (mSelection.length() != 0)
            {
                mSelection = (new StringBuilder()).append(mSelection).append(" OR ").toString();
            }
            mSelection = (new StringBuilder()).append(mSelection).append("_display_name LIKE '%").append(filechooserstub).append("'").toString();
            i++;
        } while (true);
    }

    private void AddMediaSubtree(String s, Uri uri)
    {
        Activity activity = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity();
        String as[] = mFileProjection;
        Object obj;
        if (mSelection.length() == 0)
        {
            obj = null;
        } else
        {
            obj = mSelection;
        }
        uri = activity.managedQuery(uri, as, ((String) (obj)), null, null);
        obj = new ArrayList();
        if (uri != null && uri.moveToFirst())
        {
            HashMap hashmap = new HashMap();
            hashmap.put("TYPE", s);
            mGroupData.add(hashmap);
            do
            {
                s = new FileInfo(uri.getString(uri.getColumnIndex("_display_name")), uri.getString(uri.getColumnIndex("_data")));
                HashMap hashmap1 = new HashMap();
                ((List) (obj)).add(hashmap1);
                hashmap1.put("FILEINFO", s);
            } while (uri.moveToNext());
            mChildData.add(obj);
        }
    }

    private void HideVirtualKeyboard(View view)
    {
        InputMethodManager inputmethodmanager = (InputMethodManager)view.getContext().getSystemService("input_method");
        if (inputmethodmanager != null)
        {
            inputmethodmanager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    private void createInvisibleMultipleFileSelectionView()
    {
        android.app.AlertDialog.Builder builder = mFileChooserDialog.GetAlertDialogBuilder();
        builder.setPositiveButton(Utils.GetResourceStringFromRuntime("button_ok", mRuntimeResources), new android.content.DialogInterface.OnClickListener() {

            final AIRExpandableFileChooser this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                mFilenames.clear();
                int k = mGroupData.size();
                for (i = 0; i < k; i++)
                {
                    int l = ((List)mChildData.get(i)).size();
                    for (int j = 0; j < l; j++)
                    {
                        int i1 = expandableListPositionToFlatPosition(i, j);
                        if (mCheckedFiles.get(i1))
                        {
                            dialoginterface = (HashMap)mAdapter.getChild(i, j);
                            mFilenames.add(((FileInfo)dialoginterface.get("FILEINFO")).mFilePath);
                        }
                    }

                }

                mFileChooserStub.SetUserAction("done");
            }

            
            {
                this$0 = AIRExpandableFileChooser.this;
                super();
            }
        });
        builder.setNegativeButton(Utils.GetResourceStringFromRuntime("button_cancel", mRuntimeResources), new android.content.DialogInterface.OnClickListener() {

            final AIRExpandableFileChooser this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                uncheckAll();
                mFileChooserStub.SetUserAction("cancel");
            }

            
            {
                this$0 = AIRExpandableFileChooser.this;
                super();
            }
        });
    }

    private int expandableListPositionToFlatPosition(int i, int j)
    {
        int k = 0;
        if (i < 0 || i >= mChildData.size())
        {
            return -1;
        }
        if (j < 0 || j >= ((List)mChildData.get(i)).size())
        {
            return -1;
        }
        for (int l = 0; l < i;)
        {
            int i1 = ((List)mChildData.get(l)).size();
            l++;
            k = i1 + k;
        }

        return k + j;
    }

    private void uncheckAll()
    {
        if (mAllowMultiple)
        {
            int k = mGroupData.size();
            int i = 0;
            while (i < k) 
            {
                int l = ((List)mChildData.get(i)).size();
                for (int j = 0; j < l; j++)
                {
                    FileChooserItem filechooseritem = ((FileInfo)((HashMap)mAdapter.getChild(i, j)).get("FILEINFO")).mParent;
                    if (filechooseritem != null)
                    {
                        filechooseritem.uncheck();
                    }
                }

                i++;
            }
        }
    }

    public AndroidAlertDialog GetDialog()
    {
        return mFileChooserDialog;
    }

    public ArrayList GetFileNames()
    {
        return mFilenames;
    }

    public boolean onChildClick(ExpandableListView expandablelistview, View view, int i, int j, long l)
    {
        if (!(view instanceof FileChooserItem))
        {
            return false;
        }
        expandablelistview = (FileChooserItem)view;
        if (!mAllowMultiple)
        {
            expandablelistview = (HashMap)mAdapter.getChild(i, j);
            if (mSave)
            {
                mFileSaveName.setText(((FileInfo)expandablelistview.get("FILEINFO")).mFilePath);
            } else
            {
                mFilenames.clear();
                mFilenames.add(((FileInfo)expandablelistview.get("FILEINFO")).mFilePath);
                mFileChooserStub.SetUserAction("done");
                mFileChooserDialog.dismiss();
            }
        } else
        {
            expandablelistview.toggle();
        }
        return true;
    }














    // Unreferenced inner class com/adobe/air/AIRExpandableFileChooser$FileChooserItem$1

/* anonymous class */
    class FileChooserItem._cls1
        implements android.widget.CompoundButton.OnCheckedChangeListener
    {

        final FileChooserItem this$1;
        final AIRExpandableFileChooser val$this$0;

        public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
        {
            if (mListFlatPosition < 0)
            {
                return;
            }
            if (flag)
            {
                mCheckedFiles.put(mListFlatPosition, flag);
                return;
            } else
            {
                mCheckedFiles.delete(mListFlatPosition);
                return;
            }
        }

            
            {
                this$1 = final_filechooseritem;
                this$0 = AIRExpandableFileChooser.this;
                super();
            }
    }

}
