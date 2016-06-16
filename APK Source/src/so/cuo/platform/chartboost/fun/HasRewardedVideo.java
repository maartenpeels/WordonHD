// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package so.cuo.platform.chartboost.fun;

import com.adobe.fre.FREObject;
import com.chartboost.sdk.Chartboost;
import so.cuo.platform.chartboost.ChartboostContext;

// Referenced classes of package so.cuo.platform.chartboost.fun:
//            AneFun

public class HasRewardedVideo extends AneFun
{

    public HasRewardedVideo()
    {
    }

    protected FREObject doCall(ChartboostContext chartboostcontext, FREObject afreobject[])
    {
        super.doCall(chartboostcontext, afreobject);
        chartboostcontext = getString(afreobject, 0);
        if (chartboostcontext == null)
        {
            Chartboost.hasRewardedVideo("Default");
        } else
        {
            Chartboost.hasRewardedVideo(chartboostcontext);
        }
        return null;
    }
}
