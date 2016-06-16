// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.preference;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

// Referenced classes of package com.urbanairship.preference:
//            UAPreference

public class ApidPreference extends Preference
    implements UAPreference
{

    public ApidPreference(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public final UAPreference.PreferenceType a()
    {
        return UAPreference.PreferenceType.j;
    }

    public final void a(Object obj)
    {
        setSummary((String)obj);
    }

    public View onCreateView(ViewGroup viewgroup)
    {
        viewgroup = super.onCreateView(viewgroup);
        viewgroup.setContentDescription(UAPreference.PreferenceType.j.toString());
        return viewgroup;
    }
}
