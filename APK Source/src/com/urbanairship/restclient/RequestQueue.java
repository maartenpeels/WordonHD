// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.restclient;

import com.urbanairship.Logger;
import java.util.HashMap;
import java.util.LinkedList;

// Referenced classes of package com.urbanairship.restclient:
//            Request, AsyncHandler

public class RequestQueue
{

    private LinkedList a;
    private HashMap b;
    private int c;
    private int d;

    public RequestQueue()
    {
        c = 3;
        d = 0;
        a = new LinkedList();
        b = new HashMap();
    }

    private void a()
    {
        while (d < c && !a.isEmpty()) 
        {
            Request request = (Request)a.poll();
            Logger.b((new StringBuilder("running request ")).append(request.getURI()).toString());
            d = d + 1;
            AsyncHandler asynchandler = (AsyncHandler)b.get(request);
            try
            {
                request.a(new _cls1(request, asynchandler));
            }
            catch (Exception exception)
            {
                Logger.c("Error running request", exception);
                asynchandler.a(exception);
                a(request);
            }
        }
    }

    private void a(Request request)
    {
        this;
        JVM INSTR monitorenter ;
        Logger.b((new StringBuilder("removing request ")).append(request.getURI()).toString());
        b.remove(request);
        d = d - 1;
        a();
        this;
        JVM INSTR monitorexit ;
        return;
        request;
        throw request;
    }

    static void a(RequestQueue requestqueue, Request request)
    {
        requestqueue.a(request);
    }

    private class _cls1 extends AsyncHandler
    {

        final Request a;
        final AsyncHandler b;
        final RequestQueue c;

        public final void a(int i)
        {
            b.a(i);
        }

        public final void a(Response response)
        {
            RequestQueue.a(c, a);
            b.a(response);
        }

        public final void a(Exception exception)
        {
            RequestQueue.a(c, a);
            b.a(exception);
        }

        _cls1(Request request, AsyncHandler asynchandler)
        {
            c = RequestQueue.this;
            a = request;
            b = asynchandler;
            super();
        }
    }

}
