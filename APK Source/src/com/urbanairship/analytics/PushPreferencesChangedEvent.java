// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.analytics;

import com.urbanairship.Logger;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.urbanairship.analytics:
//            Event, DefaultEnvironment, Environment

public class PushPreferencesChangedEvent extends Event
{

    public PushPreferencesChangedEvent()
    {
        this(((Environment) (new DefaultEnvironment())));
    }

    private PushPreferencesChangedEvent(Environment environment)
    {
        super(environment);
    }

    final String a()
    {
        return "push_preferences_changed";
    }

    final JSONObject b()
    {
        JSONObject jsonobject;
        Environment environment;
        jsonobject = new JSONObject();
        environment = d();
        java.util.Date adate[];
        jsonobject.put("session_id", environment.j());
        jsonobject.put("notification_types", new JSONArray(environment.i()));
        jsonobject.put("push_enabled", environment.n());
        adate = environment.s();
        if (environment.r() && adate != null)
        {
            try
            {
                SimpleDateFormat simpledateformat = new SimpleDateFormat("HH:mm");
                ArrayList arraylist = new ArrayList(2);
                arraylist.add(simpledateformat.format(adate[0]));
                arraylist.add(simpledateformat.format(adate[1]));
                jsonobject.put("quiet_time", new JSONArray(arraylist));
            }
            catch (JSONException jsonexception)
            {
                Logger.e("Error constructing JSON data for push_preferences_changed");
                return jsonobject;
            }
        }
        return jsonobject;
    }
}
