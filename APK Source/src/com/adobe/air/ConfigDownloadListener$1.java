// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

// Referenced classes of package com.adobe.air:
//            ConfigDownloadListener, AndroidActivityWrapper

class LOG_TAG extends BroadcastReceiver
{

    private String LOG_TAG;
    final ConfigDownloadListener this$0;

    public void onReceive(Context context, Intent intent)
    {
        if (intent.getAction().equals("com.adobe.air.DownloadConfigComplete"))
        {
            boolean flag1 = false;
            boolean flag;
            if (isInitialStickyBroadcast())
            {
                context = intent.getExtras();
                flag = flag1;
                if (context != null)
                {
                    long l = context.getLong("com.adobe.air.DownloadConfigCompleteTime");
                    flag = flag1;
                    if (ConfigDownloadListener.access$000(ConfigDownloadListener.this) < l)
                    {
                        flag = true;
                    }
                }
            } else
            {
                flag = true;
            }
            if (flag)
            {
                context = AndroidActivityWrapper.GetAndroidActivityWrapper();
                if (context != null)
                {
                    context.applyDownloadedConfig();
                }
            }
        }
    }

    ()
    {
        this$0 = ConfigDownloadListener.this;
        super();
        LOG_TAG = "ConfigDownloadListenerBR";
    }
}
