// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;

import com.adobe.fre.FREContext;
import com.tapjoy.TapjoyConnect;
import com.tapjoy.TapjoyViewNotifier;

// Referenced classes of package com.tapjoy.extensions:
//            TapjoyEvent

public class TapjoyRegisterViewNotifier
    implements TapjoyViewNotifier
{

    FREContext m_Context;

    public TapjoyRegisterViewNotifier(FREContext frecontext)
    {
        m_Context = null;
        if (frecontext != null && TapjoyConnect.getTapjoyConnectInstance() != null)
        {
            m_Context = frecontext;
            TapjoyConnect.getTapjoyConnectInstance().setTapjoyViewNotifier(this);
        }
    }

    public void viewDidClose(int i)
    {
        if (m_Context != null)
        {
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_VIEW_CLOSED.toString(), String.valueOf(i));
        }
    }

    public void viewDidOpen(int i)
    {
        if (m_Context != null)
        {
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_VIEW_OPENED.toString(), String.valueOf(i));
        }
    }

    public void viewWillClose(int i)
    {
        if (m_Context != null)
        {
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_VIEW_CLOSING.toString(), String.valueOf(i));
        }
    }

    public void viewWillOpen(int i)
    {
        if (m_Context != null)
        {
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_VIEW_OPENING.toString(), String.valueOf(i));
        }
    }
}
