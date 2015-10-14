// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;

import com.adobe.fre.FREContext;
import com.tapjoy.TapjoyFullScreenAdNotifier;

// Referenced classes of package com.tapjoy.extensions:
//            TapjoyEvent

public class TapjoyGetFullScreenAdNotifier
    implements TapjoyFullScreenAdNotifier
{

    private FREContext m_Context;

    public TapjoyGetFullScreenAdNotifier(FREContext frecontext)
    {
        m_Context = null;
        m_Context = frecontext;
    }

    public void getFullScreenAdResponse()
    {
        if (m_Context != null)
        {
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_GET_FULLSCREEN_AD.toString(), "");
        }
    }

    public void getFullScreenAdResponseFailed(int i)
    {
        if (m_Context != null)
        {
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_GET_FULLSCREEN_AD_FAILED.toString(), String.valueOf(i));
        }
    }
}
