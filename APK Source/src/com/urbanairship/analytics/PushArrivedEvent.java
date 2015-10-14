// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.analytics;

import com.urbanairship.Logger;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.urbanairship.analytics:
//            Event, DefaultEnvironment, Environment

public class PushArrivedEvent extends Event
{

    private String a;

    private PushArrivedEvent(Environment environment, String s)
    {
        super(environment);
        a = s;
    }

    public PushArrivedEvent(String s)
    {
        this(((Environment) (new DefaultEnvironment())), s);
    }

    final String a()
    {
        return "push_arrived";
    }

    final JSONObject b()
    {
        JSONObject jsonobject = new JSONObject();
        Environment environment = d();
        try
        {
            jsonobject.put("session_id", environment.j());
            jsonobject.put("push_id", a);
            jsonobject.put("connection_type", environment.a());
            String s = environment.b();
            if (s.length() > 0)
            {
                jsonobject.put("connection_subtype", s);
            }
            jsonobject.put("carrier", environment.c());
        }
        catch (JSONException jsonexception)
        {
            Logger.e("Error constructing JSON data for push_arrived");
            return jsonobject;
        }
        return jsonobject;
    }
}
