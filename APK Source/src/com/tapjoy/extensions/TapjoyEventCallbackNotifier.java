// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;

import com.adobe.fre.FREContext;
import com.tapjoy.TJError;
import com.tapjoy.TJEvent;
import com.tapjoy.TJEventCallback;
import com.tapjoy.TJEventRequest;
import java.util.Hashtable;

// Referenced classes of package com.tapjoy.extensions:
//            TapjoyEvent, ExtensionUtils

public class TapjoyEventCallbackNotifier
    implements TJEventCallback
{

    public static final String TAPJOY_AIR = "TapjoyAIR";
    FREContext m_Context;

    public TapjoyEventCallbackNotifier(FREContext frecontext)
    {
        m_Context = null;
        m_Context = frecontext;
    }

    public void contentDidDisappear(TJEvent tjevent)
    {
        if (m_Context != null)
        {
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_CONTENT_DID_DISAPPEAR.toString(), ExtensionUtils.getEventGuid(tjevent.getGUID()));
        }
    }

    public void contentDidShow(TJEvent tjevent)
    {
        if (m_Context != null)
        {
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_CONTENT_DID_SHOW.toString(), ExtensionUtils.getEventGuid(tjevent.getGUID()));
        }
    }

    public void contentIsReady(TJEvent tjevent, int i)
    {
        if (m_Context != null)
        {
            tjevent = (new StringBuilder()).append(ExtensionUtils.getEventGuid(tjevent.getGUID())).append(",").append(i).toString();
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_SEND_EVENT_CONTENT_IS_READY.toString(), tjevent);
        }
    }

    public void didRequestAction(TJEvent tjevent, TJEventRequest tjeventrequest)
    {
        if (m_Context != null)
        {
            String s = ExtensionUtils.getEventGuid(tjevent.getGUID());
            if (ExtensionUtils.eventRequestMap == null)
            {
                ExtensionUtils.eventRequestMap = new Hashtable();
            }
            ExtensionUtils.eventRequestMap.put(s, tjeventrequest);
            tjevent = (new StringBuilder()).append(ExtensionUtils.getEventGuid(tjevent.getGUID())).append(",").append(tjeventrequest.type).append(",").append(tjeventrequest.identifier).append(",").append(tjeventrequest.quantity).toString();
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_DID_REQUEST_ACTION.toString(), tjevent);
        }
    }

    public void sendEventCompleted(TJEvent tjevent, boolean flag)
    {
label0:
        {
            if (m_Context != null)
            {
                if (!flag)
                {
                    break label0;
                }
                m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_SEND_EVENT_COMPLETE_WITH_CONTENT.toString(), ExtensionUtils.getEventGuid(tjevent.getGUID()));
            }
            return;
        }
        m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_SEND_EVENT_COMPLETE.toString(), ExtensionUtils.getEventGuid(tjevent.getGUID()));
    }

    public void sendEventFail(TJEvent tjevent, TJError tjerror)
    {
        if (m_Context != null)
        {
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_SEND_EVENT_FAIL.toString(), ExtensionUtils.getEventGuid(tjevent.getGUID()));
        }
    }
}
