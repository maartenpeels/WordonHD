// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.TextView;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.adobe.air:
//            AIRExpandableFileChooser

private class mRuntimeResources extends BaseExpandableListAdapter
{

    private LayoutInflater mRuntimeInflater;
    private Resources mRuntimeResources;
    final AIRExpandableFileChooser this$0;

    public Object getChild(int i, int j)
    {
        return ((List)AIRExpandableFileChooser.access$400(AIRExpandableFileChooser.this).get(i)).get(j);
    }

    public long getChildId(int i, int j)
    {
        return (long)j;
    }

    public View getChildView(int i, int j, boolean flag, View view, ViewGroup viewgroup)
    {
        if (view == null || !(view instanceof this._cls0))
        {
            view = new this._cls0(AIRExpandableFileChooser.this, mRuntimeInflater, mRuntimeResources, viewgroup, i, j);
        } else
        {
            view = (mRuntimeResources)view;
        }
        view.mRuntimeResources((mRuntimeResources)((Map)((List)AIRExpandableFileChooser.access$400(AIRExpandableFileChooser.this).get(i)).get(j)).get("FILEINFO"), i, j);
        return view;
    }

    public int getChildrenCount(int i)
    {
        return ((List)AIRExpandableFileChooser.access$400(AIRExpandableFileChooser.this).get(i)).size();
    }

    public Object getGroup(int i)
    {
        return AIRExpandableFileChooser.access$500(AIRExpandableFileChooser.this).get(i);
    }

    public int getGroupCount()
    {
        return AIRExpandableFileChooser.access$500(AIRExpandableFileChooser.this).size();
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
            viewgroup.setText((CharSequence)((Map)AIRExpandableFileChooser.access$500(AIRExpandableFileChooser.this).get(i)).get("TYPE"));
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

    public (LayoutInflater layoutinflater, Resources resources)
    {
        this$0 = AIRExpandableFileChooser.this;
        super();
        mRuntimeInflater = null;
        mRuntimeResources = null;
        mRuntimeInflater = layoutinflater;
        mRuntimeResources = resources;
    }
}
