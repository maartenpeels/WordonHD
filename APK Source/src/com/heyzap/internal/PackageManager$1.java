// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.widget.Toast;
import com.heyzap.http.JsonHttpResponseHandler;
import com.heyzap.http.RequestParams;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.internal:
//            PackageManager, Utils, APIClient, Logger, 
//            Base64

static final class val.context
    implements Runnable
{

    final Context val$context;

    public void run()
    {
        String s;
        final SharedPreferences prefs;
        long l;
        final boolean debug;
        if (Utils.isAmazon())
        {
            s = (new StringBuilder()).append(PackageManager.access$000()).append("gtc/amazon.json").toString();
        } else
        {
            s = (new StringBuilder()).append(PackageManager.access$000()).append("gtc/android.json").toString();
        }
        prefs = val$context.getSharedPreferences("com.heyzap.sdk.ads", 0);
        l = prefs.getLong("last_checked_packages", 0L);
        System.currentTimeMillis();
        debug = Utils.isDebug(val$context).booleanValue();
        if (!debug && !Utils.isExpired(Long.valueOf(l), PackageManager.access$100()).booleanValue())
        {
            return;
        }
        Object obj = null;
        final Activity activity = obj;
        if (debug)
        {
            activity = obj;
            if (val$context instanceof Activity)
            {
                activity = (Activity)val$context;
            }
        }
        APIClient.get(val$context, s, new RequestParams(), new JsonHttpResponseHandler() {

            final PackageManager._cls1 this$0;
            final Activity val$activity;
            final boolean val$debug;
            final SharedPreferences val$prefs;

            public void onSuccess(int i, Header aheader[], JSONObject jsonobject)
            {
                HashSet hashset;
                i = 0;
                if (debug && activity != null)
                {
                    activity.runOnUiThread(new Runnable() {

                        final _cls1 this$1;

                        public void run()
                        {
                            Toast.makeText(context, "cip", 0).show();
                        }

            
            {
                this$1 = _cls1.this;
                super();
            }
                    });
                }
                try
                {
                    aheader = jsonobject.optString("version", "0");
                    Object obj1 = context.getPackageManager().getInstalledPackages(0);
                    hashset = new HashSet();
                    for (obj1 = ((List) (obj1)).iterator(); ((Iterator) (obj1)).hasNext(); hashset.add(((PackageInfo)((Iterator) (obj1)).next()).packageName)) { }
                }
                // Misplaced declaration of an exception variable
                catch (Header aheader[])
                {
                    Logger.trace(aheader);
                    return;
                }
                JSONArray jsonarray = jsonobject.optJSONArray("packages");
                if (jsonarray == null) goto _L2; else goto _L1
_L1:
                int k;
                k = jsonarray.length();
                jsonobject = new byte[(jsonarray.length() + 7) / 8];
                final int installedCount;
                boolean flag;
                installedCount = 0;
                flag = false;
_L9:
                if (i >= jsonarray.length()) goto _L4; else goto _L3
_L3:
                int j = installedCount;
                if (!hashset.contains(jsonarray.getString(i))) goto _L6; else goto _L5
_L5:
                j = i / 8;
                jsonobject[j] = (byte)(jsonobject[j] | 1 << i % 8);
                j = installedCount + 1;
                flag = true;
                  goto _L6
_L4:
                if (!flag) goto _L2; else goto _L7
_L7:
                RequestParams requestparams = new RequestParams();
                requestparams.put("version", aheader);
                requestparams.put("data", Base64.encodeToString(jsonobject, 2));
                APIClient.post(context, (new StringBuilder()).append(PackageManager.access$000()).append("aip").toString(), requestparams, k. new JsonHttpResponseHandler() {

                    final _cls1 this$1;
                    final int val$installedCount;
                    final int val$totalCount;

                    public void onSuccess(int i, Header aheader[], JSONObject jsonobject)
                    {
                        if (debug && activity != null)
                        {
                            activity.runOnUiThread(new Runnable() {

                                final _cls2 this$2;

                                public void run()
                                {
                                    Toast.makeText(context, String.format("cip %s.%s", new Object[] {
                                        Integer.valueOf(installedCount), Integer.valueOf(totalCount)
                                    }), 1).show();
                                }

            
            {
                this$2 = _cls2.this;
                super();
            }
                            });
                        }
                    }

            
            {
                this$1 = final__pcls1;
                installedCount = i;
                totalCount = I.this;
                super();
            }
                });
_L2:
                aheader = prefs.edit();
                aheader.putLong("last_checked_packages", System.currentTimeMillis());
                aheader.commit();
                return;
_L6:
                i++;
                installedCount = j;
                if (true) goto _L9; else goto _L8
_L8:
            }

            
            {
                this$0 = PackageManager._cls1.this;
                debug = flag;
                activity = activity1;
                prefs = sharedpreferences;
                super();
            }
        });
    }

    er(Context context1)
    {
        val$context = context1;
        super();
    }
}
