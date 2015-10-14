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

class rkStatus
    implements android.view.ity._cls6
{

    final MediationTestActivity this$0;
    final RadioGroup val$adType;
    final NetworkStatus val$status;

    public void onClick(final View display)
    {
        display = ((TextView)findViewById(val$adType.getCheckedRadioButtonId())).getText().toString();
        display = MediationTestActivity.access$000(MediationTestActivity.this, display);
        display = val$status.getNetworkAdapter().show(display, Constants.DEFAULT_TAG, MediationTestActivity.this);
        ((com.heyzap.mediation.abstr.) (display)).displayListener.addListener(new Runnable() {

            final MediationTestActivity._cls6 this$1;
            final com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay val$display;

            public void run()
            {
                if (!((com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult)FutureUtils.getImmediatelyOrDefault(display.displayListener, new com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult("future failure"))).success)
                {
                    Toast.makeText(this$0, "Display failed", 0);
                }
            }

            
            {
                this$1 = MediationTestActivity._cls6.this;
                display = addisplay;
                super();
            }
        }, MediationTestActivity.access$100(MediationTestActivity.this));
    }

    rkStatus()
    {
        this$0 = final_mediationtestactivity;
        val$adType = radiogroup;
        val$status = NetworkStatus.this;
        super();
    }
}
