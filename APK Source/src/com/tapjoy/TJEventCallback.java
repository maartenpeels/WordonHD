// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;


// Referenced classes of package com.tapjoy:
//            TJEvent, TJEventRequest, TJError

public interface TJEventCallback
{

    public abstract void contentDidDisappear(TJEvent tjevent);

    public abstract void contentDidShow(TJEvent tjevent);

    public abstract void contentIsReady(TJEvent tjevent, int i);

    public abstract void didRequestAction(TJEvent tjevent, TJEventRequest tjeventrequest);

    public abstract void sendEventCompleted(TJEvent tjevent, boolean flag);

    public abstract void sendEventFail(TJEvent tjevent, TJError tjerror);
}
