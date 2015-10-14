// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.handler;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.heyzap.house.Manager;
import com.heyzap.house.model.AdModel;
import com.heyzap.http.JsonHttpResponseHandler;
import com.heyzap.http.RequestParams;
import com.heyzap.internal.APIClient;
import com.heyzap.internal.Logger;
import com.heyzap.internal.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.http.Header;
import org.json.JSONObject;

public class AttributionHandler
{

    private static volatile AttributionHandler ref;

    public AttributionHandler()
    {
    }

    public static AttributionHandler getInstance()
    {
        com/heyzap/house/handler/AttributionHandler;
        JVM INSTR monitorenter ;
        AttributionHandler attributionhandler;
        if (ref == null)
        {
            ref = new AttributionHandler();
        }
        attributionhandler = ref;
        com/heyzap/house/handler/AttributionHandler;
        JVM INSTR monitorexit ;
        return attributionhandler;
        Exception exception;
        exception;
        throw exception;
    }

    public Object clone()
    {
        return null;
    }

    public void didImpression(Context context, AdModel admodel)
    {
        try
        {
            String s = (new StringBuilder()).append("impression.").append(admodel.getGamePackage()).toString();
            context = context.getSharedPreferences("com.heyzap.sdk.ads", 0).edit();
            context.putString(s, admodel.getImpressionId());
            context.commit();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Logger.trace(context);
        }
    }

    public void didInstall(Context context, String s)
    {
_L2:
        return;
        if (context == null || s == null) goto _L2; else goto _L1
_L1:
        s = String.format("impression.%s", new Object[] {
            s
        });
        SharedPreferences sharedpreferences = context.getSharedPreferences("com.heyzap.sdk.ads", 0);
        sharedpreferences.edit();
        s = sharedpreferences.getString(s, null);
        if (s != null)
        {
            try
            {
                ArrayList arraylist = new ArrayList();
                arraylist.add(s);
                didInstall(context, arraylist, Boolean.valueOf(false));
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                Logger.log(context);
            }
            return;
        }
        if (true) goto _L2; else goto _L3
_L3:
    }

    public void didInstall(final Context context, final ArrayList impressionIds, final Boolean rejected)
    {
        RequestParams requestparams = new RequestParams();
        if (Utils.isAmazon())
        {
            requestparams.put("platform", "amazon");
        } else
        {
            requestparams.put("platform", "android");
        }
        if (rejected.booleanValue())
        {
            requestparams.put("install_type", "rejected");
        }
        requestparams.put("impression_id", TextUtils.join(",", impressionIds.toArray()));
        APIClient.post(context, (new StringBuilder()).append(Manager.AD_SERVER).append("/event/install").toString(), requestparams, new JsonHttpResponseHandler() {

            final AttributionHandler this$0;
            final Context val$context;
            final ArrayList val$impressionIds;
            final Boolean val$rejected;

            public void onFailure(int i, Header aheader[], Throwable throwable, JSONObject jsonobject)
            {
                Logger.log(throwable);
            }

            public void onSuccess(int i, Header aheader[], JSONObject jsonobject)
            {
label0:
                {
                    try
                    {
                        if (jsonobject.getInt("status") == 200 && !rejected.booleanValue())
                        {
                            jsonobject = context.getSharedPreferences("com.heyzap.sdk.ads", 0);
                            aheader = jsonobject.edit();
                            jsonobject = jsonobject.getAll().entrySet().iterator();
                            do
                            {
                                if (!jsonobject.hasNext())
                                {
                                    break;
                                }
                                java.util.Map.Entry entry = (java.util.Map.Entry)jsonobject.next();
                                if (((String)entry.getKey()).startsWith("impression") && impressionIds.contains(entry.getValue()))
                                {
                                    Logger.format("(INSTALL) %s (%s)", new Object[] {
                                        entry.getValue(), entry.getKey()
                                    });
                                    aheader.remove((String)entry.getKey());
                                }
                            } while (true);
                            break label0;
                        }
                    }
                    // Misplaced declaration of an exception variable
                    catch (Header aheader[])
                    {
                        Logger.trace(aheader);
                    }
                    return;
                }
                aheader.commit();
                return;
            }

            
            {
                this$0 = AttributionHandler.this;
                rejected = boolean1;
                context = context1;
                impressionIds = arraylist;
                super();
            }
        });
    }

    public void doSelfInstall(Context context)
    {
        if (context == null)
        {
            return;
        }
        RequestParams requestparams = new RequestParams();
        final String packageName;
        if (Utils.isAmazon())
        {
            requestparams.put("platform", "amazon");
        } else
        {
            requestparams.put("platform", "android");
        }
        packageName = Utils.getPackageName(context);
        requestparams.put("for_game_package", packageName);
        APIClient.post(context, (new StringBuilder()).append(Manager.AD_SERVER).append("/register_new_game_install").toString(), requestparams, new JsonHttpResponseHandler() {

            final AttributionHandler this$0;
            final String val$packageName;

            public void onSuccess(int i, Header aheader[], JSONObject jsonobject)
            {
                try
                {
                    if (jsonobject.getInt("status") == 200)
                    {
                        Logger.log((new StringBuilder()).append("(SELF INSTALL) Package: ").append(packageName).toString());
                    }
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (Header aheader[])
                {
                    Logger.trace(aheader);
                }
            }

            
            {
                this$0 = AttributionHandler.this;
                packageName = s;
                super();
            }
        });
    }
}
