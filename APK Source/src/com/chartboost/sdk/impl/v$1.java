// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Comparator;

// Referenced classes of package com.chartboost.sdk.impl:
//            v

class 
    implements Comparator
{

    public int a(byte abyte0[], byte abyte1[])
    {
        return abyte0.length - abyte1.length;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((byte[])obj, (byte[])obj1);
    }

    ()
    {
    }
}
