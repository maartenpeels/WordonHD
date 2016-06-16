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

class val.fetchResultFuture
    implements Runnable
{

    final is._cls0 this$1;
    final SettableFuture val$fetchResultFuture;

    public void run()
    {
        boolean flag = ((com.heyzap.mediation.abstr.)FutureUtils.getImmediatelyOrDefault(val$fetchResultFuture, new com.heyzap.mediation.abstr.(com.heyzap.internal.ilureReason.UNKNOWN, "future failure"))).success;
        MediationTestActivity mediationtestactivity = _fld0;
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

    Status()
    {
        this$1 = final_status;
        val$fetchResultFuture = SettableFuture.this;
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

        public void onClick(View view)
        {
            view = ((TextView)findViewById(adType.getCheckedRadioButtonId())).getText().toString();
            view = MediationTestActivity.access$000(MediationTestActivity.this, view);
            status.getFetchRequestStore().add(view);
            if (!status.getNetworkAdapter().isStarted(Arrays.asList(new com.heyzap.internal.Constants.AdUnit[] {
        view
    })))
            {
                status.getNetworkAdapter().start(Arrays.asList(new com.heyzap.internal.Constants.AdUnit[] {
                    view
                }));
            }
            view = status.getNetworkAdapter().awaitAvailability(view);
            view.addListener(view. new MediationTestActivity._cls5._cls1(), MediationTestActivity.access$100(MediationTestActivity.this));
            runOnUiThread(new MediationTestActivity._cls5._cls2());
        }

            
            {
                this$0 = final_mediationtestactivity;
                adType = radiogroup;
                status = NetworkStatus.this;
                super();
            }

        // Unreferenced inner class com/heyzap/sdk/ads/MediationTestActivity$5$2

/* anonymous class */
        class MediationTestActivity._cls5._cls2
            implements Runnable
        {

            final MediationTestActivity._cls5 this$1;

            public void run()
            {
                Toast.makeText(this$0, "Fetching (may take up to 60 seconds)", 1).show();
            }

                    
                    {
                        this$1 = MediationTestActivity._cls5.this;
                        super();
                    }
        }

    }

}
