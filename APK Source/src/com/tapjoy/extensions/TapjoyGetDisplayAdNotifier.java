// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;

import android.view.View;
import com.adobe.fre.FREContext;
import com.tapjoy.TapjoyDisplayAdNotifier;

// Referenced classes of package com.tapjoy.extensions:
//            TapjoyEvent

public class TapjoyGetDisplayAdNotifier
    implements TapjoyDisplayAdNotifier
{

    private FREContext m_Context;

    public TapjoyGetDisplayAdNotifier(FREContext frecontext)
    {
        m_Context = null;
        m_Context = frecontext;
    }

    public void getDisplayAdResponse(View view)
    {
        if (m_Context != null)
        {
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_GET_DISPLAY_AD.toString(), "");
        }
    }

    public void getDisplayAdResponseFailed(String s)
    {
        if (m_Context != null)
        {
            m_Context.dispatchStatusEventAsync(TapjoyEvent.TJ_GET_DISPLAY_AD_FAILED.toString(), s);
        }
    }
}
