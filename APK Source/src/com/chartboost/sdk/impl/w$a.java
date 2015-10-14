// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;

// Referenced classes of package com.chartboost.sdk.impl:
//            w, t

static class f
{

    public long a;
    public String b;
    public String c;
    public long d;
    public long e;
    public long f;
    public Map g;

    public static f a(InputStream inputstream)
        throws IOException
    {
        f f1 = new <init>();
        if (w.a(inputstream) != 0x20140623)
        {
            throw new IOException();
        }
        f1.b = w.c(inputstream);
        f1.c = w.c(inputstream);
        if (f1.c.equals(""))
        {
            f1.c = null;
        }
        f1.d = w.b(inputstream);
        f1.e = w.b(inputstream);
        f1.f = w.b(inputstream);
        f1.g = w.d(inputstream);
        return f1;
    }

    public g a(byte abyte0[])
    {
        g g1 = new <init>();
        g1.a = abyte0;
        g1.b = c;
        g1.c = d;
        g1.d = e;
        g1.e = f;
        g1.f = g;
        return g1;
    }

    public boolean a(OutputStream outputstream)
    {
        w.a(outputstream, 0x20140623);
        w.a(outputstream, b);
        if (c != null)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        String s = "";
_L1:
        try
        {
            w.a(outputstream, s);
            w.a(outputstream, d);
            w.a(outputstream, e);
            w.a(outputstream, f);
            w.a(g, outputstream);
            outputstream.flush();
        }
        // Misplaced declaration of an exception variable
        catch (OutputStream outputstream)
        {
            t.b("%s", new Object[] {
                outputstream.toString()
            });
            return false;
        }
        return true;
        s = c;
          goto _L1
    }

    private ()
    {
    }

    public (String s,  )
    {
        b = s;
        a = .a.length;
        c = .b;
        d = .c;
        e = .d;
        f = .e;
        g = .f;
    }
}
