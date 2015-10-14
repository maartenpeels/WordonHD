// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation;

import com.heyzap.internal.ExecutorPool;
import com.heyzap.internal.FutureUtils;
import com.heyzap.internal.ListenableFuture;
import com.heyzap.internal.Logger;
import com.heyzap.internal.SettableFuture;
import com.heyzap.mediation.abstr.NetworkAdapter;
import com.heyzap.mediation.adapter.AdapterPool;
import com.heyzap.mediation.adapter.FetchRequestConsumer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.mediation:
//            FetchRequestStore

public class ConcurrentLoaderStrategy
{
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

        public Config(JSONObject jsonobject)
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
                    networkConfigs.add(new NetworkConfig(jsonobject.getJSONObject(i)));
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

    public static class NetworkConfig
    {

        private static int DEFAULT_TTL = 10000;
        public List adUnits;
        public NetworkAdapter adapter;
        public String adapterName;
        public Map data;
        public double load;
        public SettableFuture loadingFuture;
        public int ttl;


        public NetworkConfig(String s, double d, int i, List list)
        {
            load = 1.0D;
            ttl = DEFAULT_TTL;
            data = new HashMap();
            adapterName = s;
            load = d;
            ttl = i;
            adUnits = list;
        }

        public NetworkConfig(JSONObject jsonobject)
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
                adUnits.add(com.heyzap.internal.Constants.AdUnit.valueOf(jsonarray.getString(i).toUpperCase(Locale.US)));
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


    private final AdapterPool adapterPool;
    private Config config;
    private double currentLoad;
    private final FetchRequestConsumer fetchRequestConsumer;
    private final FetchRequestStore fetchRequestStore;
    private final ScheduledExecutorService scheduledExecutorService;

    public ConcurrentLoaderStrategy(AdapterPool adapterpool, ScheduledExecutorService scheduledexecutorservice, FetchRequestStore fetchrequeststore)
    {
        currentLoad = 0.0D;
        adapterPool = adapterpool;
        scheduledExecutorService = scheduledexecutorservice;
        fetchRequestStore = fetchrequeststore;
        fetchRequestConsumer = new FetchRequestConsumer(fetchrequeststore);
    }

    private NetworkConfig findNextNetworkConfig()
    {
        for (Iterator iterator = config.networkConfigs.iterator(); iterator.hasNext();)
        {
            NetworkConfig networkconfig = (NetworkConfig)iterator.next();
            Iterator iterator1 = networkconfig.adUnits.iterator();
            com.heyzap.internal.Constants.AdUnit adunit;
            int i;
            for (i = 0; iterator1.hasNext(); i = fetchRequestStore.getCount(adunit) + i)
            {
                adunit = (com.heyzap.internal.Constants.AdUnit)iterator1.next();
            }

            if (i > 0)
            {
                NetworkAdapter networkadapter = adapterPool.get(networkconfig.adapterName);
                if (networkadapter != null)
                {
                    networkconfig.adapter = networkadapter;
                    if (!networkadapter.isStarted(networkconfig.adUnits))
                    {
                        return networkconfig;
                    }
                }
            }
        }

        return null;
    }

    private void startAdapter(final NetworkConfig networkConfig)
    {
        final SettableFuture fetchFuture = networkConfig.adapter.start(networkConfig.adUnits);
        currentLoad = currentLoad + networkConfig.load;
        fetchFuture = FutureUtils.wrapTimeout(fetchFuture, scheduledExecutorService, networkConfig.ttl, TimeUnit.MILLISECONDS);
        fetchFuture.addListener(new Runnable() {

            final ConcurrentLoaderStrategy this$0;
            final ListenableFuture val$fetchFuture;
            final NetworkConfig val$networkConfig;

            public void run()
            {
                try
                {
                    fetchFuture.get();
                }
                catch (InterruptedException interruptedexception)
                {
                    Logger.trace(interruptedexception);
                }
                catch (ExecutionException executionexception)
                {
                    Logger.trace(executionexception);
                }
                <no variable> = 
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = ConcurrentLoaderStrategy.this;
                fetchFuture = listenablefuture;
                networkConfig = networkconfig;
                super();
            }
        }, ExecutorPool.getInstance());
    }

    private void startNextAdapter()
    {
_L5:
        if (currentLoad < config.maxLoad) goto _L2; else goto _L1
_L1:
        NetworkConfig networkconfig;
        return;
_L2:
        if ((networkconfig = findNextNetworkConfig()) == null) goto _L1; else goto _L3
_L3:
        startAdapter(networkconfig);
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void configure(Config config1)
    {
        config = config1;
    }

    public void start()
    {
        fetchRequestStore.addUpdateCallback(new Runnable() {

            final ConcurrentLoaderStrategy this$0;

            public void run()
            {
                startNextAdapter();
            }

            
            {
                this$0 = ConcurrentLoaderStrategy.this;
                super();
            }
        }, scheduledExecutorService);
        startNextAdapter();
    }



/*
    static double access$126(ConcurrentLoaderStrategy concurrentloaderstrategy, double d)
    {
        d = concurrentloaderstrategy.currentLoad - d;
        concurrentloaderstrategy.currentLoad = d;
        return d;
    }

*/
}
