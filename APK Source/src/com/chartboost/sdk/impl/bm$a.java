// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.os.Bundle;

// Referenced classes of package com.chartboost.sdk.impl:
//            bm

public static class 
{

    private final Bundle a = new Bundle();

    public  a(String s)
    {
        a.putString("arg:title", s);
        return this;
    }

    public bm a(Context context, a a1)
    {
        return new bm(context, a, a1);
    }

    public a b(String s)
    {
        a.putString("arg:message", s);
        return this;
    }

    public a c(String s)
    {
        a.putString("arg:left", s);
        return this;
    }

    public a d(String s)
    {
        a.putString("arg:right", s);
        return this;
    }

    public ()
    {
    }
}
