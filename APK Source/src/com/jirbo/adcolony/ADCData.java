// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;

import java.io.PrintStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;

// Referenced classes of package com.jirbo.adcolony:
//            af, z

public class ADCData
{
    static class a extends i
    {

        void a(af af1)
        {
            af1.a("false");
        }

        boolean a()
        {
            return true;
        }

        String b()
        {
            return "false";
        }

        a()
        {
        }
    }

    static class b extends i
    {

        int a;

        void a(af af1)
        {
            af1.a(a);
        }

        boolean c()
        {
            return true;
        }

        double d()
        {
            return (double)a;
        }

        int e()
        {
            return a;
        }

        b(int j)
        {
            a = j;
        }
    }

    static class c extends i
    {

        ArrayList a;

        double a(int k, double d1)
        {
            i l = (i)a.get(k);
            if (l != null && l.p())
            {
                return l.d();
            } else
            {
                return d1;
            }
        }

        int a(int k, int l)
        {
            i i1 = (i)a.get(k);
            if (i1 != null && i1.p())
            {
                return i1.e();
            } else
            {
                return l;
            }
        }

        c a(double d1)
        {
            a(((i) (new e(d1))));
            return this;
        }

        c a(int k)
        {
            a(((i) (new b(k))));
            return this;
        }

        c a(int k, c c1)
        {
            i l = (i)a.get(k);
            if (l != null && l.f())
            {
                return l.h();
            } else
            {
                return c1;
            }
        }

        c a(c c1)
        {
            for (int k = 0; k < c1.i(); k++)
            {
                a((i)c1.a.get(k));
            }

            return this;
        }

        c a(i k)
        {
            a.add(k);
            return this;
        }

        c a(String s)
        {
            a(((i) (new f(s))));
            return this;
        }

        c a(boolean flag)
        {
            i k;
            if (flag)
            {
                k = ADCData.a;
            } else
            {
                k = ADCData.b;
            }
            a(k);
            return this;
        }

        g a(int k, g g1)
        {
            i l = (i)a.get(k);
            if (l != null && l.m())
            {
                return l.n();
            } else
            {
                return g1;
            }
        }

        String a(int k, String s)
        {
            i l = (i)a.get(k);
            if (l != null && l.k())
            {
                return l.b();
            } else
            {
                return s;
            }
        }

        void a(af af1)
        {
            int l = a.size();
            if (l == 0)
            {
                af1.a("[]");
                return;
            }
            if (l == 1 && ((i)a.get(0)).g())
            {
                af1.a("[");
                ((i)a.get(0)).a(af1);
                af1.a("]");
                return;
            }
            af1.b("[");
            af1.i = af1.i + 2;
            boolean flag = true;
            int k = 0;
            while (k < l) 
            {
                if (flag)
                {
                    flag = false;
                } else
                {
                    af1.c(',');
                }
                ((i)a.get(k)).a(af1);
                k++;
            }
            af1.d();
            af1.i = af1.i - 2;
            af1.a("]");
        }

        boolean a(int k, boolean flag)
        {
            i l = (i)a.get(k);
            if (l != null && (l.a() || l.k()))
            {
                return l.l();
            } else
            {
                return flag;
            }
        }

        i a_()
        {
            return (i)a.remove(a.size() - 1);
        }

        g b(int k)
        {
            g g1 = a(k, ((g) (null)));
            if (g1 != null)
            {
                return g1;
            } else
            {
                return new g();
            }
        }

        c c(int k)
        {
            c c1 = a(k, ((c) (null)));
            if (c1 != null)
            {
                return c1;
            } else
            {
                return new c();
            }
        }

        String d(int k)
        {
            return a(k, "");
        }

        double e(int k)
        {
            return a(k, 0.0D);
        }

        int f(int k)
        {
            return a(k, 0);
        }

        boolean f()
        {
            return true;
        }

        boolean g()
        {
            return a.size() == 0 || a.size() == 1 && ((i)a.get(0)).g();
        }

        boolean g(int k)
        {
            return a(k, false);
        }

        c h()
        {
            return this;
        }

        int i()
        {
            return a.size();
        }

        void j()
        {
            a.clear();
        }

        c()
        {
            a = new ArrayList();
        }
    }

    static class d extends i
    {

        void a(af af1)
        {
            af1.a("null");
        }

        String b()
        {
            return "null";
        }

        boolean c_()
        {
            return true;
        }

        d()
        {
        }
    }

    static class e extends i
    {

        double a;

        void a(af af1)
        {
            af1.a(a);
        }

        boolean b_()
        {
            return true;
        }

        double d()
        {
            return a;
        }

        int e()
        {
            return (int)a;
        }

        e(double d1)
        {
            a = d1;
        }
    }

    static class f extends i
        implements Serializable
    {

        String a;

        void a(af af)
        {
            a(af, a);
        }

        String b()
        {
            return a;
        }

        double d()
        {
            double d1;
            try
            {
                d1 = Double.parseDouble(a);
            }
            catch (NumberFormatException numberformatexception)
            {
                return 0.0D;
            }
            return d1;
        }

        int e()
        {
            return (int)d();
        }

        boolean k()
        {
            return true;
        }

        boolean l()
        {
            String s = a.toLowerCase();
            return s.equals("true") || s.equals("yes");
        }

        f(String s)
        {
            a = s;
        }
    }

    static class g extends i
        implements Serializable
    {

        HashMap a;
        ArrayList b;

        double a(String s, double d1)
        {
            s = (i)a.get(s);
            if (s != null && s.p())
            {
                return s.d();
            } else
            {
                return d1;
            }
        }

        int a(String s, int j)
        {
            s = (i)a.get(s);
            if (s != null && s.p())
            {
                return s.e();
            } else
            {
                return j;
            }
        }

        c a(String s, c c1)
        {
            s = (i)a.get(s);
            if (s != null && s.f())
            {
                return s.h();
            } else
            {
                return c1;
            }
        }

        g a(String s, g g1)
        {
            s = (i)a.get(s);
            if (s != null && s.m())
            {
                return s.n();
            } else
            {
                return g1;
            }
        }

        String a(int j)
        {
            return (String)b.get(j);
        }

        String a(String s, String s1)
        {
            s = (i)a.get(s);
            if (s != null && s.k())
            {
                return s.b();
            } else
            {
                return s1;
            }
        }

        ArrayList a(String s, ArrayList arraylist)
        {
            s = c(s);
            if (s == null)
            {
                return arraylist;
            }
            arraylist = new ArrayList();
            for (int j = 0; j < s.i(); j++)
            {
                String s1 = s.d(j);
                if (s1 != null)
                {
                    arraylist.add(s1);
                }
            }

            return arraylist;
        }

        void a(af af1)
        {
            int i1 = b.size();
            if (i1 == 0)
            {
                af1.a("{}");
                return;
            }
            if (i1 == 1 && ((i)a.get(b.get(0))).g())
            {
                af1.a("{");
                String s = (String)b.get(0);
                i j = (i)a.get(s);
                a(af1, s);
                af1.b(':');
                j.a(af1);
                af1.a("}");
                return;
            }
            af1.b("{");
            af1.i = af1.i + 2;
            boolean flag = true;
            int l = 0;
            while (l < i1) 
            {
                String s1;
                i k;
                if (flag)
                {
                    flag = false;
                } else
                {
                    af1.c(',');
                }
                s1 = (String)b.get(l);
                k = (i)a.get(s1);
                a(af1, s1);
                af1.b(':');
                if (!k.g())
                {
                    af1.d();
                }
                k.a(af1);
                l++;
            }
            af1.d();
            af1.i = af1.i - 2;
            af1.a("}");
        }

        void a(String s, i j)
        {
            if (!a.containsKey(s))
            {
                b.add(s);
            }
            a.put(s, j);
        }

        boolean a(String s)
        {
            return a.containsKey(s);
        }

        boolean a(String s, boolean flag)
        {
            s = (i)a.get(s);
            if (s != null && (s.a() || s.k()))
            {
                return s.l();
            } else
            {
                return flag;
            }
        }

        g b(String s)
        {
            s = a(s, ((g) (null)));
            if (s != null)
            {
                return s;
            } else
            {
                return new g();
            }
        }

        void b(String s, double d1)
        {
            a(s, new e(d1));
        }

        void b(String s, int j)
        {
            a(s, new b(j));
        }

        void b(String s, String s1)
        {
            a(s, new f(s1));
        }

        void b(String s, boolean flag)
        {
            i j;
            if (flag)
            {
                j = ADCData.a;
            } else
            {
                j = ADCData.b;
            }
            a(s, j);
        }

        c c(String s)
        {
            s = a(s, ((c) (null)));
            if (s != null)
            {
                return s;
            } else
            {
                return new c();
            }
        }

        ArrayList d(String s)
        {
            ArrayList arraylist = a(s, ((ArrayList) (null)));
            s = arraylist;
            if (arraylist == null)
            {
                s = new ArrayList();
            }
            return s;
        }

        String e(String s)
        {
            return a(s, "");
        }

        double f(String s)
        {
            return a(s, 0.0D);
        }

        int g(String s)
        {
            return a(s, 0);
        }

        boolean g()
        {
            return a.size() < 0 || a.size() == 1 && ((i)a.get(b.get(0))).g();
        }

        boolean h(String s)
        {
            return a(s, false);
        }

        boolean m()
        {
            return true;
        }

        g n()
        {
            return this;
        }

        int o()
        {
            return b.size();
        }

        g()
        {
            a = new HashMap();
            b = new ArrayList();
        }
    }

    static class h extends i
    {

        void a(af af1)
        {
            af1.a("true");
        }

        boolean a()
        {
            return true;
        }

        String b()
        {
            return "true";
        }

        double d()
        {
            return 1.0D;
        }

        int e()
        {
            return 1;
        }

        boolean l()
        {
            return true;
        }

        h()
        {
        }
    }

    static class i
    {

        void a(af af1)
        {
        }

        void a(af af1, String s)
        {
label0:
            {
label1:
                {
label2:
                    {
label3:
                        {
label4:
                            {
label5:
                                {
label6:
                                    {
label7:
                                        {
                                            if (s == null)
                                            {
                                                return;
                                            }
                                            af1.b('"');
                                            int k1 = s.length();
                                            int j = 0;
label8:
                                            do
                                            {
                                                {
                                                    if (j >= k1)
                                                    {
                                                        break label0;
                                                    }
                                                    char c1 = s.charAt(j);
                                                    switch (c1)
                                                    {
                                                    default:
                                                        if (c1 >= ' ' && c1 <= '~')
                                                        {
                                                            af1.b(c1);
                                                        } else
                                                        {
                                                            af1.a("\\u");
                                                            int j1 = c1;
                                                            int i1 = 0;
                                                            while (i1 < 4) 
                                                            {
                                                                int l1 = j1 >> 12 & 0xf;
                                                                j1 <<= 4;
                                                                if (l1 <= 9)
                                                                {
                                                                    af1.a(l1);
                                                                } else
                                                                {
                                                                    af1.b((char)((l1 - 10) + 97));
                                                                }
                                                                i1++;
                                                            }
                                                        }
                                                        break;

                                                    case 8: // '\b'
                                                        break label5;

                                                    case 9: // '\t'
                                                        break label1;

                                                    case 10: // '\n'
                                                        break label3;

                                                    case 12: // '\f'
                                                        break label4;

                                                    case 13: // '\r'
                                                        break label2;

                                                    case 34: // '"'
                                                        break label8;

                                                    case 47: // '/'
                                                        break label6;

                                                    case 92: // '\\'
                                                        break label7;
                                                    }
                                                }
                                                j++;
                                            } while (true);
                                            af1.a("\\\"");
                                            break MISSING_BLOCK_LABEL_125;
                                        }
                                        af1.a("\\\\");
                                        break MISSING_BLOCK_LABEL_125;
                                    }
                                    af1.a("\\/");
                                    break MISSING_BLOCK_LABEL_125;
                                }
                                af1.a("\\b");
                                break MISSING_BLOCK_LABEL_125;
                            }
                            af1.a("\\f");
                            break MISSING_BLOCK_LABEL_125;
                        }
                        af1.a("\\n");
                        break MISSING_BLOCK_LABEL_125;
                    }
                    af1.a("\\r");
                    break MISSING_BLOCK_LABEL_125;
                }
                af1.a("\\t");
                break MISSING_BLOCK_LABEL_125;
            }
            af1.b('"');
        }

        boolean a()
        {
            return false;
        }

        String b()
        {
            return q();
        }

        boolean b_()
        {
            return false;
        }

        boolean c()
        {
            return false;
        }

        boolean c_()
        {
            return false;
        }

        double d()
        {
            return 0.0D;
        }

        int e()
        {
            return 0;
        }

        boolean f()
        {
            return false;
        }

        boolean g()
        {
            return true;
        }

        c h()
        {
            return null;
        }

        boolean k()
        {
            return false;
        }

        boolean l()
        {
            return false;
        }

        boolean m()
        {
            return false;
        }

        g n()
        {
            return null;
        }

        boolean p()
        {
            return b_() || c();
        }

        String q()
        {
            z z1 = new z();
            a(z1);
            return z1.toString();
        }

        public String toString()
        {
            return q();
        }

        i()
        {
        }
    }


    static i a = new h();
    static i b = new a();
    static i c = new d();

    public ADCData()
    {
    }

    public static void main(String args[])
    {
        System.out.println("==== ADCData Test ====");
        args = new g();
        args.b("one", 1);
        args.b("pi", 3.1400000000000001D);
        args.b("name", "\"Abe Pralle\"");
        args.a("list", new c());
        args.a("subtable", new g());
        args.b("subtable").b("five", 5);
        System.out.println((new StringBuilder()).append("LIST:").append(args.c("list")).toString());
        args.c("list").a(3);
        System.out.println(args);
        System.out.println(args.g("one"));
        System.out.println(args.f("one"));
        System.out.println(args.g("pi"));
        System.out.println(args.f("pi"));
        System.out.println(args.e("name"));
        System.out.println(args.f("name"));
        System.out.println(args.g("name"));
        System.out.println(args.c("list"));
        System.out.println(args.c("list2"));
        System.out.println(args.c("subtable"));
        System.out.println(args.b("subtable"));
        System.out.println(args.b("subtable2"));
        System.out.println(args.b("list"));
    }

}
