// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;

import java.io.PrintStream;

// Referenced classes of package com.jirbo.adcolony:
//            z, f, s, ADCData, 
//            y, l

class k
{

    static z a = new z();

    k()
    {
    }

    static int a(int i)
    {
        if (i >= 48 && i <= 57)
        {
            return i - 48;
        }
        if (i >= 97 && i <= 102)
        {
            return (i - 97) + 10;
        }
        if (i >= 65 && i <= 70)
        {
            return (i - 65) + 10;
        } else
        {
            return 0;
        }
    }

    static ADCData.i a(f f1)
    {
        f1 = f1.b();
        if (f1 == null)
        {
            return null;
        } else
        {
            return a(((s) (f1)));
        }
    }

    static ADCData.i a(s s1)
    {
        char c1;
        try
        {
            b(s1);
            c1 = s1.b();
        }
        // Misplaced declaration of an exception variable
        catch (s s1)
        {
            return null;
        }
        if (c1 != '{')
        {
            break MISSING_BLOCK_LABEL_20;
        }
        return c(s1);
        if (c1 != '[')
        {
            break MISSING_BLOCK_LABEL_31;
        }
        return d(s1);
        if (c1 != '-')
        {
            break MISSING_BLOCK_LABEL_42;
        }
        return h(s1);
        if (c1 < '0' || c1 > '9') goto _L2; else goto _L1
_L1:
        return h(s1);
_L3:
        s1 = e(s1);
        if (s1.length() == 0)
        {
            return new ADCData.f("");
        }
        c1 = s1.charAt(0);
        if (c1 != 't')
        {
            break MISSING_BLOCK_LABEL_106;
        }
        if (s1.equals("true"))
        {
            return ADCData.a;
        }
        if (c1 != 'f')
        {
            break MISSING_BLOCK_LABEL_125;
        }
        if (s1.equals("false"))
        {
            return ADCData.b;
        }
        if (c1 != 'n')
        {
            break MISSING_BLOCK_LABEL_144;
        }
        if (s1.equals("null"))
        {
            return ADCData.c;
        }
        return new ADCData.f(s1);
_L5:
        s1 = g(s1);
        if (s1.length() == 0)
        {
            return new ADCData.f("");
        }
        c1 = s1.charAt(0);
        if (c1 != 't')
        {
            break MISSING_BLOCK_LABEL_200;
        }
        if (s1.equals("true"))
        {
            return ADCData.a;
        }
        if (c1 != 'f')
        {
            break MISSING_BLOCK_LABEL_219;
        }
        if (s1.equals("false"))
        {
            return ADCData.b;
        }
        if (c1 != 'n')
        {
            break MISSING_BLOCK_LABEL_238;
        }
        if (s1.equals("null"))
        {
            return ADCData.c;
        }
        s1 = new ADCData.f(s1);
        return s1;
_L6:
        return null;
_L2:
        if (c1 != '"' && c1 != '\'') goto _L4; else goto _L3
_L4:
        if ((c1 < 'a' || c1 > 'z') && (c1 < 'A' || c1 > 'Z') && c1 != '_' && c1 != '$') goto _L6; else goto _L5
    }

    static ADCData.i a(String s1)
    {
        if (s1 == null)
        {
            return null;
        } else
        {
            return a(new s(s1));
        }
    }

    static void a(f f1, ADCData.c c1)
    {
        f1 = f1.a();
        if (c1 != null)
        {
            c1.a(f1);
            f1.d();
        } else
        {
            l.b.b("Saving empty property list.");
            f1.b("[]");
        }
        f1.b();
    }

    static void a(f f1, ADCData.g g1)
    {
        f1 = f1.a();
        if (g1 != null)
        {
            g1.a(f1);
            f1.d();
        } else
        {
            l.b.b("Saving empty property table.");
            f1.b("{}");
        }
        f1.b();
    }

    static void a(f f1, ADCData.i i)
    {
        f1 = f1.a();
        if (i == null)
        {
            f1.b("null");
        } else
        {
            i.a(f1);
            f1.d();
        }
        f1.b();
    }

    public static void a(String as[])
    {
        System.out.println("==== ADCJSON Test ====");
        b(new f("test.txt"));
        a(new f("test2.txt"), a(new f("test.txt")));
        a(new f("test3.txt"), a(new f("test2.txt")));
    }

    static ADCData.g b(f f1)
    {
        f1 = a(f1);
        if (f1 == null || !f1.m())
        {
            return null;
        } else
        {
            return f1.n();
        }
    }

    static ADCData.g b(String s1)
    {
        s1 = a(s1);
        if (s1 == null || !s1.m())
        {
            return null;
        } else
        {
            return s1.n();
        }
    }

    static void b(s s1)
    {
        for (char c1 = s1.b(); s1.a() && (c1 <= ' ' || c1 > '~'); c1 = s1.b())
        {
            s1.c();
        }

    }

    static ADCData.c c(f f1)
    {
        f1 = a(f1);
        if (f1 == null || !f1.f())
        {
            return null;
        } else
        {
            return f1.h();
        }
    }

    static ADCData.c c(String s1)
    {
        s1 = a(s1);
        if (s1 == null || !s1.f())
        {
            return null;
        } else
        {
            return s1.h();
        }
    }

    static ADCData.g c(s s1)
    {
        b(s1);
        Object obj;
        if (!s1.a('{'))
        {
            obj = null;
        } else
        {
            b(s1);
            ADCData.g g1 = new ADCData.g();
            obj = g1;
            if (!s1.a('}'))
            {
                boolean flag = true;
                while (flag || s1.a(',')) 
                {
                    flag = false;
                    obj = g(s1);
                    b(s1);
                    if (!s1.a(':'))
                    {
                        g1.b(((String) (obj)), true);
                    } else
                    {
                        b(s1);
                        g1.a(((String) (obj)), a(s1));
                    }
                    b(s1);
                }
                obj = g1;
                if (!s1.a('}'))
                {
                    return null;
                }
            }
        }
        return ((ADCData.g) (obj));
    }

    static ADCData.c d(s s1)
    {
        b(s1);
        ADCData.c c1;
        if (!s1.a('['))
        {
            c1 = null;
        } else
        {
            b(s1);
            ADCData.c c2 = new ADCData.c();
            c1 = c2;
            if (!s1.a(']'))
            {
                for (boolean flag = true; flag || s1.a(','); b(s1))
                {
                    flag = false;
                    c2.a(a(s1));
                }

                c1 = c2;
                if (!s1.a(']'))
                {
                    return null;
                }
            }
        }
        return c1;
    }

    static String e(s s1)
    {
        b(s1);
        char c1;
        byte byte0;
        if (s1.a('"'))
        {
            byte0 = 34;
        } else
        if (s1.a('\''))
        {
            byte0 = 39;
        } else
        {
            byte0 = 34;
        }
        if (!s1.a())
        {
            return "";
        }
        a.a();
        c1 = s1.c();
        while (s1.a() && c1 != byte0) 
        {
            if (c1 == '\\')
            {
                c1 = s1.c();
                if (c1 == 'b')
                {
                    a.b('\b');
                } else
                if (c1 == 'f')
                {
                    a.b('\f');
                } else
                if (c1 == 'n')
                {
                    a.b('\n');
                } else
                if (c1 == 'r')
                {
                    a.b('\r');
                } else
                if (c1 == 't')
                {
                    a.b('\t');
                } else
                if (c1 == 'u')
                {
                    a.b(f(s1));
                } else
                {
                    a.b(c1);
                }
            } else
            {
                a.b(c1);
            }
            c1 = s1.c();
        }
        return a.toString();
    }

    static char f(s s1)
    {
        int i = 0;
        int j;
        int i1;
        for (j = 0; i < 4; j = i1)
        {
            i1 = j;
            if (s1.a())
            {
                i1 = j << 4 | a(s1.c());
            }
            i++;
        }

        return (char)j;
    }

    static String g(s s1)
    {
        b(s1);
        int i = s1.b();
        if (i == 34 || i == 39)
        {
            return e(s1);
        }
        a.a();
        for (boolean flag = false; !flag && s1.a();)
        {
            if (i >= 97 && i <= 122 || i >= 65 && i <= 90 || i == 95 || i == 36)
            {
                s1.c();
                a.b((char)i);
                i = s1.b();
            } else
            {
                flag = true;
            }
        }

        return a.toString();
    }

    static ADCData.i h(s s1)
    {
        double d1;
label0:
        {
            b(s1);
            double d4 = 1.0D;
            if (s1.a('-'))
            {
                d4 = -1D;
                b(s1);
            }
            char c1 = s1.b();
            double d2;
            for (d1 = 0.0D; s1.a() && c1 >= '0' && c1 <= '9'; d1 = d1 * 10D + d2)
            {
                s1.c();
                d2 = c1 - 48;
                c1 = s1.b();
            }

            c1 = '\0';
            double d3 = d1;
            if (s1.a('.'))
            {
                boolean flag = true;
                c1 = s1.b();
                double d5 = 0.0D;
                d3 = 0.0D;
                for (; s1.a() && c1 >= '0' && c1 <= '9'; c1 = s1.b())
                {
                    s1.c();
                    d5 = d5 * 10D + (double)(c1 - 48);
                    d3++;
                }

                d3 = d1 + d5 / Math.pow(10D, d3);
                c1 = flag;
            }
            if (!s1.a('e'))
            {
                d1 = d3;
                if (!s1.a('E'))
                {
                    break label0;
                }
            }
            boolean flag2 = false;
            boolean flag1 = flag2;
            if (!s1.a('+'))
            {
                flag1 = flag2;
                if (s1.a('-'))
                {
                    flag1 = true;
                }
            }
            d1 = 0.0D;
            for (char c2 = s1.b(); s1.a() && c2 >= '0' && c2 <= '9'; c2 = s1.b())
            {
                s1.c();
                d1 = d1 * 10D + (double)(c2 - 48);
            }

            if (flag1)
            {
                d1 = d3 / Math.pow(10D, d1);
            } else
            {
                d1 = d3 * Math.pow(10D, d1);
            }
        }
        d1 = d4 * d1;
        if (c1 != 0 || d1 != (double)(int)d1)
        {
            return new ADCData.e(d1);
        } else
        {
            return new ADCData.b((int)d1);
        }
    }

}
