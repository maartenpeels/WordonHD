// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.android.gms.tagmanager:
//            df, dh, bh, aq, 
//            cy, y

class i extends df
{
    public static interface a
    {

        public abstract aq jY();
    }


    private static final String ID;
    private static final String URL;
    private static final String WC;
    private static final String WD;
    static final String WE;
    private static final Set WF = new HashSet();
    private final a WG;
    private final Context mContext;

    public i(Context context)
    {
        this(context, new a(context) {

            final Context pB;

            public aq jY()
            {
                return y.F(pB);
            }

            
            {
                pB = context;
                super();
            }
        });
    }

    i(Context context, a a1)
    {
        super(ID, new String[] {
            URL
        });
        WG = a1;
        mContext = context;
    }

    private boolean bj(String s)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = bl(s);
        if (!flag) goto _L2; else goto _L1
_L1:
        flag = true;
_L4:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        if (!bk(s))
        {
            break MISSING_BLOCK_LABEL_41;
        }
        WF.add(s);
        flag = true;
        continue; /* Loop/switch isn't completed */
        flag = false;
        if (true) goto _L4; else goto _L3
_L3:
        s;
        throw s;
    }

    boolean bk(String s)
    {
        return mContext.getSharedPreferences(WE, 0).contains(s);
    }

    boolean bl(String s)
    {
        return WF.contains(s);
    }

    public void z(Map map)
    {
        String s;
        if (map.get(WD) != null)
        {
            s = dh.j((com.google.android.gms.internal.d.a)map.get(WD));
        } else
        {
            s = null;
        }
        if (s == null || !bj(s)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        android.net.Uri.Builder builder = Uri.parse(dh.j((com.google.android.gms.internal.d.a)map.get(URL))).buildUpon();
        map = (com.google.android.gms.internal.d.a)map.get(WC);
        if (map != null)
        {
            map = ((Map) (dh.o(map)));
            if (!(map instanceof List))
            {
                bh.w((new StringBuilder()).append("ArbitraryPixel: additional params not a list: not sending partial hit: ").append(builder.build().toString()).toString());
                return;
            }
            for (map = ((List)map).iterator(); map.hasNext();)
            {
                Object obj = map.next();
                if (!(obj instanceof Map))
                {
                    bh.w((new StringBuilder()).append("ArbitraryPixel: additional params contains non-map: not sending partial hit: ").append(builder.build().toString()).toString());
                    return;
                }
                obj = ((Map)obj).entrySet().iterator();
                while (((Iterator) (obj)).hasNext()) 
                {
                    java.util.Map.Entry entry = (java.util.Map.Entry)((Iterator) (obj)).next();
                    builder.appendQueryParameter(entry.getKey().toString(), entry.getValue().toString());
                }
            }

        }
        map = builder.build().toString();
        WG.jY().bz(map);
        bh.y((new StringBuilder()).append("ArbitraryPixel: url = ").append(map).toString());
        if (s == null) goto _L1; else goto _L3
_L3:
        com/google/android/gms/tagmanager/i;
        JVM INSTR monitorenter ;
        WF.add(s);
        com.google.android.gms.tagmanager.cy.a(mContext, WE, s, "true");
        com/google/android/gms/tagmanager/i;
        JVM INSTR monitorexit ;
        return;
        map;
        com/google/android/gms/tagmanager/i;
        JVM INSTR monitorexit ;
        throw map;
    }

    static 
    {
        ID = com.google.android.gms.internal.a.ap.toString();
        URL = b.eo.toString();
        WC = b.aX.toString();
        WD = b.en.toString();
        WE = (new StringBuilder()).append("gtm_").append(ID).append("_unrepeatable").toString();
    }
}
