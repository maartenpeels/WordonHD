// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;

// Referenced classes of package c.m.x.a.gv:
//            x

public final class w
{
    private static final class a
    {

        final Intent a;
        final ArrayList b;

        a(Intent intent, ArrayList arraylist)
        {
            a = intent;
            b = arraylist;
        }
    }

    private static final class b
    {

        final IntentFilter a;
        final BroadcastReceiver b;
        boolean c;

        public final String toString()
        {
            StringBuilder stringbuilder = new StringBuilder(128);
            stringbuilder.append("Receiver{");
            stringbuilder.append(b);
            stringbuilder.append(" filter=");
            stringbuilder.append(a);
            stringbuilder.append("}");
            return stringbuilder.toString();
        }

        b(IntentFilter intentfilter, BroadcastReceiver broadcastreceiver)
        {
            a = intentfilter;
            b = broadcastreceiver;
        }
    }


    private static final Object f = new Object();
    private static w g;
    private final Context a;
    private final HashMap b = new HashMap();
    private final HashMap c = new HashMap();
    private final ArrayList d = new ArrayList();
    private final Handler e;

    private w(Context context)
    {
        a = context;
        e = new x(this, context.getMainLooper());
    }

    public static w a(Context context)
    {
        synchronized (f)
        {
            if (g == null)
            {
                g = new w(context.getApplicationContext());
            }
            context = g;
        }
        return context;
    }

    static void a(w w1)
    {
_L4:
        Object obj = w1.b;
        obj;
        JVM INSTR monitorenter ;
        int i = w1.d.size();
        if (i > 0)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        obj;
        JVM INSTR monitorexit ;
        return;
        a aa[];
        aa = new a[i];
        w1.d.toArray(aa);
        w1.d.clear();
        obj;
        JVM INSTR monitorexit ;
        i = 0;
_L2:
        if (i < aa.length)
        {
            obj = aa[i];
            for (int j = 0; j < ((a) (obj)).b.size(); j++)
            {
                ((b)((a) (obj)).b.get(j)).b.onReceive(w1.a, ((a) (obj)).a);
            }

            break MISSING_BLOCK_LABEL_112;
        }
        continue; /* Loop/switch isn't completed */
        w1;
        throw w1;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void a(BroadcastReceiver broadcastreceiver)
    {
        HashMap hashmap = b;
        hashmap;
        JVM INSTR monitorenter ;
        ArrayList arraylist = (ArrayList)b.remove(broadcastreceiver);
        if (arraylist != null) goto _L2; else goto _L1
_L1:
        hashmap;
        JVM INSTR monitorexit ;
        return;
_L15:
        int j;
        if (j >= arraylist.size()) goto _L4; else goto _L3
_L3:
        IntentFilter intentfilter = (IntentFilter)arraylist.get(j);
        int k = 0;
_L13:
        String s;
        ArrayList arraylist1;
        if (k >= intentfilter.countActions())
        {
            break; /* Loop/switch isn't completed */
        }
        s = intentfilter.getAction(k);
        arraylist1 = (ArrayList)c.get(s);
        if (arraylist1 == null) goto _L6; else goto _L5
_L5:
        int i = 0;
_L11:
        if (i >= arraylist1.size()) goto _L8; else goto _L7
_L7:
        if (((b)arraylist1.get(i)).b != broadcastreceiver) goto _L10; else goto _L9
_L9:
        arraylist1.remove(i);
        i--;
          goto _L10
_L8:
        if (arraylist1.size() <= 0)
        {
            c.remove(s);
        }
        break; /* Loop/switch isn't completed */
_L4:
        hashmap;
        JVM INSTR monitorexit ;
        return;
        broadcastreceiver;
        hashmap;
        JVM INSTR monitorexit ;
        throw broadcastreceiver;
_L2:
        j = 0;
        continue; /* Loop/switch isn't completed */
_L10:
        i++;
        if (true) goto _L11; else goto _L6
_L6:
        k++;
        if (true) goto _L13; else goto _L12
_L12:
        j++;
        if (true) goto _L15; else goto _L14
_L14:
    }

    public final void a(BroadcastReceiver broadcastreceiver, IntentFilter intentfilter)
    {
        HashMap hashmap = b;
        hashmap;
        JVM INSTR monitorenter ;
        Object obj;
        b b1;
        b1 = new b(intentfilter, broadcastreceiver);
        obj = (ArrayList)b.get(broadcastreceiver);
        ArrayList arraylist;
        arraylist = ((ArrayList) (obj));
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        arraylist = new ArrayList(1);
        b.put(broadcastreceiver, arraylist);
        arraylist.add(intentfilter);
        int i = 0;
_L2:
        if (i >= intentfilter.countActions())
        {
            break; /* Loop/switch isn't completed */
        }
        obj = intentfilter.getAction(i);
        arraylist = (ArrayList)c.get(obj);
        broadcastreceiver = arraylist;
        if (arraylist != null)
        {
            break MISSING_BLOCK_LABEL_125;
        }
        broadcastreceiver = new ArrayList(1);
        c.put(obj, broadcastreceiver);
        broadcastreceiver.add(b1);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        hashmap;
        JVM INSTR monitorexit ;
        return;
        broadcastreceiver;
        hashmap;
        JVM INSTR monitorexit ;
        throw broadcastreceiver;
    }

    public final boolean a(Intent intent)
    {
        HashMap hashmap = b;
        hashmap;
        JVM INSTR monitorenter ;
        String s;
        String s1;
        android.net.Uri uri;
        String s2;
        java.util.Set set;
        s = intent.getAction();
        s1 = intent.resolveTypeIfNeeded(a.getContentResolver());
        uri = intent.getData();
        s2 = intent.getScheme();
        set = intent.getCategories();
        ArrayList arraylist;
        Object obj;
        int i;
        ArrayList arraylist1;
        int j;
        int k;
        if ((intent.getFlags() & 8) != 0)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_106;
        }
        Log.v("LocalBroadcastManager", (new StringBuilder("Resolving type ")).append(s1).append(" scheme ").append(s2).append(" of intent ").append(intent).toString());
        arraylist1 = (ArrayList)c.get(intent.getAction());
        if (arraylist1 == null) goto _L2; else goto _L1
_L1:
        if (i == 0) goto _L4; else goto _L3
_L3:
        Log.v("LocalBroadcastManager", (new StringBuilder("Action list: ")).append(arraylist1).toString());
          goto _L4
_L20:
        if (j >= arraylist1.size()) goto _L6; else goto _L5
_L5:
        obj = (b)arraylist1.get(j);
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_209;
        }
        Log.v("LocalBroadcastManager", (new StringBuilder("Matching against filter ")).append(((b) (obj)).a).toString());
        if (!((b) (obj)).c) goto _L8; else goto _L7
_L7:
        if (i == 0) goto _L10; else goto _L9
_L9:
        Log.v("LocalBroadcastManager", "  Filter's target already added");
          goto _L10
_L8:
        k = ((b) (obj)).a.match(s, s1, s2, uri, set, "LocalBroadcastManager");
        if (k < 0) goto _L12; else goto _L11
_L11:
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_289;
        }
        Log.v("LocalBroadcastManager", (new StringBuilder("  Filter matched!  match=0x")).append(Integer.toHexString(k)).toString());
        if (arraylist != null)
        {
            break MISSING_BLOCK_LABEL_301;
        }
        arraylist = new ArrayList();
        arraylist.add(obj);
        obj.c = true;
          goto _L10
        intent;
        throw intent;
_L12:
        if (i == 0) goto _L10; else goto _L13
_L13:
        k;
        JVM INSTR tableswitch -4 -1: default 360
    //                   -4 501
    //                   -3 495
    //                   -2 507
    //                   -1 513;
           goto _L14 _L15 _L16 _L17 _L18
_L14:
        obj = "unknown reason";
_L21:
        Log.v("LocalBroadcastManager", (new StringBuilder("  Filter did not match: ")).append(((String) (obj))).toString());
          goto _L10
_L19:
        if (i >= arraylist.size())
        {
            break MISSING_BLOCK_LABEL_419;
        }
        ((b)arraylist.get(i)).c = false;
        i++;
          goto _L19
        d.add(new a(intent, arraylist));
        if (!e.hasMessages(1))
        {
            e.sendEmptyMessage(1);
        }
        hashmap;
        JVM INSTR monitorexit ;
        return true;
_L2:
        hashmap;
        JVM INSTR monitorexit ;
        return false;
_L4:
        j = 0;
        arraylist = null;
          goto _L20
_L10:
        j++;
          goto _L20
_L16:
        obj = "action";
          goto _L21
_L15:
        obj = "category";
          goto _L21
_L17:
        obj = "data";
          goto _L21
_L18:
        obj = "type";
          goto _L21
_L6:
        if (arraylist == null) goto _L2; else goto _L22
_L22:
        i = 0;
          goto _L19
    }

}
