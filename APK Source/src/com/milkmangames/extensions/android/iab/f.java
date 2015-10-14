// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.iab;

import android.util.Log;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;

// Referenced classes of package com.milkmangames.extensions.android.iab:
//            a

final class f
    implements FREFunction
{

    final a a;

    private f(a a1)
    {
        a = a1;
        super();
    }

    f(a a1, byte byte0)
    {
        this(a1);
    }

    public final FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        try
        {
            frecontext = afreobject[0].getAsString();
            String s = afreobject[1].getAsString();
            String s1 = afreobject[2].getAsString();
            int i = afreobject[3].getAsInt();
            a.a(frecontext, s, s1, i);
        }
        // Misplaced declaration of an exception variable
        catch (FREContext frecontext)
        {
            frecontext.printStackTrace();
            Log.e("[IABExtension]", frecontext.getMessage());
        }
        return null;
    }
}
