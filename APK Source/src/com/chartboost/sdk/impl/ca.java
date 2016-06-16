// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.lang.reflect.Array;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SimpleTimeZone;
import java.util.UUID;
import java.util.regex.Pattern;

// Referenced classes of package com.chartboost.sdk.impl:
//            by, ct, cu, cv, 
//            cw, bv, bw, cx, 
//            cy, cz, cc, bt, 
//            bx, bz, bu

public class ca
{
    private static class a extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            obj = (cv)obj;
            bt bt1 = new bt();
            bt1.a("$code", ((cv) (obj)).a());
            a.a(bt1, stringbuilder);
        }

        a(cc cc1)
        {
            super(cc1);
        }
    }

    private static class b extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            obj = (cw)obj;
            bt bt1 = new bt();
            bt1.a("$code", ((cw) (obj)).a());
            bt1.a("$scope", ((cw) (obj)).b());
            a.a(bt1, stringbuilder);
        }

        b(cc cc1)
        {
            super(cc1);
        }
    }

    private static abstract class c extends bx
    {

        protected final cc a;

        c(cc cc)
        {
            a = cc;
        }
    }

    private static class d extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            stringbuilder.append("{ ");
            obj = (bv)obj;
            Iterator iterator = ((bv) (obj)).keySet().iterator();
            boolean flag = true;
            while (iterator.hasNext()) 
            {
                String s = (String)iterator.next();
                if (flag)
                {
                    flag = false;
                } else
                {
                    stringbuilder.append(" , ");
                }
                bz.a(stringbuilder, s);
                stringbuilder.append(" : ");
                a.a(((bv) (obj)).a(s), stringbuilder);
            }
            stringbuilder.append("}");
        }

        d(cc cc1)
        {
            super(cc1);
        }
    }

    private static class e extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            obj = (bw)obj;
            bt bt1 = new bt();
            bt1.a("$ref", ((bw) (obj)).b());
            bt1.a("$id", ((bw) (obj)).a());
            a.a(bt1, stringbuilder);
        }

        e(cc cc1)
        {
            super(cc1);
        }
    }

    private static class f extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            boolean flag = true;
            stringbuilder.append("[ ");
            obj = ((Iterable)obj).iterator();
            while (((Iterator) (obj)).hasNext()) 
            {
                Object obj1 = ((Iterator) (obj)).next();
                if (flag)
                {
                    flag = false;
                } else
                {
                    stringbuilder.append(" , ");
                }
                a.a(obj1, stringbuilder);
            }
            stringbuilder.append("]");
        }

        f(cc cc1)
        {
            super(cc1);
        }
    }

    private static class g extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            obj = (ct)obj;
            bt bt1 = new bt();
            bt1.a("$ts", Integer.valueOf(((ct) (obj)).a()));
            bt1.a("$inc", Integer.valueOf(((ct) (obj)).b()));
            a.a(bt1, stringbuilder);
        }

        g(cc cc1)
        {
            super(cc1);
        }
    }

    private static class h extends bx
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            stringbuilder.append("<Binary Data>");
        }

        private h()
        {
        }

    }

    private static class i extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            obj = (Date)obj;
            SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
            simpledateformat.setCalendar(new GregorianCalendar(new SimpleTimeZone(0, "GMT")));
            a.a(new bt("$date", simpledateformat.format(((Date) (obj)))), stringbuilder);
        }

        i(cc cc1)
        {
            super(cc1);
        }
    }

    private static class j extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            stringbuilder.append("{ ");
            obj = ((Map)obj).entrySet().iterator();
            boolean flag = true;
            while (((Iterator) (obj)).hasNext()) 
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)((Iterator) (obj)).next();
                if (flag)
                {
                    flag = false;
                } else
                {
                    stringbuilder.append(" , ");
                }
                bz.a(stringbuilder, entry.getKey().toString());
                stringbuilder.append(" : ");
                a.a(entry.getValue(), stringbuilder);
            }
            stringbuilder.append("}");
        }

        j(cc cc1)
        {
            super(cc1);
        }
    }

    private static class k extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            a.a(new bt("$maxKey", Integer.valueOf(1)), stringbuilder);
        }

        k(cc cc1)
        {
            super(cc1);
        }
    }

    private static class l extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            a.a(new bt("$minKey", Integer.valueOf(1)), stringbuilder);
        }

        l(cc cc1)
        {
            super(cc1);
        }
    }

    private static class m extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            stringbuilder.append("[ ");
            for (int i1 = 0; i1 < Array.getLength(obj); i1++)
            {
                if (i1 > 0)
                {
                    stringbuilder.append(" , ");
                }
                a.a(Array.get(obj, i1), stringbuilder);
            }

            stringbuilder.append("]");
        }

        m(cc cc1)
        {
            super(cc1);
        }
    }

    private static class n extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            a.a(new bt("$oid", obj.toString()), stringbuilder);
        }

        n(cc cc1)
        {
            super(cc1);
        }
    }

    private static class o extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            bt bt1 = new bt();
            bt1.a("$regex", obj.toString());
            if (((Pattern)obj).flags() != 0)
            {
                bt1.a("$options", bu.a(((Pattern)obj).flags()));
            }
            a.a(bt1, stringbuilder);
        }

        o(cc cc1)
        {
            super(cc1);
        }
    }

    private static class p extends bx
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            bz.a(stringbuilder, (String)obj);
        }

        private p()
        {
        }

    }

    private static class q extends bx
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            stringbuilder.append(obj.toString());
        }

        private q()
        {
        }

    }

    private static class r extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            obj = (UUID)obj;
            bt bt1 = new bt();
            bt1.a("$uuid", ((UUID) (obj)).toString());
            a.a(bt1, stringbuilder);
        }

        r(cc cc1)
        {
            super(cc1);
        }
    }


    public static cc a()
    {
        by by1 = b();
        by1.a(java/util/Date, new i(by1));
        by1.a(com/chartboost/sdk/impl/ct, new g(by1));
        by1.a(com/chartboost/sdk/impl/cu, new h());
        by1.a([B, new h());
        return by1;
    }

    static by b()
    {
        by by1 = new by();
        by1.a([Ljava/lang/Object;, new m(by1));
        by1.a(java/lang/Boolean, new q());
        by1.a(com/chartboost/sdk/impl/cv, new a(by1));
        by1.a(com/chartboost/sdk/impl/cw, new b(by1));
        by1.a(com/chartboost/sdk/impl/bv, new d(by1));
        by1.a(com/chartboost/sdk/impl/bw, new e(by1));
        by1.a(java/lang/Iterable, new f(by1));
        by1.a(java/util/Map, new j(by1));
        by1.a(com/chartboost/sdk/impl/cx, new k(by1));
        by1.a(com/chartboost/sdk/impl/cy, new l(by1));
        by1.a(java/lang/Number, new q());
        by1.a(com/chartboost/sdk/impl/cz, new n(by1));
        by1.a(java/util/regex/Pattern, new o(by1));
        by1.a(java/lang/String, new p());
        by1.a(java/util/UUID, new r(by1));
        return by1;
    }
}
