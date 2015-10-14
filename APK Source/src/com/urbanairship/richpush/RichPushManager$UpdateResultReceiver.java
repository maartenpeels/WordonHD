// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.richpush;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;

abstract class  extends ResultReceiver
{

    public abstract void a(boolean flag);

    protected void onReceiveResult(int i, Bundle bundle)
    {
        boolean flag;
        if (i == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a(flag);
    }

    public ()
    {
        super(new Handler(Looper.getMainLooper()));
    }
}
