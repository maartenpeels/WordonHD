// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import java.net.URI;

// Referenced classes of package com.facebook.internal:
//            ImageDownloader

private static class tag
{

    private static final int HASH_MULTIPLIER = 37;
    private static final int HASH_SEED = 29;
    Object tag;
    URI uri;

    public final boolean equals(Object obj)
    {
        if (obj != null && (obj instanceof tag))
        {
            obj = (tag)obj;
            return ((tag) (obj)).uri == uri && ((uri) (obj)).tag == tag;
        } else
        {
            return false;
        }
    }

    public final int hashCode()
    {
        return (uri.hashCode() + 1073) * 37 + tag.hashCode();
    }

    (URI uri1, Object obj)
    {
        uri = uri1;
        tag = obj;
    }
}
