// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.coremobile;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;

// Referenced classes of package com.milkmangames.extensions.android.coremobile:
//            b

final class w
    implements FREFunction
{

    final b a;

    w(b b1)
    {
        a = b1;
        super();
    }

    public final FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        b.f(a);
        return null;
    }
}
