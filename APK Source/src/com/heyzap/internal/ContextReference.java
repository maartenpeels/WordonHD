// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import android.app.Activity;
import android.content.Context;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ExecutorService;

public class ContextReference
{
    public static class UpdateCallbackWrapper
        implements Runnable
    {

        public final Runnable callback;
        public final ExecutorService executorService;

        public boolean equals(Object obj)
        {
            if (this == obj)
            {
                return true;
            }
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            obj = (UpdateCallbackWrapper)obj;
            if (!callback.equals(((UpdateCallbackWrapper) (obj)).callback))
            {
                return false;
            }
            return executorService.equals(((UpdateCallbackWrapper) (obj)).executorService);
        }

        public int hashCode()
        {
            return executorService.hashCode() * 31 + callback.hashCode();
        }

        public void run()
        {
            executorService.submit(callback);
        }

        public UpdateCallbackWrapper(Runnable runnable, ExecutorService executorservice)
        {
            executorService = executorservice;
            callback = runnable;
        }
    }


    private Activity activity;
    private final Set activityChangeCallbacks = new HashSet();
    private Context applicationContext;

    public ContextReference()
    {
    }

    public boolean addActivityUpdateListener(Runnable runnable, ExecutorService executorservice)
    {
        return activityChangeCallbacks.add(new UpdateCallbackWrapper(runnable, executorservice));
    }

    public Activity getActivity()
    {
        return activity;
    }

    public Context getApp()
    {
        return applicationContext;
    }

    public boolean removeActivityUpdateListener(Runnable runnable)
    {
        return activityChangeCallbacks.remove(new UpdateCallbackWrapper(runnable, null));
    }

    public void updateContext(Context context)
    {
        applicationContext = context.getApplicationContext();
        if (context instanceof Activity)
        {
            context = (Activity)context;
            if (context != activity)
            {
                activity = context;
                for (context = activityChangeCallbacks.iterator(); context.hasNext(); ((Runnable)context.next()).run()) { }
            }
        }
    }
}
