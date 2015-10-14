// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.analytics;

import android.app.Application;

class LifeCycleCallbacks
{

    LifeCycleCallbacks()
    {
    }

    public static void a(Application application, Callback callback)
    {
        application.registerActivityLifecycleCallbacks(new _cls1(callback));
    }

    private class _cls1
        implements android.app.Application.ActivityLifecycleCallbacks
    {

        final Callback a;

        public final void onActivityCreated(Activity activity, Bundle bundle)
        {
        }

        public final void onActivityDestroyed(Activity activity)
        {
        }

        public final void onActivityPaused(Activity activity)
        {
        }

        public final void onActivityResumed(Activity activity)
        {
        }

        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle)
        {
        }

        public final void onActivityStarted(Activity activity)
        {
            a.b(activity);
        }

        public final void onActivityStopped(Activity activity)
        {
            a.a(activity);
        }

        _cls1(Callback callback)
        {
            a = callback;
            super();
        }

        private class Callback
        {

            public abstract void a(Activity activity);

            public abstract void b(Activity activity);
        }

    }

}
