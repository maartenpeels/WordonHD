// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;

import android.util.Log;
import java.io.PrintWriter;
import java.util.ArrayList;

// Referenced classes of package c.m.x.a.gv:
//            q, j, ac, d

final class c.m.x.a.gv.a extends q
    implements Runnable
{
    static final class a
    {

        a a;
        a b;
        int c;
        d d;
        int e;
        int f;
        int g;
        int h;
        ArrayList i;

        a()
        {
        }
    }


    final j a;
    a b;
    a c;
    int d;
    int e;
    int f;
    int g;
    int h;
    int i;
    int j;
    boolean k;
    boolean l;
    String m;
    boolean n;
    int o;
    int p;
    CharSequence q;
    int r;
    CharSequence s;

    public c.m.x.a.gv.a(j j1)
    {
        l = true;
        o = -1;
        a = j1;
    }

    public final void a()
    {
        a a1;
        if (j.a)
        {
            Log.v("FragmentManager", (new StringBuilder("popFromBackStack: ")).append(this).toString());
            a("  ", new PrintWriter(new ac("FragmentManager")));
        }
        a(-1);
        a1 = c;
_L10:
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_436;
        }
        a1.c;
        JVM INSTR tableswitch 1 7: default 112
    //                   1 139
    //                   2 179
    //                   3 271
    //                   4 296
    //                   5 331
    //                   6 366
    //                   7 401;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L8:
        break MISSING_BLOCK_LABEL_401;
_L3:
        break; /* Loop/switch isn't completed */
_L1:
        throw new IllegalArgumentException((new StringBuilder("Unknown cmd: ")).append(a1.c).toString());
_L2:
        d d1 = a1.d;
        d1.mNextAnim = a1.h;
        a.a(d1, c.m.x.a.gv.j.c(i), j);
_L11:
        a1 = a1.b;
        if (true) goto _L10; else goto _L9
_L9:
        d d2 = a1.d;
        if (d2 != null)
        {
            d2.mNextAnim = a1.h;
            a.a(d2, c.m.x.a.gv.j.c(i), j);
        }
        if (a1.i != null)
        {
            int i1 = 0;
            while (i1 < a1.i.size()) 
            {
                d d3 = (d)a1.i.get(i1);
                d3.mNextAnim = a1.g;
                a.a(d3, false);
                i1++;
            }
        }
          goto _L11
_L4:
        d d4 = a1.d;
        d4.mNextAnim = a1.g;
        a.a(d4, false);
          goto _L11
_L5:
        d d5 = a1.d;
        d5.mNextAnim = a1.g;
        a.c(d5, c.m.x.a.gv.j.c(i), j);
          goto _L11
_L6:
        d d6 = a1.d;
        d6.mNextAnim = a1.h;
        a.b(d6, c.m.x.a.gv.j.c(i), j);
          goto _L11
_L7:
        d d7 = a1.d;
        d7.mNextAnim = a1.g;
        a.e(d7, c.m.x.a.gv.j.c(i), j);
          goto _L11
        d d8 = a1.d;
        d8.mNextAnim = a1.g;
        a.d(d8, c.m.x.a.gv.j.c(i), j);
          goto _L11
        a.a(a.n, c.m.x.a.gv.j.c(i), j, true);
        if (o >= 0)
        {
            a.b(o);
            o = -1;
        }
        return;
    }

    final void a(int i1)
    {
        if (k)
        {
            if (j.a)
            {
                Log.v("FragmentManager", (new StringBuilder("Bump nesting in ")).append(this).append(" by ").append(i1).toString());
            }
            a a1 = b;
            while (a1 != null) 
            {
                if (a1.d != null)
                {
                    d d1 = a1.d;
                    d1.mBackStackNesting = d1.mBackStackNesting + i1;
                    if (j.a)
                    {
                        Log.v("FragmentManager", (new StringBuilder("Bump nesting of ")).append(a1.d).append(" to ").append(a1.d.mBackStackNesting).toString());
                    }
                }
                if (a1.i != null)
                {
                    for (int j1 = a1.i.size() - 1; j1 >= 0; j1--)
                    {
                        d d2 = (d)a1.i.get(j1);
                        d2.mBackStackNesting = d2.mBackStackNesting + i1;
                        if (j.a)
                        {
                            Log.v("FragmentManager", (new StringBuilder("Bump nesting of ")).append(d2).append(" to ").append(d2.mBackStackNesting).toString());
                        }
                    }

                }
                a1 = a1.a;
            }
        }
    }

    final void a(a a1)
    {
        if (b == null)
        {
            c = a1;
            b = a1;
        } else
        {
            a1.b = c;
            c.a = a1;
            c = a1;
        }
        a1.e = e;
        a1.f = f;
        a1.g = g;
        a1.h = h;
        d = d + 1;
    }

    public final void a(String s1, PrintWriter printwriter)
    {
        a(s1, printwriter, true);
    }

    public final void a(String s1, PrintWriter printwriter, boolean flag)
    {
        a a1;
        String s3;
        int i1;
        if (flag)
        {
            printwriter.print(s1);
            printwriter.print("mName=");
            printwriter.print(m);
            printwriter.print(" mIndex=");
            printwriter.print(o);
            printwriter.print(" mCommitted=");
            printwriter.println(n);
            if (i != 0)
            {
                printwriter.print(s1);
                printwriter.print("mTransition=#");
                printwriter.print(Integer.toHexString(i));
                printwriter.print(" mTransitionStyle=#");
                printwriter.println(Integer.toHexString(j));
            }
            if (e != 0 || f != 0)
            {
                printwriter.print(s1);
                printwriter.print("mEnterAnim=#");
                printwriter.print(Integer.toHexString(e));
                printwriter.print(" mExitAnim=#");
                printwriter.println(Integer.toHexString(f));
            }
            if (g != 0 || h != 0)
            {
                printwriter.print(s1);
                printwriter.print("mPopEnterAnim=#");
                printwriter.print(Integer.toHexString(g));
                printwriter.print(" mPopExitAnim=#");
                printwriter.println(Integer.toHexString(h));
            }
            if (p != 0 || q != null)
            {
                printwriter.print(s1);
                printwriter.print("mBreadCrumbTitleRes=#");
                printwriter.print(Integer.toHexString(p));
                printwriter.print(" mBreadCrumbTitleText=");
                printwriter.println(q);
            }
            if (r != 0 || s != null)
            {
                printwriter.print(s1);
                printwriter.print("mBreadCrumbShortTitleRes=#");
                printwriter.print(Integer.toHexString(r));
                printwriter.print(" mBreadCrumbShortTitleText=");
                printwriter.println(s);
            }
        }
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_802;
        }
        printwriter.print(s1);
        printwriter.println("Operations:");
        s3 = (new StringBuilder()).append(s1).append("    ").toString();
        a1 = b;
        i1 = 0;
_L13:
        if (a1 == null) goto _L2; else goto _L1
_L1:
        a1.c;
        JVM INSTR tableswitch 0 7: default 408
    //                   0 681
    //                   1 689
    //                   2 697
    //                   3 705
    //                   4 713
    //                   5 721
    //                   6 729
    //                   7 737;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L11:
        break MISSING_BLOCK_LABEL_737;
_L3:
        String s2 = (new StringBuilder("cmd=")).append(a1.c).toString();
_L12:
        printwriter.print(s1);
        printwriter.print("  Op #");
        printwriter.print(i1);
        printwriter.print(": ");
        printwriter.print(s2);
        printwriter.print(" ");
        printwriter.println(a1.d);
        if (flag)
        {
            if (a1.e != 0 || a1.f != 0)
            {
                printwriter.print(s1);
                printwriter.print("enterAnim=#");
                printwriter.print(Integer.toHexString(a1.e));
                printwriter.print(" exitAnim=#");
                printwriter.println(Integer.toHexString(a1.f));
            }
            if (a1.g != 0 || a1.h != 0)
            {
                printwriter.print(s1);
                printwriter.print("popEnterAnim=#");
                printwriter.print(Integer.toHexString(a1.g));
                printwriter.print(" popExitAnim=#");
                printwriter.println(Integer.toHexString(a1.h));
            }
        }
        if (a1.i != null && a1.i.size() > 0)
        {
            int j1 = 0;
            while (j1 < a1.i.size()) 
            {
                printwriter.print(s3);
                if (a1.i.size() == 1)
                {
                    printwriter.print("Removed: ");
                } else
                {
                    if (j1 == 0)
                    {
                        printwriter.println("Removed:");
                    }
                    printwriter.print(s3);
                    printwriter.print("  #");
                    printwriter.print(j1);
                    printwriter.print(": ");
                }
                printwriter.println(a1.i.get(j1));
                j1++;
            }
        }
        break MISSING_BLOCK_LABEL_786;
_L4:
        s2 = "NULL";
          goto _L12
_L5:
        s2 = "ADD";
          goto _L12
_L6:
        s2 = "REPLACE";
          goto _L12
_L7:
        s2 = "REMOVE";
          goto _L12
_L8:
        s2 = "HIDE";
          goto _L12
_L9:
        s2 = "SHOW";
          goto _L12
_L10:
        s2 = "DETACH";
          goto _L12
        s2 = "ATTACH";
          goto _L12
        a1 = a1.a;
        i1++;
          goto _L13
_L2:
    }

    public final void run()
    {
        a a1;
        if (j.a)
        {
            Log.v("FragmentManager", (new StringBuilder("Run: ")).append(this).toString());
        }
        if (k && o < 0)
        {
            throw new IllegalStateException("addToBackStack() called after commit()");
        }
        a(1);
        a1 = b;
_L10:
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_596;
        }
        a1.c;
        JVM INSTR tableswitch 1 7: default 116
    //                   1 143
    //                   2 173
    //                   3 436
    //                   4 468
    //                   5 500
    //                   6 532
    //                   7 564;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L8:
        break MISSING_BLOCK_LABEL_564;
_L3:
        break; /* Loop/switch isn't completed */
_L1:
        throw new IllegalArgumentException((new StringBuilder("Unknown cmd: ")).append(a1.c).toString());
_L2:
        d d1 = a1.d;
        d1.mNextAnim = a1.e;
        a.a(d1, false);
_L11:
        a1 = a1.a;
        if (true) goto _L10; else goto _L9
_L9:
        d d2 = a1.d;
        d d8 = d2;
        if (a.g != null)
        {
            int i1 = 0;
            while (i1 < a.g.size()) 
            {
                d8 = (d)a.g.get(i1);
                if (j.a)
                {
                    Log.v("FragmentManager", (new StringBuilder("OP_REPLACE: adding=")).append(d2).append(" old=").append(d8).toString());
                }
                if (d2 == null || d8.mContainerId == d2.mContainerId)
                {
                    if (d8 == d2)
                    {
                        d2 = null;
                        a1.d = null;
                    } else
                    {
                        if (a1.i == null)
                        {
                            a1.i = new ArrayList();
                        }
                        a1.i.add(d8);
                        d8.mNextAnim = a1.f;
                        if (k)
                        {
                            d8.mBackStackNesting = d8.mBackStackNesting + 1;
                            if (j.a)
                            {
                                Log.v("FragmentManager", (new StringBuilder("Bump nesting of ")).append(d8).append(" to ").append(d8.mBackStackNesting).toString());
                            }
                        }
                        a.a(d8, i, j);
                    }
                }
                i1++;
            }
            d8 = d2;
        }
        if (d8 != null)
        {
            d8.mNextAnim = a1.e;
            a.a(d8, false);
        }
          goto _L11
_L4:
        d d3 = a1.d;
        d3.mNextAnim = a1.f;
        a.a(d3, i, j);
          goto _L11
_L5:
        d d4 = a1.d;
        d4.mNextAnim = a1.f;
        a.b(d4, i, j);
          goto _L11
_L6:
        d d5 = a1.d;
        d5.mNextAnim = a1.e;
        a.c(d5, i, j);
          goto _L11
_L7:
        d d6 = a1.d;
        d6.mNextAnim = a1.f;
        a.d(d6, i, j);
          goto _L11
        d d7 = a1.d;
        d7.mNextAnim = a1.e;
        a.e(d7, i, j);
          goto _L11
        a.a(a.n, i, j, true);
        if (k)
        {
            a.a(this);
        }
        return;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(128);
        stringbuilder.append("BackStackEntry{");
        stringbuilder.append(Integer.toHexString(System.identityHashCode(this)));
        if (o >= 0)
        {
            stringbuilder.append(" #");
            stringbuilder.append(o);
        }
        if (m != null)
        {
            stringbuilder.append(" ");
            stringbuilder.append(m);
        }
        stringbuilder.append("}");
        return stringbuilder.toString();
    }
}
