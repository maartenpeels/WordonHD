// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.handler;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Handler;
import com.heyzap.analytics.Event;
import com.heyzap.analytics.MetricsTracker;
import com.heyzap.house.Manager;
import com.heyzap.house.model.AdModel;
import com.heyzap.house.request.AdRequest;
import com.heyzap.internal.Logger;

// Referenced classes of package com.heyzap.house.handler:
//            ClickHandler

class val.url
    implements Runnable
{

    final ClickHandler this$0;
    final Context val$context;
    final String val$customPackageName;
    final String val$url;

    public void run()
    {
        MetricsTracker.getEvent(ClickHandler.access$000(ClickHandler.this)).adClicked(true).adClickedTime(System.currentTimeMillis()).commit();
        if (ClickHandler.access$000(ClickHandler.this).onClick(val$context, val$customPackageName).booleanValue())
        {
            try
            {
                final ProgressDialog marketSpinner = ProgressDialog.show(val$context, "", "Loading...", true);
                Manager.handler.postDelayed(new Runnable() {

                    final ClickHandler._cls1 this$1;
                    final ProgressDialog val$marketSpinner;

                    public void run()
                    {
                        try
                        {
                            marketSpinner.dismiss();
                            return;
                        }
                        catch (IllegalArgumentException illegalargumentexception)
                        {
                            Logger.trace(illegalargumentexception);
                        }
                    }

            
            {
                this$1 = ClickHandler._cls1.this;
                marketSpinner = progressdialog;
                super();
            }
                }, 3000L);
            }
            catch (Exception exception)
            {
                Logger.trace(exception);
            }
            if (ClickHandler.access$000(ClickHandler.this).getAdRequest() != null)
            {
                ClickHandler.access$000(ClickHandler.this).getAdRequest().getOnStatusListener().onClick(ClickHandler.access$000(ClickHandler.this).getTag());
            }
            gotoMarket(val$context, val$url);
        }
    }

    _cls1.val.marketSpinner()
    {
        this$0 = final_clickhandler;
        val$context = context1;
        val$customPackageName = s;
        val$url = String.this;
        super();
    }
}
