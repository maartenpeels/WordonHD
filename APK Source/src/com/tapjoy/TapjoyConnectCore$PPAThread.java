// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import java.util.Map;

// Referenced classes of package com.tapjoy:
//            TapjoyConnectCore, TapjoyURLConnection, TapjoyHttpURLResponse

public class params
    implements Runnable
{

    private Map params;
    final TapjoyConnectCore this$0;

    public void run()
    {
        TapjoyHttpURLResponse tapjoyhttpurlresponse = TapjoyConnectCore.access$600().getResponseFromURL((new StringBuilder()).append(TapjoyConnectCore.getHostURL()).append("connect?").toString(), params);
        if (tapjoyhttpurlresponse.response != null)
        {
            TapjoyConnectCore.access$900(TapjoyConnectCore.this, tapjoyhttpurlresponse.response);
        }
    }

    public (Map map)
    {
        this$0 = TapjoyConnectCore.this;
        super();
        params = map;
    }
}
