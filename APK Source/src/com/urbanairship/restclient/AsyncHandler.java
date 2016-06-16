// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.restclient;

import com.urbanairship.Logger;

// Referenced classes of package com.urbanairship.restclient:
//            Response

public abstract class AsyncHandler
{

    public AsyncHandler()
    {
    }

    public void a(int i)
    {
    }

    public abstract void a(Response response);

    public void a(Exception exception)
    {
        Logger.c("Request threw exception:", exception);
    }
}
