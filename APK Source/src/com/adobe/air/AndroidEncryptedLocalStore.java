// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;

// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper

class AndroidEncryptedLocalStore
{

    private static final String LOG_TAG = "AndroidELS -------";

    AndroidEncryptedLocalStore()
    {
    }

    public byte[] getItem(String s, String s1)
        throws OutOfMemoryError
    {
        s = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity().getApplicationContext().getSharedPreferences(s, 0).getString(s1, null);
        if (s != null)
        {
            return Base64.decode(s, 0);
        } else
        {
            return null;
        }
    }

    public boolean removeItem(String s, String s1)
    {
        s = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity().getApplicationContext().getSharedPreferences(s, 0).edit();
        s.remove(s1);
        return s.commit();
    }

    public boolean reset(String s)
    {
        s = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity().getApplicationContext().getSharedPreferences(s, 0).edit();
        s.clear();
        return s.commit();
    }

    public boolean setItem(String s, String s1, byte abyte0[])
        throws OutOfMemoryError
    {
        abyte0 = Base64.encodeToString(abyte0, 0);
        s = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity().getApplicationContext().getSharedPreferences(s, 0).edit();
        s.putString(s1, abyte0);
        return s.commit();
    }
}
