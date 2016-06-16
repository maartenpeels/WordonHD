// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

// Referenced classes of package c.m.x.a.gv:
//            w

final class x extends Handler
{

    final w a;

    x(w w1, Looper looper)
    {
        a = w1;
        super(looper);
    }

    public final void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            super.handleMessage(message);
            return;

        case 1: // '\001'
            w.a(a);
            break;
        }
    }
}
