// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation;

import com.heyzap.internal.Logger;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.mediation:
//            ConcurrentLoaderStrategy

public static class Config
{

    private static double defaultMaxLoad = 1.0D;
    public final double maxLoad;
    public final List networkConfigs;


    public Config(int i, List list)
    {
        maxLoad = i;
        networkConfigs = list;
    }

    public networkConfigs(JSONObject jsonobject)
        throws JSONException
    {
        maxLoad = jsonobject.optDouble("max_load", defaultMaxLoad);
        networkConfigs = new ArrayList();
        jsonobject = jsonobject.getJSONArray("networks");
        int i = 0;
        do
        {
            if (i >= jsonobject.length())
            {
                break;
            }
            try
            {
                networkConfigs.add(new Config(jsonobject.getJSONObject(i)));
            }
            catch (JSONException jsonexception)
            {
                Logger.log(new Object[] {
                    "failed to load loader config:", jsonobject.optJSONObject(i)
                });
                Logger.trace(jsonexception);
            }
            i++;
        } while (true);
    }
}
