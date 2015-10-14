// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.push;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;

// Referenced classes of package com.urbanairship.push:
//            PushMessage, PushManager

public abstract class GCMMessageHandler
{

    public GCMMessageHandler()
    {
    }

    static void a(Intent intent)
    {
        Object obj = new PushMessage(new Bundle(intent.getExtras()));
        Logger.d((new StringBuilder("Received Push from GCM: ")).append(obj).toString());
        if ("deleted_messages".equals(intent.getStringExtra("message_type")))
        {
            Logger.d((new StringBuilder("GCM deleted ")).append(intent.getStringExtra("total_deleted")).append(" pending messages.").toString());
            obj = PushManager.b().f();
            if (obj != null)
            {
                Intent intent1 = new Intent("com.urbanairship.push.ACTION_GCM_DELETED_MESSAGES");
                intent1.setClass(UAirship.a().g(), ((Class) (obj)));
                intent1.putExtras(intent.getExtras());
                UAirship.a().g().sendBroadcast(intent1);
            }
            return;
        } else
        {
            PushManager.b().a(((PushMessage) (obj)));
            return;
        }
    }
}
