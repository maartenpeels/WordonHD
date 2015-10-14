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
import com.heyzap.sdk.ads.HeyzapAds;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.analytics:
//            Event

class val.flush
    implements Runnable
{

    final Event this$0;
    final boolean val$flush;

    public void run()
    {
        Object obj;
        final android.content.eferences.Editor editor = Manager.applicationContext.getSharedPreferences("com.heyzap.analytics", 0).edit();
        JSONArray jsonarray;
        try
        {
            editor.putString(id, toJSONObject().toString()).commit();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            Logger.trace(((Throwable) (obj)));
        }
        if (!val$flush) goto _L2; else goto _L1
_L1:
        obj = new JSONObject();
        jsonarray = new JSONArray();
        jsonarray.put(toJSONObject());
        ((JSONObject) (obj)).put("metrics", jsonarray);
        if (HeyzapAds.framework != null) goto _L4; else goto _L3
_L3:
        ((JSONObject) (obj)).put("framework", "none");
_L6:
        APIClient.postJson(Manager.applicationContext, "/in_game_api/metrics/export", ((JSONObject) (obj)), new AsyncHttpResponseHandler() {

            final Event._cls2 this$1;
            final android.content.SharedPreferences.Editor val$editor;

            public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
            {
            }

            public void onSuccess(int i, Header aheader[], byte abyte0[])
            {
                editor.remove(id).commit();
            }

            
            {
                this$1 = Event._cls2.this;
                editor = editor1;
                super();
            }
        });
_L2:
        return;
_L4:
        try
        {
            ((JSONObject) (obj)).put("framework", HeyzapAds.framework);
        }
        catch (JSONException jsonexception)
        {
            Logger.trace(jsonexception);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    onseHandler()
    {
        this$0 = final_event;
        val$flush = Z.this;
        super();
    }
}
