// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.iab;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import com.android.vending.billing.IInAppBillingService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package c.m.x.a.iab:
//            c, r, d, p, 
//            i, j, k, l

final class h
    implements Runnable
{

    final List a;
    final k b;
    final Handler c;
    final l d = null;
    final d e;

    h(d d1, List list, k k, Handler handler)
    {
        e = d1;
        a = list;
        b = k;
        c = handler;
        super();
    }

    public final void run()
    {
        ArrayList arraylist;
        Iterator iterator;
        arraylist = new ArrayList();
        iterator = a.iterator();
_L1:
        Object obj;
        Object obj1;
        do
        {
label0:
            {
                if (!iterator.hasNext())
                {
                    break MISSING_BLOCK_LABEL_415;
                }
                obj = (r)iterator.next();
                try
                {
                    obj1 = e;
                    ((d) (obj1)).b("consume");
                    if (!((r) (obj)).a.equals("inapp"))
                    {
                        throw new c(-1010, (new StringBuilder("Items of type '")).append(((r) (obj)).a).append("' can't be consumed.").toString());
                    }
                    break label0;
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    arraylist.add(((c) (obj)).a());
                }
            }
        } while (true);
        String s;
        String s1;
        s = ((r) (obj)).h;
        s1 = ((r) (obj)).d;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_139;
        }
        if (!s.equals(""))
        {
            break MISSING_BLOCK_LABEL_234;
        }
        ((d) (obj1)).d((new StringBuilder("Can't consume ")).append(s1).append(". No token.").toString());
        throw new c(-1007, (new StringBuilder("PurchaseInfo is missing token for sku: ")).append(s1).append(" ").append(obj).toString());
        obj1;
        throw new c(-1001, (new StringBuilder("Remote exception while consuming. PurchaseInfo: ")).append(obj).toString(), ((Exception) (obj1)));
        int k;
        ((d) (obj1)).c((new StringBuilder("Consuming sku: ")).append(s1).append(", token: ").append(s).toString());
        k = ((d) (obj1)).h.b(3, ((d) (obj1)).g.getPackageName(), s);
        if (k != 0)
        {
            break MISSING_BLOCK_LABEL_353;
        }
        ((d) (obj1)).c((new StringBuilder("Successfully consumed sku: ")).append(s1).toString());
        arraylist.add(new p(0, (new StringBuilder("Successful consume of sku ")).append(((r) (obj)).d).toString()));
          goto _L1
        ((d) (obj1)).c((new StringBuilder("Error consuming consuming sku ")).append(s1).append(". ").append(c.m.x.a.iab.d.a(k)).toString());
        throw new c(k, (new StringBuilder("Error consuming sku ")).append(s1).toString());
        e.c();
        if (b != null)
        {
            c.post(new i(this, arraylist));
        }
        if (d != null)
        {
            c.post(new j(this, arraylist));
        }
        return;
    }
}
