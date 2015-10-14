// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREExtension;

// Referenced classes of package com.tapjoy.extensions:
//            TapjoyExtensionContext

public class TapjoyExtension
    implements FREExtension
{

    public TapjoyExtension()
    {
    }

    public FREContext createContext(String s)
    {
        return new TapjoyExtensionContext();
    }

    public void dispose()
    {
    }

    public void finalize()
    {
        try
        {
            super.finalize();
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public void initialize()
    {
    }
}
