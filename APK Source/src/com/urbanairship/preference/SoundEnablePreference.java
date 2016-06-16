// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

// Referenced classes of package com.urbanairship.preference:
//            UACheckBoxPreference

public class SoundEnablePreference extends UACheckBoxPreference
{

    public SoundEnablePreference(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public final UAPreference.PreferenceType a()
    {
        return UAPreference.PreferenceType.b;
    }

    public final volatile void a(Object obj)
    {
        super.a(obj);
    }

    public volatile View onCreateView(ViewGroup viewgroup)
    {
        return super.onCreateView(viewgroup);
    }
}
