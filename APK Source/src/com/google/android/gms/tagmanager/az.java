// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import java.io.UnsupportedEncodingException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.android.gms.tagmanager:
//            aj, dk, bh, dh

class az extends aj
{
    private static final class a extends Enum
    {

        public static final a Yq;
        public static final a Yr;
        public static final a Ys;
        private static final a Yt[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(com/google/android/gms/tagmanager/az$a, s);
        }

        public static a[] values()
        {
            return (a[])Yt.clone();
        }

        static 
        {
            Yq = new a("NONE", 0);
            Yr = new a("URL", 1);
            Ys = new a("BACKSLASH", 2);
            Yt = (new a[] {
                Yq, Yr, Ys
            });
        }

        private a(String s, int i)
        {
            super(s, i);
        }
    }


    private static final String ID;
    private static final String XQ;
    private static final String Ym;
    private static final String Yn;
    private static final String Yo;

    public az()
    {
        super(ID, new String[] {
            XQ
        });
    }

    private String a(String s, a a1, Set set)
    {
        static class _cls1
        {

            static final int Yp[];

            static 
            {
                Yp = new int[a.values().length];
                try
                {
                    Yp[a.Yr.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    Yp[a.Ys.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    Yp[a.Yq.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls1.Yp[a1.ordinal()];
        JVM INSTR tableswitch 1 2: default 32
    //                   1 36
    //                   2 52;
           goto _L1 _L2 _L3
_L1:
        a1 = s;
_L5:
        return a1;
_L2:
        try
        {
            a1 = dk.cd(s);
        }
        // Misplaced declaration of an exception variable
        catch (a a1)
        {
            com.google.android.gms.tagmanager.bh.b("Joiner: unsupported encoding", a1);
            return s;
        }
        return a1;
_L3:
        s = s.replace("\\", "\\\\");
        set = set.iterator();
        do
        {
            a1 = s;
            if (!set.hasNext())
            {
                continue;
            }
            a1 = ((Character)set.next()).toString();
            s = s.replace(a1, (new StringBuilder()).append("\\").append(a1).toString());
        } while (true);
        if (true) goto _L5; else goto _L4
_L4:
    }

    private void a(StringBuilder stringbuilder, String s, a a1, Set set)
    {
        stringbuilder.append(a(s, a1, set));
    }

    private void a(Set set, String s)
    {
        for (int i = 0; i < s.length(); i++)
        {
            set.add(Character.valueOf(s.charAt(i)));
        }

    }

    public boolean jX()
    {
        return true;
    }

    public com.google.android.gms.internal.d.a x(Map map)
    {
        com.google.android.gms.internal.d.a a1 = (com.google.android.gms.internal.d.a)map.get(XQ);
        if (a1 == null)
        {
            return dh.lT();
        }
        Object obj = (com.google.android.gms.internal.d.a)map.get(Ym);
        String s;
        Object obj1;
        StringBuilder stringbuilder;
        if (obj != null)
        {
            s = dh.j(((com.google.android.gms.internal.d.a) (obj)));
        } else
        {
            s = "";
        }
        obj = (com.google.android.gms.internal.d.a)map.get(Yn);
        if (obj != null)
        {
            obj1 = dh.j(((com.google.android.gms.internal.d.a) (obj)));
        } else
        {
            obj1 = "=";
        }
        obj = a.Yq;
        map = (com.google.android.gms.internal.d.a)map.get(Yo);
        String s1;
        String s2;
        int i;
        boolean flag;
        int j;
        if (map != null)
        {
            map = dh.j(map);
            if ("url".equals(map))
            {
                obj = a.Yr;
                map = null;
            } else
            if ("backslash".equals(map))
            {
                obj = a.Ys;
                map = new HashSet();
                a(map, s);
                a(map, ((String) (obj1)));
                map.remove(Character.valueOf('\\'));
            } else
            {
                bh.w((new StringBuilder()).append("Joiner: unsupported escape type: ").append(map).toString());
                return dh.lT();
            }
        } else
        {
            map = null;
        }
        stringbuilder = new StringBuilder();
        a1.type;
        JVM INSTR tableswitch 2 3: default 144
    //                   2 254
    //                   3 323;
           goto _L1 _L2 _L3
_L1:
        a(stringbuilder, dh.j(a1), ((a) (obj)), map);
_L5:
        return dh.r(stringbuilder.toString());
_L2:
        obj1 = a1.fO;
        j = obj1.length;
        flag = true;
        i = 0;
        while (i < j) 
        {
            a1 = obj1[i];
            if (!flag)
            {
                stringbuilder.append(s);
            }
            a(stringbuilder, dh.j(a1), ((a) (obj)), map);
            i++;
            flag = false;
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
_L3:
        i = 0;
        while (i < a1.fP.length) 
        {
            if (i > 0)
            {
                stringbuilder.append(s);
            }
            s1 = dh.j(a1.fP[i]);
            s2 = dh.j(a1.fQ[i]);
            a(stringbuilder, s1, ((a) (obj)), map);
            stringbuilder.append(((String) (obj1)));
            a(stringbuilder, s2, ((a) (obj)), map);
            i++;
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    static 
    {
        ID = com.google.android.gms.internal.a.ac.toString();
        XQ = b.bi.toString();
        Ym = b.cL.toString();
        Yn = b.cO.toString();
        Yo = b.co.toString();
    }
}
