// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation;

import com.heyzap.internal.SettableFuture;
import com.heyzap.mediation.abstr.NetworkAdapter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.mediation:
//            ConcurrentLoaderStrategy

public static class data
{

    private static int DEFAULT_TTL = 10000;
    public List adUnits;
    public NetworkAdapter adapter;
    public String adapterName;
    public Map data;
    public double load;
    public SettableFuture loadingFuture;
    public int ttl;


    public A(String s, double d, int i, List list)
    {
        load = 1.0D;
        ttl = DEFAULT_TTL;
        data = new HashMap();
        adapterName = s;
        load = d;
        ttl = i;
        adUnits = list;
    }

    public adUnits(JSONObject jsonobject)
        throws JSONException
    {
        load = 1.0D;
        ttl = DEFAULT_TTL;
        data = new HashMap();
        adapterName = jsonobject.getString("network");
        load = jsonobject.optDouble("load", 1.0D);
        ttl = jsonobject.optInt("ttl", DEFAULT_TTL);
        adUnits = new ArrayList();
        JSONArray jsonarray = jsonobject.getJSONArray("ad_units");
        for (int i = 0; i < jsonarray.length(); i++)
        {
            adUnits.add(com.heyzap.internal..adUnits(jsonarray.getString(i).toUpperCase(Locale.US)));
        }

        jsonobject = jsonobject.optJSONObject("data");
        if (jsonobject != null)
        {
            Object obj;
            for (Iterator iterator = jsonobject.keys(); iterator.hasNext(); data.put((String)obj, jsonobject.optString((String)obj)))
            {
                obj = iterator.next();
                if (!(obj instanceof String))
                {
                    throw new JSONException("key not a string");
                }
            }

        }
    }
}
