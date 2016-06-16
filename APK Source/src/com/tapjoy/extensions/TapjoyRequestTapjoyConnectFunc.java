// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;

import android.app.Activity;
import android.util.Log;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.tapjoy.TapjoyConnect;
import com.tapjoy.TapjoyConnectCore;

// Referenced classes of package com.tapjoy.extensions:
//            ExtensionUtils, TapjoyConnectNotifierExtention, TapjoyEarnedTapPointsNotifier, TapjoyRegisterVideoNotifier, 
//            TapjoyRegisterViewNotifier

public class TapjoyRequestTapjoyConnectFunc
    implements FREFunction
{

    TapjoyEarnedTapPointsNotifier m_EarningsNotifier;
    TapjoyRegisterVideoNotifier m_VideoNotifier;
    TapjoyRegisterViewNotifier m_ViewNotifier;

    public TapjoyRequestTapjoyConnectFunc()
    {
        m_EarningsNotifier = null;
        m_VideoNotifier = null;
        m_ViewNotifier = null;
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        if (frecontext != null && afreobject.length >= 2)
        {
            ExtensionUtils.init(frecontext);
            android.content.Context context = frecontext.getActivity().getApplicationContext();
            TapjoyConnectCore.setPlugin("adobeair");
            TapjoyConnect.requestTapjoyConnect(context, ExtensionUtils.getString(afreobject[0]), ExtensionUtils.getString(afreobject[1]), ExtensionUtils.getConnectFlags(), new TapjoyConnectNotifierExtention(frecontext));
            m_EarningsNotifier = new TapjoyEarnedTapPointsNotifier(frecontext);
            m_VideoNotifier = new TapjoyRegisterVideoNotifier(frecontext);
            m_ViewNotifier = new TapjoyRegisterViewNotifier(frecontext);
        } else
        {
            Log.e("TapjoyNativeExtension", "requestTapjoyConnect - Context is null or not enough arguments");
        }
        return null;
    }
}
