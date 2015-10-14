// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.adapter;

import com.heyzap.analytics.Event;
import com.heyzap.analytics.MetricsTracker;
import com.heyzap.internal.ContextReference;
import com.heyzap.internal.Logger;
import com.heyzap.internal.SettableFuture;
import com.heyzap.mediation.FetchRequestStore;
import com.heyzap.mediation.abstr.NetworkAdapter;
import com.heyzap.sdk.mediation.adapter.HeyzapAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONArray;

// Referenced classes of package com.heyzap.mediation.adapter:
//            AdapterConfiguration

public class AdapterPool
{

    private final com.heyzap.sdk.ads.HeyzapAds.AdsConfig adsConfig;
    private final ContextReference contextRef;
    private final ScheduledExecutorService executorService;
    private final FetchRequestStore fetchStore;
    private ArrayList pool;
    private final ExecutorService uiThreadExecutorService;

    public AdapterPool(ContextReference contextreference, FetchRequestStore fetchrequeststore, com.heyzap.sdk.ads.HeyzapAds.AdsConfig adsconfig, ScheduledExecutorService scheduledexecutorservice, ExecutorService executorservice)
    {
        pool = new ArrayList();
        contextRef = contextreference;
        fetchStore = fetchrequeststore;
        adsConfig = adsconfig;
        executorService = scheduledexecutorservice;
        uiThreadExecutorService = executorservice;
    }

    private void setMediationMetricsCallbacks(List list)
    {
        NetworkAdapter networkadapter;
        for (list = list.iterator(); list.hasNext(); networkadapter.addFetchStartedListener(new com.heyzap.mediation.abstr.NetworkAdapter.FetchStartedListener() {

        final AdapterPool this$0;
        final String val$networkName;
        final String val$networkVersion;

        public void onFetchStarted(final com.heyzap.internal.Constants.AdUnit e, SettableFuture settablefuture)
        {
            e = MetricsTracker.getEvent(networkName).networkVersion(networkVersion).fetch(true).fetchTime(System.currentTimeMillis());
            e.commit();
            settablefuture.addListener(settablefuture. new Runnable() {

                final _cls1 this$1;
                final Event val$e;
                final SettableFuture val$fetchFuture;

                public void run()
                {
                    e.fetchFinishedTime(System.currentTimeMillis());
                    try
                    {
                        com.heyzap.mediation.abstr.NetworkAdapter.FetchResult fetchresult = (com.heyzap.mediation.abstr.NetworkAdapter.FetchResult)fetchFuture.get();
                        if (!fetchresult.success)
                        {
                            e.fetchFailReason(fetchresult.errorMessage).commit(true);
                            return;
                        }
                    }
                    catch (Exception exception)
                    {
                        e.fetchFailReason(exception.getLocalizedMessage()).commit(true);
                        Logger.trace(exception);
                        return;
                    }
                    e.commit();
                    return;
                }

            
            {
                this$1 = final__pcls1;
                e = event;
                fetchFuture = SettableFuture.this;
                super();
            }
            }, executorService);
        }

            
            {
                this$0 = AdapterPool.this;
                networkName = s;
                networkVersion = s1;
                super();
            }
    }, executorService))
        {
            networkadapter = (NetworkAdapter)list.next();
        }

    }

    public void addAdapters(List list)
    {
        for (list = list.iterator(); list.hasNext();)
        {
            Class class1 = (Class)list.next();
            NetworkAdapter networkadapter = NetworkAdapter.createAdapterFromKlass(class1);
            if (networkadapter != null)
            {
                if ((adsConfig.flags & 0x10) > 0 && !(networkadapter instanceof HeyzapAdapter))
                {
                    Logger.format("Mediation is disabled, skipping %s", new Object[] {
                        networkadapter.getMarketingName()
                    });
                }
                if (networkadapter.isOnBoard().booleanValue())
                {
                    Logger.format("%s is on board.", new Object[] {
                        networkadapter.getMarketingName()
                    });
                    pool.add(networkadapter);
                } else
                {
                    Logger.format("%s is not on board", new Object[] {
                        networkadapter.getMarketingName()
                    });
                }
            } else
            {
                Logger.format("could not load adapter for %s", new Object[] {
                    class1
                });
            }
        }

    }

    public void clear()
    {
        pool.clear();
    }

    public void clear(String s)
    {
        this;
        JVM INSTR monitorenter ;
        s = get(s);
        pool.remove(s);
        this;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
    }

    public void configure(List list)
    {
        ArrayList arraylist = new ArrayList();
        list = list.iterator();
        do
        {
            if (!list.hasNext())
            {
                break;
            }
            AdapterConfiguration adapterconfiguration = (AdapterConfiguration)list.next();
            NetworkAdapter networkadapter = get(adapterconfiguration.getCanonicalName());
            if (networkadapter != null)
            {
                try
                {
                    networkadapter.init(contextRef, adapterconfiguration, fetchStore, adsConfig, executorService, uiThreadExecutorService);
                    arraylist.add(networkadapter);
                }
                catch (com.heyzap.mediation.abstr.NetworkAdapter.ConfigurationError configurationerror)
                {
                    Logger.format("(CONFIG) Failed to initialize adapter: %s", new Object[] {
                        networkadapter.getCanonicalName()
                    });
                }
                catch (Throwable throwable)
                {
                    Logger.trace(throwable);
                }
            }
        } while (true);
        pool.retainAll(arraylist);
        setMediationMetricsCallbacks(arraylist);
    }

    public NetworkAdapter get(String s)
    {
        this;
        JVM INSTR monitorenter ;
        Iterator iterator = pool.iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        NetworkAdapter networkadapter;
        boolean flag;
        networkadapter = (NetworkAdapter)iterator.next();
        flag = networkadapter.getCanonicalName().equalsIgnoreCase(s);
        if (!flag) goto _L4; else goto _L3
_L3:
        s = networkadapter;
_L6:
        this;
        JVM INSTR monitorexit ;
        return s;
_L2:
        s = null;
        if (true) goto _L6; else goto _L5
_L5:
        s;
        throw s;
    }

    public List getAll()
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist = pool;
        this;
        JVM INSTR monitorexit ;
        return arraylist;
        Exception exception;
        exception;
        throw exception;
    }

    public List parseConfig(JSONArray jsonarray)
    {
        ArrayList arraylist = new ArrayList();
        int i = 0;
        do
        {
            if (i >= jsonarray.length())
            {
                break;
            }
            try
            {
                arraylist.add(new AdapterConfiguration(jsonarray.getJSONObject(i)));
            }
            catch (AdapterConfiguration.AdapterConfigurationError adapterconfigurationerror)
            {
                Logger.format("(CONFIG) Failed to load config for: %s", new Object[] {
                    String.valueOf(jsonarray.optJSONObject(i))
                });
                Logger.trace(adapterconfigurationerror);
            }
            catch (Throwable throwable)
            {
                Logger.trace(throwable);
            }
            i++;
        } while (true);
        return arraylist;
    }

    public void put(NetworkAdapter networkadapter)
    {
        this;
        JVM INSTR monitorenter ;
        if (networkadapter == null)
        {
            break MISSING_BLOCK_LABEL_15;
        }
        pool.add(networkadapter);
        this;
        JVM INSTR monitorexit ;
        return;
        networkadapter;
        throw networkadapter;
    }

    public void remove(NetworkAdapter networkadapter)
    {
        this;
        JVM INSTR monitorenter ;
        if (pool.remove(networkadapter))
        {
            Logger.format("(POOL) Removed session: %s", new Object[] {
                networkadapter
            });
        }
        this;
        JVM INSTR monitorexit ;
        return;
        networkadapter;
        throw networkadapter;
    }

}
