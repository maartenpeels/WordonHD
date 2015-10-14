// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import java.util.HashMap;

// Referenced classes of package com.tapjoy:
//            TapjoyOffersNotifier, TapjoyConnectCore, TapjoyUtil, TJCOffersWebView, 
//            TJEventData, TapjoyLog

public class TJCOffers
{

    private static final String TAG = "TapjoyOffers";
    private static TapjoyOffersNotifier tapjoyOffersNotifier;
    Context context;

    public TJCOffers(Context context1)
    {
        context = context1;
    }

    public static void getOffersNotifierResponse()
    {
        if (tapjoyOffersNotifier != null)
        {
            tapjoyOffersNotifier.getOffersResponse();
        }
    }

    public static void getOffersNotifierResponseFailed(String s)
    {
        if (tapjoyOffersNotifier != null)
        {
            tapjoyOffersNotifier.getOffersResponseFailed(s);
        }
    }

    public void showOffers(TapjoyOffersNotifier tapjoyoffersnotifier)
    {
        showOffersWithCurrencyID(null, false, tapjoyoffersnotifier);
    }

    public void showOffersWithCurrencyID(String s, boolean flag, TJEventData tjeventdata, String s1, TapjoyOffersNotifier tapjoyoffersnotifier)
    {
label0:
        {
            if (!TapjoyConnectCore.isViewOpen())
            {
                TapjoyConnectCore.viewWillOpen(0);
                tapjoyOffersNotifier = tapjoyoffersnotifier;
                HashMap hashmap;
                if (flag)
                {
                    tapjoyoffersnotifier = "1";
                } else
                {
                    tapjoyoffersnotifier = "0";
                }
                hashmap = new HashMap(TapjoyConnectCore.getURLParams());
                TapjoyUtil.safePut(hashmap, "currency_id", s, true);
                TapjoyUtil.safePut(hashmap, "currency_selector", tapjoyoffersnotifier, true);
                s = new Intent(context, com/tapjoy/TJCOffersWebView);
                if (tjeventdata != null)
                {
                    TapjoyLog.i("TapjoyOffers", (new StringBuilder()).append("showOffers for eventName: ").append(tjeventdata.name).toString());
                }
                if (s1 != null && s1.length() > 0)
                {
                    s.putExtra("callback_id", s1);
                }
                s.putExtra("view_type", 2);
                s.putExtra("tjevent", tjeventdata);
                s.putExtra("legacy_view", true);
                s.putExtra("URL_PARAMS", hashmap);
                if (!(context instanceof Activity))
                {
                    break label0;
                }
                ((Activity)context).startActivityForResult(s, 0);
            }
            return;
        }
        s.setFlags(0x10000000);
        context.startActivity(s);
    }

    public void showOffersWithCurrencyID(String s, boolean flag, TapjoyOffersNotifier tapjoyoffersnotifier)
    {
        showOffersWithCurrencyID(s, flag, null, null, tapjoyoffersnotifier);
    }
}
