// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import java.math.BigInteger;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class com.chartboost.sdk.Libraries.g
{
    public static abstract class a
    {

        private String a;

        public abstract String a();

        public abstract boolean a(Object obj);

        public boolean a(Object obj, StringBuilder stringbuilder)
        {
            if (obj instanceof e.a)
            {
                obj = ((e.a)obj).n();
            }
            boolean flag = a(obj);
            if (!flag)
            {
                if (a != null)
                {
                    obj = a;
                } else
                {
                    obj = a();
                }
                stringbuilder.append(((String) (obj)));
            }
            return flag;
        }

        public a()
        {
            a = null;
        }
    }

    private static class b extends a
    {

        public String a()
        {
            return "object must be an array.";
        }

        public boolean a(Object obj)
        {
            return (obj instanceof List) || (obj instanceof JSONArray);
        }

        private b()
        {
        }

    }

    private static class c extends b
    {

        private a a;

        public String a()
        {
            return (new StringBuilder()).append("object must be an array of objects matching: <").append(a.a()).append(">").toString();
        }

        public boolean a(Object obj)
        {
            if (obj instanceof List)
            {
                obj = (List)obj;
                for (int i1 = 0; i1 < ((List) (obj)).size(); i1++)
                {
                    if (!a.a(((List) (obj)).get(i1)))
                    {
                        return false;
                    }
                }

                return true;
            }
            if (obj instanceof JSONArray)
            {
                obj = (JSONArray)obj;
                for (int j1 = 0; j1 < ((JSONArray) (obj)).length(); j1++)
                {
                    if (!a.a(((JSONArray) (obj)).opt(j1)))
                    {
                        return false;
                    }
                }

                return true;
            } else
            {
                return false;
            }
        }

        public c(a a1)
        {
            a = a1;
        }
    }

    private static class d extends a
    {

        public String a()
        {
            return "object must be a boolean.";
        }

        public boolean a(Object obj)
        {
            return java/lang/Boolean.isInstance(obj) || Boolean.TYPE.isInstance(obj);
        }

        private d()
        {
        }

    }

    public static abstract class e extends a
    {

        public e()
        {
        }
    }

    private static class f extends a
    {

        protected k a[];
        protected String b;

        public String a()
        {
            if (b != null)
            {
                return b;
            }
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("object must contain the following key-value schema: {\n");
            for (int i1 = 0; i1 < a.length; i1++)
            {
                stringbuilder.append("<");
                stringbuilder.append(k.a(a[i1]));
                stringbuilder.append(": [");
                stringbuilder.append(k.b(a[i1]).a());
                stringbuilder.append("]>");
                if (i1 < a.length - 1)
                {
                    stringbuilder.append(",\n");
                }
            }

            stringbuilder.append("}");
            return stringbuilder.toString();
        }

        public boolean a(Object obj)
        {
            int j1;
            if (obj instanceof Map)
            {
                obj = (Map)obj;
                for (Iterator iterator = ((Map) (obj)).entrySet().iterator(); iterator.hasNext();)
                {
                    java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                    if (!(entry.getKey() instanceof String))
                    {
                        b = (new StringBuilder()).append("key '").append(entry.getKey().toString()).append("' is not a string").toString();
                        return false;
                    }
                }

                if (a != null && a.length >= 1)
                {
                    for (int i1 = 0; i1 < a.length; i1++)
                    {
                        String s = k.a(a[i1]);
                        a a1 = k.b(a[i1]);
                        if (!((Map) (obj)).containsKey(s))
                        {
                            if (!a1.a(null))
                            {
                                b = (new StringBuilder()).append("no key for required mapping '").append(s).append("' : <").append(a1.a()).append(">").toString();
                                return false;
                            }
                            continue;
                        }
                        if (!a1.a(((Map) (obj)).get(s)))
                        {
                            b = (new StringBuilder()).append("key '").append(s).append("' fails to match: <").append(a1.a()).append(">").toString();
                            return false;
                        }
                    }

                }
                return true;
            }
            if (!(obj instanceof JSONObject))
            {
                break MISSING_BLOCK_LABEL_451;
            }
            obj = (JSONObject)obj;
            if (a == null || a.length < 1)
            {
                break MISSING_BLOCK_LABEL_449;
            }
            j1 = 0;
_L3:
            if (j1 >= a.length) goto _L2; else goto _L1
_L1:
            String s1;
            a a2;
            s1 = k.a(a[j1]);
            a2 = k.b(a[j1]);
            if (a2.a(((JSONObject) (obj)).get(s1)))
            {
                continue; /* Loop/switch isn't completed */
            }
            b = (new StringBuilder()).append("key '").append(s1).append("' fails to match: <").append(a2.a()).append(">").toString();
            return false;
            JSONException jsonexception;
            jsonexception;
            if (!a2.a(null))
            {
                b = (new StringBuilder()).append("no key for required mapping '").append(s1).append("' : <").append(a2.a()).append(">").toString();
                return false;
            }
            j1++;
              goto _L3
_L2:
            return true;
            return false;
        }

        public f(k ak[])
        {
            b = null;
            a = ak;
        }
    }

    private static class g extends a
    {

        private Set a;
        private f b;
        private String c;

        public String a()
        {
            if (c != null)
            {
                return c;
            }
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("object must EXACTLY MATCH the following key-value schema: {\n");
            for (int i1 = 0; i1 < b.a.length; i1++)
            {
                stringbuilder.append("<");
                stringbuilder.append(k.a(b.a[i1]));
                stringbuilder.append(": [");
                stringbuilder.append(k.b(b.a[i1]).a());
                stringbuilder.append("]>");
                if (i1 < b.a.length - 1)
                {
                    stringbuilder.append(",\n");
                }
            }

            stringbuilder.append("}");
            return stringbuilder.toString();
        }

        public boolean a(Object obj)
        {
            if (!b.a(obj))
            {
                c = b.b;
                return false;
            }
            if (obj instanceof Map)
            {
                for (obj = ((Map)obj).keySet().iterator(); ((Iterator) (obj)).hasNext();)
                {
                    Object obj1 = ((Iterator) (obj)).next();
                    if (!a.contains(obj1))
                    {
                        c = (new StringBuilder()).append("key '").append(obj1).append("' is not allowed in this dictionary").toString();
                        return false;
                    }
                }

                return true;
            }
            if (obj instanceof JSONObject)
            {
                for (obj = ((JSONObject)obj).keys(); ((Iterator) (obj)).hasNext();)
                {
                    String s = (String)((Iterator) (obj)).next();
                    if (!a.contains(s))
                    {
                        c = (new StringBuilder()).append("key '").append(s).append("' is not allowed in this dictionary").toString();
                        return false;
                    }
                }

                return true;
            } else
            {
                c = "object must be a dictionary";
                return false;
            }
        }

        public g(f f1)
        {
            c = null;
            b = f1;
            a = new HashSet();
            for (int i1 = 0; i1 < b.a.length; i1++)
            {
                f1 = k.a(b.a[i1]);
                a.add(f1);
            }

        }
    }

    private static class h extends a
    {

        private Object a[];

        public String a()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("object must equal one of the following: ");
            for (int i1 = 0; i1 < a.length; i1++)
            {
                stringbuilder.append("<");
                stringbuilder.append(a[i1].toString());
                stringbuilder.append(">");
                if (i1 < a.length - 1)
                {
                    stringbuilder.append(", ");
                }
            }

            return stringbuilder.toString();
        }

        public boolean a(Object obj)
        {
            for (int i1 = 0; i1 < a.length; i1++)
            {
                Object obj1 = a[i1];
                if (obj == null)
                {
                    if (obj1 == null)
                    {
                        return true;
                    }
                    continue;
                }
                if (obj.equals(obj1))
                {
                    return true;
                }
            }

            return false;
        }

        public h(Object aobj[])
        {
            a = aobj;
        }
    }

    private static class i extends a
    {

        private Class a;

        public String a()
        {
            return (new StringBuilder()).append("object must be an instance of ").append(a.getName()).append(".").toString();
        }

        public boolean a(Object obj)
        {
            return a.isInstance(obj);
        }

        public i(Class class1)
        {
            a = class1;
        }
    }

    private static class j extends a
    {

        public String a()
        {
            return "object must be a number w/o decimals (int, long, short, or byte).";
        }

        public boolean a(Object obj)
        {
            return java/lang/Integer.isInstance(obj) || java/lang/Long.isInstance(obj) || java/lang/Short.isInstance(obj) || java/lang/Byte.isInstance(obj) || java/math/BigInteger.isInstance(obj) || Integer.TYPE.isInstance(obj) || Long.TYPE.isInstance(obj) || Short.TYPE.isInstance(obj) || Byte.TYPE.isInstance(obj);
        }

        private j()
        {
        }

    }

    public static class k
    {

        private String a;
        private a b;

        static String a(k k1)
        {
            return k1.a;
        }

        static a b(k k1)
        {
            return k1.b;
        }

        public k(String s, a a1)
        {
            a = s;
            b = a1;
        }
    }

    private static class l extends a
    {

        public String a()
        {
            return "object must be null.";
        }

        public boolean a(Object obj)
        {
            return obj == null || obj == JSONObject.NULL;
        }

        private l()
        {
        }

    }

    private static class m extends l
    {

        private a a;

        public String a()
        {
            return (new StringBuilder()).append("object must be either null or ").append(a.a()).toString();
        }

        public boolean a(Object obj)
        {
            if (super.a(obj))
            {
                return true;
            } else
            {
                return a.a(obj);
            }
        }

        public m(a a1)
        {
            a = a1;
        }
    }

    private static class n extends a
    {

        public String a()
        {
            return "object must be a number (primitive type or derived from Number).";
        }

        public boolean a(Object obj)
        {
            return (obj instanceof Number) || Integer.TYPE.isInstance(obj) || Long.TYPE.isInstance(obj) || Short.TYPE.isInstance(obj) || Float.TYPE.isInstance(obj) || Double.TYPE.isInstance(obj) || Byte.TYPE.isInstance(obj);
        }

        private n()
        {
        }

    }

    private static class o extends i
    {

        public o()
        {
            super(java/lang/String);
        }
    }

    private static class p extends a
    {

        protected String a;
        private a b[];

        public String a()
        {
            if (a != null)
            {
                return a;
            }
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("object must match ALL of the following: ");
            for (int i1 = 0; i1 < b.length; i1++)
            {
                stringbuilder.append("<");
                stringbuilder.append(b[i1].a());
                stringbuilder.append(">");
                if (i1 < b.length - 1)
                {
                    stringbuilder.append(", ");
                }
            }

            return stringbuilder.toString();
        }

        public boolean a(Object obj)
        {
            for (int i1 = 0; i1 < b.length; i1++)
            {
                if (!b[i1].a(obj))
                {
                    a = (new StringBuilder()).append("object failed to match: <").append(b[i1].a()).append(">").toString();
                    return false;
                }
            }

            return true;
        }

        public p(a aa[])
        {
            a = null;
            b = aa;
        }
    }


    private static o a = new o();
    private static n b = new n();
    private static j c = new j();
    private static d d = new d();
    private static l e = new l();

    public static a a()
    {
        return a;
    }

    public static a a(a a1)
    {
        return new m(a1);
    }

    public static a a(Class class1)
    {
        return new i(class1);
    }

    public static transient a a(a aa[])
    {
        return new p(aa);
    }

    public static transient a a(k ak[])
    {
        return new f(ak);
    }

    public static transient a a(Object aobj[])
    {
        return new h(aobj);
    }

    public static k a(String s, a a1)
    {
        return new k(s, a1);
    }

    public static a b()
    {
        return b;
    }

    public static a b(a a1)
    {
        return new c(a1);
    }

    public static transient a b(k ak[])
    {
        return new g(new f(ak));
    }

    public static a c()
    {
        return d;
    }

    public static boolean c(a a1)
    {
        return (a1 instanceof f) || (a1 instanceof g);
    }

}
