// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.display;

import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.mediation.display:
//            DisplayConfig

public static class network
{

    public String id;
    public String network;
    public Double score;

    public (String s, String s1, Double double1)
    {
        id = s1;
        score = double1;
        network = s;
    }

    public network(JSONObject jsonobject)
        throws JSONException
    {
        id = jsonobject.optString("id", "none");
        score = Double.valueOf(jsonobject.optDouble("score", 0.0D));
        network = jsonobject.getString("network");
    }
}
