// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.display;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.heyzap.http.JsonHttpResponseHandler;
import com.heyzap.http.RequestParams;
import com.heyzap.internal.APIClient;
import com.heyzap.internal.Connectivity;
import com.heyzap.internal.ContextReference;
import com.heyzap.internal.ExecutorPool;
import com.heyzap.internal.Logger;
import com.heyzap.internal.RetryManager;
import com.heyzap.internal.SettableFuture;
import java.util.Locale;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.apache.http.Header;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.mediation.display:
//            DisplayConfigLoader, DisplayConfig

public class MediatedDisplayConfigLoader
    implements DisplayConfigLoader
{

    private final ContextReference contextRef;
    private SettableFuture currentConfigFuture;
    private final ScheduledExecutorService scheduledExecutorService;

    public MediatedDisplayConfigLoader(ContextReference contextreference)
    {
        this(contextreference, ((ScheduledExecutorService) (ExecutorPool.getInstance())));
    }

    public MediatedDisplayConfigLoader(ContextReference contextreference, ScheduledExecutorService scheduledexecutorservice)
    {
        contextRef = contextreference;
        scheduledExecutorService = scheduledexecutorservice;
    }

    private void fetchNext()
    {
        final SettableFuture displayConfigFuture = SettableFuture.create();
        currentConfigFuture = displayConfigFuture;
        (new RetryManager(new com.heyzap.internal.RetryManager.RetryableTask() {

            final MediatedDisplayConfigLoader this$0;
            final SettableFuture val$displayConfigFuture;

            public void run()
            {
                APIClient.get(contextRef.getApp(), "https://med.heyzap.com/mediate", getParams(), new JsonHttpResponseHandler() {

                    final _cls1 this$1;

                    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                    {
                        Logger.log(new Object[] {
                            "Display config loader failed to load /mediate", Integer.valueOf(i), throwable
                        });
                        if (!displayConfigFuture.isDone())
                        {
                            Logger.log("Retrying /mediate");
                            retry();
                        }
                    }

                    public void onSuccess(int i, Header aheader[], JSONObject jsonobject)
                    {
                        aheader = new DisplayConfig(jsonobject);
                        displayConfigFuture.set(aheader);
_L1:
                        return;
                        aheader;
                        Logger.log(new Object[] {
                            "Display config loader got json exception", aheader
                        });
                        if (!displayConfigFuture.isDone())
                        {
                            Logger.log("Retrying /mediate");
                            retry();
                            return;
                        }
                          goto _L1
                    }

            
            {
                this$1 = _cls1.this;
                super();
            }
                });
            }

            
            {
                this$0 = MediatedDisplayConfigLoader.this;
                displayConfigFuture = settablefuture;
                super();
            }
        }, new com.heyzap.internal.RetryManager.ExponentialSchedule(1.5D, 5L, TimeUnit.SECONDS), scheduledExecutorService)).start();
    }

    private RequestParams getParams()
    {
        RequestParams requestparams = new RequestParams();
        requestparams.put("connection_type", Connectivity.connectionType(contextRef.getApp()));
        Object obj = contextRef.getApp().getResources().getDisplayMetrics();
        requestparams.put("device_dpi", Float.toString(((DisplayMetrics) (obj)).density));
        int i = ((DisplayMetrics) (obj)).heightPixels;
        int j = ((DisplayMetrics) (obj)).widthPixels;
        if (((DisplayMetrics) (obj)).widthPixels > ((DisplayMetrics) (obj)).heightPixels)
        {
            obj = "landscape";
        } else
        {
            obj = "portrait";
        }
        requestparams.put("orientation", ((String) (obj)));
        requestparams.put("device_width", String.valueOf(j));
        requestparams.put("device_height", String.valueOf(i));
        obj = contextRef.getApp().getResources().getConfiguration().locale;
        if (obj != null)
        {
            requestparams.put("locale_country", ((Locale) (obj)).getCountry().toLowerCase(Locale.US));
            requestparams.put("locale_lang", ((Locale) (obj)).getLanguage().toLowerCase(Locale.US));
        }
        return requestparams;
    }

    public SettableFuture consume()
    {
        this;
        JVM INSTR monitorenter ;
        SettableFuture settablefuture;
        settablefuture = currentConfigFuture;
        fetchNext();
        this;
        JVM INSTR monitorexit ;
        return settablefuture;
        Exception exception;
        exception;
        throw exception;
    }

    public void start()
    {
        fetchNext();
    }


}
