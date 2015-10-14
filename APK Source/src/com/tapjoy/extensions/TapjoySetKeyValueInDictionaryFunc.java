// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;

// Referenced classes of package com.tapjoy.extensions:
//            ExtensionUtils

public class TapjoySetKeyValueInDictionaryFunc
    implements FREFunction
{

    public TapjoySetKeyValueInDictionaryFunc()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        if (afreobject.length >= 3)
        {
            ExtensionUtils.setKeyValueInDictionary(ExtensionUtils.getString(afreobject[0]), afreobject[1], ExtensionUtils.getString(afreobject[2]));
        }
        return null;
    }
}
