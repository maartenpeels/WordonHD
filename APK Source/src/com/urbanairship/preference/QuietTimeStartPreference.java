// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

// Referenced classes of package com.urbanairship.preference:
//            QuietTimePickerPreference

public class QuietTimeStartPreference extends QuietTimePickerPreference
{

    public QuietTimeStartPreference(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public final UAPreference.PreferenceType a()
    {
        return UAPreference.PreferenceType.e;
    }

    public final volatile void a(Object obj)
    {
        super.a(obj);
    }

    public final volatile String b()
    {
        return super.b();
    }

    public volatile View onCreateView(ViewGroup viewgroup)
    {
        return super.onCreateView(viewgroup);
    }

    public volatile void onDialogClosed(boolean flag)
    {
        super.onDialogClosed(flag);
    }
}
