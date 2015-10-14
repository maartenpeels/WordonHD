// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.ActivityManager;
import android.app.IntentService;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.adobe.air.wand.WandActivity;
import java.util.List;

// Referenced classes of package com.adobe.air:
//            ShakeListener

public class ShakeListenerService extends IntentService
{

    private final String AIR_WAND_CLASS_NAME = "com.adobe.air.wand.WandActivity";
    private ShakeListener mShakeListener;

    public ShakeListenerService()
    {
        super("ShakeListenerService");
    }

    protected void onHandleIntent(Intent intent)
    {
        try
        {
            mShakeListener = new ShakeListener(this);
        }
        // Misplaced declaration of an exception variable
        catch (Intent intent)
        {
            return;
        }
        mShakeListener.registerListener(new ShakeListener.Listener() {

            final ShakeListenerService this$0;

            public void onShake()
            {
                Object obj = ((ActivityManager)getApplicationContext().getSystemService("activity")).getRunningTasks(1);
                if (!((List) (obj)).isEmpty())
                {
                    obj = ((android.app.ActivityManager.RunningTaskInfo)((List) (obj)).get(0)).topActivity;
                    if (((ComponentName) (obj)).getPackageName().equals(getApplicationContext().getPackageName()) && !((ComponentName) (obj)).getClassName().equalsIgnoreCase("com.adobe.air.wand.WandActivity"))
                    {
                        Intent intent1 = new Intent(getApplicationContext(), com/adobe/air/wand/WandActivity);
                        intent1.setFlags(0x10400000);
                        startActivity(intent1);
                    }
                }
            }

            
            {
                this$0 = ShakeListenerService.this;
                super();
            }
        });
    }
}
