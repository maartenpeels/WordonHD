// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.filters;

import android.content.SharedPreferences;

// Referenced classes of package com.heyzap.mediation.filters:
//            Store

class SharedPreferenceStore
    implements Store
{

    private final String key;
    private final SharedPreferences sharedPreferences;
    private String value;

    public SharedPreferenceStore(SharedPreferences sharedpreferences, String s, String s1)
    {
        sharedPreferences = sharedpreferences;
        key = s;
        value = sharedpreferences.getString(s, s1);
    }

    public volatile Object get()
    {
        return get();
    }

    public String get()
    {
        return value;
    }

    public volatile void set(Object obj)
    {
        set((String)obj);
    }

    public void set(String s)
    {
        value = s;
        sharedPreferences.edit().putString(key, s).commit();
    }
}
