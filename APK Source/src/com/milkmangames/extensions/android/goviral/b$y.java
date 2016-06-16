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
            String s = afreobject[1].getAsString();
            String s1 = afreobject[2].getAsString();
            boolean flag = afreobject[3].getAsBool();
            String s2 = afreobject[4].getAsString();
            String s3 = afreobject[5].getAsString();
            FREBitmapData frebitmapdata = (FREBitmapData)afreobject[6];
            afreobject[7].getAsString();
            String s4 = afreobject[8].getAsString();
            afreobject = afreobject[9].getAsString();
            b.a(a, frecontext, s, s1, flag, s2, s3, frebitmapdata, s4, afreobject);
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
