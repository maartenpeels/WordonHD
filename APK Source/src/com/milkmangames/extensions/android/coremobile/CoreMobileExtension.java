// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.coremobile;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREExtension;

// Referenced classes of package com.milkmangames.extensions.android.coremobile:
//            b

public class CoreMobileExtension
    implements FREExtension
{

    public CoreMobileExtension()
    {
    }

    public FREContext createContext(String s)
    {
        return new b();
    }

    public void dispose()
    {
    }

    public void initialize()
    {
    }
}
