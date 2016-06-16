// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;


// Referenced classes of package com.heyzap.internal:
//            FetchRateLimiter

private static class <init>
{

    public final int orientation;
    public final String tag;

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (obj == null || getClass() != obj.getClass())
        {
            return false;
        }
        obj = (<init>)obj;
        if (orientation != ((orientation) (obj)).orientation)
        {
            return false;
        }
        return tag.equals(((tag) (obj)).tag);
    }

    public int hashCode()
    {
        return tag.hashCode() * 31 + orientation;
    }

    private (String s, int i)
    {
        tag = s;
        orientation = i;
    }

    orientation(String s, int i, orientation orientation1)
    {
        this(s, i);
    }
}
