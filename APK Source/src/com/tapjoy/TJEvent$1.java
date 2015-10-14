// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;


// Referenced classes of package com.tapjoy:
//            TJEvent, TJEventData, TapjoyLog, TapjoyURLConnection, 
//            TapjoyHttpURLResponse, TJEventCallback, TJError

class t> extends Thread
{

    final TJEvent this$0;

    public void run()
    {
        TapjoyHttpURLResponse tapjoyhttpurlresponse;
label0:
        {
label1:
            {
                TapjoyLog.i("TJEvent", (new StringBuilder()).append("Sending event: ").append(TJEvent.access$000(TJEvent.this).name).toString());
                tapjoyhttpurlresponse = (new TapjoyURLConnection()).getResponseFromURL(TJEvent.access$000(TJEvent.this).url, TJEvent.access$100(TJEvent.this));
                TJEvent.access$000(TJEvent.this).httpStatusCode = tapjoyhttpurlresponse.statusCode;
                TJEvent.access$000(TJEvent.this).httpResponse = tapjoyhttpurlresponse.response;
                String s = tapjoyhttpurlresponse.getHeaderFieldAsString("X-Tapjoy-Debug");
                if (s != null)
                {
                    TapjoyLog.v("TJEvent", (new StringBuilder()).append("Tapjoy-Server-Debug: ").append(s).toString());
                }
                if (tapjoyhttpurlresponse != null && TJEvent.access$200(TJEvent.this) != null)
                {
                    switch (tapjoyhttpurlresponse.statusCode)
                    {
                    default:
                        TapjoyLog.i("TJEvent", (new StringBuilder()).append("Send request delivered successfully for event ").append(TJEvent.access$000(TJEvent.this).name).append(", contentAvailable: ").append(TJEvent.access$300(TJEvent.this)).toString());
                        TJEvent.access$200(TJEvent.this).sendEventCompleted(TJEvent.this, TJEvent.access$300(TJEvent.this));
                        break;

                    case 0: // '\0'
                        break label0;

                    case 200: 
                        break label1;
                    }
                }
                return;
            }
            eventSuccess(tapjoyhttpurlresponse);
            return;
        }
        TapjoyLog.i("TJEvent", (new StringBuilder()).append("Send request failed for event ").append(TJEvent.access$000(TJEvent.this).name).toString());
        trackEventForOfflineDelivery();
        TJEvent.access$200(TJEvent.this).sendEventFail(TJEvent.this, new TJError(tapjoyhttpurlresponse.statusCode, tapjoyhttpurlresponse.response));
    }

    lback()
    {
        this$0 = TJEvent.this;
        super();
    }
}
