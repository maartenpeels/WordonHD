// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import com.chartboost.sdk.b;
import com.chartboost.sdk.impl.cd;
import java.io.File;
import java.io.IOException;

// Referenced classes of package com.chartboost.sdk.Libraries:
//            CBLogging

public class h
{

    private static h f;
    public Context a;
    private File b;
    private File c;
    private File d;
    private boolean e;

    public h(String s, boolean flag)
    {
        a = com.chartboost.sdk.b.l();
        if (a == null)
        {
            throw new RuntimeException("Cannot find context object");
        }
        boolean flag1;
        if (a.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        e = flag1;
        if (s != null)
        {
            b = a(s, flag);
            return;
        } else
        {
            b = a("CBCommonCacheFolder", flag);
            return;
        }
    }

    private File a(String s, boolean flag)
    {
        Object obj;
        if (b != null)
        {
            obj = b;
        } else
        {
            if (flag && d())
            {
                s = new File(new File(a.getExternalCacheDir(), "__chartboost"), s);
                d = s;
            } else
            {
                s = new File(new File(a.getCacheDir(), "__chartboost"), s);
                c = s;
            }
            obj = s;
            if (!s.exists())
            {
                s.mkdirs();
                return s;
            }
        }
        return ((File) (obj));
    }

    public static h c()
    {
        com/chartboost/sdk/Libraries/h;
        JVM INSTR monitorenter ;
        h h1;
        if (f == null)
        {
            f = new h("CBVideoCompletion", false);
        }
        h1 = f;
        com/chartboost/sdk/Libraries/h;
        JVM INSTR monitorexit ;
        return h1;
        Exception exception;
        exception;
        throw exception;
    }

    private boolean d()
    {
        return e && Environment.getExternalStorageState().equals("mounted");
    }

    public e.a a(File file)
    {
        this;
        JVM INSTR monitorenter ;
        if (d == null || d()) goto _L2; else goto _L1
_L1:
        file = e.a.a;
_L4:
        this;
        JVM INSTR monitorexit ;
        return file;
_L2:
label0:
        {
            if (b != null)
            {
                break label0;
            }
            file = e.a.a;
        }
        if (true) goto _L4; else goto _L3
_L3:
        Object obj = null;
        file = new String(cd.b(file));
_L5:
        file = com.chartboost.sdk.Libraries.e.a.j(file);
          goto _L4
        file;
        com.chartboost.sdk.Libraries.CBLogging.b("CBFileCache", "Error loading cache from disk", file);
        file = obj;
          goto _L5
        file;
        throw file;
    }

    public e.a a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (d == null || d()) goto _L2; else goto _L1
_L1:
        s = e.a.a;
_L4:
        this;
        JVM INSTR monitorexit ;
        return s;
_L2:
        if (b != null && s != null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        s = e.a.a;
        continue; /* Loop/switch isn't completed */
        s = new File(b, s);
        if (!s.exists())
        {
            s = e.a.a;
            continue; /* Loop/switch isn't completed */
        }
        s = a(((File) (s)));
        if (true) goto _L4; else goto _L3
_L3:
        s;
        throw s;
    }

    public File a(File file, e.a a1)
    {
        this;
        JVM INSTR monitorenter ;
        if (d == null) goto _L2; else goto _L1
_L1:
        boolean flag = d();
        if (flag) goto _L2; else goto _L3
_L3:
        file = null;
_L5:
        this;
        JVM INSTR monitorexit ;
        return file;
_L2:
        if (b == null)
        {
            file = null;
            continue; /* Loop/switch isn't completed */
        }
        if (file != null)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        file = new File(b.getPath(), Long.toString(System.nanoTime()));
        try
        {
            cd.a(file, a1.toString().getBytes());
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (e.a a1) { }
        com.chartboost.sdk.Libraries.CBLogging.b("CBFileCache", "IOException attempting to write cache to disk", a1);
        if (true) goto _L5; else goto _L4
_L4:
        file;
        throw file;
    }

    public void a(File file, byte abyte0[])
    {
        this;
        JVM INSTR monitorenter ;
        if (d == null) goto _L2; else goto _L1
_L1:
        boolean flag = d();
        if (flag) goto _L2; else goto _L3
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (b == null || abyte0 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (file != null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        file = new File(b.getPath(), Long.toString(System.nanoTime()));
        try
        {
            cd.a(file, abyte0);
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (File file) { }
        com.chartboost.sdk.Libraries.CBLogging.b("CBFileCache", "IOException attempting to write cache to disk", file);
        if (true) goto _L3; else goto _L4
_L4:
        file;
        throw file;
    }

    public void a(String s, e.a a1)
    {
        this;
        JVM INSTR monitorenter ;
        if (d == null) goto _L2; else goto _L1
_L1:
        boolean flag = d();
        if (flag) goto _L2; else goto _L3
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (b == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        File file = null;
        if (!TextUtils.isEmpty(s))
        {
            file = new File(b.getPath(), s);
        }
        a(file, a1);
        if (true) goto _L3; else goto _L4
_L4:
        s;
        throw s;
    }

    public void a(String s, byte abyte0[])
    {
        this;
        JVM INSTR monitorenter ;
        if (d == null) goto _L2; else goto _L1
_L1:
        boolean flag = d();
        if (flag) goto _L2; else goto _L3
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (b == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        File file = null;
        if (!TextUtils.isEmpty(s))
        {
            file = new File(b.getPath(), s);
        }
        a(file, abyte0);
        if (true) goto _L3; else goto _L4
_L4:
        s;
        throw s;
    }

    public String[] a()
    {
        this;
        JVM INSTR monitorenter ;
        if (d == null) goto _L2; else goto _L1
_L1:
        boolean flag = d();
        if (flag) goto _L2; else goto _L3
_L3:
        String as[] = null;
_L5:
        this;
        JVM INSTR monitorexit ;
        return as;
_L2:
        if (b == null)
        {
            as = null;
            continue; /* Loop/switch isn't completed */
        }
        as = b.list();
        if (true) goto _L5; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    public void b()
    {
        this;
        JVM INSTR monitorenter ;
        if (d == null) goto _L2; else goto _L1
_L1:
        boolean flag = d();
        if (flag) goto _L2; else goto _L3
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        File file = b;
        if (file == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (d == null) goto _L5; else goto _L4
_L4:
        File afile[] = d.listFiles();
        if (afile == null) goto _L5; else goto _L6
_L6:
        int j = afile.length;
        int i = 0;
_L7:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        afile[i].delete();
        i++;
        if (true) goto _L7; else goto _L5
_L5:
        if (c == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        afile = c.listFiles();
        if (afile == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        j = afile.length;
        i = 0;
_L9:
        if (i >= j)
        {
            continue; /* Loop/switch isn't completed */
        }
        afile[i].delete();
        i++;
        if (true) goto _L9; else goto _L8
_L8:
        Object obj;
        obj;
        com.chartboost.sdk.Libraries.CBLogging.b("CBFileCache", "Error while clearing the file cache");
        if (true) goto _L3; else goto _L10
_L10:
        obj;
        throw obj;
    }

    public void b(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (!TextUtils.isEmpty(s))
        {
            c(d(s));
        }
        this;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
    }

    public byte[] b(File file)
    {
        this;
        JVM INSTR monitorenter ;
        if (d == null) goto _L2; else goto _L1
_L1:
        boolean flag = d();
        if (flag) goto _L2; else goto _L3
_L3:
        file = null;
_L5:
        this;
        JVM INSTR monitorexit ;
        return file;
_L2:
        File file1 = b;
        if (file1 == null)
        {
            file = null;
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            file = cd.b(file);
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (File file) { }
        finally
        {
            this;
        }
        com.chartboost.sdk.Libraries.CBLogging.b("CBFileCache", "Error loading cache from disk", file);
        file = null;
        if (true) goto _L5; else goto _L4
_L4:
        throw file;
    }

    public void c(File file)
    {
        this;
        JVM INSTR monitorenter ;
        if (file == null)
        {
            break MISSING_BLOCK_LABEL_18;
        }
        if (file.exists())
        {
            file.delete();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        file;
        throw file;
    }

    public boolean c(String s)
    {
        if (d != null && !d())
        {
            return false;
        }
        if (b == null || s == null)
        {
            return false;
        } else
        {
            return (new File(b.getPath(), s)).exists();
        }
    }

    public File d(String s)
    {
        if (d != null && !d())
        {
            return null;
        }
        if (b == null)
        {
            return null;
        } else
        {
            return new File(b.getPath(), s);
        }
    }
}
