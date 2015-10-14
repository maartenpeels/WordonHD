// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import android.os.Handler;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk.Libraries:
//            CBLogging, CBUtility, i

public class e
{
    public static class a
    {

        public static a a = new a(null);
        private static JSONObject c = null;
        private static Map d = null;
        private static JSONArray e = null;
        private static List f = null;
        private Object b;

        public static a a()
        {
            return a(new JSONObject());
        }

        public static a a(Object obj)
        {
            a a1;
            if (obj instanceof a)
            {
                a1 = (a)obj;
            } else
            {
                if (obj == null || obj == JSONObject.NULL)
                {
                    return a;
                }
                a a3 = (a)e.a().get(Integer.valueOf(obj.hashCode()));
                a1 = a3;
                if (a3 == null)
                {
                    CBUtility.e().removeCallbacks(e.b());
                    CBUtility.e().postDelayed(e.b(), 1000L);
                    a a2 = new a(obj);
                    e.a().put(Integer.valueOf(obj.hashCode()), a2);
                    return a2;
                }
            }
            return a1;
        }

        public static a j(String s)
        {
            if (s == null)
            {
                CBLogging.d("CBJSON", "null passed when creating new JSON object");
                return a;
            }
            if (s == null)
            {
                break MISSING_BLOCK_LABEL_43;
            }
            if (s.trim().startsWith("["))
            {
                return a(new JSONArray(s));
            }
            s = a(new JSONObject(s));
            return s;
            s;
            CBLogging.b("CBJSON", "error creating new json object", s);
            return a;
        }

        public double a(double d1)
        {
            if (b instanceof String)
            {
                double d2;
                try
                {
                    d2 = Double.parseDouble((String)b);
                }
                catch (NumberFormatException numberformatexception)
                {
                    return d1;
                }
                return d2;
            }
            if (b instanceof Number)
            {
                return ((Number)b).doubleValue();
            } else
            {
                return d1;
            }
        }

        public float a(float f1)
        {
            if (b instanceof String)
            {
                float f2;
                try
                {
                    f2 = Float.parseFloat((String)b);
                }
                catch (NumberFormatException numberformatexception)
                {
                    return f1;
                }
                return f2;
            }
            if (b instanceof Number)
            {
                return ((Number)b).floatValue();
            } else
            {
                return f1;
            }
        }

        public int a(int i1)
        {
            if (b instanceof String)
            {
                int j1;
                try
                {
                    j1 = Integer.parseInt((String)b);
                }
                catch (NumberFormatException numberformatexception)
                {
                    return i1;
                }
                return j1;
            }
            if (b instanceof Number)
            {
                return ((Number)b).intValue();
            } else
            {
                return i1;
            }
        }

        public a a(String s)
        {
            if (b instanceof JSONObject)
            {
                return a(((JSONObject)b).opt(s));
            }
            if (b instanceof Map)
            {
                return a(((Map)b).get(s));
            } else
            {
                return a;
            }
        }

        public void a(String s, Object obj)
        {
            c = null;
            e = null;
            d = null;
            f = null;
            if (obj instanceof a)
            {
                obj = ((a)obj).n();
            }
            if (!(b instanceof JSONObject))
            {
                break MISSING_BLOCK_LABEL_64;
            }
            ((JSONObject)b).put(s, obj);
_L1:
            return;
            s;
            CBLogging.b(this, "Error updating balances dictionary.", s);
            return;
            if (b instanceof Map)
            {
                try
                {
                    ((Map)b).put(s, obj);
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (String s)
                {
                    CBLogging.b(this, "Error updating balances dictionary.", s);
                }
                return;
            }
              goto _L1
        }

        public boolean a(boolean flag)
        {
            if (b instanceof Boolean)
            {
                return ((Boolean)b).booleanValue();
            } else
            {
                return flag;
            }
        }

        public long b(int i1)
        {
            if (b instanceof String)
            {
                long l1;
                try
                {
                    l1 = Long.parseLong((String)b);
                }
                catch (NumberFormatException numberformatexception)
                {
                    return (long)i1;
                }
                return l1;
            }
            if (b instanceof Number)
            {
                return ((Number)b).longValue();
            } else
            {
                return (long)i1;
            }
        }

        public boolean b()
        {
            return b == null || b == JSONObject.NULL;
        }

        public boolean b(String s)
        {
            return a(s).b();
        }

        public a c(int i1)
        {
            if (b instanceof JSONArray)
            {
                return a(((JSONArray)b).opt(i1));
            }
            if (b instanceof List)
            {
                a a1;
                try
                {
                    a1 = a(((List)b).get(i1));
                }
                catch (IndexOutOfBoundsException indexoutofboundsexception)
                {
                    return a;
                }
                return a1;
            }
            if (i1 == 0)
            {
                return this;
            } else
            {
                return a;
            }
        }

        public boolean c()
        {
            return !b();
        }

        public boolean c(String s)
        {
            return a(s).c();
        }

        public String d(String s)
        {
            if (b instanceof String)
            {
                return (String)b;
            } else
            {
                return s;
            }
        }

        public boolean d()
        {
            return !TextUtils.isEmpty(h());
        }

        public String e(String s)
        {
            return a(s).h();
        }

        public JSONObject e()
        {
            if (b instanceof JSONObject)
            {
                return (JSONObject)b;
            }
            if (b instanceof Map)
            {
                if (c == null)
                {
                    c = e.a((Map)b);
                }
                return c;
            } else
            {
                return null;
            }
        }

        public boolean equals(Object obj)
        {
            obj = a(obj);
            if (b())
            {
                return ((a) (obj)).b();
            }
            if (e() != null && ((a) (obj)).e() != null)
            {
                return com.chartboost.sdk.Libraries.i.a(e(), ((a) (obj)).e());
            }
            if (g() != null && ((a) (obj)).g() != null)
            {
                return com.chartboost.sdk.Libraries.i.a(g(), ((a) (obj)).g());
            }
            if (b instanceof String)
            {
                return b.equals(((a) (obj)).h());
            }
            if (((a) (obj)).b instanceof String)
            {
                return ((a) (obj)).b.equals(h());
            } else
            {
                return n().equals(((a) (obj)).n());
            }
        }

        public int f(String s)
        {
            return a(s).k();
        }

        public Map f()
        {
            if (b instanceof JSONObject)
            {
                if (d == null)
                {
                    d = e.a((JSONObject)b);
                }
                return d;
            }
            if (b instanceof Map)
            {
                return (Map)b;
            } else
            {
                return null;
            }
        }

        public double g(String s)
        {
            return a(s).i();
        }

        public JSONArray g()
        {
            if (b instanceof JSONArray)
            {
                return (JSONArray)b;
            }
            if (b instanceof List)
            {
                if (e == null)
                {
                    e = e.a((List)b);
                }
                return e;
            } else
            {
                return null;
            }
        }

        public long h(String s)
        {
            return a(s).l();
        }

        public String h()
        {
            if (b())
            {
                return null;
            }
            if (b instanceof String)
            {
                return (String)b;
            } else
            {
                return b.toString();
            }
        }

        public double i()
        {
            return a(0.0D);
        }

        public boolean i(String s)
        {
            return a(s).m();
        }

        public float j()
        {
            return a(0.0F);
        }

        public int k()
        {
            return a(0);
        }

        public long l()
        {
            return b(0);
        }

        public boolean m()
        {
            return a(false);
        }

        public Object n()
        {
            return b;
        }

        public int o()
        {
            if (b instanceof JSONArray)
            {
                return ((JSONArray)b).length();
            }
            if (b instanceof List)
            {
                return ((List)b).size();
            } else
            {
                return 1;
            }
        }

        public String toString()
        {
            if (e() != null)
            {
                return e().toString();
            }
            if (g() != null)
            {
                return g().toString();
            }
            if (b != null)
            {
                return b.toString();
            } else
            {
                return "null";
            }
        }


        private a(Object obj)
        {
            b = obj;
        }
    }

    public static class b
    {

        private String a;
        private Object b;

        static String a(b b1)
        {
            return b1.a;
        }

        static Object b(b b1)
        {
            return b1.b;
        }

        public b(String s, Object obj)
        {
            a = s;
            if (obj instanceof a)
            {
                b = ((a)obj).n();
                return;
            } else
            {
                b = obj;
                return;
            }
        }
    }


    private static Map a = Collections.synchronizedMap(new HashMap());
    private static Runnable b = new Runnable() {

        public void run()
        {
            e.a().clear();
        }

    };

    public static transient a a(b ab[])
    {
        a a1 = a.a();
        for (int i = 0; i < ab.length; i++)
        {
            a1.a(b.a(ab[i]), b.b(ab[i]));
        }

        return a1;
    }

    public static b a(String s, Object obj)
    {
        return new b(s, obj);
    }

    public static List a(JSONArray jsonarray)
    {
        ArrayList arraylist;
        int i;
        if (jsonarray == null)
        {
            return null;
        }
        arraylist = new ArrayList();
        i = 0;
_L7:
        if (i >= jsonarray.length()) goto _L2; else goto _L1
_L1:
        Object obj = jsonarray.get(i);
        if (!(obj instanceof JSONObject)) goto _L4; else goto _L3
_L3:
        obj = a((JSONObject)obj);
_L5:
        arraylist.add(obj);
        break MISSING_BLOCK_LABEL_107;
_L4:
        if (obj instanceof JSONArray)
        {
            obj = a((JSONArray)obj);
            continue; /* Loop/switch isn't completed */
        }
        boolean flag;
        try
        {
            flag = obj.equals(JSONObject.NULL);
        }
        catch (Exception exception)
        {
            CBLogging.b("CBJSON", "error converting json", exception);
            break MISSING_BLOCK_LABEL_107;
        }
        if (flag)
        {
            obj = null;
        }
        if (true) goto _L5; else goto _L2
_L2:
        return arraylist;
        i++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    static Map a()
    {
        return a;
    }

    public static Map a(JSONObject jsonobject)
    {
        HashMap hashmap;
        Iterator iterator;
        if (jsonobject == null)
        {
            return null;
        }
        hashmap = new HashMap();
        iterator = jsonobject.keys();
_L7:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Object obj;
        String s;
        s = (String)iterator.next();
        obj = jsonobject.get(s);
        if (!(obj instanceof JSONObject)) goto _L4; else goto _L3
_L3:
        obj = a((JSONObject)obj);
_L5:
        hashmap.put(s, obj);
        continue; /* Loop/switch isn't completed */
_L4:
        if (obj instanceof JSONArray)
        {
            obj = a((JSONArray)obj);
            continue; /* Loop/switch isn't completed */
        }
        boolean flag;
        try
        {
            flag = obj.equals(JSONObject.NULL);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            CBLogging.b("CBJSON", "error converting json", ((Throwable) (obj)));
            continue; /* Loop/switch isn't completed */
        }
        if (flag)
        {
            obj = null;
        }
        if (true) goto _L5; else goto _L2
_L2:
        return hashmap;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static JSONArray a(List list)
    {
        JSONArray jsonarray;
        int i;
        if (list == null)
        {
            return null;
        }
        jsonarray = new JSONArray();
        i = 0;
_L7:
        if (i >= list.size()) goto _L2; else goto _L1
_L1:
        Object obj1 = list.get(i);
        if (!(obj1 instanceof Map)) goto _L4; else goto _L3
_L3:
        Object obj = a((Map)obj1);
_L5:
        jsonarray.put(obj);
        break MISSING_BLOCK_LABEL_106;
_L4:
        if (obj1 instanceof List)
        {
            obj = a((List)obj1);
            continue; /* Loop/switch isn't completed */
        }
        obj = obj1;
        if (obj1 == null)
        {
            try
            {
                obj = JSONObject.NULL;
            }
            catch (Exception exception)
            {
                CBLogging.b("CBJSON", "error converting json", exception);
                break MISSING_BLOCK_LABEL_106;
            }
        }
        if (true) goto _L5; else goto _L2
_L2:
        return jsonarray;
        i++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static JSONObject a(Map map)
    {
        if (map != null) goto _L2; else goto _L1
_L1:
        map = null;
_L4:
        return map;
_L2:
        JSONObject jsonobject;
        Iterator iterator;
        jsonobject = new JSONObject();
        iterator = map.entrySet().iterator();
_L7:
        map = jsonobject;
        if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
        String s;
        map = (java.util.Map.Entry)iterator.next();
        s = map.getKey().toString();
        map = ((Map) (map.getValue()));
        if (!(map instanceof Map)) goto _L6; else goto _L5
_L5:
        map = a((Map)map);
_L10:
        jsonobject.put(s, map);
          goto _L7
        map;
        CBLogging.b("CBJSON", "error converting json", map);
          goto _L7
_L6:
        if (!(map instanceof List)) goto _L9; else goto _L8
_L8:
        map = a((List)map);
          goto _L10
_L9:
        if (map != null) goto _L10; else goto _L11
_L11:
        map = ((Map) (JSONObject.NULL));
          goto _L10
    }

    static Runnable b()
    {
        return b;
    }

}
