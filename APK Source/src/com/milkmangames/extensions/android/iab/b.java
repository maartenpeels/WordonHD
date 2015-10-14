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

final class b
    implements FREFunction
{

    final a a;

    private b(a a1)
    {
        a = a1;
        super();
    }

    b(a a1, byte byte0)
    {
        this(a1);
    }

    public final FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        try
        {
            frecontext = FREObject.newObject(a.c());
        }
        // Misplaced declaration of an exception variable
        catch (FREContext frecontext)
        {
            Log.e("[IABExtension]", frecontext.getMessage());
            return null;
        }
        return frecontext;
    }
}
