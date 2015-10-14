// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.goviral;

import com.adobe.fre.FREObject;

// Referenced classes of package com.milkmangames.extensions.android.goviral:
//            b

final class m extends b.d
{

    final b a;

    m(b b1)
    {
        a = b1;
        super(b1);
    }

    protected final FREObject a(FREObject afreobject[])
    {
        boolean flag = afreobject[0].getAsBool();
        return FREObject.newObject(b.b(a, flag));
    }
}
