// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.config;

import com.heyzap.internal.ListenableFuture;

// Referenced classes of package com.heyzap.mediation.config:
//            MediationConfig

public interface ConfigLoader
{
    public static interface MediationConfigListener
    {

        public abstract void onConfigLoaded(MediationConfig mediationconfig);
    }


    public abstract void get(MediationConfigListener mediationconfiglistener);

    public abstract ListenableFuture getFuture();

    public abstract void start();
}
