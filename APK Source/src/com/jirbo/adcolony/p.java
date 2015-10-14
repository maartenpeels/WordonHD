// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;

import android.app.Activity;
import android.os.Handler;
import android.os.Message;
import java.io.PrintStream;

// Referenced classes of package com.jirbo.adcolony:
//            a, l, d, AdColony, 
//            aa, v

class p
    implements Runnable
{
    static class a extends Handler
    {

        public void handleMessage(Message message)
        {
            if (com.jirbo.adcolony.a.b().isFinishing())
            {
                com.jirbo.adcolony.a.b("Monitor pinger exiting.");
                return;
            }
            if (com.jirbo.adcolony.a.b().hasWindowFocus())
            {
                p.a();
            }
            sendMessageDelayed(obtainMessage(), 1000L);
        }

        a()
        {
            sendMessageDelayed(obtainMessage(), 1000L);
        }
    }


    public static final int a = 5;
    public static final int b = 10;
    static String c = "MONITOR_MUTEX";
    static volatile p d;
    static volatile long e;

    p()
    {
    }

    static void a()
    {
        synchronized (c)
        {
            e = System.currentTimeMillis();
            if (d == null)
            {
                com.jirbo.adcolony.a.b("Creating ADC Monitor singleton.");
                d = new p();
                (new Thread(d)).start();
            }
        }
        return;
        exception;
        s;
        JVM INSTR monitorexit ;
        throw exception;
    }

    void a(long l1)
    {
        try
        {
            Thread.sleep(l1);
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            return;
        }
    }

    public void run()
    {
        boolean flag1;
        com.jirbo.adcolony.a.a(com.jirbo.adcolony.a.n);
        l.a.b("ADC Monitor Started.");
        com.jirbo.adcolony.a.l.b();
        flag1 = false;
_L9:
        if (AdColony.activity().isFinishing()) goto _L2; else goto _L1
_L1:
        int j;
        long l1;
        long l2;
        l2 = System.currentTimeMillis();
        com.jirbo.adcolony.a.r = false;
        com.jirbo.adcolony.a.l.g();
        if (com.jirbo.adcolony.a.r)
        {
            l1 = 50L;
        } else
        {
            int i;
            if (flag1)
            {
                i = 2000;
            } else
            {
                i = 250;
            }
            l1 = i;
        }
        j = (int)((System.currentTimeMillis() - e) / 1000L);
        com.jirbo.adcolony.a.l.g();
        if (!flag1) goto _L4; else goto _L3
_L3:
        if (j < 10) goto _L5; else goto _L2
_L2:
        synchronized (c)
        {
            d = null;
        }
        if (!flag1)
        {
            com.jirbo.adcolony.a.l.c();
        }
        if (AdColony.activity().isFinishing())
        {
            com.jirbo.adcolony.a.s = true;
            a(5000L);
            if (com.jirbo.adcolony.a.s)
            {
                l.c.b("ADC.finishing, controller on_stop");
                com.jirbo.adcolony.a.l.d();
                aa.a();
            }
        }
        System.out.println("Exiting monitor");
        return;
_L5:
        boolean flag;
        flag = flag1;
        if (j < 5)
        {
            com.jirbo.adcolony.a.l.b();
            com.jirbo.adcolony.a.b("AdColony is active.");
            flag = false;
        }
_L7:
        a(l1);
        l1 = System.currentTimeMillis();
        flag1 = flag;
        if (l1 - l2 <= 3000L)
        {
            flag1 = flag;
            if (l1 - l2 > 0L)
            {
                obj = com.jirbo.adcolony.a.l.e;
                double d1 = ((v) (obj)).h;
                obj.h = (double)(l1 - l2) / 1000D + d1;
                flag1 = flag;
            }
        }
        continue; /* Loop/switch isn't completed */
_L4:
        flag = flag1;
        if (j >= 5)
        {
            com.jirbo.adcolony.a.b("AdColony is idle.");
            com.jirbo.adcolony.a.l.c();
            flag = true;
        }
        if (true) goto _L7; else goto _L6
_L6:
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        if (true) goto _L9; else goto _L8
_L8:
    }

}
