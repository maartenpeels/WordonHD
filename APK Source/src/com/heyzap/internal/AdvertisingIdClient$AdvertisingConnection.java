// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;

// Referenced classes of package com.heyzap.internal:
//            AdvertisingIdClient, Logger

private static final class <init>
    implements ServiceConnection
{

    private final LinkedBlockingQueue queue;
    boolean retrieved;

    public IBinder getBinder()
        throws InterruptedException
    {
        if (retrieved)
        {
            throw new IllegalStateException();
        } else
        {
            retrieved = true;
            return (IBinder)queue.take();
        }
    }

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        try
        {
            queue.put(ibinder);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (ComponentName componentname)
        {
            Logger.trace(componentname);
        }
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
    }

    private ()
    {
        retrieved = false;
        queue = new LinkedBlockingQueue(1);
    }

    queue(queue queue1)
    {
        this();
    }
}
