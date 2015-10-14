// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.analytics;

import android.content.Context;
import android.content.SharedPreferences;
import com.heyzap.house.Manager;
import com.heyzap.internal.Logger;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.analytics:
//            Event

class val.in
    implements Runnable
{

    final Event this$0;
    final long val$in;

    public void run()
    {
        SharedPreferences sharedpreferences = Manager.applicationContext.getSharedPreferences("com.heyzap.clicks", 0);
        try
        {
            android.content.eferences.Editor editor = sharedpreferences.edit();
            editor.putString(impressionId, toJSONObject().put("ad-clicked-time", val$in).toString());
            if (sharedpreferences.getAll().size() > 1000)
            {
                editor.clear();
            }
            editor.commit();
            return;
        }
        catch (JSONException jsonexception)
        {
            Logger.trace(jsonexception);
        }
    }

    nces.Editor()
    {
        this$0 = final_event;
        val$in = J.this;
        super();
    }
}
