// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.iab;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.android.vending.billing.IInAppBillingService;

// Referenced classes of package c.m.x.a.iab:
//            d, p, n

final class e
    implements ServiceConnection
{

    final n a;
    final d b;

    e(d d1, n n1)
    {
        b = d1;
        a = n1;
        super();
    }

    public final void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        b.c("Billing service connected.");
        b.h = com.android.vending.billing.IInAppBillingService.Stub.a(ibinder);
        componentname = b.g.getPackageName();
        int i;
        b.c("Checking for in-app billing 3 support.");
        i = b.h.a(3, componentname, "inapp");
        if (i != 0)
        {
            try
            {
                if (a != null)
                {
                    a.a(new p(i, "Error checking for billing v3 support."));
                }
                b.d = false;
                return;
            }
            // Misplaced declaration of an exception variable
            catch (ComponentName componentname) { }
            break MISSING_BLOCK_LABEL_219;
        }
        b.c((new StringBuilder("In-app billing version 3 supported for ")).append(componentname).toString());
        i = b.h.a(3, componentname, "subs");
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_192;
        }
        b.c("Subscriptions AVAILABLE.");
        b.d = true;
_L1:
        b.c = true;
        if (a != null)
        {
            a.a(new p(0, "Setup successful."));
            return;
        }
        break MISSING_BLOCK_LABEL_251;
        b.c((new StringBuilder("Subscriptions NOT AVAILABLE. Response: ")).append(i).toString());
          goto _L1
        if (a != null)
        {
            a.a(new p(-1001, "RemoteException while setting up in-app billing."));
        }
        componentname.printStackTrace();
    }

    public final void onServiceDisconnected(ComponentName componentname)
    {
        b.c("Billing service disconnected.");
        b.h = null;
    }
}
