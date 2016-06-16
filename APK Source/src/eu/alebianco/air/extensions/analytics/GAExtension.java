// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.alebianco.air.extensions.analytics;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREExtension;

// Referenced classes of package eu.alebianco.air.extensions.analytics:
//            GAContext

public class GAExtension
    implements FREExtension
{

    public static GAContext context;

    public GAExtension()
    {
    }

    public FREContext createContext(String s)
    {
        context = new GAContext();
        context.initialize();
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
