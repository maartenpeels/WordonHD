// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.actions;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.ResultReceiver;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.analytics.Analytics;

public class ActionActivity extends Activity
{

    private static int b = 0;
    private ResultReceiver a;

    public ActionActivity()
    {
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (a != null)
        {
            Bundle bundle = new Bundle();
            bundle.putParcelable("com.urbanairship.actions.actionactivity.RESULT_INTENT_EXTRA", intent);
            a.send(j, bundle);
        }
        super.onActivityResult(i, j, intent);
        finish();
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent == null)
        {
            Logger.a("Started Action Activity with null intent");
            finish();
        } else
        if (bundle == null)
        {
            bundle = (Intent)intent.getParcelableExtra("com.urbanairship.actions.START_ACTIVITY_INTENT_EXTRA");
            a = (ResultReceiver)intent.getParcelableExtra("com.urbanairship.actions.actionactivity.RESULT_RECEIVER_EXTRA");
            int i = b + 1;
            b = i;
            startActivityForResult(bundle, i);
            return;
        }
    }

    protected void onStart()
    {
        super.onStart();
        UAirship.a().k().a(this);
    }

    protected void onStop()
    {
        super.onStop();
        UAirship.a().k().b(this);
    }

}
