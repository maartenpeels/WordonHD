// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.graphics.Bitmap;

class DrawRequest
{

    public static final int messageID = 1009;
    public int bgColor;
    public Bitmap bm;
    public int dstHt;
    public int dstWd;
    public int dstX;
    public int dstY;
    public boolean fullsc;
    public int ht;
    public boolean scale;
    public int wd;
    public int x;
    public int y;

    public DrawRequest(int i, int j, int k, int l, Bitmap bitmap)
    {
        scale = false;
        fullsc = false;
        x = i;
        y = j;
        wd = k;
        ht = l;
        bm = bitmap;
        scale = false;
    }

    public DrawRequest(int i, int j, int k, int l, Bitmap bitmap, int i1, int j1, 
            int k1, int l1, boolean flag, int i2)
    {
        scale = false;
        fullsc = false;
        x = i;
        y = j;
        wd = k;
        ht = l;
        bm = bitmap;
        dstX = i1;
        dstY = j1;
        dstWd = k1;
        dstHt = l1;
        scale = true;
        fullsc = flag;
        bgColor = i2;
    }
}
