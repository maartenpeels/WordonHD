// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.analytics;

import android.app.Activity;
import android.content.ComponentName;
import com.urbanairship.Logger;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.urbanairship.analytics:
//            Event, Environment

class ActivityStartedEvent extends Event
{

    private String a;

    ActivityStartedEvent(Activity activity)
    {
        if (activity.getComponentName() != null)
        {
            a = activity.getComponentName().getClassName();
            return;
        } else
        {
            a = activity.getClass().getName();
            return;
        }
    }

    final String a()
    {
        return "activity_started";
    }

    final JSONObject b()
    {
        JSONObject jsonobject = new JSONObject();
        Environment environment = d();
        try
        {
            jsonobject.put("class_name", a);
            jsonobject.put("session_id", environment.j());
        }
        catch (JSONException jsonexception)
        {
            Logger.e("Error constructing JSON data for activity_started");
            return jsonobject;
        }
        return jsonobject;
    }
}
