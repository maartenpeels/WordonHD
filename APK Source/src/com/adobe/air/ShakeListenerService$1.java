// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.adobe.air.wand.WandActivity;
import java.util.List;

// Referenced classes of package com.adobe.air:
//            ShakeListenerService

class this._cls0
    implements this._cls0
{

    final ShakeListenerService this$0;

    public void onShake()
    {
        Object obj = ((ActivityManager)getApplicationContext().getSystemService("activity")).getRunningTasks(1);
        if (!((List) (obj)).isEmpty())
        {
            obj = ((android.app.TaskInfo)((List) (obj)).get(0)).topActivity;
            if (((ComponentName) (obj)).getPackageName().equals(getApplicationContext().getPackageName()) && !((ComponentName) (obj)).getClassName().equalsIgnoreCase("com.adobe.air.wand.WandActivity"))
            {
                Intent intent = new Intent(getApplicationContext(), com/adobe/air/wand/WandActivity);
                intent.setFlags(0x10400000);
                startActivity(intent);
            }
        }
    }

    skInfo()
    {
        this$0 = ShakeListenerService.this;
        super();
    }
}
