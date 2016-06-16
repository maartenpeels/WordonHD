// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import com.chartboost.sdk.f;
import com.chartboost.sdk.impl.bd;
import java.io.File;

// Referenced classes of package com.chartboost.sdk.Libraries:
//            CBUtility, CBLogging, h

public final class j
    implements com.chartboost.sdk.f.b
{
    public static class a
    {

        private int a;
        private String b;
        private File c;
        private Bitmap d;
        private h e;
        private int f;
        private int g;

        static int a(a a1)
        {
            return a1.a;
        }

        private void f()
        {
            try
            {
                android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
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
            android.graphics.BitmapFactory.Options options;
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
            options = new android.graphics.BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length, options);
            options = new android.graphics.BitmapFactory.Options();
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

        public a(String s, File file, h h1)
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


    private a a;
    private f b;
    private String c;
    private float d;
    private com.chartboost.sdk.impl.bd.b e;

    public j(f f1)
    {
        d = 1.0F;
        e = new com.chartboost.sdk.impl.bd.b() {

            final j a;

            public void a(a a1, Bundle bundle)
            {
                j.a(a, a1);
                j.a(a).a(a);
            }

            
            {
                a = j.this;
                super();
            }
        };
        b = f1;
    }

    static a a(j j1, a a1)
    {
        j1.a = a1;
        return a1;
    }

    static f a(j j1)
    {
        return j1.b;
    }

    static com.chartboost.sdk.impl.bd.b b(j j1)
    {
        return j1.e;
    }

    public void a(e.a a1, String s, Bundle bundle)
    {
        a1 = a1.a(s);
        c = s;
        if (!a1.b())
        {
            s = a1.e("url");
            d = a1.a("scale").a(1.0F);
            if (!TextUtils.isEmpty(s))
            {
                b.b(this);
                CBUtility.e().post(new Runnable(a1, s, bundle) {

                    final e.a a;
                    final String b;
                    final Bundle c;
                    final j d;

                    public void run()
                    {
                        String s1;
                        Bundle bundle1;
                        bd bd1;
                        String s2;
                        com.chartboost.sdk.impl.bd.b b1;
                        if (a.e("checksum") != null && !a.e("checksum").isEmpty())
                        {
                            s1 = a.e("checksum");
                        } else
                        {
                            s1 = "";
                        }
                        bd1 = bd.a();
                        s2 = b;
                        b1 = j.b(d);
                        if (c == null)
                        {
                            bundle1 = new Bundle();
                        } else
                        {
                            bundle1 = c;
                        }
                        bd1.a(s2, s1, b1, null, bundle1);
                    }

            
            {
                d = j.this;
                a = a1;
                b = s;
                c = bundle;
                super();
            }
                });
                return;
            }
        }
    }

    public void a(String s)
    {
        Bundle bundle = new Bundle();
        a(b.g(), s, bundle);
    }

    public boolean a()
    {
        return e();
    }

    public int b()
    {
        return a.d() * a.a(a);
    }

    public int c()
    {
        return a.e() * a.a(a);
    }

    public void d()
    {
        if (a != null)
        {
            a.c();
        }
    }

    public boolean e()
    {
        return a != null;
    }

    public Bitmap f()
    {
        if (a != null)
        {
            return a.a();
        } else
        {
            return null;
        }
    }

    public float g()
    {
        return d;
    }

    public int h()
    {
        return Math.round((float)b() / d);
    }

    public int i()
    {
        return Math.round((float)c() / d);
    }
}
