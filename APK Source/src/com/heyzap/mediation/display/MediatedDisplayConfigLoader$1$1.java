// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.display;

import com.heyzap.http.JsonHttpResponseHandler;
import com.heyzap.internal.APIClient;
import com.heyzap.internal.ContextReference;
import com.heyzap.internal.Logger;
import com.heyzap.internal.SettableFuture;
import org.apache.http.Header;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.mediation.display:
//            DisplayConfig, MediatedDisplayConfigLoader

class this._cls1 extends JsonHttpResponseHandler
{

    final try this$1;

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        Logger.log(new Object[] {
            "Display config loader failed to load /mediate", Integer.valueOf(i), throwable
        });
        if (!displayConfigFuture.isDone())
        {
            Logger.log("Retrying /mediate");
            _mthtry();
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
            _mthtry();
            return;
        }
          goto _L1
    }

    l.displayConfigFuture()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/heyzap/mediation/display/MediatedDisplayConfigLoader$1

/* anonymous class */
    class MediatedDisplayConfigLoader._cls1 extends com.heyzap.internal.RetryManager.RetryableTask
    {

        final MediatedDisplayConfigLoader this$0;
        final SettableFuture val$displayConfigFuture;

        public void run()
        {
            APIClient.get(MediatedDisplayConfigLoader.access$000(MediatedDisplayConfigLoader.this).getApp(), "https://med.heyzap.com/mediate", MediatedDisplayConfigLoader.access$100(MediatedDisplayConfigLoader.this), new MediatedDisplayConfigLoader._cls1._cls1());
        }

            
            {
                this$0 = final_mediateddisplayconfigloader;
                displayConfigFuture = SettableFuture.this;
                super();
            }
    }

}
