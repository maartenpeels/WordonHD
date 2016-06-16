// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.ep;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public final class n
{

    public String a;
    private String b;

    public n(Context context)
    {
        b = context.getApplicationContext().getApplicationInfo().sourceDir;
        context = context.getCacheDir().getAbsolutePath();
        context = (new StringBuilder()).append(context).append(File.separator).append("app").toString();
        a = (new StringBuilder()).append(context).append(File.separator).append("app").toString();
        context = new File(a);
        if (context.exists())
        {
            break MISSING_BLOCK_LABEL_105;
        }
        context.mkdirs();
        return;
        context;
    }

    private boolean b(String s)
    {
        Object obj;
        Object obj1;
        String s1;
        obj1 = (new StringBuilder("assets")).append(File.separator).append(s).toString();
        s1 = (new StringBuilder()).append(a).append(File.separatorChar).toString();
        obj = new File((new StringBuilder()).append(s1).append(((String) (obj1))).toString());
        if (((File) (obj)).exists())
        {
            return true;
        }
        s = new File(b);
        s = new ZipFile(s);
        Enumeration enumeration = s.entries();
_L4:
        if (!enumeration.hasMoreElements()) goto _L2; else goto _L1
_L1:
        ZipEntry zipentry;
        String s2;
        zipentry = (ZipEntry)enumeration.nextElement();
        s2 = zipentry.getName();
        if (!s2.substring(0, 6).equals("assets")) goto _L4; else goto _L3
_L3:
        if (!s2.equals(obj1))
        {
            continue; /* Loop/switch isn't completed */
        }
        obj1 = s.getInputStream(zipentry);
        (new File(((File) (obj)).getParent())).mkdirs();
        obj = new BufferedOutputStream(new FileOutputStream(((File) (obj))), 8192);
        s1 = new byte[8192];
_L7:
        int i = ((InputStream)obj1).read(s1);
        if (i == -1) goto _L6; else goto _L5
_L5:
        ((BufferedOutputStream) (obj)).write(s1, 0, i);
          goto _L7
        obj;
_L13:
        Exception exception;
        if (s != null)
        {
            try
            {
                s.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
_L9:
        return true;
_L6:
        ((InputStream)obj1).close();
        ((OutputStream) (obj)).flush();
        ((OutputStream) (obj)).close();
_L2:
        try
        {
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        if (true) goto _L9; else goto _L8
_L8:
        if (!s2.startsWith((new StringBuilder()).append(((String) (obj1))).append("/").toString())) goto _L4; else goto _L10
_L10:
        ((File)new File((new StringBuilder()).append(s1).append(((String) (obj1))).toString())).mkdirs();
          goto _L2
        exception;
        obj = s;
        s = exception;
_L12:
        if (obj != null)
        {
            try
            {
                ((ZipFile) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj) { }
        }
        throw s;
        s;
        obj = null;
        if (true) goto _L12; else goto _L11
_L11:
        s;
        s = null;
          goto _L13
    }

    public final File a(String s)
    {
        String s1 = (new StringBuilder("assets")).append(File.separator).append(s).toString();
        Object obj = (new StringBuilder()).append(a).append(File.separatorChar).toString();
        s1 = (new StringBuilder()).append(((String) (obj))).append(s1).toString();
        obj = new File(s1);
        if (((File) (obj)).exists())
        {
            return ((File) (obj));
        } else
        {
            b(s);
            return new File(s1);
        }
    }
}
