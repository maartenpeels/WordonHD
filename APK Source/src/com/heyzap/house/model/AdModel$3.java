// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.model;

import com.heyzap.http.JsonHttpResponseHandler;
import com.heyzap.internal.Logger;
import java.util.Iterator;
import java.util.List;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.house.model:
//            AdModel

static final class andler extends JsonHttpResponseHandler
{

    final List val$models;

    public void onFailure(int i, Header aheader[], Throwable throwable, JSONArray jsonarray)
    {
    }

    public void onFailure(int i, Header aheader[], Throwable throwable, JSONObject jsonobject)
    {
    }

    public void onFailure(Throwable throwable)
    {
    }

    public void onSuccess(int i, Header aheader[], JSONArray jsonarray)
    {
    }

    public void onSuccess(int i, Header aheader[], JSONObject jsonobject)
    {
        if (jsonobject.getInt("status") == 200)
        {
            aheader = val$models.iterator();
            do
            {
                if (!aheader.hasNext())
                {
                    break;
                }
                jsonobject = (AdModel)aheader.next();
                if (!AdModel.access$200(jsonobject).booleanValue())
                {
                    Logger.format("(IMPRESSION) %s", new Object[] {
                        jsonobject
                    });
                    jsonobject.setSentImpression(Boolean.valueOf(true));
                }
            } while (true);
        } else
        {
            try
            {
                aheader = val$models.iterator();
                while (aheader.hasNext()) 
                {
                    Logger.log(new Object[] {
                        "(IMPRESSION ERROR) Bad Response: %s", (AdModel)aheader.next()
                    });
                }
            }
            // Misplaced declaration of an exception variable
            catch (Header aheader[])
            {
                Logger.trace(aheader);
            }
        }
    }

    andler(List list)
    {
        val$models = list;
        super();
    }
}
