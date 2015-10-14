// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.restclient;


// Referenced classes of package com.urbanairship.restclient:
//            AsyncHandler, RequestQueue, Request, Response

class nit> extends AsyncHandler
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

    (RequestQueue requestqueue, Request request, AsyncHandler asynchandler)
    {
        c = requestqueue;
        a = request;
        b = asynchandler;
        super();
    }
}
