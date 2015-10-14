// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.push;

import android.util.Log;
import c.m.x.a.ep.p;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREExtension;

public class PushNotifyExtension
    implements FREExtension
{

    public PushNotifyExtension()
    {
    }

    public FREContext createContext(String s)
    {
        Log.d("[PushNotifyEx]", "->createContext()");
        return p.g();
    }

    public void dispose()
    {
    }

    public void initialize()
    {
    }
}
