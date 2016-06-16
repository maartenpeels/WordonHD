// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.tapjoy.TapjoyConnect;
import com.tapjoy.TapjoySpendPointsNotifier;

// Referenced classes of package com.tapjoy.extensions:
//            ExtensionUtils, TapjoyEvent

public class TapjoySpendTapPointsFunc
    implements FREFunction, TapjoySpendPointsNotifier
{

    FREContext m_Context;

    public TapjoySpendTapPointsFunc()
    {
        m_Context = null;
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        TapjoyConnect tapjoyconnect = TapjoyConnect.getTapjoyConnectInstance();
        if (frecontext != null && tapjoyconnect != null && afreobject.length >= 1)
        {
            m_Context = frecontext;
            tapjoyconnect.spendTapPoints(ExtensionUtils.getInt(afreobject[0]), this);
        }
        return null;
    }

    public void getSpendPointsResponse(String s, int i)
    {
        if (m_Context != null)
        {
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_SPENT_TAP_POINTS.toString(), (new StringBuilder()).append(s).append("\n").append(String.valueOf(i)).toString());
        }
    }

    public void getSpendPointsResponseFailed(String s)
    {
        if (m_Context != null)
        {
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_SPENT_TAP_POINTS_FAILED.toString(), s);
        }
    }
}
