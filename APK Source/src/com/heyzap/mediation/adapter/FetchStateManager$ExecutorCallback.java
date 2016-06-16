// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.adapter;

import java.util.concurrent.ExecutorService;

// Referenced classes of package com.heyzap.mediation.adapter:
//            FetchStateManager

private static class ner
    implements ner
{

    private final ner _flddelegate;
    private final ExecutorService executorService;

    public void onFetchStarted(final com.heyzap.internal.Callback adUnit, final Object value)
    {
        executorService.submit(new Runnable() {

            final FetchStateManager.ExecutorCallback this$0;
            final com.heyzap.internal.Constants.AdUnit val$adUnit;
            final Object val$value;

            public void run()
            {
                _flddelegate.onFetchStarted(adUnit, value);
            }

            
            {
                this$0 = FetchStateManager.ExecutorCallback.this;
                adUnit = adunit;
                value = obj;
                super();
            }
        });
    }


    private ner(ner ner, ExecutorService executorservice)
    {
        _flddelegate = ner;
        executorService = executorservice;
    }

    ner(ner ner, ExecutorService executorservice, ner ner1)
    {
        this(ner, executorservice);
    }
}
