// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.coremobile;

import com.adobe.fre.FREObject;

// Referenced classes of package com.milkmangames.extensions.android.coremobile:
//            x, b

final class l extends x
{

    final b a;

    l(b b1)
    {
        a = b1;
        super(b1);
    }

    protected final FREObject a(FREObject afreobject[])
    {
        b b1 = b;
        int i = afreobject[0].getAsInt();
        long l1 = (long)afreobject[1].getAsDouble();
        String s = afreobject[2].getAsString();
        String s1 = afreobject[3].getAsString();
        afreobject[4].getAsString();
        b.a(b1, i, l1, s, s1, afreobject[5].getAsString());
        return null;
    }
}
