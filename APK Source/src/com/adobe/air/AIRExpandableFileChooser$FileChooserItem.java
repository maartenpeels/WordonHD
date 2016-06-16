// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.res.Resources;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.adobe.air.utils.Utils;

// Referenced classes of package com.adobe.air:
//            AIRExpandableFileChooser, AndroidActivityWrapper

private class addView extends LinearLayout
{

    private CompoundButton mFileCheckBox;
    private TextView mFileNameView;
    private TextView mFilePathView;
    private int mListFlatPosition;
    private android.widget.Listener mListener;
    final AIRExpandableFileChooser this$0;

    public void bindToData(addView addview, int i, int j)
    {
        mFileNameView.setText(addview.me);
        mFilePathView.setText(addview.th);
        if (AIRExpandableFileChooser.access$000(AIRExpandableFileChooser.this))
        {
            mListFlatPosition = AIRExpandableFileChooser.access$100(AIRExpandableFileChooser.this, i, j);
            mFileCheckBox.setOnCheckedChangeListener(null);
            mFileCheckBox.setChecked(AIRExpandableFileChooser.access$300(AIRExpandableFileChooser.this).get(mListFlatPosition));
            mFileCheckBox.setOnCheckedChangeListener(mListener);
            addview. = this;
        }
    }

    public void toggle()
    {
        if (AIRExpandableFileChooser.access$000(AIRExpandableFileChooser.this))
        {
            android.widget.Listener listener = mListener;
            CompoundButton compoundbutton = mFileCheckBox;
            boolean flag;
            if (!mFileCheckBox.isChecked())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            listener.CheckedChanged(compoundbutton, flag);
            mFileCheckBox.setOnCheckedChangeListener(null);
            mFileCheckBox.setChecked(AIRExpandableFileChooser.access$300(AIRExpandableFileChooser.this).get(mListFlatPosition));
            mFileCheckBox.setOnCheckedChangeListener(mListener);
        }
    }

    public void uncheck()
    {
        if (AIRExpandableFileChooser.access$000(AIRExpandableFileChooser.this))
        {
            mListener.CheckedChanged(mFileCheckBox, false);
            mFileCheckBox.setOnCheckedChangeListener(null);
            mFileCheckBox.setChecked(false);
            mFileCheckBox.setOnCheckedChangeListener(mListener);
        }
    }


    _cls1.val.this._cls0(LayoutInflater layoutinflater, Resources resources, ViewGroup viewgroup, int i, int j)
    {
        this.this$0 = AIRExpandableFileChooser.this;
        super(AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity());
        mListFlatPosition = -1;
        if (AIRExpandableFileChooser.access$000(AIRExpandableFileChooser.this))
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
            mListFlatPosition = AIRExpandableFileChooser.access$100(AIRExpandableFileChooser.this, i, j);
            mListener = new android.widget.CompoundButton.OnCheckedChangeListener() {

                final AIRExpandableFileChooser.FileChooserItem this$1;
                final AIRExpandableFileChooser val$this$0;

                public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
                {
                    if (mListFlatPosition < 0)
                    {
                        return;
                    }
                    if (flag)
                    {
                        AIRExpandableFileChooser.access$300(AIRExpandableFileChooser.FileChooserItem.this.this$0).put(mListFlatPosition, flag);
                        return;
                    } else
                    {
                        AIRExpandableFileChooser.access$300(AIRExpandableFileChooser.FileChooserItem.this.this$0).delete(mListFlatPosition);
                        return;
                    }
                }

            
            {
                this$1 = AIRExpandableFileChooser.FileChooserItem.this;
                this$0 = airexpandablefilechooser;
                super();
            }
            };
            addView(layoutinflater);
            return;
        }
        this$0 = Utils.GetLayoutViewFromRuntime("expandable_chooser_row", resources, layoutinflater);
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
