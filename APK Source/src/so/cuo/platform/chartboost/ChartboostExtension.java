// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package so.cuo.platform.chartboost;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREExtension;

// Referenced classes of package so.cuo.platform.chartboost:
//            ChartboostContext

public class ChartboostExtension
    implements FREExtension
{

    public static ChartboostContext context;

    public ChartboostExtension()
    {
    }

    public FREContext createContext(String s)
    {
        context = new ChartboostContext();
        return context;
    }

    public void dispose()
    {
        context.dispose();
        context = null;
    }

    public void initialize()
    {
    }
}
