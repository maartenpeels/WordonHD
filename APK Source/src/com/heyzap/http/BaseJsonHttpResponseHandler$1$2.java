// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.http;

import org.apache.http.Header;

// Referenced classes of package com.heyzap.http:
//            BaseJsonHttpResponseHandler

class val.t
    implements Runnable
{

    final l.responseString this$1;
    final Throwable val$t;

    public void run()
    {
        onFailure(statusCode, headers, val$t, responseString, null);
    }

    l.headers()
    {
        this$1 = final_headers;
        val$t = Throwable.this;
        super();
    }

    // Unreferenced inner class com/heyzap/http/BaseJsonHttpResponseHandler$1

/* anonymous class */
    class BaseJsonHttpResponseHandler._cls1
        implements Runnable
    {

        final BaseJsonHttpResponseHandler this$0;
        final Header val$headers[];
        final String val$responseString;
        final int val$statusCode;

        public void run()
        {
            try
            {
                final Object jsonResponse = parseResponse(responseString, false);
                postRunnable(new BaseJsonHttpResponseHandler._cls1._cls1());
                return;
            }
            catch (Throwable throwable)
            {
                postRunnable(throwable. new BaseJsonHttpResponseHandler._cls1._cls2());
            }
        }

            
            {
                this$0 = final_basejsonhttpresponsehandler;
                responseString = s;
                statusCode = i;
                headers = _5B_Lorg.apache.http.Header_3B_.this;
                super();
            }

        // Unreferenced inner class com/heyzap/http/BaseJsonHttpResponseHandler$1$1

/* anonymous class */
        class BaseJsonHttpResponseHandler._cls1._cls1
            implements Runnable
        {

            final BaseJsonHttpResponseHandler._cls1 this$1;
            final Object val$jsonResponse;

            public void run()
            {
                onSuccess(statusCode, headers, responseString, jsonResponse);
            }

                    
                    {
                        this$1 = BaseJsonHttpResponseHandler._cls1.this;
                        jsonResponse = obj;
                        super();
                    }
        }

    }

}
