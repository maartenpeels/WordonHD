// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.handler;

import com.heyzap.http.JsonHttpResponseHandler;
import com.heyzap.internal.Logger;
import org.apache.http.Header;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.house.handler:
//            AttributionHandler

class  extends JsonHttpResponseHandler
{

    final AttributionHandler this$0;
    final String val$packageName;

    public void onSuccess(int i, Header aheader[], JSONObject jsonobject)
    {
        try
        {
            if (jsonobject.getInt("status") == 200)
            {
                Logger.log((new StringBuilder()).append("(SELF INSTALL) Package: ").append(val$packageName).toString());
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Header aheader[])
        {
            Logger.trace(aheader);
        }
    }

    ()
    {
        this$0 = final_attributionhandler;
        val$packageName = String.this;
        super();
    }
}
