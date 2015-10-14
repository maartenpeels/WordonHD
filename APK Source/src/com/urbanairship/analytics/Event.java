// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.analytics;

import android.content.ContentValues;
import com.urbanairship.Logger;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.urbanairship.analytics:
//            DefaultEnvironment, Environment

public abstract class Event
{

    private String a;
    private String b;
    private String c;
    private Environment d;

    public Event()
    {
        this(((Environment) (new DefaultEnvironment())));
    }

    public Event(Environment environment)
    {
        a = UUID.randomUUID().toString();
        c = Long.toString(environment.o() / 1000L);
        d = environment;
        b = environment.j();
    }

    private JSONObject e()
    {
        JSONObject jsonobject = new JSONObject();
        JSONObject jsonobject1 = b();
        try
        {
            jsonobject.put("type", a());
            jsonobject.put("event_id", a);
            jsonobject.put("time", c);
            jsonobject.put("data", jsonobject1);
        }
        catch (JSONException jsonexception)
        {
            Logger.e((new StringBuilder("Error constructing JSON ")).append(a()).append(" representation").toString());
            return jsonobject;
        }
        return jsonobject;
    }

    abstract String a();

    abstract JSONObject b();

    final ContentValues c()
    {
        ContentValues contentvalues = new ContentValues();
        String s = e().toString();
        int i = s.length();
        contentvalues.put("type", a());
        contentvalues.put("event_id", a);
        contentvalues.put("data", s);
        contentvalues.put("time", c);
        contentvalues.put("session_id", b);
        contentvalues.put("event_size", Integer.valueOf(i));
        return contentvalues;
    }

    final Environment d()
    {
        return d;
    }

    public final String toString()
    {
        String s;
        try
        {
            s = e().toString();
        }
        catch (Exception exception)
        {
            return a();
        }
        return s;
    }
}
