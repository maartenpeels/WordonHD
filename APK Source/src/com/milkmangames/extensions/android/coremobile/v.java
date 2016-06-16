// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.coremobile;

import android.util.Log;
import c.m.x.a.cm.d;

// Referenced classes of package com.milkmangames.extensions.android.coremobile:
//            b

final class v
    implements d
{

    final b a;

    v(b b1)
    {
        a = b1;
        super();
    }

    public final void a()
    {
        Log.d(b.a, "Stop.");
        com.milkmangames.extensions.android.coremobile.b.a(false);
        if (com.milkmangames.extensions.android.coremobile.b.c(a))
        {
            com.milkmangames.extensions.android.coremobile.b.b("Stop action: unregister sensors.");
            com.milkmangames.extensions.android.coremobile.b.d(a);
            return;
        } else
        {
            com.milkmangames.extensions.android.coremobile.b.b("Stop action: sensors disabled.");
            return;
        }
    }

    public final void b()
    {
        Log.d(b.a, "Start.");
        com.milkmangames.extensions.android.coremobile.b.a(true);
        if (com.milkmangames.extensions.android.coremobile.b.c(a))
        {
            com.milkmangames.extensions.android.coremobile.b.b("Start action: register sensors.");
            com.milkmangames.extensions.android.coremobile.b.e(a);
            return;
        } else
        {
            com.milkmangames.extensions.android.coremobile.b.b("Start action: sensors disabled.");
            return;
        }
    }

    public final void c()
    {
        Log.d(b.a, "Resume.");
    }

    public final void d()
    {
        Log.d(b.a, "Restart.");
        com.milkmangames.extensions.android.coremobile.b.a(true);
        if (com.milkmangames.extensions.android.coremobile.b.c(a))
        {
            com.milkmangames.extensions.android.coremobile.b.b("Restart action: register sensors.");
            com.milkmangames.extensions.android.coremobile.b.e(a);
        } else
        {
            com.milkmangames.extensions.android.coremobile.b.b("Restart action: sensors disabled.");
        }
        a.a();
    }

    public final void e()
    {
        Log.d(b.a, "Pause.");
        if (com.milkmangames.extensions.android.coremobile.b.c(a))
        {
            com.milkmangames.extensions.android.coremobile.b.b("Pause action: unregister sensors.");
            com.milkmangames.extensions.android.coremobile.b.d(a);
            return;
        } else
        {
            com.milkmangames.extensions.android.coremobile.b.b("Pause action: sensors disabled.");
            return;
        }
    }

    public final void f()
    {
        Log.d(b.a, "Destroy.");
    }
}
