// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

// Referenced classes of package com.chartboost.sdk.impl:
//            l, d, i, k, 
//            n, y, t

public class ab extends l
{

    private static final Object e = new Object();
    private final n.b a;
    private final android.graphics.Bitmap.Config b;
    private final int c;
    private final int d;

    public ab(String s1, n.b b1, int j, int i1, android.graphics.Bitmap.Config config, n.a a1)
    {
        super(0, s1, a1);
        a(new d(1000, 2, 2.0F));
        a = b1;
        b = config;
        c = j;
        d = i1;
    }

    static int a(int j, int i1, int j1, int k1)
    {
        double d1 = Math.min((double)j / (double)j1, (double)i1 / (double)k1);
        float f = 1.0F;
        do
        {
            if ((double)(f * 2.0F) > d1)
            {
                return (int)f;
            }
            f *= 2.0F;
        } while (true);
    }

    private static int b(int j, int i1, int j1, int k1)
    {
        if (j == 0 && i1 == 0)
        {
            return j1;
        }
        if (j == 0)
        {
            return (int)(((double)i1 / (double)k1) * (double)j1);
        }
        if (i1 == 0)
        {
            return j;
        }
        double d1 = (double)k1 / (double)j1;
        if ((double)j * d1 > (double)i1)
        {
            return (int)((double)i1 / d1);
        } else
        {
            return j;
        }
    }

    private n b(i j)
    {
        Object obj;
        Object obj1;
        obj = j.b;
        obj1 = new android.graphics.BitmapFactory.Options();
        if (c != 0 || d != 0) goto _L2; else goto _L1
_L1:
        obj1.inPreferredConfig = b;
        obj = BitmapFactory.decodeByteArray(((byte []) (obj)), 0, obj.length, ((android.graphics.BitmapFactory.Options) (obj1)));
_L4:
        int i1;
        int j1;
        int k1;
        int l1;
        if (obj == null)
        {
            return n.a(new k(j));
        } else
        {
            return n.a(obj, y.a(j));
        }
_L2:
        obj1.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(((byte []) (obj)), 0, obj.length, ((android.graphics.BitmapFactory.Options) (obj1)));
        i1 = ((android.graphics.BitmapFactory.Options) (obj1)).outWidth;
        j1 = ((android.graphics.BitmapFactory.Options) (obj1)).outHeight;
        k1 = b(c, d, i1, j1);
        l1 = b(d, c, j1, i1);
        obj1.inJustDecodeBounds = false;
        obj1.inSampleSize = a(i1, j1, k1, l1);
        obj1 = BitmapFactory.decodeByteArray(((byte []) (obj)), 0, obj.length, ((android.graphics.BitmapFactory.Options) (obj1)));
        obj = obj1;
        if (obj1 == null) goto _L4; else goto _L3
_L3:
        if (((Bitmap) (obj1)).getWidth() > k1) goto _L6; else goto _L5
_L5:
        obj = obj1;
        if (((Bitmap) (obj1)).getHeight() <= l1) goto _L4; else goto _L6
_L6:
        obj = Bitmap.createScaledBitmap(((Bitmap) (obj1)), k1, l1, true);
        ((Bitmap) (obj1)).recycle();
          goto _L4
    }

    protected n a(i j)
    {
        obj;
        JVM INSTR monitorenter ;
        n n1;
        synchronized (e)
        {
            n1 = b(j);
        }
        return n1;
        OutOfMemoryError outofmemoryerror;
        outofmemoryerror;
        t.c("Caught OOM for %d byte image, url=%s", new Object[] {
            Integer.valueOf(j.b.length), d()
        });
        j = n.a(new k(outofmemoryerror));
        obj;
        JVM INSTR monitorexit ;
        return j;
        j;
        obj;
        JVM INSTR monitorexit ;
        throw j;
    }

    protected void a(Bitmap bitmap)
    {
        a.a(bitmap);
    }

    protected void b(Object obj)
    {
        a((Bitmap)obj);
    }

    public l.a s()
    {
        return l.a.a;
    }

}
