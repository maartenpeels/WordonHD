// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

// Referenced classes of package com.chartboost.sdk.impl:
//            de, co, cm, cj, 
//            cl, ci

public class ch
{
    private static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;
        public static final a e;
        public static final a f;
        public static final a g;
        public static final a h;
        public static final a i;
        private static final Map m;
        private static final a n[];
        public final int j;
        public final char k;
        public final String l;

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(com/chartboost/sdk/impl/ch$a, s);
        }

        public static a[] values()
        {
            return (a[])n.clone();
        }

        static 
        {
            int i1 = 0;
            a = new a("CANON_EQ", 0, 128, 'c', "Pattern.CANON_EQ");
            b = new a("UNIX_LINES", 1, 1, 'd', "Pattern.UNIX_LINES");
            c = new a("GLOBAL", 2, 256, 'g', null);
            d = new a("CASE_INSENSITIVE", 3, 2, 'i', null);
            e = new a("MULTILINE", 4, 8, 'm', null);
            f = new a("DOTALL", 5, 32, 's', "Pattern.DOTALL");
            g = new a("LITERAL", 6, 16, 't', "Pattern.LITERAL");
            h = new a("UNICODE_CASE", 7, 64, 'u', "Pattern.UNICODE_CASE");
            i = new a("COMMENTS", 8, 4, 'x', null);
            n = (new a[] {
                a, b, c, d, e, f, g, h, i
            });
            m = new HashMap();
            a aa[] = values();
            for (int j1 = aa.length; i1 < j1; i1++)
            {
                a a1 = aa[i1];
                m.put(Character.valueOf(a1.k), a1);
            }

        }

        private a(String s, int i1, int j1, char c1, String s1)
        {
            super(s, i1);
            j = j1;
            k = c1;
            l = s1;
        }
    }


    private static boolean a = false;
    private static boolean b = false;
    static final Logger f = Logger.getLogger("org.bson.BSON");
    static de g = new de();
    static de h = new de();
    protected static Charset i = Charset.forName("UTF-8");
    static ThreadLocal j = new ThreadLocal() {

        protected cj a()
        {
            return new cm();
        }

        protected Object initialValue()
        {
            return a();
        }

    };
    static ThreadLocal k = new ThreadLocal() {

        protected ci a()
        {
            return new cl();
        }

        protected Object initialValue()
        {
            return a();
        }

    };

    public static Object a(Object obj)
    {
        if (!a())
        {
            return obj;
        }
        if (g.a() == 0 || obj == null)
        {
            return obj;
        }
        Object obj1 = (List)g.a(obj.getClass());
        if (obj1 != null)
        {
            for (obj1 = ((List) (obj1)).iterator(); ((Iterator) (obj1)).hasNext();)
            {
                obj = ((co)((Iterator) (obj1)).next()).a(obj);
            }

            return obj;
        } else
        {
            return obj;
        }
    }

    public static String a(int l)
    {
        StringBuilder stringbuilder = new StringBuilder();
        a aa[] = a.values();
        int k1 = aa.length;
        boolean flag = false;
        int i1 = l;
        for (l = ((flag) ? 1 : 0); l < k1;)
        {
            a a1 = aa[l];
            int j1 = i1;
            if ((a1.j & i1) > 0)
            {
                stringbuilder.append(a1.k);
                j1 = i1 - a1.j;
            }
            l++;
            i1 = j1;
        }

        if (i1 > 0)
        {
            throw new IllegalArgumentException("some flags could not be recognized.");
        } else
        {
            return stringbuilder.toString();
        }
    }

    private static boolean a()
    {
        return a || b;
    }

}
