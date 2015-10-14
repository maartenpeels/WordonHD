// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.goviral;

import android.util.Log;
import com.adobe.fre.FREBitmapData;
import com.adobe.fre.FREObject;

// Referenced classes of package com.milkmangames.extensions.android.goviral:
//            b

final class l extends b.d
{

    final b a;

    l(b b1)
    {
        a = b1;
        super(b1);
    }

    protected final FREObject a(FREObject afreobject[])
    {
        Log.d("[GVExtension]", "Read bmp");
        FREBitmapData frebitmapdata = (FREBitmapData)afreobject[0];
        afreobject = afreobject[1].getAsString();
        b.a(a, frebitmapdata, afreobject);
        return null;
    }
}
