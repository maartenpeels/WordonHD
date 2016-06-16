// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.analytics;

import android.location.Location;
import com.urbanairship.Logger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.urbanairship.analytics:
//            Event, DefaultEnvironment, Environment

public class LocationEvent extends Event
{

    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private UpdateType h;

    public LocationEvent(Location location, UpdateType updatetype, int i, int j)
    {
        this(((Environment) (new DefaultEnvironment())), location, updatetype, i, j);
    }

    private LocationEvent(Environment environment, Location location, UpdateType updatetype, int i, int j)
    {
        String s;
        AllowableProvider aallowableprovider[];
        int k;
        int l;
        super(environment);
        b = String.format(null, "%.6f", new Object[] {
            Double.valueOf(location.getLatitude())
        });
        c = String.format(null, "%.6f", new Object[] {
            Double.valueOf(location.getLongitude())
        });
        s = location.getProvider();
        aallowableprovider = AllowableProvider.values();
        l = aallowableprovider.length;
        k = 0;
_L3:
        if (k >= l)
        {
            break MISSING_BLOCK_LABEL_214;
        }
        if (!aallowableprovider[k].toString().equalsIgnoreCase(s)) goto _L2; else goto _L1
_L1:
        s = s.toUpperCase();
_L4:
        a = s;
        d = String.valueOf(location.getAccuracy());
        if (i >= 0)
        {
            location = String.valueOf(i);
        } else
        {
            location = "NONE";
        }
        e = location;
        if (j >= 0)
        {
            location = String.valueOf(j);
        } else
        {
            location = "NONE";
        }
        f = location;
        if (environment.p())
        {
            environment = "true";
        } else
        {
            environment = "false";
        }
        g = environment;
        h = updatetype;
        Logger.d(String.format("New location at lat: %s, long: %s found with provider: %s", new Object[] {
            b, c, a
        }));
        return;
_L2:
        k++;
          goto _L3
        s = AllowableProvider.d.toString();
          goto _L4
    }

    final String a()
    {
        return "location";
    }

    final JSONObject b()
    {
        JSONObject jsonobject = new JSONObject();
        Environment environment = d();
        try
        {
            jsonobject.put("session_id", environment.j());
            jsonobject.put("push_enabled", environment.n());
            jsonobject.put("notification_types", new JSONArray(environment.i()));
            jsonobject.put("lat", b);
            jsonobject.put("long", c);
            jsonobject.put("requested_accuracy", e);
            jsonobject.put("update_type", h.toString());
            jsonobject.put("provider", a);
            jsonobject.put("h_accuracy", d);
            jsonobject.put("v_accuracy", "NONE");
            jsonobject.put("foreground", g);
            jsonobject.put("update_dist", f);
        }
        catch (JSONException jsonexception)
        {
            Logger.e("Error constructing JSON data for location");
            return jsonobject;
        }
        return jsonobject;
    }

    private class AllowableProvider extends Enum
    {

        public static final AllowableProvider a;
        public static final AllowableProvider b;
        public static final AllowableProvider c;
        public static final AllowableProvider d;
        private static final AllowableProvider e[];

        public static AllowableProvider valueOf(String s)
        {
            return (AllowableProvider)Enum.valueOf(com/urbanairship/analytics/LocationEvent$AllowableProvider, s);
        }

        public static AllowableProvider[] values()
        {
            return (AllowableProvider[])e.clone();
        }

        static 
        {
            a = new AllowableProvider("GPS", 0);
            b = new AllowableProvider("NETWORK", 1);
            c = new AllowableProvider("PASSIVE", 2);
            d = new AllowableProvider("UNKNOWN", 3);
            e = (new AllowableProvider[] {
                a, b, c, d
            });
        }

        private AllowableProvider(String s, int i)
        {
            super(s, i);
        }
    }


    private class UpdateType extends Enum
    {

        public static final UpdateType a;
        public static final UpdateType b;
        public static final UpdateType c;
        private static final UpdateType d[];

        public static UpdateType valueOf(String s)
        {
            return (UpdateType)Enum.valueOf(com/urbanairship/analytics/LocationEvent$UpdateType, s);
        }

        public static UpdateType[] values()
        {
            return (UpdateType[])d.clone();
        }

        static 
        {
            a = new UpdateType("CONTINUOUS", 0);
            b = new UpdateType("SINGLE", 1);
            c = new UpdateType("CHANGE", 2);
            d = (new UpdateType[] {
                a, b, c
            });
        }

        private UpdateType(String s, int i)
        {
            super(s, i);
        }
    }

}
