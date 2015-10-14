// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.heyzap.house.Manager;
import com.heyzap.http.AsyncHttpClient;
import com.heyzap.http.AsyncHttpResponseHandler;
import com.heyzap.http.RequestParams;
import com.heyzap.http.SDKCookieStore;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.CookieSpecFactory;
import org.apache.http.cookie.CookieSpecRegistry;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.cookie.BrowserCompatSpec;
import org.apache.http.params.HttpParams;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.internal:
//            ExecutorPool, Utils, Logger

public class APIClient
{
    private static class GlobalCookieSpec extends BrowserCompatSpec
    {

        public boolean match(Cookie cookie, CookieOrigin cookieorigin)
        {
            return true;
        }

        private GlobalCookieSpec()
        {
        }

    }

    private static class GlobalCookieSpecFactory
        implements CookieSpecFactory
    {

        public CookieSpec newInstance(HttpParams httpparams)
        {
            return new GlobalCookieSpec();
        }

        private GlobalCookieSpecFactory()
        {
        }

    }


    public static final int API_STATUS_NOT_LOGGED_IN = 504;
    private static final String BASE_ENDPOINT = "/in_game_api/ads/";
    public static final String BASE_URL;
    public static String DOMAIN;
    private static final String USER_AGENT = "Heyzap Android Client";
    private static AsyncHttpClient client;
    private static SDKCookieStore cookieStore;
    public static final Object lock = new Object();

    public APIClient()
    {
    }

    public static RequestParams augmentParams(RequestParams requestparams, Context context)
    {
        Object obj = lock;
        obj;
        JVM INSTR monitorenter ;
        if (requestparams != null)
        {
            break MISSING_BLOCK_LABEL_18;
        }
        requestparams = new RequestParams();
        java.util.Map.Entry entry;
        for (context = Utils.extraParams(context).entrySet().iterator(); context.hasNext(); requestparams.put((String)entry.getKey(), (String)entry.getValue()))
        {
            entry = (java.util.Map.Entry)context.next();
        }

        break MISSING_BLOCK_LABEL_80;
        requestparams;
        obj;
        JVM INSTR monitorexit ;
        throw requestparams;
        obj;
        JVM INSTR monitorexit ;
        return requestparams;
    }

    public static void cancelRequests(Context context)
    {
        client.cancelRequests(context, true);
    }

    public static void clearCookies(Context context)
    {
        cookieStore.clear();
        cookieStore = new SDKCookieStore(context);
        client.setCookieStore(cookieStore);
    }

    public static void get(Context context, String s, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        get(context, s, null, asynchttpresponsehandler);
    }

    public static void get(Context context, String s, RequestParams requestparams)
    {
        get(context, s, requestparams, null);
    }

    public static void get(Context context, String s, RequestParams requestparams, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        init(context);
        ExecutorPool.getInstance().execute(new Runnable(requestparams, context, s, asynchttpresponsehandler) {

            final Context val$context;
            final RequestParams val$params;
            final AsyncHttpResponseHandler val$responseHandler;
            final String val$url;

            public void run()
            {
                RequestParams requestparams1 = APIClient.augmentParams(params, context);
                String s1 = APIClient.getAbsoluteUrl(url);
                Logger.format("GET %s?%s", new Object[] {
                    s1, requestparams1
                });
                APIClient.client.get(context, s1, requestparams1, responseHandler);
            }

            
            {
                params = requestparams;
                context = context1;
                url = s;
                responseHandler = asynchttpresponsehandler;
                super();
            }
        });
    }

    private static String getAbsoluteUrl(String s)
    {
        if (s != null && s.startsWith("/"))
        {
            return (new StringBuilder()).append(BASE_URL).append(s).toString();
        }
        if (s != null && (s.startsWith("http://") || s.startsWith("https://")))
        {
            return s;
        } else
        {
            return (new StringBuilder()).append(BASE_URL).append("/in_game_api/ads/").append(s).toString();
        }
    }

    public static void init(Context context)
    {
        com/heyzap/internal/APIClient;
        JVM INSTR monitorenter ;
        if (cookieStore == null)
        {
            cookieStore = new SDKCookieStore(context);
            client.setCookieStore(cookieStore);
        }
        com/heyzap/internal/APIClient;
        JVM INSTR monitorexit ;
        return;
        context;
        throw context;
    }

    public static void post(Context context, String s, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        post(context, s, null, asynchttpresponsehandler);
    }

    public static void post(Context context, String s, RequestParams requestparams)
    {
        post(context, s, requestparams, null);
    }

    public static void post(Context context, String s, RequestParams requestparams, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        init(context);
        ExecutorPool.getInstance().execute(new Runnable(requestparams, context, s, asynchttpresponsehandler) {

            final Context val$context;
            final RequestParams val$params;
            final AsyncHttpResponseHandler val$responseHandler;
            final String val$url;

            public void run()
            {
                RequestParams requestparams1 = APIClient.augmentParams(params, context);
                String s1 = APIClient.getAbsoluteUrl(url);
                Logger.format("POST %s?%s", new Object[] {
                    s1, requestparams1
                });
                APIClient.client.post(context, s1, requestparams1, responseHandler);
            }

            
            {
                params = requestparams;
                context = context1;
                url = s;
                responseHandler = asynchttpresponsehandler;
                super();
            }
        });
    }

    public static void postJson(Context context, String s, JSONObject jsonobject, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        init(context);
        ExecutorPool.getInstance().execute(new Runnable(s, jsonobject, context, asynchttpresponsehandler) {

            final Context val$context;
            final AsyncHttpResponseHandler val$handler;
            final JSONObject val$postData;
            final String val$url;

            public void run()
            {
                Object obj = APIClient.getAbsoluteUrl(url);
                postData.put("carrier", ((TelephonyManager)Manager.applicationContext.getSystemService("phone")).getNetworkOperatorName().toLowerCase(Locale.US));
                HashMap hashmap = Utils.extraParams(Manager.applicationContext);
                String s1;
                for (Iterator iterator = hashmap.keySet().iterator(); iterator.hasNext(); postData.put(s1, hashmap.get(s1)))
                {
                    s1 = (String)iterator.next();
                }

                try
                {
                    Logger.format("POST %s?%s", new Object[] {
                        obj, postData.toString()
                    });
                    APIClient.client.post(context, ((String) (obj)), new StringEntity(postData.toString()), "application/json", handler);
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    Logger.trace(((Throwable) (obj)));
                    return;
                }
                catch (JSONException jsonexception)
                {
                    Logger.trace(jsonexception);
                }
                return;
            }

            
            {
                url = s;
                postData = jsonobject;
                context = context1;
                handler = asynchttpresponsehandler;
                super();
            }
        });
    }

    static 
    {
        client = new AsyncHttpClient();
        DOMAIN = "ads.heyzap.com";
        BASE_URL = (new StringBuilder()).append("http://").append(DOMAIN).toString();
        client = new AsyncHttpClient();
        client.setThreadPool(ExecutorPool.getInstance());
        client.getHttpClient().getCookieSpecs().register("global", new GlobalCookieSpecFactory());
        client.getHttpClient().getParams().setParameter("http.protocol.cookie-policy", "global");
    }


}
