// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;


// Referenced classes of package com.chartboost.sdk.impl:
//            cv, ck

public class cw extends cv
{

    final ck b;

    public ck b()
    {
        return b;
    }

    public boolean equals(Object obj)
    {
        if (!(obj instanceof cw))
        {
            return false;
        }
        obj = (cw)obj;
        return a.equals(((cw) (obj)).a) && b.equals(((cw) (obj)).b);
    }

    public int hashCode()
    {
        return a.hashCode() ^ b.hashCode();
    }
}
