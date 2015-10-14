// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.tapjoy.TapjoyAwardPointsNotifier;
import com.tapjoy.TapjoyConnect;

// Referenced classes of package com.tapjoy.extensions:
//            ExtensionUtils, TapjoyEvent

public class TapjoyAwardTapPointsFunc
    implements FREFunction, TapjoyAwardPointsNotifier
{

    FREContext m_Context;

    public TapjoyAwardTapPointsFunc()
    {
        m_Context = null;
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        TapjoyConnect tapjoyconnect = TapjoyConnect.getTapjoyConnectInstance();
        if (frecontext != null && tapjoyconnect != null && afreobject.length >= 1)
        {
            m_Context = frecontext;
            tapjoyconnect.awardTapPoints(ExtensionUtils.getInt(afreobject[0]), this);
        }
        return null;
    }

    public void getAwardPointsResponse(String s, int i)
    {
        if (m_Context != null)
        {
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_AWARDED_TAP_POINTS.toString(), (new StringBuilder()).append(s).append("\n").append(String.valueOf(i)).toString());
        }
    }

    public void getAwardPointsResponseFailed(String s)
    {
        if (m_Context != null)
        {
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_AWARDED_TAP_POINTS_FAILED.toString(), s);
        }
    }
}
