// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.heyzap.house.Manager;
import com.heyzap.http.AsyncHttpClient;
import com.heyzap.http.AsyncHttpResponseHandler;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import org.apache.http.entity.StringEntity;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.internal:
//            APIClient, Utils, Logger

static final class val.handler
    implements Runnable
{

    final Context val$context;
    final AsyncHttpResponseHandler val$handler;
    final JSONObject val$postData;
    final String val$url;

    public void run()
    {
        Object obj = APIClient.access$100(val$url);
        val$postData.put("carrier", ((TelephonyManager)Manager.applicationContext.getSystemService("phone")).getNetworkOperatorName().toLowerCase(Locale.US));
        HashMap hashmap = Utils.extraParams(Manager.applicationContext);
        String s;
        for (Iterator iterator = hashmap.keySet().iterator(); iterator.hasNext(); val$postData.put(s, hashmap.get(s)))
        {
            s = (String)iterator.next();
        }

        try
        {
            Logger.format("POST %s?%s", new Object[] {
                obj, val$postData.toString()
            });
            APIClient.access$200().post(val$context, ((String) (obj)), new StringEntity(val$postData.toString()), "application/json", val$handler);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            Logger.trace(((Throwable) (obj)));
            return;
        }
        catch (JSONException jsonexception)
        {
            Logger.trace(jsonexception);
        }
        return;
    }

    eHandler(String s, JSONObject jsonobject, Context context1, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        val$url = s;
        val$postData = jsonobject;
        val$context = context1;
        val$handler = asynchttpresponsehandler;
        super();
    }
}
