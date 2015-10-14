// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;

import android.os.Bundle;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

// Referenced classes of package c.m.x.a.gv:
//            r, af, ab, g, 
//            v, j

final class s extends r
{
    final class a
        implements v.a
    {

        final int a = 0;
        final Bundle b = null;
        r.a c;
        v d;
        boolean e;
        boolean f;
        Object g;
        boolean h;
        boolean i;
        boolean j;
        boolean k;
        boolean l;
        boolean m;
        a n;
        final s o;

        final void a()
        {
            if (i && j)
            {
                h = true;
            } else
            if (!h)
            {
                h = true;
                if (s.a)
                {
                    Log.v("LoaderManager", (new StringBuilder("  Starting: ")).append(this).toString());
                }
                if (d == null && c != null)
                {
                    d = c.onCreateLoader(a, b);
                }
                if (d != null)
                {
                    if (d.getClass().isMemberClass() && !Modifier.isStatic(d.getClass().getModifiers()))
                    {
                        throw new IllegalArgumentException((new StringBuilder("Object returned from onCreateLoader must not be a non-static inner member class: ")).append(d).toString());
                    }
                    if (!m)
                    {
                        d.registerListener(a, this);
                        m = true;
                    }
                    d.startLoading();
                    return;
                }
            }
        }

        public final void a(v v1, Object obj)
        {
            if (s.a)
            {
                Log.v("LoaderManager", (new StringBuilder("onLoadComplete: ")).append(this).toString());
            }
            if (!l) goto _L2; else goto _L1
_L1:
            if (s.a)
            {
                Log.v("LoaderManager", "  Ignoring load complete -- destroyed");
            }
_L4:
            return;
_L2:
            if (o.b.a(a) == this)
            {
                break; /* Loop/switch isn't completed */
            }
            if (s.a)
            {
                Log.v("LoaderManager", "  Ignoring load complete -- not active");
                return;
            }
            if (true) goto _L4; else goto _L3
_L3:
            a a1 = n;
            if (a1 != null)
            {
                if (s.a)
                {
                    Log.v("LoaderManager", (new StringBuilder("  Switching to pending loader: ")).append(a1).toString());
                }
                n = null;
                o.b.a(a, null);
                c();
                o.a(a1);
                return;
            }
            if (g != obj || !e)
            {
                g = obj;
                e = true;
                if (h)
                {
                    b(v1, obj);
                }
            }
            v1 = (a)o.c.a(a);
            if (v1 != null && v1 != this)
            {
                v1.f = false;
                v1.c();
                o.c.b(a);
            }
            if (o.e != null && !o.a())
            {
                o.e.b.b();
                return;
            }
            if (true) goto _L4; else goto _L5
_L5:
        }

        public final void a(String s1, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
        {
            a a1 = this;
            do
            {
                printwriter.print(s1);
                printwriter.print("mId=");
                printwriter.print(a1.a);
                printwriter.print(" mArgs=");
                printwriter.println(a1.b);
                printwriter.print(s1);
                printwriter.print("mCallbacks=");
                printwriter.println(a1.c);
                printwriter.print(s1);
                printwriter.print("mLoader=");
                printwriter.println(a1.d);
                if (a1.d != null)
                {
                    a1.d.dump((new StringBuilder()).append(s1).append("  ").toString(), filedescriptor, printwriter, as);
                }
                if (a1.e || a1.f)
                {
                    printwriter.print(s1);
                    printwriter.print("mHaveData=");
                    printwriter.print(a1.e);
                    printwriter.print("  mDeliveredData=");
                    printwriter.println(a1.f);
                    printwriter.print(s1);
                    printwriter.print("mData=");
                    printwriter.println(a1.g);
                }
                printwriter.print(s1);
                printwriter.print("mStarted=");
                printwriter.print(a1.h);
                printwriter.print(" mReportNextStart=");
                printwriter.print(a1.k);
                printwriter.print(" mDestroyed=");
                printwriter.println(a1.l);
                printwriter.print(s1);
                printwriter.print("mRetaining=");
                printwriter.print(a1.i);
                printwriter.print(" mRetainingStarted=");
                printwriter.print(a1.j);
                printwriter.print(" mListenerRegistered=");
                printwriter.println(a1.m);
                if (a1.n != null)
                {
                    printwriter.print(s1);
                    printwriter.println("Pending Loader ");
                    printwriter.print(a1.n);
                    printwriter.println(":");
                    a1 = a1.n;
                    s1 = (new StringBuilder()).append(s1).append("  ").toString();
                } else
                {
                    return;
                }
            } while (true);
        }

        final void b()
        {
            if (s.a)
            {
                Log.v("LoaderManager", (new StringBuilder("  Stopping: ")).append(this).toString());
            }
            h = false;
            if (!i && d != null && m)
            {
                m = false;
                d.unregisterListener(this);
                d.stopLoading();
            }
        }

        final void b(v v1, Object obj)
        {
            String s1;
            if (c == null)
            {
                break MISSING_BLOCK_LABEL_132;
            }
            s1 = null;
            if (o.e != null)
            {
                s1 = o.e.b.u;
                o.e.b.u = "onLoadFinished";
            }
            if (s.a)
            {
                Log.v("LoaderManager", (new StringBuilder("  onLoadFinished in ")).append(v1).append(": ").append(v1.dataToString(obj)).toString());
            }
            c.onLoadFinished(v1, obj);
            if (o.e != null)
            {
                o.e.b.u = s1;
            }
            f = true;
            return;
            v1;
            if (o.e != null)
            {
                o.e.b.u = s1;
            }
            throw v1;
        }

        final void c()
        {
            a a1 = this;
_L2:
            if (s.a)
            {
                Log.v("LoaderManager", (new StringBuilder("  Destroying: ")).append(a1).toString());
            }
            a1.l = true;
            boolean flag = a1.f;
            a1.f = false;
            if (a1.c == null || a1.d == null || !a1.e || !flag)
            {
                break MISSING_BLOCK_LABEL_179;
            }
            if (s.a)
            {
                Log.v("LoaderManager", (new StringBuilder("  Reseting: ")).append(a1).toString());
            }
            String s1;
            Exception exception;
            if (a1.o.e != null)
            {
                s1 = a1.o.e.b.u;
                a1.o.e.b.u = "onLoaderReset";
            } else
            {
                s1 = null;
            }
            a1.c.onLoaderReset(a1.d);
            if (a1.o.e != null)
            {
                a1.o.e.b.u = s1;
            }
            a1.c = null;
            a1.g = null;
            a1.e = false;
            if (a1.d != null)
            {
                if (a1.m)
                {
                    a1.m = false;
                    a1.d.unregisterListener(a1);
                }
                a1.d.reset();
            }
            if (a1.n != null)
            {
                a1 = a1.n;
            } else
            {
                return;
            }
            if (true) goto _L2; else goto _L1
_L1:
            exception;
            if (a1.o.e != null)
            {
                a1.o.e.b.u = s1;
            }
            throw exception;
        }

        public final String toString()
        {
            StringBuilder stringbuilder = new StringBuilder(64);
            stringbuilder.append("LoaderInfo{");
            stringbuilder.append(Integer.toHexString(System.identityHashCode(this)));
            stringbuilder.append(" #");
            stringbuilder.append(a);
            stringbuilder.append(" : ");
            ab.a(d, stringbuilder);
            stringbuilder.append("}}");
            return stringbuilder.toString();
        }

        public a(r.a a1)
        {
            o = s.this;
            super();
            c = a1;
        }
    }


    static boolean a = false;
    final af b = new af();
    final af c = new af();
    final String d;
    g e;
    boolean f;
    boolean g;
    boolean h;

    s(String s1, g g1, boolean flag)
    {
        d = s1;
        e = g1;
        f = flag;
    }

    private a b(r.a a1)
    {
        a a2;
        h = true;
        a2 = new a(a1);
        a2.d = a1.onCreateLoader(0, null);
        a(a2);
        h = false;
        return a2;
        a1;
        h = false;
        throw a1;
    }

    public final v a(r.a a1)
    {
        if (h)
        {
            throw new IllegalStateException("Called while creating a loader");
        }
        a a2 = (a)b.a(0);
        if (a)
        {
            Log.v("LoaderManager", (new StringBuilder("initLoader in ")).append(this).append(": args=").append(null).toString());
        }
        if (a2 == null)
        {
            a2 = b(a1);
            a1 = a2;
            if (a)
            {
                Log.v("LoaderManager", (new StringBuilder("  Created new loader ")).append(a2).toString());
                a1 = a2;
            }
        } else
        {
            if (a)
            {
                Log.v("LoaderManager", (new StringBuilder("  Re-using existing loader ")).append(a2).toString());
            }
            a2.c = a1;
            a1 = a2;
        }
        if (((a) (a1)).e && f)
        {
            a1.b(((a) (a1)).d, ((a) (a1)).g);
        }
        return ((a) (a1)).d;
    }

    final void a(g g1)
    {
        e = g1;
    }

    final void a(a a1)
    {
        b.a(a1.a, a1);
        if (f)
        {
            a1.a();
        }
    }

    public final void a(String s1, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        if (b.a() > 0)
        {
            printwriter.print(s1);
            printwriter.println("Active Loaders:");
            String s2 = (new StringBuilder()).append(s1).append("    ").toString();
            for (int i = 0; i < b.a(); i++)
            {
                a a1 = (a)b.d(i);
                printwriter.print(s1);
                printwriter.print("  #");
                printwriter.print(b.c(i));
                printwriter.print(": ");
                printwriter.println(a1.toString());
                a1.a(s2, filedescriptor, printwriter, as);
            }

        }
        if (c.a() > 0)
        {
            printwriter.print(s1);
            printwriter.println("Inactive Loaders:");
            String s3 = (new StringBuilder()).append(s1).append("    ").toString();
            for (int j = 0; j < c.a(); j++)
            {
                a a2 = (a)c.d(j);
                printwriter.print(s1);
                printwriter.print("  #");
                printwriter.print(c.c(j));
                printwriter.print(": ");
                printwriter.println(a2.toString());
                a2.a(s3, filedescriptor, printwriter, as);
            }

        }
    }

    public final boolean a()
    {
        int j = b.a();
        int i = 0;
        boolean flag1 = false;
        while (i < j) 
        {
            a a1 = (a)b.d(i);
            boolean flag;
            if (a1.h && !a1.f)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            i++;
            flag1 = flag | flag1;
        }
        return flag1;
    }

    final void b()
    {
        if (a)
        {
            Log.v("LoaderManager", (new StringBuilder("Starting in ")).append(this).toString());
        }
        if (f)
        {
            RuntimeException runtimeexception = new RuntimeException("here");
            runtimeexception.fillInStackTrace();
            Log.w("LoaderManager", (new StringBuilder("Called doStart when already started: ")).append(this).toString(), runtimeexception);
        } else
        {
            f = true;
            int i = b.a() - 1;
            while (i >= 0) 
            {
                ((a)b.d(i)).a();
                i--;
            }
        }
    }

    final void c()
    {
        if (a)
        {
            Log.v("LoaderManager", (new StringBuilder("Stopping in ")).append(this).toString());
        }
        if (!f)
        {
            RuntimeException runtimeexception = new RuntimeException("here");
            runtimeexception.fillInStackTrace();
            Log.w("LoaderManager", (new StringBuilder("Called doStop when not started: ")).append(this).toString(), runtimeexception);
            return;
        }
        for (int i = b.a() - 1; i >= 0; i--)
        {
            ((a)b.d(i)).b();
        }

        f = false;
    }

    final void d()
    {
        if (a)
        {
            Log.v("LoaderManager", (new StringBuilder("Retaining in ")).append(this).toString());
        }
        if (!f)
        {
            RuntimeException runtimeexception = new RuntimeException("here");
            runtimeexception.fillInStackTrace();
            Log.w("LoaderManager", (new StringBuilder("Called doRetain when not started: ")).append(this).toString(), runtimeexception);
        } else
        {
            g = true;
            f = false;
            int i = b.a() - 1;
            while (i >= 0) 
            {
                a a1 = (a)b.d(i);
                if (a)
                {
                    Log.v("LoaderManager", (new StringBuilder("  Retaining: ")).append(a1).toString());
                }
                a1.i = true;
                a1.j = a1.h;
                a1.h = false;
                a1.c = null;
                i--;
            }
        }
    }

    final void e()
    {
        if (g)
        {
            if (a)
            {
                Log.v("LoaderManager", (new StringBuilder("Finished Retaining in ")).append(this).toString());
            }
            g = false;
            for (int i = b.a() - 1; i >= 0; i--)
            {
                a a1 = (a)b.d(i);
                if (a1.i)
                {
                    if (a)
                    {
                        Log.v("LoaderManager", (new StringBuilder("  Finished Retaining: ")).append(a1).toString());
                    }
                    a1.i = false;
                    if (a1.h != a1.j && !a1.h)
                    {
                        a1.b();
                    }
                }
                if (a1.h && a1.e && !a1.k)
                {
                    a1.b(a1.d, a1.g);
                }
            }

        }
    }

    final void f()
    {
        for (int i = b.a() - 1; i >= 0; i--)
        {
            ((a)b.d(i)).k = true;
        }

    }

    final void g()
    {
        for (int i = b.a() - 1; i >= 0; i--)
        {
            a a1 = (a)b.d(i);
            if (!a1.h || !a1.k)
            {
                continue;
            }
            a1.k = false;
            if (a1.e)
            {
                a1.b(a1.d, a1.g);
            }
        }

    }

    final void h()
    {
        if (!g)
        {
            if (a)
            {
                Log.v("LoaderManager", (new StringBuilder("Destroying Active in ")).append(this).toString());
            }
            for (int i = b.a() - 1; i >= 0; i--)
            {
                ((a)b.d(i)).c();
            }

            b.b();
        }
        if (a)
        {
            Log.v("LoaderManager", (new StringBuilder("Destroying Inactive in ")).append(this).toString());
        }
        for (int j = c.a() - 1; j >= 0; j--)
        {
            ((a)c.d(j)).c();
        }

        c.b();
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(128);
        stringbuilder.append("LoaderManager{");
        stringbuilder.append(Integer.toHexString(System.identityHashCode(this)));
        stringbuilder.append(" in ");
        ab.a(e, stringbuilder);
        stringbuilder.append("}}");
        return stringbuilder.toString();
    }

}
