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

private abstract class b
    implements FREFunction
{

    protected b b;
    final b c;

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
            Log.d("[GVExtension]", "Call failed");
            Log.e("[GVExtension]", frecontext.getMessage());
            frecontext.printStackTrace();
            return null;
        }
        return frecontext;
    }

    public (b b1)
    {
        c = b1;
        super();
        b = b1;
    }
}
