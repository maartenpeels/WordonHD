// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.analytics;

import com.urbanairship.Logger;
import com.urbanairship.util.UAStringUtil;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.urbanairship.analytics:
//            Event, DefaultEnvironment, Environment

class AppForegroundEvent extends Event
{

    public AppForegroundEvent()
    {
        this(((Environment) (new DefaultEnvironment())));
    }

    private AppForegroundEvent(Environment environment)
    {
        super(environment);
    }

    final String a()
    {
        return "app_foreground";
    }

    final JSONObject b()
    {
        JSONObject jsonobject = new JSONObject();
        Environment environment = d();
        try
        {
            jsonobject.put("connection_type", environment.a());
            String s = environment.b();
            if (!UAStringUtil.a(s))
            {
                jsonobject.put("connection_subtype", s);
            }
            jsonobject.put("carrier", environment.c());
            jsonobject.put("time_zone", environment.g());
            jsonobject.put("daylight_savings", environment.h());
            jsonobject.put("notification_types", new JSONArray(environment.i()));
            jsonobject.put("os_version", environment.d());
            jsonobject.put("lib_version", environment.e());
            jsonobject.put("package_version", environment.f());
            jsonobject.put("session_id", environment.j());
            jsonobject.put("push_id", environment.k());
            jsonobject.put("push_enabled", environment.n());
            jsonobject.put("last_send_id", environment.q());
        }
        catch (JSONException jsonexception)
        {
            Logger.e("Error constructing JSON data for app_foreground");
            return jsonobject;
        }
        return jsonobject;
    }
}
