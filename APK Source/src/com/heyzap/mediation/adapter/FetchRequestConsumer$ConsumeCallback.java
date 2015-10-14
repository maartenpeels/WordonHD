// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.adapter;

import com.heyzap.mediation.FetchRequestStore;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.heyzap.mediation.adapter:
//            FetchRequestConsumer

private class adUnits
    implements Runnable
{

    private final Collection adUnits;
    private final Runnable callback;
    private final AtomicBoolean ranOnce = new AtomicBoolean(false);
    final FetchRequestConsumer this$0;

    public void run()
    {
        com.heyzap.internal.Callback callback1;
        Iterator iterator = adUnits.iterator();
label0:
        do
        {
label1:
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                callback1 = (com.heyzap.internal.Callback.adUnits)iterator.next();
                if (!consume(callback1))
                {
                    continue;
                }
                FetchRequestConsumer.access$000(FetchRequestConsumer.this).removeUpdateCallback(this);
                if (!ranOnce.compareAndSet(false, true))
                {
                    break label1;
                }
                callback.run();
                break label0;
            }
        } while (true);
        return;
        FetchRequestConsumer.access$100(FetchRequestConsumer.this, callback1);
        return;
    }

    public (Runnable runnable, Collection collection)
    {
        this$0 = FetchRequestConsumer.this;
        super();
        callback = runnable;
        adUnits = collection;
    }
}
