// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.alebianco.air.extensions.analytics;

import com.adobe.fre.FREContext;
import eu.alebianco.air.extensions.analytics.functions.CloseTracker;
import eu.alebianco.air.extensions.analytics.functions.CreateTracker;
import eu.alebianco.air.extensions.analytics.functions.Dispatch;
import eu.alebianco.air.extensions.analytics.functions.GetAnonymous;
import eu.alebianco.air.extensions.analytics.functions.GetAppID;
import eu.alebianco.air.extensions.analytics.functions.GetDebug;
import eu.alebianco.air.extensions.analytics.functions.GetOptOut;
import eu.alebianco.air.extensions.analytics.functions.GetSampleRate;
import eu.alebianco.air.extensions.analytics.functions.GetSecure;
import eu.alebianco.air.extensions.analytics.functions.GetVersion;
import eu.alebianco.air.extensions.analytics.functions.IsSupported;
import eu.alebianco.air.extensions.analytics.functions.SetAnonymous;
import eu.alebianco.air.extensions.analytics.functions.SetAppID;
import eu.alebianco.air.extensions.analytics.functions.SetAppName;
import eu.alebianco.air.extensions.analytics.functions.SetAppVersion;
import eu.alebianco.air.extensions.analytics.functions.SetCustomDimension;
import eu.alebianco.air.extensions.analytics.functions.SetCustomMetric;
import eu.alebianco.air.extensions.analytics.functions.SetDebug;
import eu.alebianco.air.extensions.analytics.functions.SetDispatchInterval;
import eu.alebianco.air.extensions.analytics.functions.SetOptOut;
import eu.alebianco.air.extensions.analytics.functions.SetSampleRate;
import eu.alebianco.air.extensions.analytics.functions.SetSecure;
import eu.alebianco.air.extensions.analytics.functions.StartNewSession;
import eu.alebianco.air.extensions.analytics.functions.TrackData;
import java.util.HashMap;
import java.util.Map;

public class GAContext extends FREContext
{

    public static final String PRODUCT = "ANE-Google-Analytics";
    public static final String VERSION = "0.2.04";

    public GAContext()
    {
    }

    public void dispose()
    {
    }

    public Map getFunctions()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("isSupported", new IsSupported());
        hashmap.put("getVersion", new GetVersion());
        hashmap.put("createTracker", new CreateTracker());
        hashmap.put("closeTracker", new CloseTracker());
        hashmap.put("getDebug", new GetDebug());
        hashmap.put("setDebug", new SetDebug());
        hashmap.put("getOptOut", new GetOptOut());
        hashmap.put("setOptOut", new SetOptOut());
        hashmap.put("setDispatchInterval", new SetDispatchInterval());
        hashmap.put("dispatch", new Dispatch());
        hashmap.put("setAppName", new SetAppName());
        hashmap.put("setAppVersion", new SetAppVersion());
        hashmap.put("getAppID", new GetAppID());
        hashmap.put("setAppID", new SetAppID());
        hashmap.put("getAnonymous", new GetAnonymous());
        hashmap.put("setAnonymous", new SetAnonymous());
        hashmap.put("getSecure", new GetSecure());
        hashmap.put("setSecure", new SetSecure());
        hashmap.put("getSampleRate", new GetSampleRate());
        hashmap.put("setSampleRate", new SetSampleRate());
        hashmap.put("startNewSession", new StartNewSession());
        hashmap.put("trackData", new TrackData());
        hashmap.put("setCustomDimension", new SetCustomDimension());
        hashmap.put("setCustomMetric", new SetCustomMetric());
        return hashmap;
    }

    public void initialize()
    {
    }
}
