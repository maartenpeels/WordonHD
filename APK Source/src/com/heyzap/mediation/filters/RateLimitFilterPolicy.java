// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.filters;

import com.heyzap.internal.FutureUtils;
import com.heyzap.internal.Logger;
import com.heyzap.internal.SettableFuture;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.heyzap.mediation.filters:
//            FilterPolicy, Store

class RateLimitFilterPolicy
    implements FilterPolicy
{

    private final ExecutorService executorService;
    private final long period;
    private final int permits;
    private final Store persistence;
    private final List useHistory = new ArrayList();

    public RateLimitFilterPolicy(ExecutorService executorservice, int i, int j, TimeUnit timeunit, Store store)
    {
        permits = i;
        period = timeunit.toMillis(j);
        persistence = store;
        executorService = executorservice;
        boot();
    }

    private void boot()
    {
        String as[] = ((String)persistence.get()).split(",");
        int j = as.length;
        int i = 0;
        while (i < j) 
        {
            String s = as[i];
            if (s.length() >= 1)
            {
                try
                {
                    useHistory.add(Long.valueOf(s));
                }
                catch (NumberFormatException numberformatexception)
                {
                    Logger.log(new Object[] {
                        "Non-number found in rate-limiter persistence: ", persistence, s
                    });
                }
            }
            i++;
        }
    }

    private void persist()
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < useHistory.size(); i++)
        {
            stringbuilder.append(useHistory.get(i));
            if (i + 1 < useHistory.size())
            {
                stringbuilder.append(",");
            }
        }

        persistence.set(stringbuilder.toString());
    }

    private void prune(long l)
    {
        long l1 = period;
        List list = useHistory;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = useHistory.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            if (((Long)iterator.next()).longValue() < l - l1)
            {
                iterator.remove();
            }
        } while (true);
        break MISSING_BLOCK_LABEL_72;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
    }

    public boolean accept()
    {
        return accept(System.currentTimeMillis());
    }

    public boolean accept(long l)
    {
        boolean flag = false;
        List list = useHistory;
        list;
        JVM INSTR monitorenter ;
        prune(l);
        if (useHistory.size() < permits)
        {
            flag = true;
        }
        list;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void addDisplay(long l)
    {
        useHistory.add(Long.valueOf(l));
        persist();
    }

    public void addDisplay(final com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay adDisplay)
    {
        adDisplay.displayListener.addListener(new Runnable() {

            final RateLimitFilterPolicy this$0;
            final com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay val$adDisplay;

            public void run()
            {
                if (((com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult)FutureUtils.getImmediatelyOrDefault(adDisplay.displayListener, new com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult("failed"))).success)
                {
                    addDisplay(System.currentTimeMillis());
                }
            }

            
            {
                this$0 = RateLimitFilterPolicy.this;
                adDisplay = addisplay;
                super();
            }
        }, executorService);
    }
}
