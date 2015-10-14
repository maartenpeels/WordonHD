// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.display;

import com.heyzap.internal.Logger;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class DisplayConfig
{
    public static class Network
    {

        public String id;
        public String network;
        public Double score;

        public Network(String s, String s1, Double double1)
        {
            id = s1;
            score = double1;
            network = s;
        }

        public Network(JSONObject jsonobject)
            throws JSONException
        {
            id = jsonobject.optString("id", "none");
            score = Double.valueOf(jsonobject.optDouble("score", 0.0D));
            network = jsonobject.getString("network");
        }
    }


    private static int defaultDisplayTtl = 1500;
    private static int defaultInterstitialVideoInterval = 30000;
    public int displayTtl;
    public String id;
    public boolean interstitialVideoEnabled;
    public int interstitialVideoInterval;
    public List networks;

    public DisplayConfig(JSONObject jsonobject)
        throws JSONException
    {
        networks = new ArrayList();
        interstitialVideoInterval = defaultInterstitialVideoInterval;
        interstitialVideoEnabled = true;
        displayTtl = defaultDisplayTtl;
        id = jsonobject.getString("id");
        interstitialVideoInterval = jsonobject.optInt("interstitial_video_interval", defaultInterstitialVideoInterval);
        interstitialVideoEnabled = jsonobject.optBoolean("interstitial_video_enabled", true);
        displayTtl = jsonobject.optInt("display_ttl", displayTtl);
        jsonobject = jsonobject.getJSONArray("networks");
        int i = 0;
        while (i < jsonobject.length()) 
        {
            JSONObject jsonobject1 = jsonobject.getJSONObject(i);
            try
            {
                networks.add(new Network(jsonobject1));
            }
            catch (JSONException jsonexception)
            {
                Logger.log(new Object[] {
                    "failed to load network json: ", jsonobject1
                });
            }
            i++;
        }
    }

}
