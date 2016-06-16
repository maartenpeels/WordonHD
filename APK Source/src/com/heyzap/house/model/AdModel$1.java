// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.model;

import com.heyzap.http.JsonHttpResponseHandler;
import com.heyzap.internal.Logger;
import org.apache.http.Header;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.house.model:
//            AdModel

class andler extends JsonHttpResponseHandler
{

    final AdModel this$0;

    public void onSuccess(int i, Header aheader[], JSONObject jsonobject)
    {
        try
        {
            if (jsonobject.getInt("status") == 200)
            {
                Logger.format("(CLICK) %s", new Object[] {
                    AdModel.this
                });
                AdModel.access$002(AdModel.this, Boolean.valueOf(true));
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Header aheader[])
        {
            return;
        }
    }

    andler()
    {
        this$0 = AdModel.this;
        super();
    }
}
