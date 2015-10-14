// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import android.os.Handler;
import android.text.TextUtils;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk.Libraries:
//            e, CBUtility, CBLogging, i

public static class b
{

    public static b a = new <init>(null);
    private static JSONObject c = null;
    private static Map d = null;
    private static JSONArray e = null;
    private static List f = null;
    private Object b;

    public static b a()
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
            a a3 = (a)com.chartboost.sdk.Libraries.e.a().get(Integer.valueOf(obj.hashCode()));
            a1 = a3;
            if (a3 == null)
            {
                CBUtility.e().removeCallbacks(com.chartboost.sdk.Libraries.e.b());
                CBUtility.e().postDelayed(com.chartboost.sdk.Libraries.e.b(), 1000L);
                a a2 = new <init>(obj);
                com.chartboost.sdk.Libraries.e.a().put(Integer.valueOf(obj.hashCode()), a2);
                return a2;
            }
        }
        return a1;
    }

    public static <init> j(String s)
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

    public b a(String s)
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
        if (obj instanceof f)
        {
            obj = ((f)obj).n();
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

    public b c(int i1)
    {
        if (b instanceof JSONArray)
        {
            return a(((JSONArray)b).opt(i1));
        }
        if (b instanceof List)
        {
            b b1;
            try
            {
                b1 = a(((List)b).get(i1));
            }
            catch (IndexOutOfBoundsException indexoutofboundsexception)
            {
                return a;
            }
            return b1;
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
                c = com.chartboost.sdk.Libraries.e.a((Map)b);
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
            return ((b) (obj)).b();
        }
        if (e() != null && ((e) (obj)).e() != null)
        {
            return com.chartboost.sdk.Libraries.i.a(e(), ((e) (obj)).e());
        }
        if (g() != null && ((g) (obj)).g() != null)
        {
            return com.chartboost.sdk.Libraries.i.a(g(), ((g) (obj)).g());
        }
        if (b instanceof String)
        {
            return b.equals(((b) (obj)).h());
        }
        if (((h) (obj)).b instanceof String)
        {
            return ((b) (obj)).b.equals(h());
        } else
        {
            return n().equals(((n) (obj)).n());
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
                d = com.chartboost.sdk.Libraries.e.a((JSONObject)b);
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
                e = com.chartboost.sdk.Libraries.e.a((List)b);
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


    private on(Object obj)
    {
        b = obj;
    }
}
