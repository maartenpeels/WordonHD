// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            do, cz, cx, ak, 
//            bh, bn, bj, dv, 
//            dw, l, h, cu, 
//            dh, dz, ct, dq, 
//            bq, ea

public class cs extends do
    implements cu.a, ea.a
{
    private static final class a extends Exception
    {

        private final int oS;

        public int getErrorCode()
        {
            return oS;
        }

        public a(String s, int i)
        {
            super(s);
            oS = i;
        }
    }


    private final bq ky;
    private final dz lC;
    private final Object li = new Object();
    private final Context mContext;
    private bj mR;
    private final cr.a oG;
    private final Object oH = new Object();
    private final cx.a oI;
    private final l oJ;
    private do oK;
    private cz oL;
    private boolean oM;
    private bh oN;
    private bn oO;

    public cs(Context context, cx.a a1, l l1, dz dz1, bq bq, cr.a a2)
    {
        oM = false;
        ky = bq;
        oG = a2;
        lC = dz1;
        mContext = context;
        oI = a1;
        oJ = l1;
    }

    private ak a(cx cx1)
        throws a
    {
        if (oL.pr == null)
        {
            throw new a("The ad response must specify one of the supported ad sizes.", 0);
        }
        Object aobj[] = oL.pr.split("x");
        if (aobj.length != 2)
        {
            throw new a((new StringBuilder()).append("Could not parse the ad size from the ad response: ").append(oL.pr).toString(), 0);
        }
        int i1;
        int j1;
        int k1;
        try
        {
            i1 = Integer.parseInt(aobj[0]);
            j1 = Integer.parseInt(aobj[1]);
        }
        // Misplaced declaration of an exception variable
        catch (cx cx1)
        {
            throw new a((new StringBuilder()).append("Could not parse the ad size from the ad response: ").append(oL.pr).toString(), 0);
        }
        aobj = cx1.kN.lU;
        k1 = aobj.length;
        ak ak1;
        int j;
        int k;
        for (int i = 0; i < k1; i++)
        {
            ak1 = aobj[i];
            float f1 = mContext.getResources().getDisplayMetrics().density;
            if (ak1.width == -1)
            {
                j = (int)((float)ak1.widthPixels / f1);
            } else
            {
                j = ak1.width;
            }
            if (ak1.height == -2)
            {
                k = (int)((float)ak1.heightPixels / f1);
            } else
            {
                k = ak1.height;
            }
            if (i1 == j && j1 == k)
            {
                return new ak(ak1, cx1.kN.lU);
            }
        }

        throw new a((new StringBuilder()).append("The ad size from the ad response was not one of the requested sizes: ").append(oL.pr).toString(), 0);
    }

    static Object a(cs cs1)
    {
        return cs1.li;
    }

    private void a(cx cx1, long l1)
        throws a
    {
        synchronized (oH)
        {
            oN = new bh(mContext, cx1, ky, mR);
        }
        oO = oN.a(l1, 60000L);
        switch (oO.nw)
        {
        default:
            throw new a((new StringBuilder()).append("Unexpected mediation result: ").append(oO.nw).toString(), 0);

        case 1: // '\001'
            throw new a("No fill from any mediation ad networks.", 3);

        case 0: // '\0'
            return;
        }
        cx1;
        obj;
        JVM INSTR monitorexit ;
        throw cx1;
    }

    private void aZ()
        throws a
    {
        if (oL.errorCode != -3)
        {
            if (TextUtils.isEmpty(oL.pm))
            {
                throw new a("No fill from ad server.", 3);
            }
            if (oL.po)
            {
                try
                {
                    mR = new bj(oL.pm);
                    return;
                }
                catch (JSONException jsonexception)
                {
                    throw new a((new StringBuilder()).append("Could not parse mediation config: ").append(oL.pm).toString(), 0);
                }
            }
        }
    }

    static cr.a b(cs cs1)
    {
        return cs1.oG;
    }

    private void b(long l1)
        throws a
    {
        dv.rp.post(new Runnable() {

            final cs oP;

            public void run()
            {
label0:
                {
                    synchronized (cs.a(oP))
                    {
                        if (cs.c(oP).errorCode == -2)
                        {
                            break label0;
                        }
                    }
                    return;
                }
                cs.d(oP).bI().a(oP);
                if (cs.c(oP).errorCode != -3)
                {
                    break MISSING_BLOCK_LABEL_119;
                }
                dw.y((new StringBuilder()).append("Loading URL in WebView: ").append(cs.c(oP).ol).toString());
                cs.d(oP).loadUrl(cs.c(oP).ol);
_L1:
                obj;
                JVM INSTR monitorexit ;
                return;
                exception;
                obj;
                JVM INSTR monitorexit ;
                throw exception;
                dw.y("Loading HTML in WebView.");
                cs.d(oP).loadDataWithBaseURL(dq.r(cs.c(oP).ol), cs.c(oP).pm, "text/html", "UTF-8", null);
                  goto _L1
            }

            
            {
                oP = cs.this;
                super();
            }
        });
        e(l1);
    }

    static cz c(cs cs1)
    {
        return cs1.oL;
    }

    static dz d(cs cs1)
    {
        return cs1.lC;
    }

    private void d(long l1)
        throws a
    {
        do
        {
            if (!f(l1))
            {
                throw new a("Timed out waiting for ad response.", 2);
            }
        } while (oL == null);
        synchronized (oH)
        {
            oK = null;
        }
        if (oL.errorCode != -2 && oL.errorCode != -3)
        {
            throw new a((new StringBuilder()).append("There was a problem getting an ad response. ErrorCode: ").append(oL.errorCode).toString(), oL.errorCode);
        } else
        {
            return;
        }
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void e(long l1)
        throws a
    {
        do
        {
            if (!f(l1))
            {
                throw new a("Timed out waiting for WebView to finish loading.", 2);
            }
        } while (!oM);
    }

    private boolean f(long l1)
        throws a
    {
        l1 = 60000L - (SystemClock.elapsedRealtime() - l1);
        if (l1 <= 0L)
        {
            return false;
        }
        try
        {
            li.wait(l1);
        }
        catch (InterruptedException interruptedexception)
        {
            throw new a("Ad request cancelled.", -1);
        }
        return true;
    }

    public void a(cz cz1)
    {
        synchronized (li)
        {
            dw.v("Received ad response.");
            oL = cz1;
            li.notify();
        }
        return;
        cz1;
        obj;
        JVM INSTR monitorexit ;
        throw cz1;
    }

    public void a(dz dz1)
    {
        synchronized (li)
        {
            dw.v("WebView finished loading.");
            oM = true;
            li.notify();
        }
        return;
        exception;
        dz1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void aY()
    {
        Object obj4 = li;
        obj4;
        JVM INSTR monitorenter ;
        Object obj2;
        dw.v("AdLoaderBackgroundTask started.");
        String s = oJ.y().a(mContext);
        obj2 = new cx(oI, s);
        Object obj;
        long l1;
        long l2;
        obj = null;
        l2 = -1L;
        l1 = l2;
        long l3 = SystemClock.elapsedRealtime();
        l1 = l2;
        Object obj3 = cu.a(mContext, ((cx) (obj2)), this);
        l1 = l2;
        Object obj1 = oH;
        l1 = l2;
        obj1;
        JVM INSTR monitorenter ;
        oK = ((do) (obj3));
        if (oK == null)
        {
            throw new a("Could not start the ad request service.", 0);
        }
          goto _L1
        obj;
        obj1;
        JVM INSTR monitorexit ;
        Exception exception;
        String s1;
        bl bl;
        int i;
        l1 = l2;
        ah ah;
        dz dz1;
        java.util.List list;
        java.util.List list1;
        java.util.List list2;
        String s2;
        bj bj1;
        int j;
        boolean flag;
        try
        {
            throw obj;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj1)
        {
            obj = null;
        }
        finally { }
_L30:
        i = ((a) (obj1)).getErrorCode();
        if (i != 3 && i != -1) goto _L3; else goto _L2
_L2:
        dw.x(((a) (obj1)).getMessage());
_L21:
        if (oL != null) goto _L5; else goto _L4
_L4:
        oL = new cz(i);
_L22:
        dv.rp.post(new Runnable() {

            final cs oP;

            public void run()
            {
                oP.onStop();
            }

            
            {
                oP = cs.this;
                super();
            }
        });
_L28:
        flag = TextUtils.isEmpty(oL.pw);
        if (flag) goto _L7; else goto _L6
_L6:
        obj1 = new JSONObject(oL.pw);
_L23:
        ah = ((cx) (obj2)).pg;
        dz1 = lC;
        list = oL.ne;
        list1 = oL.nf;
        list2 = oL.pq;
        j = oL.orientation;
        l2 = oL.ni;
        s2 = ((cx) (obj2)).pj;
        flag = oL.po;
        if (oO == null) goto _L9; else goto _L8
_L8:
        obj2 = oO.nx;
_L24:
        if (oO == null) goto _L11; else goto _L10
_L10:
        obj3 = oO.ny;
_L25:
        if (oO == null) goto _L13; else goto _L12
_L12:
        s1 = oO.nz;
_L26:
        bj1 = mR;
        if (oO == null) goto _L15; else goto _L14
_L14:
        bl = oO.nA;
_L27:
        obj = new dh(ah, dz1, list, i, list1, list2, j, l2, s2, flag, ((bi) (obj2)), ((br) (obj3)), s1, bj1, bl, oL.pp, ((ak) (obj)), oL.pn, l1, oL.ps, oL.pt, ((JSONObject) (obj1)));
        dv.rp.post(new Runnable(((dh) (obj))) {

            final cs oP;
            final dh oQ;

            public void run()
            {
                synchronized (cs.a(oP))
                {
                    cs.b(oP).a(oQ);
                }
                return;
                exception1;
                obj5;
                JVM INSTR monitorexit ;
                throw exception1;
            }

            
            {
                oP = cs.this;
                oQ = dh1;
                super();
            }
        });
        obj4;
        JVM INSTR monitorexit ;
        return;
_L1:
        obj1;
        JVM INSTR monitorexit ;
        l1 = l2;
        d(l3);
        l1 = l2;
        l2 = SystemClock.elapsedRealtime();
        l1 = l2;
        aZ();
        l1 = l2;
        if (((cx) (obj2)).kN.lU == null)
        {
            break MISSING_BLOCK_LABEL_503;
        }
        l1 = l2;
        obj = a(((cx) (obj2)));
        if (!oL.po) goto _L17; else goto _L16
_L16:
        a(((cx) (obj2)), l3);
          goto _L18
_L17:
        if (!oL.pu) goto _L20; else goto _L19
_L19:
        c(l3);
          goto _L18
_L20:
        b(l3);
          goto _L18
        obj4;
        JVM INSTR monitorexit ;
        throw exception;
_L3:
        dw.z(((a) (obj1)).getMessage());
          goto _L21
_L5:
        oL = new cz(i, oL.ni);
          goto _L22
        obj1;
        dw.b("Error parsing the JSON for Active View.", ((Throwable) (obj1)));
_L7:
        obj1 = null;
          goto _L23
_L9:
        obj2 = null;
          goto _L24
_L11:
        obj3 = null;
          goto _L25
_L13:
        s1 = null;
          goto _L26
_L15:
        bl = null;
          goto _L27
_L18:
        l1 = l2;
        i = -2;
          goto _L28
        obj1;
        l1 = l2;
        if (true) goto _L30; else goto _L29
_L29:
    }

    protected void c(long l1)
        throws a
    {
        Object obj = lC.R();
        int i;
        int j;
        if (((ak) (obj)).lT)
        {
            i = mContext.getResources().getDisplayMetrics().widthPixels;
            j = mContext.getResources().getDisplayMetrics().heightPixels;
        } else
        {
            i = ((ak) (obj)).widthPixels;
            j = ((ak) (obj)).heightPixels;
        }
        obj = new ct(this, lC, i, j);
        dv.rp.post(new Runnable(((ct) (obj))) {

            final cs oP;
            final ct oR;

            public void run()
            {
label0:
                {
                    synchronized (cs.a(oP))
                    {
                        if (cs.c(oP).errorCode == -2)
                        {
                            break label0;
                        }
                    }
                    return;
                }
                cs.d(oP).bI().a(oP);
                oR.b(cs.c(oP));
                obj1;
                JVM INSTR monitorexit ;
                return;
                exception;
                obj1;
                JVM INSTR monitorexit ;
                throw exception;
            }

            
            {
                oP = cs.this;
                oR = ct1;
                super();
            }
        });
        e(l1);
        if (((ct) (obj)).bc())
        {
            dw.v("Ad-Network indicated no fill with passback URL.");
            throw new a("AdNetwork sent passback url", 3);
        }
        if (!((ct) (obj)).bd())
        {
            throw new a("AdNetwork timed out", 2);
        } else
        {
            return;
        }
    }

    public void onStop()
    {
        synchronized (oH)
        {
            if (oK != null)
            {
                oK.cancel();
            }
            lC.stopLoading();
            dq.a(lC);
            if (oN != null)
            {
                oN.cancel();
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
