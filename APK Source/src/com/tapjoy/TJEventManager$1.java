// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import java.util.LinkedHashMap;

// Referenced classes of package com.tapjoy:
//            TJEventManager

static final class  extends LinkedHashMap
{

    private static final long serialVersionUID = 0x506aca8d43dcbea9L;

    protected boolean removeEldestEntry(java.util. )
    {
        return size() > 20;
    }

    ()
    {
    }
}
