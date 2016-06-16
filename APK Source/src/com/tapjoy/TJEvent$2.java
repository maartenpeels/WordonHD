// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;


// Referenced classes of package com.tapjoy:
//            TapjoyCacheNotifier, TJEvent

class t>
    implements TapjoyCacheNotifier
{

    final TJEvent this$0;

    public void cachingComplete(int i)
    {
        TJEvent.access$400(TJEvent.this, i);
    }

    eNotifier()
    {
        this$0 = TJEvent.this;
        super();
    }
}
