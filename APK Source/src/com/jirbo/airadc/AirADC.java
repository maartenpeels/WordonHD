// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.airadc;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREExtension;

// Referenced classes of package com.jirbo.airadc:
//            AirADCContext

public class AirADC
    implements FREExtension
{

    private static final String EXT_NAME = "AirADC";
    private FREContext context;

    public AirADC()
    {
    }

    public FREContext createContext(String s)
    {
        if (context == null)
        {
            context = new AirADCContext("AirADC");
        }
        return context;
    }

    public void dispose()
    {
    }

    public void initialize()
    {
    }
}
