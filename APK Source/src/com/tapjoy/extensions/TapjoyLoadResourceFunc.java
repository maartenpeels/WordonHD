// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;

import android.util.Log;
import com.adobe.fre.FREByteArray;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.tapjoy.TapjoyUtil;
import java.nio.ByteBuffer;

// Referenced classes of package com.tapjoy.extensions:
//            ExtensionUtils

public class TapjoyLoadResourceFunc
    implements FREFunction
{

    public TapjoyLoadResourceFunc()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        if (afreobject.length >= 2)
        {
            try
            {
                frecontext = ExtensionUtils.getString(afreobject[0]);
                afreobject = (FREByteArray)afreobject[1];
                afreobject.acquire();
                ByteBuffer bytebuffer = afreobject.getBytes();
                byte abyte0[] = new byte[(int)afreobject.getLength()];
                bytebuffer.get(abyte0);
                afreobject.release();
                TapjoyUtil.setResource(frecontext, abyte0);
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("TapjoyLoadResourceFunc", "An error occurred while reading the ByteArray", frecontext);
            }
        }
        return null;
    }
}
