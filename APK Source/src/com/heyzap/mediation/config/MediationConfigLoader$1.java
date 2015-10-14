// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.config;

import com.heyzap.http.JsonHttpResponseHandler;
import com.heyzap.http.RequestParams;
import com.heyzap.internal.APIClient;
import com.heyzap.internal.ContextReference;
import com.heyzap.internal.SettableFuture;
import org.apache.http.Header;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.mediation.config:
//            MediationConfigLoader, MediationConfig

class > extends com.heyzap.internal.sk
{

    final MediationConfigLoader this$0;

    public void run()
    {
        RequestParams requestparams = new RequestParams();
        APIClient.get(MediationConfigLoader.access$000(MediationConfigLoader.this).getApp(), "https://med.heyzap.com/start", requestparams, new JsonHttpResponseHandler() {

            final MediationConfigLoader._cls1 this$1;

            public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
            {
                retry();
            }

            public void onSuccess(int i, Header aheader[], JSONObject jsonobject)
            {
                try
                {
                    aheader = new MediationConfig(MediationConfigLoader.access$000(this$0), jsonobject, MediationConfigLoader.access$100(this$0), MediationConfigLoader.access$200(this$0), MediationConfigLoader.access$300(this$0), MediationConfigLoader.access$400(this$0), MediationConfigLoader.access$500(this$0), MediationConfigLoader.access$600(this$0));
                    MediationConfigLoader.access$700(this$0).set(aheader);
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (Header aheader[])
                {
                    retry();
                }
            }

            
            {
                this$1 = MediationConfigLoader._cls1.this;
                super();
            }
        });
    }

    _cls1.this._cls1()
    {
        this$0 = MediationConfigLoader.this;
        super();
    }
}
