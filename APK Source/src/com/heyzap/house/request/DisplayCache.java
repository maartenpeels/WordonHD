// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.request;

import com.heyzap.house.model.AdModel;

public class DisplayCache
{

    private AdModel model;

    public DisplayCache()
    {
    }

    public void clear()
    {
        model = null;
    }

    public AdModel get()
    {
        return model;
    }

    public void set(AdModel admodel)
    {
        model = admodel;
    }
}
