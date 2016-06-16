// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

// Referenced classes of package c.m.x.a.gv:
//            aj

private static final class <init>
    implements Executor
{

    public final void execute(Runnable runnable)
    {
        (new Handler(Looper.getMainLooper())).post(runnable);
    }

    private le()
    {
    }

    le(byte byte0)
    {
        this();
    }
}
