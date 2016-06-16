// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.restclient;

import com.urbanairship.Logger;

// Referenced classes of package com.urbanairship.restclient:
//            Request, AsyncHandler

class b
    implements Runnable
{

    final AsyncHandler a;
    final Request b;
    final Request c;

    public void run()
    {
        try
        {
            (new ckgroundRequest(c, a)).execute(new Request[] {
                b
            });
            return;
        }
        catch (Exception exception)
        {
            Logger.c("Unable to execute request.", exception);
        }
    }

    er(Request request, AsyncHandler asynchandler, Request request1)
    {
        c = request;
        a = asynchandler;
        b = request1;
        super();
    }
}
