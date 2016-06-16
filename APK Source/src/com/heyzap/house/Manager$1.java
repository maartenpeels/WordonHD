// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house;

import com.heyzap.internal.Logger;

// Referenced classes of package com.heyzap.house:
//            Manager

static final class 
    implements Runnable
{

    public void run()
    {
        Manager.started = Boolean.valueOf(true);
        Logger.log("Heyzap Ad Manager started.");
    }

    ()
    {
    }
}
