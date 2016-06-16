// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.actions;

import android.content.Intent;
import android.os.Bundle;
import android.os.ResultReceiver;

class tivityResult extends ResultReceiver
{

    final tivityResult a;

    public void onReceiveResult(int i, Bundle bundle)
    {
        tivityResult.a(a, i, (Intent)bundle.getParcelable("com.urbanairship.actions.actionactivity.RESULT_INTENT_EXTRA"));
        synchronized (a)
        {
            a.notify();
        }
    }
}
