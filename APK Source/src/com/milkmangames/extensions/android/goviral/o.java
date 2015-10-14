// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.goviral;

import com.adobe.fre.FREArray;
import com.adobe.fre.FREObject;

// Referenced classes of package com.milkmangames.extensions.android.goviral:
//            b

final class o extends b.d
{

    final b a;

    o(b b1)
    {
        a = b1;
        super(b1);
    }

    protected final FREObject a(FREObject afreobject[])
    {
        Object obj = (FREArray)afreobject[0];
        FREArray frearray = (FREArray)afreobject[1];
        afreobject = afreobject[2].getAsString();
        obj = b.a(((FREArray) (obj)), frearray);
        b.b(a, ((android.os.Bundle) (obj)), afreobject);
        return null;
    }
}
