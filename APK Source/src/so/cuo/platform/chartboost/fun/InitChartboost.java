// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package so.cuo.platform.chartboost.fun;

import com.adobe.fre.FREObject;
import com.chartboost.sdk.Chartboost;
import so.cuo.platform.chartboost.ChartboostContext;
import so.cuo.platform.chartboost.InterstitialAdListener;

// Referenced classes of package so.cuo.platform.chartboost.fun:
//            AneFun

public class InitChartboost extends AneFun
{

    public static String appId;
    public static String appSignature;

    public InitChartboost()
    {
    }

    protected FREObject doCall(ChartboostContext chartboostcontext, FREObject afreobject[])
    {
        super.doCall(chartboostcontext, afreobject);
        appId = getString(afreobject, 0);
        appSignature = getString(afreobject, 1);
        Chartboost.startWithAppId(chartboostcontext.getActivity(), appId, appSignature);
        Chartboost.setDelegate(new InterstitialAdListener(chartboostcontext));
        Chartboost.onCreate(chartboostcontext.getActivity());
        Chartboost.onStart(chartboostcontext.getActivity());
        return null;
    }
}
