// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;

import java.util.Map;

// Referenced classes of package c.m.x.a.gv:
//            aa, y

public class ae
{

    static Object b[];
    static int c;
    static Object d[];
    static int e;
    int f[];
    Object g[];
    int h;

    public ae()
    {
        f = aa.a;
        g = aa.c;
        h = 0;
    }

    private static void a(int ai[], Object aobj[], int i)
    {
        if (ai.length != 8) goto _L2; else goto _L1
_L1:
        c/m/x/a/gv/y;
        JVM INSTR monitorenter ;
        if (e < 10)
        {
            aobj[0] = ((Object) (d));
            break MISSING_BLOCK_LABEL_24;
        }
          goto _L3
_L8:
        d = aobj;
        e++;
_L3:
        c/m/x/a/gv/y;
        JVM INSTR monitorexit ;
_L5:
        return;
        ai;
        c/m/x/a/gv/y;
        JVM INSTR monitorexit ;
        throw ai;
_L2:
        if (ai.length != 4) goto _L5; else goto _L4
_L4:
        c/m/x/a/gv/y;
        JVM INSTR monitorenter ;
        if (c >= 10) goto _L7; else goto _L6
_L6:
        aobj[0] = ((Object) (b));
        aobj[1] = ai;
        i = (i << 1) - 1;
        break MISSING_BLOCK_LABEL_133;
_L9:
        b = aobj;
        c++;
_L7:
        c/m/x/a/gv/y;
        JVM INSTR monitorexit ;
        return;
        ai;
        c/m/x/a/gv/y;
        JVM INSTR monitorexit ;
        throw ai;
        aobj[1] = ai;
        i = (i << 1) - 1;
        while (i >= 2) 
        {
            aobj[i] = null;
            i--;
        }
          goto _L8
        while (i >= 2) 
        {
            aobj[i] = null;
            i--;
        }
          goto _L9
    }

    private void d(int i)
    {
        if (i != 8) goto _L2; else goto _L1
_L1:
        c/m/x/a/gv/y;
        JVM INSTR monitorenter ;
        Object aobj[];
        if (d == null)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        aobj = d;
        g = aobj;
        d = (Object[])aobj[0];
        f = (int[])aobj[1];
        aobj[1] = null;
        aobj[0] = null;
        e--;
        c/m/x/a/gv/y;
        JVM INSTR monitorexit ;
        return;
        c/m/x/a/gv/y;
        JVM INSTR monitorexit ;
_L4:
        f = new int[i];
        g = new Object[i << 1];
        return;
        Exception exception;
        exception;
        throw exception;
_L2:
        if (i != 4)
        {
            continue; /* Loop/switch isn't completed */
        }
        c/m/x/a/gv/y;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_158;
        }
        exception = ((Exception) (b));
        g = exception;
        b = (Object[])exception[0];
        f = (int[])exception[1];
        exception[1] = null;
        exception[0] = null;
        c--;
        c/m/x/a/gv/y;
        JVM INSTR monitorexit ;
        return;
        exception;
        c/m/x/a/gv/y;
        JVM INSTR monitorexit ;
        throw exception;
        c/m/x/a/gv/y;
        JVM INSTR monitorexit ;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private Object e(int i)
    {
        return g[i << 1];
    }

    final int a()
    {
        int i = h;
        if (i != 0) goto _L2; else goto _L1
_L1:
        int k = -1;
_L4:
        return k;
_L2:
        int j;
        k = aa.a(f, i, 0);
        if (k < 0)
        {
            return k;
        }
        if (g[k << 1] == null)
        {
            return k;
        }
        for (j = k + 1; j < i && f[j] == 0; j++)
        {
            if (g[j << 1] == null)
            {
                return j;
            }
        }

        i = k - 1;
label0:
        do
        {
label1:
            {
                if (i < 0 || f[i] != 0)
                {
                    break label1;
                }
                k = i;
                if (g[i << 1] == null)
                {
                    break label0;
                }
                i--;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
        return ~j;
    }

    final int a(Object obj)
    {
        Object aobj[];
        int i;
        boolean flag;
        int j;
        i = 1;
        flag = true;
        j = h * 2;
        aobj = g;
        if (obj != null) goto _L2; else goto _L1
_L1:
        for (i = ((flag) ? 1 : 0); i < j; i += 2)
        {
            if (aobj[i] == null)
            {
                return i >> 1;
            }
        }

          goto _L3
_L4:
        i += 2;
_L2:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        if (obj.equals(aobj[i]))
        {
            return i >> 1;
        }
        if (true) goto _L4; else goto _L3
_L3:
        return -1;
    }

    final int a(Object obj, int i)
    {
        int j = h;
        if (j != 0) goto _L2; else goto _L1
_L1:
        int l = -1;
_L4:
        return l;
_L2:
        int k;
        l = aa.a(f, j, i);
        if (l < 0)
        {
            return l;
        }
        if (obj.equals(g[l << 1]))
        {
            return l;
        }
        for (k = l + 1; k < j && f[k] == i; k++)
        {
            if (obj.equals(g[k << 1]))
            {
                return k;
            }
        }

        j = l - 1;
label0:
        do
        {
label1:
            {
                if (j < 0 || f[j] != i)
                {
                    break label1;
                }
                l = j;
                if (obj.equals(g[j << 1]))
                {
                    break label0;
                }
                j--;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
        return ~k;
    }

    public final void a(int i)
    {
        if (f.length < i)
        {
            int ai[] = f;
            Object aobj[] = g;
            d(i);
            if (h > 0)
            {
                System.arraycopy(ai, 0, f, 0, h);
                System.arraycopy(((Object) (aobj)), 0, ((Object) (g)), 0, h << 1);
            }
            a(ai, aobj, h);
        }
    }

    public final Object b(int i)
    {
        return g[(i << 1) + 1];
    }

    public final Object c(int i)
    {
        Object obj = g[(i << 1) + 1];
        if (h <= 1)
        {
            a(f, g, h);
            f = aa.a;
            g = aa.c;
            h = 0;
        } else
        if (f.length > 8 && h < f.length / 3)
        {
            int ai[];
            Object aobj[];
            int j;
            if (h > 8)
            {
                j = h + (h >> 1);
            } else
            {
                j = 8;
            }
            ai = f;
            aobj = g;
            d(j);
            h = h - 1;
            if (i > 0)
            {
                System.arraycopy(ai, 0, f, 0, i);
                System.arraycopy(((Object) (aobj)), 0, ((Object) (g)), 0, i << 1);
            }
            if (i < h)
            {
                System.arraycopy(ai, i + 1, f, i, h - i);
                System.arraycopy(((Object) (aobj)), i + 1 << 1, ((Object) (g)), i << 1, h - i << 1);
                return obj;
            }
        } else
        {
            h = h - 1;
            if (i < h)
            {
                System.arraycopy(f, i + 1, f, i, h - i);
                System.arraycopy(((Object) (g)), i + 1 << 1, ((Object) (g)), i << 1, h - i << 1);
            }
            g[h << 1] = null;
            g[(h << 1) + 1] = null;
            return obj;
        }
        return obj;
    }

    public void clear()
    {
        if (h != 0)
        {
            a(f, g, h);
            f = aa.a;
            g = aa.c;
            h = 0;
        }
    }

    public boolean containsKey(Object obj)
    {
        if (obj == null)
        {
            return a() >= 0;
        }
        return a(obj, obj.hashCode()) >= 0;
    }

    public boolean containsValue(Object obj)
    {
        return a(obj) >= 0;
    }

    public final boolean equals(Object obj)
    {
        int i;
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof Map))
        {
            break MISSING_BLOCK_LABEL_123;
        }
        obj = (Map)obj;
        if (size() != ((Map) (obj)).size())
        {
            return false;
        }
        i = 0;
_L2:
        Object obj1;
        Object obj2;
        Object obj3;
        if (i >= h)
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = e(i);
        obj2 = b(i);
        obj3 = ((Map) (obj)).get(obj1);
        if (obj2 != null)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        if (obj3 != null)
        {
            break MISSING_BLOCK_LABEL_125;
        }
        if (!((Map) (obj)).containsKey(obj1))
        {
            break MISSING_BLOCK_LABEL_125;
        }
        break MISSING_BLOCK_LABEL_106;
        boolean flag;
        try
        {
            flag = obj2.equals(obj3);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return false;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return false;
        }
        if (!flag)
        {
            return false;
        }
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return true;
        return false;
        return false;
    }

    public Object get(Object obj)
    {
        int i;
        if (obj == null)
        {
            i = a();
        } else
        {
            i = a(obj, obj.hashCode());
        }
        if (i >= 0)
        {
            return g[(i << 1) + 1];
        } else
        {
            return null;
        }
    }

    public final int hashCode()
    {
        int ai[] = f;
        Object aobj[] = g;
        int i = 1;
        int i1 = h;
        int j = 0;
        int k = 0;
        while (j < i1) 
        {
            Object obj = aobj[i];
            int j1 = ai[j];
            int l;
            if (obj == null)
            {
                l = 0;
            } else
            {
                l = obj.hashCode();
            }
            k += l ^ j1;
            j++;
            i += 2;
        }
        return k;
    }

    public boolean isEmpty()
    {
        return h <= 0;
    }

    public Object put(Object obj, Object obj1)
    {
        int i;
        int k;
        if (obj == null)
        {
            i = a();
            k = 0;
        } else
        {
            k = obj.hashCode();
            i = a(obj, k);
        }
        if (i >= 0)
        {
            i = (i << 1) + 1;
            obj = g[i];
            g[i] = obj1;
            return obj;
        }
        int l = ~i;
        if (h >= f.length)
        {
            int ai[];
            Object aobj[];
            int j;
            if (h >= 8)
            {
                j = h + (h >> 1);
            } else
            if (h >= 4)
            {
                j = 8;
            } else
            {
                j = 4;
            }
            ai = f;
            aobj = g;
            d(j);
            if (f.length > 0)
            {
                System.arraycopy(ai, 0, f, 0, ai.length);
                System.arraycopy(((Object) (aobj)), 0, ((Object) (g)), 0, aobj.length);
            }
            a(ai, aobj, h);
        }
        if (l < h)
        {
            System.arraycopy(f, l, f, l + 1, h - l);
            System.arraycopy(((Object) (g)), l << 1, ((Object) (g)), l + 1 << 1, h - l << 1);
        }
        f[l] = k;
        g[l << 1] = obj;
        g[(l << 1) + 1] = obj1;
        h = h + 1;
        return null;
    }

    public Object remove(Object obj)
    {
        int i;
        if (obj == null)
        {
            i = a();
        } else
        {
            i = a(obj, obj.hashCode());
        }
        if (i >= 0)
        {
            return c(i);
        } else
        {
            return null;
        }
    }

    public int size()
    {
        return h;
    }

    public final String toString()
    {
        if (isEmpty())
        {
            return "{}";
        }
        StringBuilder stringbuilder = new StringBuilder(h * 28);
        stringbuilder.append('{');
        int i = 0;
        while (i < h) 
        {
            if (i > 0)
            {
                stringbuilder.append(", ");
            }
            Object obj = e(i);
            if (obj != this)
            {
                stringbuilder.append(obj);
            } else
            {
                stringbuilder.append("(this Map)");
            }
            stringbuilder.append('=');
            obj = b(i);
            if (obj != this)
            {
                stringbuilder.append(obj);
            } else
            {
                stringbuilder.append("(this Map)");
            }
            i++;
        }
        stringbuilder.append('}');
        return stringbuilder.toString();
    }
}
