// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;

import com.adobe.fre.FREContext;
import com.tapjoy.TapjoyConnect;
import com.tapjoy.TapjoyEarnedPointsNotifier;

// Referenced classes of package com.tapjoy.extensions:
//            TapjoyEvent

public class TapjoyEarnedTapPointsNotifier
    implements TapjoyEarnedPointsNotifier
{

    FREContext m_Context;

    public TapjoyEarnedTapPointsNotifier(FREContext frecontext)
    {
        m_Context = null;
        if (frecontext != null && TapjoyConnect.getTapjoyConnectInstance() != null)
        {
            m_Context = frecontext;
            TapjoyConnect.getTapjoyConnectInstance().setEarnedPointsNotifier(this);
        }
    }

    public void earnedTapPoints(int i)
    {
        if (m_Context != null)
        {
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_EARNED_TAP_POINTS.toString(), String.valueOf(i));
        }
    }
}
