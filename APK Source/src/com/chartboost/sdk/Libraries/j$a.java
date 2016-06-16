// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.File;

// Referenced classes of package com.chartboost.sdk.Libraries:
//            j, CBLogging, h

public static class e
{

    private int a;
    private String b;
    private File c;
    private Bitmap d;
    private h e;
    private int f;
    private int g;

    static int a(e e1)
    {
        return e1.a;
    }

    private void f()
    {
        try
        {
            android.graphics.apFactory.Options options = new android.graphics.apFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(c.getAbsolutePath(), options);
            f = options.outWidth;
            g = options.outHeight;
            return;
        }
        catch (Exception exception)
        {
            CBLogging.b("MemoryBitmap", "Error decoding file size", exception);
        }
    }

    public Bitmap a()
    {
        if (d == null)
        {
            b();
        }
        return d;
    }

    public void b()
    {
        byte abyte0[];
        android.graphics.apFactory.Options options;
        if (d != null)
        {
            return;
        }
        CBLogging.a("MemoryBitmap", (new StringBuilder()).append("Loading image '").append(b).append("' from cache").toString());
        abyte0 = e.b(c);
        if (abyte0 == null)
        {
            CBLogging.b("MemoryBitmap", "decode() - bitmap not found");
            return;
        }
        options = new android.graphics.apFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length, options);
        options = new android.graphics.apFactory.Options();
        options.inJustDecodeBounds = false;
        options.inDither = false;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inTempStorage = new byte[32768];
        options.inSampleSize = 1;
_L1:
        if (options.inSampleSize >= 32)
        {
            break MISSING_BLOCK_LABEL_148;
        }
        d = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length, options);
_L2:
        a = options.inSampleSize;
        return;
        OutOfMemoryError outofmemoryerror;
        outofmemoryerror;
        CBLogging.b("MemoryBitmap", "OutOfMemoryError suppressed - trying larger sample size", outofmemoryerror);
        options.inSampleSize = options.inSampleSize * 2;
          goto _L1
        Exception exception;
        exception;
        CBLogging.b("MemoryBitmap", "Exception raised decoding bitmap", exception);
          goto _L2
    }

    public void c()
    {
        try
        {
            if (d != null && !d.isRecycled())
            {
                d.recycle();
            }
        }
        catch (Exception exception) { }
        d = null;
    }

    public int d()
    {
        if (d != null)
        {
            return d.getWidth();
        }
        if (f >= 0)
        {
            return f;
        } else
        {
            f();
            return f;
        }
    }

    public int e()
    {
        if (d != null)
        {
            return d.getHeight();
        }
        if (g >= 0)
        {
            return g;
        } else
        {
            f();
            return g;
        }
    }

    public gging(String s, File file, h h1)
    {
        f = -1;
        g = -1;
        c = file;
        b = s;
        d = null;
        a = 1;
        e = h1;
    }
}
