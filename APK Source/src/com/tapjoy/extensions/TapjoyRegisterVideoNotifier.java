// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;

import com.adobe.fre.FREContext;
import com.tapjoy.TapjoyConnect;
import com.tapjoy.TapjoyVideoNotifier;

// Referenced classes of package com.tapjoy.extensions:
//            TapjoyEvent

public class TapjoyRegisterVideoNotifier
    implements TapjoyVideoNotifier
{

    private FREContext m_Context;

    public TapjoyRegisterVideoNotifier(FREContext frecontext)
    {
        m_Context = null;
        TapjoyConnect tapjoyconnect = TapjoyConnect.getTapjoyConnectInstance();
        if (frecontext != null && tapjoyconnect != null)
        {
            m_Context = frecontext;
            tapjoyconnect.setVideoNotifier(this);
        }
    }

    public void videoComplete()
    {
        if (m_Context != null)
        {
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_VIDEO_COMPLETE.toString(), "COMPLETE");
        }
    }

    public void videoError(int i)
    {
        if (m_Context != null)
        {
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_VIDEO_ERROR.toString(), String.valueOf(i));
        }
    }

    public void videoStart()
    {
        if (m_Context != null)
        {
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_VIDEO_START.toString(), "START");
        }
    }
}
