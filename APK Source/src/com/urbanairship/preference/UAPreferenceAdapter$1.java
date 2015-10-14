// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.preference;


// Referenced classes of package com.urbanairship.preference:
//            UAPreferenceAdapter, UAPreference

class a
    implements Runnable
{

    final UAPreference a;
    final UAPreferenceAdapter b;

    public void run()
    {
        UAPreferenceAdapter.a(b, a);
    }

    (UAPreferenceAdapter uapreferenceadapter, UAPreference uapreference)
    {
        b = uapreferenceadapter;
        a = uapreference;
        super();
    }
}
