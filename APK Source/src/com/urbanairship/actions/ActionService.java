// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.actions;

import android.app.Application;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import com.urbanairship.Autopilot;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.util.JSONUtils;
import com.urbanairship.util.UAStringUtil;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.urbanairship.actions:
//            ActionRunner, Situation, ActionArguments

public class ActionService extends Service
{

    private int a;
    private int b;
    private ActionRunner c;

    public ActionService()
    {
        this(ActionRunner.a());
    }

    private ActionService(ActionRunner actionrunner)
    {
        a = 0;
        b = 0;
        c = actionrunner;
    }

    static int a(ActionService actionservice)
    {
        int i = actionservice.b;
        actionservice.b = i - 1;
        return i;
    }

    public static void a(Bundle bundle, Situation situation)
    {
        bundle = bundle.getString("com.urbanairship.actions");
        if (UAStringUtil.a(bundle))
        {
            Logger.d("No actions to run in payload.");
            return;
        } else
        {
            Context context = UAirship.a().g();
            Intent intent = new Intent("com.urbanairship.actionservice.RUN_ACTIONS_ACTION");
            intent.setClass(context, com/urbanairship/actions/ActionService);
            intent.putExtra("com.urbanairship.actionservice.ACTIONS_PAYLOAD_EXTRA", bundle);
            intent.putExtra("com.urbanairship.actionservice.SITUATION_EXTRA", situation);
            context.startService(intent);
            return;
        }
    }

    static int b(ActionService actionservice)
    {
        return actionservice.b;
    }

    static int c(ActionService actionservice)
    {
        return actionservice.a;
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public int onStartCommand(Intent intent, int i, int j)
    {
        Autopilot.b((Application)getApplicationContext());
        a = j;
        if (intent == null || !"com.urbanairship.actionservice.RUN_ACTIONS_ACTION".equals(intent.getAction())) goto _L2; else goto _L1
_L1:
        Object obj;
        obj = intent.getStringExtra("com.urbanairship.actionservice.ACTIONS_PAYLOAD_EXTRA");
        intent = (Situation)intent.getSerializableExtra("com.urbanairship.actionservice.SITUATION_EXTRA");
        if (intent != null) goto _L4; else goto _L3
_L3:
        Logger.e("Unable to run actions with a null situation");
_L2:
        if (b == 0)
        {
            stopSelf(j);
        }
        return 2;
_L4:
        if (UAStringUtil.a(((String) (obj))))
        {
            Logger.d("No actions to run.");
            continue; /* Loop/switch isn't completed */
        }
        Object obj1 = new JSONObject(((String) (obj)));
        obj = JSONUtils.a(((JSONObject) (obj1)));
        obj1 = ((Map) (obj)).keySet().iterator();
        while (((Iterator) (obj1)).hasNext()) 
        {
            String s = (String)((Iterator) (obj1)).next();
            ActionArguments actionarguments = new ActionArguments(intent, ((Map) (obj)).get(s));
            b = b + 1;
            c.a(s, actionarguments, new _cls1());
        }
        continue; /* Loop/switch isn't completed */
        intent;
        Logger.d((new StringBuilder("Invalid actions payload: ")).append(((String) (obj))).toString());
        if (true) goto _L2; else goto _L5
_L5:
    }

    private class _cls1
        implements ActionCompletionCallback
    {

        final ActionService a;

        public final void a(ActionResult actionresult)
        {
            ActionService.a(a);
            if (ActionService.b(a) == 0)
            {
                a.stopSelf(ActionService.c(a));
            }
        }

        _cls1()
        {
            a = ActionService.this;
            super();
        }
    }

}
