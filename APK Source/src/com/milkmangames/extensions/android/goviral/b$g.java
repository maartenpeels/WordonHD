// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.goviral;

import android.util.Log;
import com.adobe.fre.FREBitmapData;
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
        try
        {
            frecontext = afreobject[0].getAsString();
            FREBitmapData frebitmapdata = (FREBitmapData)afreobject[1];
            String s = afreobject[2].getAsString();
            String s1 = afreobject[3].getAsString();
            boolean flag = afreobject[4].getAsBool();
            b.a(a, frecontext, frebitmapdata, s, s1, flag);
        }
        // Misplaced declaration of an exception variable
        catch (FREContext frecontext)
        {
            Log.e("[GVExtension]", frecontext.getMessage());
        }
        return null;
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
