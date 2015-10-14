// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.goviral;

import android.util.Log;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;

// Referenced classes of package com.milkmangames.extensions.android.goviral:
//            b

final class f
    implements FREFunction
{

    final b a;

    f(b b1)
    {
        a = b1;
        super();
    }

    public final FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        frecontext = null;
        Log.d("[GVExtension]", "Check granted--.");
        afreobject = afreobject[0].getAsString();
        Log.d("[GVExtension]", (new StringBuilder("RES:")).append(afreobject).toString());
        b b1 = a;
        afreobject = FREObject.newObject(b.a(afreobject));
        frecontext = afreobject;
_L2:
        Log.d("[GVExtension]", (new StringBuilder("Return ")).append(frecontext).toString());
        return frecontext;
        afreobject;
        Log.d("[GVExtension]", "Fail.");
        Log.e("[GVExtension]", afreobject.getMessage());
        if (true) goto _L2; else goto _L1
_L1:
    }
}
