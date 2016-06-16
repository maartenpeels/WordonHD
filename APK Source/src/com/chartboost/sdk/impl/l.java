// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.chartboost.sdk.impl:
//            d, m, t, a, 
//            p, i, n, s

public abstract class l
    implements Comparable
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;
        private static final a e[];

        public static a valueOf(String s1)
        {
            return (a)Enum.valueOf(com/chartboost/sdk/impl/l$a, s1);
        }

        public static a[] values()
        {
            a aa[] = e;
            int i1 = aa.length;
            a aa1[] = new a[i1];
            System.arraycopy(aa, 0, aa1, 0, i1);
            return aa1;
        }

        static 
        {
            a = new a("LOW", 0);
            b = new a("NORMAL", 1);
            c = new a("HIGH", 2);
            d = new a("IMMEDIATE", 3);
            e = (new a[] {
                a, b, c, d
            });
        }

        private a(String s1, int i1)
        {
            super(s1, i1);
        }
    }


    private final t.a a;
    private final int b;
    private final String c;
    private final int d;
    private final n.a e;
    private Integer f;
    private m g;
    private boolean h;
    private boolean i;
    private boolean j;
    private long k;
    private p l;
    private b.a m;
    private Object n;

    public l(int i1, String s1, n.a a1)
    {
        t.a a2;
        if (t.a.a)
        {
            a2 = new t.a();
        } else
        {
            a2 = null;
        }
        a = a2;
        h = true;
        i = false;
        j = false;
        k = 0L;
        m = null;
        b = i1;
        c = s1;
        e = a1;
        a(new d());
        d = c(s1);
    }

    private byte[] a(Map map, String s1)
    {
        StringBuilder stringbuilder = new StringBuilder();
        try
        {
            map = map.entrySet().iterator();
            do
            {
                if (!map.hasNext())
                {
                    return stringbuilder.toString().getBytes(s1);
                }
                java.util.Map.Entry entry = (java.util.Map.Entry)map.next();
                stringbuilder.append(URLEncoder.encode((String)entry.getKey(), s1));
                stringbuilder.append('=');
                stringbuilder.append(URLEncoder.encode((String)entry.getValue(), s1));
                stringbuilder.append('&');
            } while (true);
        }
        // Misplaced declaration of an exception variable
        catch (Map map)
        {
            throw new RuntimeException((new StringBuilder("Encoding not supported: ")).append(s1).toString(), map);
        }
    }

    static t.a b(l l1)
    {
        return l1.a;
    }

    private static int c(String s1)
    {
        if (!TextUtils.isEmpty(s1))
        {
            s1 = Uri.parse(s1);
            if (s1 != null)
            {
                s1 = s1.getHost();
                if (s1 != null)
                {
                    return s1.hashCode();
                }
            }
        }
        return 0;
    }

    public int a()
    {
        return b;
    }

    public int a(l l1)
    {
        a a1 = s();
        a a2 = l1.s();
        if (a1 == a2)
        {
            return f.intValue() - l1.f.intValue();
        } else
        {
            return a2.ordinal() - a1.ordinal();
        }
    }

    public final l a(int i1)
    {
        f = Integer.valueOf(i1);
        return this;
    }

    public l a(b.a a1)
    {
        m = a1;
        return this;
    }

    public l a(m m1)
    {
        g = m1;
        return this;
    }

    public l a(p p1)
    {
        l = p1;
        return this;
    }

    public l a(Object obj)
    {
        n = obj;
        return this;
    }

    protected abstract n a(i i1);

    protected s a(s s1)
    {
        return s1;
    }

    public void a(String s1)
    {
        if (t.a.a)
        {
            a.a(s1, Thread.currentThread().getId());
        } else
        if (k == 0L)
        {
            k = SystemClock.elapsedRealtime();
            return;
        }
    }

    public Object b()
    {
        return n;
    }

    public void b(s s1)
    {
        if (e != null)
        {
            e.a(s1);
        }
    }

    protected abstract void b(Object obj);

    void b(String s1)
    {
        if (g != null)
        {
            g.b(this);
        }
        if (!t.a.a) goto _L2; else goto _L1
_L1:
        long l1 = Thread.currentThread().getId();
        if (Looper.myLooper() == Looper.getMainLooper()) goto _L4; else goto _L3
_L3:
        (new Handler(Looper.getMainLooper())).post(new Runnable(s1, l1) {

            final l a;
            private final String b;
            private final long c;

            public void run()
            {
                l.b(a).a(b, c);
                l.b(a).a(((Object)this).toString());
            }

            
            {
                a = l.this;
                b = s1;
                c = l2;
                super();
            }
        });
_L6:
        return;
_L4:
        a.a(s1, l1);
        a.a(toString());
        return;
_L2:
        long l2 = SystemClock.elapsedRealtime() - k;
        if (l2 >= 3000L)
        {
            com.chartboost.sdk.impl.t.b("%d ms: %s", new Object[] {
                Long.valueOf(l2), toString()
            });
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public int c()
    {
        return d;
    }

    public int compareTo(Object obj)
    {
        return a((l)obj);
    }

    public String d()
    {
        return c;
    }

    public String e()
    {
        return d();
    }

    public b.a f()
    {
        return m;
    }

    public void g()
    {
        i = true;
    }

    public boolean h()
    {
        return i;
    }

    public Map i()
        throws com.chartboost.sdk.impl.a
    {
        return Collections.emptyMap();
    }

    protected Map j()
        throws com.chartboost.sdk.impl.a
    {
        return n();
    }

    protected String k()
    {
        return o();
    }

    public String l()
    {
        return p();
    }

    public byte[] m()
        throws com.chartboost.sdk.impl.a
    {
        Map map = j();
        if (map != null && map.size() > 0)
        {
            return a(map, k());
        } else
        {
            return null;
        }
    }

    protected Map n()
        throws com.chartboost.sdk.impl.a
    {
        return null;
    }

    protected String o()
    {
        return "UTF-8";
    }

    public String p()
    {
        return (new StringBuilder("application/x-www-form-urlencoded; charset=")).append(o()).toString();
    }

    public byte[] q()
        throws com.chartboost.sdk.impl.a
    {
        Map map = n();
        if (map != null && map.size() > 0)
        {
            return a(map, o());
        } else
        {
            return null;
        }
    }

    public final boolean r()
    {
        return h;
    }

    public a s()
    {
        return a.b;
    }

    public final int t()
    {
        return l.a();
    }

    public String toString()
    {
        String s2 = (new StringBuilder("0x")).append(Integer.toHexString(c())).toString();
        String s1;
        if (i)
        {
            s1 = "[X] ";
        } else
        {
            s1 = "[ ] ";
        }
        return (new StringBuilder(String.valueOf(s1))).append(d()).append(" ").append(s2).append(" ").append(s()).append(" ").append(f).toString();
    }

    public p u()
    {
        return l;
    }

    public void v()
    {
        j = true;
    }

    public boolean w()
    {
        return j;
    }
}
