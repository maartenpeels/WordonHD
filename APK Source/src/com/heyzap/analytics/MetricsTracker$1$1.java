// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.analytics;

import android.content.Context;
import android.content.SharedPreferences;
import com.heyzap.house.Manager;
import com.heyzap.http.AsyncHttpResponseHandler;
import com.heyzap.internal.APIClient;
import com.heyzap.internal.Logger;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.analytics:
//            MetricsTracker

class  extends AsyncHttpResponseHandler
{

    final .commit this$0;
    final SharedPreferences val$toSend;

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
    }

    public void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        val$toSend.edit().clear().commit();
    }

    ()
    {
        this$0 = final_;
        val$toSend = SharedPreferences.this;
        super();
    }

    // Unreferenced inner class com/heyzap/analytics/MetricsTracker$1

/* anonymous class */
    static final class MetricsTracker._cls1
        implements Runnable
    {

        public void run()
        {
            SharedPreferences sharedpreferences = Manager.applicationContext.getSharedPreferences("com.heyzap.analytics", 0);
            Object obj = sharedpreferences.getAll();
            JSONObject jsonobject = new JSONObject();
            JSONArray jsonarray = new JSONArray();
            for (obj = ((Map) (obj)).values().iterator(); ((Iterator) (obj)).hasNext();)
            {
                String s = (String)((Iterator) (obj)).next();
                try
                {
                    jsonarray.put(new JSONObject(s));
                }
                catch (JSONException jsonexception1)
                {
                    Logger.trace(jsonexception1);
                }
            }

            try
            {
                JSONObject jsonobject1 = new JSONObject();
                jsonobject1.put("start", 1);
                jsonarray.put(jsonobject1);
                jsonobject.put("metrics", jsonarray);
            }
            catch (JSONException jsonexception)
            {
                Logger.trace(jsonexception);
            }
            APIClient.postJson(Manager.applicationContext, "/in_game_api/metrics/export", jsonobject, sharedpreferences. new MetricsTracker._cls1._cls1());
        }

    }

}
