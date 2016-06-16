// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.media.AudioTrack;

public class AJAudioTrack extends AudioTrack
{

    private static int sStreamType = 3;
    private byte mBuf[];

    public AJAudioTrack(int i, int j, int k, int l)
    {
        super(sStreamType, i, k, j, l, 1);
        mBuf = new byte[l];
    }

    public static AJAudioTrack CreateTrack(int i, int j, int k, int l)
    {
        Object obj;
        int i1;
        try
        {
            i1 = AudioTrack.getMinBufferSize(i, ToAndroidChannelCount(k), ToAndroidFormat(j));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return null;
        }
        if (l < i1)
        {
            l = i1;
        }
        obj = new AJAudioTrack(i, ToAndroidFormat(j), ToAndroidChannelCount(k), l);
        if (((AJAudioTrack) (obj)).getState() == 1)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        ((AJAudioTrack) (obj)).release();
        return null;
        return ((AJAudioTrack) (obj));
    }

    public static void SetStreamType(int i)
    {
        sStreamType = i;
    }

    public static int ToAndroidChannelCount(int i)
    {
        return i != 1 ? 12 : 4;
    }

    public static int ToAndroidFormat(int i)
    {
        return i != 1 ? 2 : 3;
    }

    public byte[] GetBuffer()
    {
        return mBuf;
    }

    public boolean playing()
    {
        return getPlayState() == 3;
    }

    public boolean stopped()
    {
        return getPlayState() == 1;
    }

}
