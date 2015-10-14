// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.ads;

import android.view.View;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.heyzap.internal.Constants;
import com.heyzap.internal.FutureUtils;
import com.heyzap.internal.SettableFuture;
import com.heyzap.mediation.abstr.NetworkAdapter;
import com.heyzap.sdk.mediation.testactivity.NetworkStatus;

// Referenced classes of package com.heyzap.sdk.ads:
//            MediationTestActivity

class isplay
    implements Runnable
{

    final is._cls0 this$1;
    final com.heyzap.mediation.abstr.lt.success val$display;

    public void run()
    {
        if (!((com.heyzap.mediation.abstr.lt)FutureUtils.getImmediatelyOrDefault(val$display.isplayListener, new com.heyzap.mediation.abstr.lt("future failure"))).success)
        {
            Toast.makeText(_fld0, "Display failed", 0);
        }
    }

    isplay()
    {
        this$1 = final_isplay;
        val$display = com.heyzap.mediation.abstr.lay.this;
        super();
    }

    // Unreferenced inner class com/heyzap/sdk/ads/MediationTestActivity$6

/* anonymous class */
    class MediationTestActivity._cls6
        implements android.view.View.OnClickListener
    {

        final MediationTestActivity this$0;
        final RadioGroup val$adType;
        final NetworkStatus val$status;

        public void onClick(View view)
        {
            view = ((TextView)findViewById(adType.getCheckedRadioButtonId())).getText().toString();
            view = MediationTestActivity.access$000(MediationTestActivity.this, view);
            view = status.getNetworkAdapter().show(view, Constants.DEFAULT_TAG, MediationTestActivity.this);
            ((com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay) (view)).displayListener.addListener(view. new MediationTestActivity._cls6._cls1(), MediationTestActivity.access$100(MediationTestActivity.this));
        }

            
            {
                this$0 = final_mediationtestactivity;
                adType = radiogroup;
                status = NetworkStatus.this;
                super();
            }
    }

}
