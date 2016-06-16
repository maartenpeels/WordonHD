// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.iab;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.android.vending.billing.IInAppBillingService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

// Referenced classes of package c.m.x.a.iab:
//            s, r, q, t, 
//            c, p, m, e, 
//            n, h, f, k, 
//            o

public final class d
{

    boolean a;
    String b;
    boolean c;
    boolean d;
    boolean e;
    String f;
    Context g;
    IInAppBillingService h;
    ServiceConnection i;
    int j;
    String k;
    String l;
    m m;

    public d(Context context, String s1)
    {
        a = false;
        b = "IabHelper";
        c = false;
        d = false;
        e = false;
        f = "";
        l = null;
        g = context.getApplicationContext();
        l = s1;
        c("IAB helper created.");
    }

    private int a(Bundle bundle)
    {
        bundle = ((Bundle) (bundle.get("RESPONSE_CODE")));
        if (bundle == null)
        {
            c("Bundle with null response code, assuming OK (known issue)");
            return 0;
        }
        if (bundle instanceof Integer)
        {
            return ((Integer)bundle).intValue();
        }
        if (bundle instanceof Long)
        {
            return (int)((Long)bundle).longValue();
        } else
        {
            d("Unexpected type for bundle response code.");
            d(bundle.getClass().getName());
            throw new RuntimeException((new StringBuilder("Unexpected type for bundle response code: ")).append(bundle.getClass().getName()).toString());
        }
    }

    private int a(q q1, String s1)
    {
        c((new StringBuilder("Querying owned items, item type: ")).append(s1).toString());
        c((new StringBuilder("Package name: ")).append(g.getPackageName()).toString());
        boolean flag = false;
        Object obj = null;
        do
        {
            c((new StringBuilder("Calling getPurchases with continuation token: ")).append(((String) (obj))).toString());
            obj = h.a(3, g.getPackageName(), s1, ((String) (obj)));
            int i1 = a(((Bundle) (obj)));
            c((new StringBuilder("Owned items response: ")).append(String.valueOf(i1)).toString());
            if (i1 != 0)
            {
                c((new StringBuilder("getPurchases() failed: ")).append(a(i1)).toString());
                return i1;
            }
            if (!((Bundle) (obj)).containsKey("INAPP_PURCHASE_ITEM_LIST") || !((Bundle) (obj)).containsKey("INAPP_PURCHASE_DATA_LIST") || !((Bundle) (obj)).containsKey("INAPP_DATA_SIGNATURE_LIST"))
            {
                d("Bundle returned from getPurchases() doesn't contain required fields.");
                return -1002;
            }
            ArrayList arraylist = ((Bundle) (obj)).getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
            ArrayList arraylist1 = ((Bundle) (obj)).getStringArrayList("INAPP_PURCHASE_DATA_LIST");
            ArrayList arraylist2 = ((Bundle) (obj)).getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
            i1 = 0;
            while (i1 < arraylist1.size()) 
            {
                String s2 = (String)arraylist1.get(i1);
                Object obj1 = (String)arraylist2.get(i1);
                String s3 = (String)arraylist.get(i1);
                if (s.a(l, s2, ((String) (obj1))))
                {
                    c((new StringBuilder("Sku is owned: ")).append(s3).toString());
                    obj1 = new r(s1, s2, ((String) (obj1)));
                    if (TextUtils.isEmpty(((r) (obj1)).h))
                    {
                        f("BUG: empty/null token!");
                        c((new StringBuilder("Purchase data: ")).append(s2).toString());
                    }
                    q1.b.put(((r) (obj1)).d, obj1);
                } else
                {
                    f("Purchase signature verification **FAILED**. Not adding item.");
                    c((new StringBuilder("   Purchase data: ")).append(s2).toString());
                    c((new StringBuilder("   Signature: ")).append(((String) (obj1))).toString());
                    flag = true;
                }
                i1++;
            }
            obj = ((Bundle) (obj)).getString("INAPP_CONTINUATION_TOKEN");
            c((new StringBuilder("Continuation token: ")).append(((String) (obj))).toString());
        } while (!TextUtils.isEmpty(((CharSequence) (obj))));
        return !flag ? 0 : -1003;
    }

    private int a(String s1, q q1, List list)
    {
        c("Querying SKU details.");
        ArrayList arraylist = new ArrayList();
        arraylist.addAll(q1.a(s1));
        if (list != null)
        {
            list = list.iterator();
            do
            {
                if (!list.hasNext())
                {
                    break;
                }
                String s2 = (String)list.next();
                if (!arraylist.contains(s2))
                {
                    arraylist.add(s2);
                }
            } while (true);
        }
        if (arraylist.size() == 0)
        {
            c("queryPrices: nothing to do because there are no SKUs.");
            return 0;
        }
        ArrayList arraylist1 = new ArrayList();
        list = new ArrayList();
        int i1 = 0;
        for (int k1 = 0; k1 < arraylist.size(); k1++)
        {
            if (i1 == 0)
            {
                c("new templist");
                list = new ArrayList();
            }
            list.add(arraylist.get(k1));
            i1++;
            if (i1 == 19 || k1 == arraylist.size() - 1)
            {
                c((new StringBuilder("add pack index 0 of i ")).append(k1).toString());
                arraylist1.add(list);
                i1 = 0;
            }
        }

        for (list = arraylist1.iterator(); list.hasNext();)
        {
            Object obj = (ArrayList)list.next();
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", ((ArrayList) (obj)));
            obj = h.a(3, g.getPackageName(), s1, bundle);
            if (!((Bundle) (obj)).containsKey("DETAILS_LIST"))
            {
                int j1 = a(((Bundle) (obj)));
                if (j1 != 0)
                {
                    c((new StringBuilder("getSkuDetails() failed: ")).append(a(j1)).toString());
                    return j1;
                } else
                {
                    d("getSkuDetails() returned a bundle with neither an error nor a detail list.");
                    return -1002;
                }
            }
            obj = ((Bundle) (obj)).getStringArrayList("DETAILS_LIST").iterator();
            while (((Iterator) (obj)).hasNext()) 
            {
                t t1 = new t(s1, (String)((Iterator) (obj)).next());
                c((new StringBuilder("Got sku details: ")).append(t1).toString());
                q1.a.put(t1.b, t1);
            }
        }

        return 0;
    }

    public static String a(int i1)
    {
        String as[] = "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned".split("/");
        String as1[] = "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt".split("/");
        if (i1 <= -1000)
        {
            int j1 = -1000 - i1;
            if (j1 >= 0 && j1 < as1.length)
            {
                return as1[j1];
            } else
            {
                return (new StringBuilder()).append(String.valueOf(i1)).append(":Unknown IAB Helper Error").toString();
            }
        }
        if (i1 < 0 || i1 >= as.length)
        {
            return (new StringBuilder()).append(String.valueOf(i1)).append(":Unknown").toString();
        } else
        {
            return as[i1];
        }
    }

    private void e(String s1)
    {
        if (e)
        {
            throw new IllegalStateException((new StringBuilder("Can't start async operation (")).append(s1).append(") because another async operation(").append(f).append(") is in progress.").toString());
        } else
        {
            f = s1;
            e = true;
            c((new StringBuilder("Starting async operation: ")).append(s1).toString());
            return;
        }
    }

    private void f(String s1)
    {
        Log.w(b, (new StringBuilder("In-app billing warning: ")).append(s1).toString());
    }

    public final q a(boolean flag, List list)
    {
        q q1;
        b("queryInventory");
        int i1;
        try
        {
            q1 = new q();
            i1 = a(q1, "inapp");
        }
        // Misplaced declaration of an exception variable
        catch (List list)
        {
            throw new c(-1001, "Remote exception while refreshing inventory.", list);
        }
        // Misplaced declaration of an exception variable
        catch (List list)
        {
            throw new c(-1002, "Error parsing JSON response while refreshing inventory.", list);
        }
        if (i1 == 0)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        throw new c(i1, "Error refreshing inventory (querying owned items).");
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        i1 = a("inapp", q1, list);
        if (i1 == 0)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        throw new c(i1, "Error refreshing inventory (querying prices of items).");
        int j1;
        if (!d)
        {
            break MISSING_BLOCK_LABEL_176;
        }
        j1 = a(q1, "subs");
        if (j1 == 0)
        {
            break MISSING_BLOCK_LABEL_143;
        }
        throw new c(j1, "Error refreshing inventory (querying owned subscriptions).");
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_176;
        }
        j1 = a("subs", q1, list);
        if (j1 == 0)
        {
            break MISSING_BLOCK_LABEL_176;
        }
        throw new c(j1, "Error refreshing inventory (querying prices of subscriptions).");
        return q1;
    }

    public final void a()
    {
        c("Disposing.");
        c = false;
        if (i != null)
        {
            c("Unbinding from service.");
            if (g != null)
            {
                g.unbindService(i);
            }
            i = null;
            h = null;
            m = null;
        }
    }

    public final void a(Activity activity, String s1, String s2, int i1, m m1, String s3)
    {
        b("launchPurchaseFlow");
        e("launchPurchaseFlow");
        if (!s2.equals("subs") || d) goto _L2; else goto _L1
_L1:
        activity = new p(-1009, "Subscriptions are not available.");
        if (m1 != null)
        {
            m1.a(activity, null);
        }
        c();
_L4:
        return;
_L2:
        int j1;
        c((new StringBuilder("Constructing buy intent for ")).append(s1).append(", item type: ").append(s2).toString());
        s3 = h.a(3, g.getPackageName(), s1, s2, s3);
        j1 = a(((Bundle) (s3)));
        if (j1 == 0)
        {
            break MISSING_BLOCK_LABEL_243;
        }
        d((new StringBuilder("Unable to buy item, Error response: ")).append(a(j1)).toString());
        activity = new p(j1, "Unable to buy item");
        if (m1 == null)
        {
            break MISSING_BLOCK_LABEL_183;
        }
        m1.a(activity, null);
        c();
        return;
        try
        {
            s3 = (PendingIntent)s3.getParcelable("BUY_INTENT");
            c((new StringBuilder("Launching buy intent for ")).append(s1).append(". Request code: ").append(i1).toString());
            j = i1;
            m = m1;
            k = s2;
            activity.startIntentSenderForResult(s3.getIntentSender(), i1, new Intent(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Activity activity)
        {
            d((new StringBuilder("SendIntentException while launching purchase flow for sku ")).append(s1).toString());
            activity.printStackTrace();
            activity = new p(-1004, "Failed to send intent.");
            if (m1 != null)
            {
                m1.a(activity, null);
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (Activity activity)
        {
            d((new StringBuilder("RemoteException while launching purchase flow for sku ")).append(s1).toString());
            activity.printStackTrace();
            activity = new p(-1001, "Remote exception while starting purchase flow");
            if (m1 != null)
            {
                m1.a(activity, null);
                return;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void a(n n1)
    {
        if (c)
        {
            throw new IllegalStateException("IAB helper is already set up.");
        }
        c("Starting in-app billing setup.");
        i = new e(this, n1);
        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        if (!g.getPackageManager().queryIntentServices(intent, 0).isEmpty())
        {
            g.bindService(intent, i, 1);
        } else
        if (n1 != null)
        {
            n1.a(new p(3, "Billing service unavailable on device."));
            return;
        }
    }

    public final void a(r r1, k k1)
    {
        b("consume");
        ArrayList arraylist = new ArrayList();
        arraylist.add(r1);
        r1 = new Handler();
        e("consume");
        (new Thread(new h(this, arraylist, k1, r1))).start();
    }

    public final void a(String s1)
    {
        a = false;
        b = s1;
    }

    public final void a(boolean flag, List list, o o)
    {
        Handler handler = new Handler();
        b("queryInventory");
        e("refresh inventory");
        (new Thread(new f(this, flag, list, handler, o))).start();
    }

    public final boolean a(int i1, int j1, Intent intent)
    {
        Object obj;
        String s1;
        c("activityResultIABInternalHandle");
        if (i1 != j)
        {
            return false;
        }
        b("handleActivityResult");
        c();
        if (intent == null)
        {
            d("Null data in IAB activity result.");
            intent = new p(-1002, "Null data in IAB result");
            if (m != null)
            {
                m.a(intent, null);
            }
            return true;
        }
        obj = intent.getExtras().get("RESPONSE_CODE");
        if (obj == null)
        {
            d("Intent with no response code, assuming OK (known issue)");
            i1 = 0;
        } else
        if (obj instanceof Integer)
        {
            i1 = ((Integer)obj).intValue();
        } else
        if (obj instanceof Long)
        {
            i1 = (int)((Long)obj).longValue();
        } else
        {
            d("Unexpected type for intent response code.");
            d(obj.getClass().getName());
            throw new RuntimeException((new StringBuilder("Unexpected type for intent response code: ")).append(obj.getClass().getName()).toString());
        }
        obj = intent.getStringExtra("INAPP_PURCHASE_DATA");
        s1 = intent.getStringExtra("INAPP_DATA_SIGNATURE");
        if (j1 != -1 || i1 != 0) goto _L2; else goto _L1
_L1:
        c("Successful resultcode from purchase activity.");
        c((new StringBuilder("Purchase data: ")).append(((String) (obj))).toString());
        c((new StringBuilder("Data signature: ")).append(s1).toString());
        c((new StringBuilder("Extras: ")).append(intent.getExtras()).toString());
        c((new StringBuilder("Expected item type: ")).append(k).toString());
        if (obj == null || s1 == null)
        {
            d("BUG: either purchaseData or dataSignature is null.");
            c((new StringBuilder("Extras: ")).append(intent.getExtras().toString()).toString());
            intent = new p(-1008, "IAB returned null purchaseData or dataSignature");
            if (m != null)
            {
                m.a(intent, null);
            }
            return true;
        }
        String s2;
        intent = new r(k, ((String) (obj)), s1);
        s2 = ((r) (intent)).d;
        if (s.a(l, ((String) (obj)), s1)) goto _L4; else goto _L3
_L3:
        d((new StringBuilder("Purchase signature verification FAILED for sku ")).append(s2).toString());
        p p1 = new p(-1003, (new StringBuilder("Signature verification failed for sku ")).append(s2).toString());
        if (m != null)
        {
            m.a(p1, intent);
        }
          goto _L5
_L4:
        try
        {
            c("Purchase signature successfully verified.");
        }
        // Misplaced declaration of an exception variable
        catch (Intent intent)
        {
            d("Failed to parse purchase data.");
            intent.printStackTrace();
            intent = new p(-1002, "Failed to parse purchase data.");
            if (m != null)
            {
                m.a(intent, null);
            }
            return true;
        }
        if (m != null)
        {
            m.a(new p(0, "Success"), intent);
        }
_L7:
        return true;
_L2:
        if (j1 == -1)
        {
            c((new StringBuilder("Result code was OK but in-app billing response was not OK: ")).append(a(i1)).toString());
            if (m != null)
            {
                intent = new p(i1, "Problem purchashing item.");
                m.a(intent, null);
            }
        } else
        if (j1 == 0)
        {
            c((new StringBuilder("Purchase canceled - Response: ")).append(a(i1)).toString());
            intent = "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned".split("/");
            if (i1 <= intent.length && i1 >= 0)
            {
                if (i1 == 1)
                {
                    intent = "User canceled.";
                    i1 = -1005;
                } else
                {
                    intent = intent[i1];
                }
            } else
            {
                intent = "User canceled.";
                i1 = -1005;
            }
            intent = new p(i1, intent);
            if (m != null)
            {
                m.a(intent, null);
            }
        } else
        {
            d((new StringBuilder("Purchase failed. Result code: ")).append(Integer.toString(j1)).append(". Response: ").append(a(i1)).toString());
            intent = new p(-1006, "Unknown purchase response.");
            if (m != null)
            {
                m.a(intent, null);
            }
        }
        continue; /* Loop/switch isn't completed */
_L5:
        return true;
        if (true) goto _L7; else goto _L6
_L6:
    }

    final void b(String s1)
    {
        if (!c)
        {
            d((new StringBuilder("Illegal state for operation (")).append(s1).append("): IAB helper is not set up.").toString());
            throw new IllegalStateException((new StringBuilder("IAB helper is not set up. Can't perform operation: ")).append(s1).toString());
        } else
        {
            return;
        }
    }

    public final boolean b()
    {
        return d;
    }

    final void c()
    {
        c((new StringBuilder("Ending async operation: ")).append(f).toString());
        f = "";
        e = false;
    }

    final void c(String s1)
    {
        if (a)
        {
            Log.d(b, s1);
        }
    }

    final void d(String s1)
    {
        Log.e(b, (new StringBuilder("In-app billing error: ")).append(s1).toString());
    }
}
