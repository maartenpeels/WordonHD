// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.lang.reflect.Array;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;

// Referenced classes of package com.chartboost.sdk.impl:
//            cj, cq, cb, ch, 
//            ct, cu, cv, cw, 
//            cz, da, cp, ck, 
//            bw, cn, cy, cx

public class cm
    implements cj
{

    protected cq a;

    public cm()
    {
    }

    private void a(String s, int i, byte abyte0[])
    {
        a((byte)5, s);
        int k = abyte0.length;
        int j = k;
        if (i == 2)
        {
            j = k + 4;
        }
        a.c(j);
        a.write(i);
        if (i == 2)
        {
            a.c(j - 4);
        }
        i = a.a();
        a.write(abyte0);
        cb.a(a.a() - i, abyte0.length);
    }

    private void a(String s, Iterable iterable)
    {
        a((byte)4, s);
        int j = a.a();
        a.c(0);
        s = iterable.iterator();
        for (int i = 0; s.hasNext(); i++)
        {
            b(String.valueOf(i), s.next());
        }

        a.write(0);
        a.a(j, a.a() - j);
    }

    private void a(String s, String s1, byte byte0)
    {
        a(byte0, s);
        b(s1);
    }

    private void a(String s, Map map)
    {
        a((byte)3, s);
        int i = a.a();
        a.c(0);
        for (s = map.entrySet().iterator(); s.hasNext(); b(map.getKey().toString(), map.getValue()))
        {
            map = (java.util.Map.Entry)s.next();
        }

        a.write(0);
        a.a(i, a.a() - i);
    }

    private void a(String s, Pattern pattern)
    {
        a((byte)11, s);
        c(pattern.pattern());
        c(ch.a(pattern.flags()));
    }

    private void c(String s, Object obj)
    {
        a((byte)4, s);
        int j = a.a();
        a.c(0);
        int k = Array.getLength(obj);
        for (int i = 0; i < k; i++)
        {
            b(String.valueOf(i), Array.get(obj, i));
        }

        a.write(0);
        a.a(j, a.a() - j);
    }

    private void d(String s)
    {
        a((byte)-1, s);
    }

    private void e(String s)
    {
        a((byte)127, s);
    }

    public void a()
    {
        a = null;
    }

    protected void a(byte byte0, String s)
    {
        a.write(byte0);
        c(s);
    }

    public void a(cq cq1)
    {
        if (a != null)
        {
            throw new IllegalStateException("in the middle of something");
        } else
        {
            a = cq1;
            return;
        }
    }

    protected void a(String s)
    {
        a((byte)10, s);
    }

    protected void a(String s, ct ct1)
    {
        a((byte)17, s);
        a.c(ct1.b());
        a.c(ct1.a());
    }

    protected void a(String s, cu cu1)
    {
        a(s, cu1.a(), cu1.b());
    }

    protected void a(String s, cv cv1)
    {
        a((byte)13, s);
        a.a();
        b(cv1.a());
    }

    protected void a(String s, cw cw1)
    {
        a((byte)15, s);
        int i = a.a();
        a.c(0);
        b(cw1.a());
        b(cw1.b());
        a.a(i, a.a() - i);
    }

    protected void a(String s, cz cz1)
    {
        a((byte)7, s);
        a.d(cz1.c());
        a.d(cz1.d());
        a.d(cz1.e());
    }

    protected void a(String s, da da1)
    {
        a(s, da1.a(), (byte)14);
    }

    protected void a(String s, Boolean boolean1)
    {
        a((byte)8, s);
        s = a;
        int i;
        if (boolean1.booleanValue())
        {
            i = 1;
        } else
        {
            i = 0;
        }
        s.write(i);
    }

    protected void a(String s, Number number)
    {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte) || (number instanceof AtomicInteger))
        {
            a((byte)16, s);
            a.c(number.intValue());
            return;
        }
        if ((number instanceof Long) || (number instanceof AtomicLong))
        {
            a((byte)18, s);
            a.a(number.longValue());
            return;
        }
        if ((number instanceof Float) || (number instanceof Double))
        {
            a((byte)1, s);
            a.a(number.doubleValue());
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("can't serialize ").append(number.getClass()).toString());
        }
    }

    protected void a(String s, String s1)
    {
        a(s, s1, (byte)2);
    }

    protected void a(String s, Date date)
    {
        a((byte)9, s);
        a.a(date.getTime());
    }

    protected void a(String s, UUID uuid)
    {
        a((byte)5, s);
        a.c(16);
        a.write(3);
        a.a(uuid.getMostSignificantBits());
        a.a(uuid.getLeastSignificantBits());
    }

    protected void a(String s, byte abyte0[])
    {
        a(s, 0, abyte0);
    }

    protected boolean a(String s, ck ck1)
    {
        return false;
    }

    protected boolean a(String s, Object obj)
    {
        return false;
    }

    public byte[] a(ck ck1)
    {
        cp cp1 = new cp();
        a(((cq) (cp1)));
        b(ck1);
        a();
        return cp1.c();
    }

    public int b(ck ck1)
    {
        return b(null, ck1);
    }

    protected int b(String s, ck ck1)
    {
        if (ck1 == null)
        {
            throw new NullPointerException("can't save a null object");
        }
        int i = a.a();
        byte byte0;
        Object obj;
        String s1;
        boolean flag;
        int j;
        if (ck1 instanceof List)
        {
            byte0 = 4;
        } else
        {
            byte0 = 3;
        }
        if (a(s, ck1))
        {
            return a.a() - i;
        }
        if (s != null)
        {
            a(byte0, s);
        }
        j = a.a();
        a.c(0);
        if (byte0 == 3 && s == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (byte0 != 3) goto _L2; else goto _L1
_L1:
        if (flag && ck1.b("_id"))
        {
            b("_id", ck1.a("_id"));
        }
        s = ((String) (ck1.a("_transientFields")));
        if (!(s instanceof List)) goto _L2; else goto _L3
_L3:
        s = (List)s;
_L5:
        if (ck1 instanceof Map)
        {
            ck1 = ((Map)ck1).entrySet().iterator();
            do
            {
                if (!ck1.hasNext())
                {
                    break;
                }
                obj = (java.util.Map.Entry)ck1.next();
                if ((!flag || !((String)((java.util.Map.Entry) (obj)).getKey()).equals("_id")) && (s == null || !s.contains(((java.util.Map.Entry) (obj)).getKey())))
                {
                    b((String)((java.util.Map.Entry) (obj)).getKey(), ((java.util.Map.Entry) (obj)).getValue());
                }
            } while (true);
        } else
        {
            obj = ck1.keySet().iterator();
            do
            {
                if (!((Iterator) (obj)).hasNext())
                {
                    break;
                }
                s1 = (String)((Iterator) (obj)).next();
                if ((!flag || !s1.equals("_id")) && (s == null || !s.contains(s1)))
                {
                    b(s1, ck1.a(s1));
                }
            } while (true);
        }
        a.write(0);
        a.a(j, a.a() - j);
        return a.a() - i;
_L2:
        s = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    protected void b(String s)
    {
        int i = a.a();
        a.c(0);
        int j = c(s);
        a.a(i, j);
    }

    protected void b(String s, Object obj)
    {
        if (!s.equals("_transientFields"))
        {
            if (s.equals("$where") && (obj instanceof String))
            {
                a((byte)13, s);
                b(obj.toString());
                return;
            }
            obj = ch.a(obj);
            if (obj == null)
            {
                a(s);
                return;
            }
            if (obj instanceof Date)
            {
                a(s, (Date)obj);
                return;
            }
            if (obj instanceof Number)
            {
                a(s, (Number)obj);
                return;
            }
            if (obj instanceof Character)
            {
                a(s, obj.toString());
                return;
            }
            if (obj instanceof String)
            {
                a(s, obj.toString());
                return;
            }
            if (obj instanceof cz)
            {
                a(s, (cz)obj);
                return;
            }
            if (obj instanceof ck)
            {
                b(s, (ck)obj);
                return;
            }
            if (obj instanceof Boolean)
            {
                a(s, (Boolean)obj);
                return;
            }
            if (obj instanceof Pattern)
            {
                a(s, (Pattern)obj);
                return;
            }
            if (obj instanceof Map)
            {
                a(s, (Map)obj);
                return;
            }
            if (obj instanceof Iterable)
            {
                a(s, (Iterable)obj);
                return;
            }
            if (obj instanceof byte[])
            {
                a(s, (byte[])(byte[])obj);
                return;
            }
            if (obj instanceof cu)
            {
                a(s, (cu)obj);
                return;
            }
            if (obj instanceof UUID)
            {
                a(s, (UUID)obj);
                return;
            }
            if (obj.getClass().isArray())
            {
                c(s, obj);
                return;
            }
            if (obj instanceof da)
            {
                a(s, (da)obj);
                return;
            }
            if (obj instanceof ct)
            {
                a(s, (ct)obj);
                return;
            }
            if (obj instanceof cw)
            {
                a(s, (cw)obj);
                return;
            }
            if (obj instanceof cv)
            {
                a(s, (cv)obj);
                return;
            }
            if (obj instanceof bw)
            {
                cn cn1 = new cn();
                cn1.a("$ref", ((bw)obj).b());
                cn1.a("$id", ((bw)obj).a());
                b(s, ((ck) (cn1)));
                return;
            }
            if (obj instanceof cy)
            {
                d(s);
                return;
            }
            if (obj instanceof cx)
            {
                e(s);
                return;
            }
            if (!a(s, obj))
            {
                throw new IllegalArgumentException((new StringBuilder()).append("can't serialize ").append(obj.getClass()).toString());
            }
        }
    }

    protected int c(String s)
    {
        int k = s.length();
        int j = 0;
        int i = 0;
        while (j < k) 
        {
            int l = Character.codePointAt(s, j);
            if (l < 128)
            {
                a.write((byte)l);
                i++;
            } else
            if (l < 2048)
            {
                a.write((byte)((l >> 6) + 192));
                a.write((byte)((l & 0x3f) + 128));
                i += 2;
            } else
            if (l < 0x10000)
            {
                a.write((byte)((l >> 12) + 224));
                a.write((byte)((l >> 6 & 0x3f) + 128));
                a.write((byte)((l & 0x3f) + 128));
                i += 3;
            } else
            {
                a.write((byte)((l >> 18) + 240));
                a.write((byte)((l >> 12 & 0x3f) + 128));
                a.write((byte)((l >> 6 & 0x3f) + 128));
                a.write((byte)((l & 0x3f) + 128));
                i += 4;
            }
            j += Character.charCount(l);
        }
        a.write(0);
        return i + 1;
    }
}
