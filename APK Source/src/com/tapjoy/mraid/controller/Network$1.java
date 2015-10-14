// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.controller;


// Referenced classes of package com.tapjoy.mraid.controller:
//            Network

static class 
{

    static final int $SwitchMap$android$net$NetworkInfo$State[];

    static 
    {
        $SwitchMap$android$net$NetworkInfo$State = new int[android.net.o.State.values().length];
        try
        {
            $SwitchMap$android$net$NetworkInfo$State[android.net.o.State.UNKNOWN.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$android$net$NetworkInfo$State[android.net.o.State.DISCONNECTED.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
