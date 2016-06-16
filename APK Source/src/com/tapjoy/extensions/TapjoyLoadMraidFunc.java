// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.tapjoy.TapjoyUtil;

// Referenced classes of package com.tapjoy.extensions:
//            ExtensionUtils

public class TapjoyLoadMraidFunc
    implements FREFunction
{

    public TapjoyLoadMraidFunc()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        TapjoyUtil.setResource("mraid.js", ExtensionUtils.getString(afreobject[0]));
        return null;
    }
}
