// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.iab;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREExtension;

// Referenced classes of package com.milkmangames.extensions.android.iab:
//            a

public class IABExtension
    implements FREExtension
{

    private static a a;

    public IABExtension()
    {
    }

    public static void main(String args[])
    {
    }

    public FREContext createContext(String s)
    {
        s = new a();
        a = s;
        return s;
    }

    public void dispose()
    {
        if (a != null)
        {
            a.b();
        }
    }

    public void initialize()
    {
    }
}
