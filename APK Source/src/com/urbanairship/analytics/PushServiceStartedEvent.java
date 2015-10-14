// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.analytics;

import com.urbanairship.Logger;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.urbanairship.analytics:
//            Event, DefaultEnvironment, Environment

public class PushServiceStartedEvent extends Event
{

    public PushServiceStartedEvent()
    {
        this(((Environment) (new DefaultEnvironment())));
    }

    private PushServiceStartedEvent(Environment environment)
    {
        super(environment);
    }

    final String a()
    {
        return "push_service_started";
    }

    final JSONObject b()
    {
        JSONObject jsonobject = new JSONObject();
        Environment environment = d();
        try
        {
            jsonobject.put("session_id", environment.j());
            jsonobject.put("connection_type", environment.a());
            String s = environment.b();
            if (s.length() > 0)
            {
                jsonobject.put("connection_subtype", s);
            }
            jsonobject.put("carrier", environment.c());
            jsonobject.put("apid", environment.m());
            jsonobject.put("transport", environment.l());
            jsonobject.put("push_enabled", environment.n());
        }
        catch (JSONException jsonexception)
        {
            Logger.e("Error constructing JSON data for push_service_started");
            return jsonobject;
        }
        return jsonobject;
    }
}
