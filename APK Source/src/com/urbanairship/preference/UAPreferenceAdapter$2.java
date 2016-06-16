// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.preference;

import android.preference.Preference;
import java.util.Map;

// Referenced classes of package com.urbanairship.preference:
//            UAPreferenceAdapter

class a
    implements android.preference.eChangeListener
{

    final eType a;
    final UAPreferenceAdapter b;

    public boolean onPreferenceChange(Preference preference, Object obj)
    {
        UAPreferenceAdapter.a(b).put(a, obj);
        return true;
    }

    eType(UAPreferenceAdapter uapreferenceadapter, eType etype)
    {
        b = uapreferenceadapter;
        a = etype;
        super();
    }
}
