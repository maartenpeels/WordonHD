// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package so.cuo.platform.chartboost.fun;

import com.adobe.fre.FREObject;
import com.adobe.fre.FREWrongThreadException;
import com.chartboost.sdk.Chartboost;
import so.cuo.platform.chartboost.ChartboostContext;

// Referenced classes of package so.cuo.platform.chartboost.fun:
//            AneFun

public class IsMoreAppReady extends AneFun
{

    public IsMoreAppReady()
    {
    }

    protected FREObject doCall(ChartboostContext chartboostcontext, FREObject afreobject[])
    {
        super.doCall(chartboostcontext, afreobject);
        boolean flag = Chartboost.hasMoreApps("Default");
        try
        {
            chartboostcontext = FREObject.newObject(Boolean.valueOf(flag).booleanValue());
        }
        // Misplaced declaration of an exception variable
        catch (ChartboostContext chartboostcontext)
        {
            chartboostcontext.printStackTrace();
            return null;
        }
        return chartboostcontext;
    }
}
