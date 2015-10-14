// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import android.graphics.Rect;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class NinePatchChunk
{

    public static final int NO_COLOR = 1;
    public static final int TRANSPARENT_COLOR = 0;
    public int mColor[];
    public int mDivX[];
    public int mDivY[];
    public Rect mPaddings;

    public NinePatchChunk()
    {
        mPaddings = new Rect();
    }

    private static void checkDivCount(int i)
    {
        if (i == 0 || (i & 1) != 0)
        {
            throw new RuntimeException((new StringBuilder()).append("invalid nine-patch: ").append(i).toString());
        } else
        {
            return;
        }
    }

    public static NinePatchChunk deserialize(byte abyte0[])
    {
        abyte0 = ByteBuffer.wrap(abyte0).order(ByteOrder.nativeOrder());
        if (abyte0.get() == 0)
        {
            return null;
        } else
        {
            NinePatchChunk ninepatchchunk = new NinePatchChunk();
            ninepatchchunk.mDivX = new int[abyte0.get()];
            ninepatchchunk.mDivY = new int[abyte0.get()];
            ninepatchchunk.mColor = new int[abyte0.get()];
            checkDivCount(ninepatchchunk.mDivX.length);
            checkDivCount(ninepatchchunk.mDivY.length);
            abyte0.getInt();
            abyte0.getInt();
            ninepatchchunk.mPaddings.left = abyte0.getInt();
            ninepatchchunk.mPaddings.right = abyte0.getInt();
            ninepatchchunk.mPaddings.top = abyte0.getInt();
            ninepatchchunk.mPaddings.bottom = abyte0.getInt();
            abyte0.getInt();
            readIntArray(ninepatchchunk.mDivX, abyte0);
            readIntArray(ninepatchchunk.mDivY, abyte0);
            readIntArray(ninepatchchunk.mColor, abyte0);
            return ninepatchchunk;
        }
    }

    private static void readIntArray(int ai[], ByteBuffer bytebuffer)
    {
        int i = 0;
        for (int j = ai.length; i < j; i++)
        {
            ai[i] = bytebuffer.getInt();
        }

    }
}
