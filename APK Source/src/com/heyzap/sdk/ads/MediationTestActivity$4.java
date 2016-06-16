// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.ads;

import com.heyzap.http.AsyncHttpResponseHandler;
import com.heyzap.http.RequestParams;
import com.heyzap.internal.APIClient;
import com.heyzap.mediation.abstr.NetworkAdapter;
import com.heyzap.mediation.config.MediationConfig;
import com.heyzap.sdk.mediation.testactivity.NetworkStatus;
import java.util.Collection;
import java.util.Iterator;
import java.util.TreeMap;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.sdk.ads:
//            MediationTestActivity

class this._cls0
    implements com.heyzap.mediation.config.nfigListener
{

    final MediationTestActivity this$0;

    public void onConfigLoaded(MediationConfig mediationconfig)
    {
        APIClient.get(MediationTestActivity.this, "https://med.heyzap.com/info", new RequestParams(), new AsyncHttpResponseHandler() {

            final MediationTestActivity._cls4 this$1;

            public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
            {
                for (aheader = currentNetworks.values().iterator(); aheader.hasNext(); ((NetworkStatus)aheader.next()).setRemoteStatus(3)) { }
            }

            public void onSuccess(int i, Header aheader[], byte abyte0[])
            {
                i = 0;
                aheader = (new JSONObject(new String(abyte0))).getJSONArray("networks");
_L3:
                if (i >= aheader.length()) goto _L2; else goto _L1
_L1:
                abyte0 = aheader.getJSONObject(i);
                if (!currentNetworks.containsKey(abyte0.optString("name")))
                {
                    break MISSING_BLOCK_LABEL_212;
                }
                NetworkStatus networkstatus;
                networkstatus = (NetworkStatus)currentNetworks.get(abyte0.getString("name"));
                if (abyte0.getJSONObject("data").length() == 0)
                {
                    networkstatus.setRemoteStatus(0);
                    break MISSING_BLOCK_LABEL_212;
                }
                if (abyte0.getBoolean("enabled") && networkstatus.getNetworkAdapter() != null && networkstatus.getNetworkAdapter().isInitialized())
                {
                    networkstatus.fetchRequestStore = networkstatus.getNetworkAdapter().getFetchStore();
                    networkstatus.setRemoteStatus(1);
                    break MISSING_BLOCK_LABEL_212;
                }
                try
                {
                    networkstatus.setRemoteStatus(2);
                    break MISSING_BLOCK_LABEL_212;
                }
                // Misplaced declaration of an exception variable
                catch (Header aheader[])
                {
                    for (aheader = currentNetworks.values().iterator(); aheader.hasNext(); ((NetworkStatus)aheader.next()).setRemoteStatus(3)) { }
                }
_L2:
                return;
                i++;
                  goto _L3
            }

            
            {
                this$1 = MediationTestActivity._cls4.this;
                super();
            }
        });
    }

    nit>()
    {
        this$0 = MediationTestActivity.this;
        super();
    }
}
