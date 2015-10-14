// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.tapjoy.TapjoyDisplayAd;

// Referenced classes of package com.tapjoy.extensions:
//            ExtensionUtils

public class TapjoyGetDisplayAdHtmlStringFunc
    implements FREFunction
{

    public TapjoyGetDisplayAdHtmlStringFunc()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        frecontext = TapjoyDisplayAd.getHtmlString();
        if (frecontext == null)
        {
            break MISSING_BLOCK_LABEL_20;
        }
        frecontext = ExtensionUtils.getFREObject(frecontext);
        return frecontext;
        frecontext;
        frecontext.printStackTrace();
        return null;
    }
}
