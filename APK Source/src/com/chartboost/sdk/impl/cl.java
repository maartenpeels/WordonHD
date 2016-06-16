// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;


// Referenced classes of package com.chartboost.sdk.impl:
//            ci, cr

public class cl
    implements ci
{

    static final String a[] = new String[128];
    private byte b[];
    private byte c[];
    private cr d;

    public cl()
    {
        b = new byte[1024];
        c = new byte[1024];
        d = new cr();
    }

    static void a(byte byte0, byte byte1)
    {
        for (; byte0 < byte1; byte0++)
        {
            String s = (new StringBuilder()).append("").append((char)byte0).toString();
            a[byte0] = s;
        }

    }

    static 
    {
        a((byte)48, (byte)57);
        a((byte)97, (byte)122);
        a((byte)65, (byte)90);
    }
}
