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
//            MediationConfig, MediationConfigLoader

class this._cls1 extends JsonHttpResponseHandler
{

    final try this$1;

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        _mthtry();
    }

    public void onSuccess(int i, Header aheader[], JSONObject jsonobject)
    {
        try
        {
            aheader = new MediationConfig(MediationConfigLoader.access$000(_fld0), jsonobject, MediationConfigLoader.access$100(_fld0), MediationConfigLoader.access$200(_fld0), MediationConfigLoader.access$300(_fld0), MediationConfigLoader.access$400(_fld0), MediationConfigLoader.access$500(_fld0), MediationConfigLoader.access$600(_fld0));
            MediationConfigLoader.access$700(_fld0).set(aheader);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Header aheader[])
        {
            _mthtry();
        }
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/heyzap/mediation/config/MediationConfigLoader$1

/* anonymous class */
    class MediationConfigLoader._cls1 extends com.heyzap.internal.RetryManager.RetryableTask
    {

        final MediationConfigLoader this$0;

        public void run()
        {
            RequestParams requestparams = new RequestParams();
            APIClient.get(MediationConfigLoader.access$000(MediationConfigLoader.this).getApp(), "https://med.heyzap.com/start", requestparams, new MediationConfigLoader._cls1._cls1());
        }

            
            {
                this$0 = MediationConfigLoader.this;
                super();
            }
    }

}
