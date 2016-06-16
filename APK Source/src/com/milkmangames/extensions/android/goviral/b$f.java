// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.goviral;

import android.util.Log;
import com.adobe.fre.FREArray;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;

// Referenced classes of package com.milkmangames.extensions.android.goviral:
//            b

private final class <init>
    implements FREFunction
{

    final b a;

    public final FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        String s;
        boolean flag;
        boolean flag1;
        try
        {
            s = afreobject[0].getAsString();
            flag = afreobject[1].getAsBool();
            flag1 = afreobject[2].getAsBool();
        }
        // Misplaced declaration of an exception variable
        catch (FREContext frecontext)
        {
            Log.e("[GVExtension]", frecontext.getMessage());
            return null;
        }
        if (!flag) goto _L2; else goto _L1
_L1:
        frecontext = b.a((FREArray)afreobject[3], (FREArray)afreobject[4]);
_L4:
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        double d = afreobject[5].getAsDouble();
        b.a(a, s, d, frecontext);
        return null;
        b.a(a, s, frecontext);
        return null;
_L2:
        frecontext = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private (b b1)
    {
        a = b1;
        super();
    }

    a(b b1, byte byte0)
    {
        this(b1);
    }
}
