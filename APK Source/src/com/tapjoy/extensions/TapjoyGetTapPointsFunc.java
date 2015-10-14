// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.tapjoy.TapjoyConnect;
import com.tapjoy.TapjoyNotifier;

// Referenced classes of package com.tapjoy.extensions:
//            TapjoyEvent

public class TapjoyGetTapPointsFunc
    implements FREFunction, TapjoyNotifier
{

    FREContext m_Context;

    public TapjoyGetTapPointsFunc()
    {
        m_Context = null;
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        afreobject = TapjoyConnect.getTapjoyConnectInstance();
        if (frecontext != null && afreobject != null)
        {
            m_Context = frecontext;
            afreobject.getTapPoints(this);
        }
        return null;
    }

    public void getUpdatePoints(String s, int i)
    {
        if (m_Context != null)
        {
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_TAP_POINTS.toString(), (new StringBuilder()).append(s).append("\n").append(String.valueOf(i)).toString());
        }
    }

    public void getUpdatePointsFailed(String s)
    {
        if (m_Context != null)
        {
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_TAP_POINTS_FAILED.toString(), s);
        }
    }
}
