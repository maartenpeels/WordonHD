// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.tapjoy.TJEvent;
import com.tapjoy.TapjoyConnect;

// Referenced classes of package com.tapjoy.extensions:
//            ExtensionUtils, TapjoyEventCallbackNotifier

public class TapjoyCreateEventFunc
    implements FREFunction
{

    FREContext m_Context;

    public TapjoyCreateEventFunc()
    {
        m_Context = null;
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        if (TapjoyConnect.getTapjoyConnectInstance() != null)
        {
            if (afreobject[2] != null && ExtensionUtils.getString(afreobject[2]) != null && ExtensionUtils.getString(afreobject[2]).length() > 0)
            {
                frecontext = new TJEvent(ExtensionUtils.getContext(), ExtensionUtils.getString(afreobject[1]), ExtensionUtils.getString(afreobject[2]), new TapjoyEventCallbackNotifier(frecontext));
            } else
            {
                frecontext = new TJEvent(ExtensionUtils.getContext(), ExtensionUtils.getString(afreobject[1]), new TapjoyEventCallbackNotifier(frecontext));
            }
            ExtensionUtils.addEventGuid(frecontext.getGUID(), ExtensionUtils.getString(afreobject[0]));
        }
        return null;
    }
}
