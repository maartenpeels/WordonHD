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

final class e
    implements FREFunction
{

    final a a;

    private e(a a1)
    {
        a = a1;
        super();
    }

    e(a a1, byte byte0)
    {
        this(a1);
    }

    public final FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        try
        {
            boolean flag = afreobject[0].getAsBool();
            frecontext = afreobject[1].getAsString();
            int i = afreobject[2].getAsInt();
            a.a(flag, frecontext, i);
        }
        // Misplaced declaration of an exception variable
        catch (FREContext frecontext)
        {
            Log.e("[IABExtension]", frecontext.getMessage());
        }
        return null;
    }
}
