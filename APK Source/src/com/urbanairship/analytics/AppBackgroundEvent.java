// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.analytics;

import com.urbanairship.Logger;
import com.urbanairship.util.UAStringUtil;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.urbanairship.analytics:
//            Event, DefaultEnvironment, Environment

class AppBackgroundEvent extends Event
{

    public AppBackgroundEvent()
    {
        this(((Environment) (new DefaultEnvironment())));
    }

    private AppBackgroundEvent(Environment environment)
    {
        super(environment);
    }

    final String a()
    {
        return "app_background";
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
            if (!UAStringUtil.a(s))
            {
                jsonobject.put("connection_subtype", s);
            }
            jsonobject.put("push_id", environment.k());
        }
        catch (JSONException jsonexception)
        {
            Logger.e("Error constructing JSON data for app_background");
            return jsonobject;
        }
        return jsonobject;
    }
}
