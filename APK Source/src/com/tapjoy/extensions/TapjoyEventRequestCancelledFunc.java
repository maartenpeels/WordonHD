// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;

import android.util.Log;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.tapjoy.TJEventRequest;
import com.tapjoy.TJEventRequestCallback;
import com.tapjoy.TapjoyConnect;
import java.util.Hashtable;

// Referenced classes of package com.tapjoy.extensions:
//            ExtensionUtils

public class TapjoyEventRequestCancelledFunc
    implements FREFunction
{

    public static final String TAG = "TapjoyEventRequestCancelledFunc";

    public TapjoyEventRequestCancelledFunc()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        frecontext = TapjoyConnect.getTapjoyConnectInstance();
        afreobject = ExtensionUtils.getString(afreobject[0]);
        if (frecontext != null)
        {
            frecontext = (TJEventRequest)ExtensionUtils.eventRequestMap.get(afreobject);
            if (frecontext != null && ((TJEventRequest) (frecontext)).callback != null)
            {
                Log.i("TapjoyEventRequestCancelledFunc", "sending TJEventRequest cancelled");
                ((TJEventRequest) (frecontext)).callback.cancelled();
            }
        }
        return null;
    }
}
