// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;

import com.adobe.fre.FREContext;
import com.tapjoy.TapjoyConnectNotifier;

// Referenced classes of package com.tapjoy.extensions:
//            TapjoyEvent

public class TapjoyConnectNotifierExtention
    implements TapjoyConnectNotifier
{

    private FREContext m_Context;

    public TapjoyConnectNotifierExtention(FREContext frecontext)
    {
        m_Context = null;
        m_Context = frecontext;
    }

    public void connectFail()
    {
        if (m_Context != null)
        {
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_CONNECT_FAILED.toString(), "false");
        }
    }

    public void connectSuccess()
    {
        if (m_Context != null)
        {
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_CONNECT_SUCCESS.toString(), "true");
        }
    }
}
