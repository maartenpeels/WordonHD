// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.coremobile;

import android.util.Log;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;

// Referenced classes of package com.milkmangames.extensions.android.coremobile:
//            b

abstract class x
    implements FREFunction
{

    protected b b;
    final b c;

    public x(b b1)
    {
        c = b1;
        super();
        b = b1;
    }

    protected abstract FREObject a(FREObject afreobject[]);

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        try
        {
            frecontext = a(afreobject);
        }
        // Misplaced declaration of an exception variable
        catch (FREContext frecontext)
        {
            Log.d(b.a, "Call failed");
            Log.e(b.a, frecontext.getMessage());
            frecontext.printStackTrace();
            return null;
        }
        return frecontext;
    }
}
