// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.goviral;

import android.util.Log;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREExtension;

// Referenced classes of package com.milkmangames.extensions.android.goviral:
//            b

public class GoViralExtension
    implements FREExtension
{

    public GoViralExtension()
    {
    }

    public static void main(String args[])
    {
    }

    public FREContext createContext(String s)
    {
        Log.i("[GVExtension]", "try create context");
        return new b();
    }

    public void dispose()
    {
    }

    public void initialize()
    {
    }
}
