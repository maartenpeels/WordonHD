// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.preference;

import android.content.Context;
import android.preference.CheckBoxPreference;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

// Referenced classes of package com.urbanairship.preference:
//            UAPreference

abstract class UACheckBoxPreference extends CheckBoxPreference
    implements UAPreference
{

    public UACheckBoxPreference(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public void a(Object obj)
    {
        setChecked(((Boolean)obj).booleanValue());
    }

    public View onCreateView(ViewGroup viewgroup)
    {
        viewgroup = super.onCreateView(viewgroup);
        viewgroup.setContentDescription(a().toString());
        return viewgroup;
    }

    protected boolean shouldPersist()
    {
        return false;
    }
}
