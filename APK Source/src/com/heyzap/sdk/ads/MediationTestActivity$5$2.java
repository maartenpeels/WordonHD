// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.ads;

import android.view.View;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.heyzap.internal.FutureUtils;
import com.heyzap.internal.SettableFuture;
import com.heyzap.mediation.FetchRequestStore;
import com.heyzap.mediation.abstr.NetworkAdapter;
import com.heyzap.sdk.mediation.testactivity.NetworkStatus;
import java.util.Arrays;

// Referenced classes of package com.heyzap.sdk.ads:
//            MediationTestActivity

class this._cls1
    implements Runnable
{

    final is._cls0 this$1;

    public void run()
    {
        Toast.makeText(_fld0, "Fetching (may take up to 60 seconds)", 1).show();
    }

    Status()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/heyzap/sdk/ads/MediationTestActivity$5

/* anonymous class */
    class MediationTestActivity._cls5
        implements android.view.View.OnClickListener
    {

        final MediationTestActivity this$0;
        final RadioGroup val$adType;
        final NetworkStatus val$status;

        public void onClick(final View fetchResultFuture)
        {
            fetchResultFuture = ((TextView)findViewById(adType.getCheckedRadioButtonId())).getText().toString();
            fetchResultFuture = MediationTestActivity.access$000(MediationTestActivity.this, fetchResultFuture);
            status.getFetchRequestStore().add(fetchResultFuture);
            if (!status.getNetworkAdapter().isStarted(Arrays.asList(new com.heyzap.internal.Constants.AdUnit[] {
        fetchResultFuture
    })))
            {
                status.getNetworkAdapter().start(Arrays.asList(new com.heyzap.internal.Constants.AdUnit[] {
                    fetchResultFuture
                }));
            }
            fetchResultFuture = status.getNetworkAdapter().awaitAvailability(fetchResultFuture);
            fetchResultFuture.addListener(new MediationTestActivity._cls5._cls1(), MediationTestActivity.access$100(MediationTestActivity.this));
            runOnUiThread(new MediationTestActivity._cls5._cls2());
        }

            
            {
                this$0 = final_mediationtestactivity;
                adType = radiogroup;
                status = NetworkStatus.this;
                super();
            }

        // Unreferenced inner class com/heyzap/sdk/ads/MediationTestActivity$5$1

/* anonymous class */
        class MediationTestActivity._cls5._cls1
            implements Runnable
        {

            final MediationTestActivity._cls5 this$1;
            final SettableFuture val$fetchResultFuture;

            public void run()
            {
                boolean flag = ((com.heyzap.mediation.abstr.NetworkAdapter.FetchResult)FutureUtils.getImmediatelyOrDefault(fetchResultFuture, new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult(com.heyzap.internal.Constants.AdNetworkFetchFailureReason.UNKNOWN, "future failure"))).success;
                MediationTestActivity mediationtestactivity = this$0;
                StringBuilder stringbuilder = (new StringBuilder()).append("Ad ");
                String s;
                if (flag)
                {
                    s = "";
                } else
                {
                    s = "not ";
                }
                Toast.makeText(mediationtestactivity, stringbuilder.append(s).append("available").toString(), 1).show();
            }

                    
                    {
                        this$1 = MediationTestActivity._cls5.this;
                        fetchResultFuture = settablefuture;
                        super();
                    }
        }

    }

}
