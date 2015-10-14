// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.os.SystemClock;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.impl.cookie.DateUtils;

// Referenced classes of package com.chartboost.sdk.impl:
//            f, t, v, l, 
//            p, s, q, ac, 
//            z, i, r, a, 
//            j, h

public class u
    implements f
{

    protected static final boolean a;
    private static int d = 3000;
    private static int e = 4096;
    protected final z b;
    protected final v c;

    public u(z z1)
    {
        this(z1, new v(e));
    }

    public u(z z1, v v1)
    {
        b = z1;
        c = v1;
    }

    private static Map a(Header aheader[])
    {
        HashMap hashmap = new HashMap();
        int k = 0;
        do
        {
            if (k >= aheader.length)
            {
                return hashmap;
            }
            hashmap.put(aheader[k].getName(), aheader[k].getValue());
            k++;
        } while (true);
    }

    private void a(long l1, l l2, byte abyte0[], StatusLine statusline)
    {
        if (a || l1 > (long)d)
        {
            if (abyte0 != null)
            {
                abyte0 = Integer.valueOf(abyte0.length);
            } else
            {
                abyte0 = "null";
            }
            t.b("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", new Object[] {
                l2, Long.valueOf(l1), abyte0, Integer.valueOf(statusline.getStatusCode()), Integer.valueOf(l2.u().b())
            });
        }
    }

    private static void a(String s1, l l1, s s2)
        throws s
    {
        p p1 = l1.u();
        int k = l1.t();
        try
        {
            p1.a(s2);
        }
        // Misplaced declaration of an exception variable
        catch (s s2)
        {
            l1.a(String.format("%s-timeout-giveup [timeout=%s]", new Object[] {
                s1, Integer.valueOf(k)
            }));
            throw s2;
        }
        l1.a(String.format("%s-retry [timeout=%s]", new Object[] {
            s1, Integer.valueOf(k)
        }));
    }

    private void a(Map map, b.a a1)
    {
        if (a1 != null)
        {
            if (a1.b != null)
            {
                map.put("If-None-Match", a1.b);
            }
            if (a1.c > 0L)
            {
                map.put("If-Modified-Since", DateUtils.formatDate(new Date(a1.c)));
                return;
            }
        }
    }

    private byte[] a(HttpEntity httpentity)
        throws IOException, q
    {
        ac ac1 = new ac(c, (int)httpentity.getContentLength());
        Object obj = httpentity.getContent();
        if (obj != null) goto _L2; else goto _L1
_L1:
        throw new q();
        obj;
        byte abyte0[] = null;
_L4:
        int k;
        try
        {
            httpentity.consumeContent();
        }
        // Misplaced declaration of an exception variable
        catch (HttpEntity httpentity)
        {
            t.a("Error occured when calling consumingContent", new Object[0]);
        }
        c.a(abyte0);
        ac1.close();
        throw obj;
_L2:
        abyte0 = c.a(1024);
_L3:
        k = ((InputStream) (obj)).read(abyte0);
        if (k != -1)
        {
            break MISSING_BLOCK_LABEL_114;
        }
        obj = ac1.toByteArray();
        try
        {
            httpentity.consumeContent();
        }
        // Misplaced declaration of an exception variable
        catch (HttpEntity httpentity)
        {
            t.a("Error occured when calling consumingContent", new Object[0]);
        }
        c.a(abyte0);
        ac1.close();
        return ((byte []) (obj));
        ac1.write(abyte0, 0, k);
          goto _L3
        obj;
          goto _L4
    }

    public i a(l l1)
        throws s
    {
        long l2 = SystemClock.elapsedRealtime();
_L11:
        Object obj1 = new HashMap();
        Object obj;
        obj = new HashMap();
        a(((Map) (obj)), l1.f());
        obj = b.a(l1, ((Map) (obj)));
        byte abyte0[];
        StatusLine statusline;
        int k;
        statusline = ((HttpResponse) (obj)).getStatusLine();
        k = statusline.getStatusCode();
        abyte0 = a(((HttpResponse) (obj)).getAllHeaders());
        if (k != 304) goto _L2; else goto _L1
_L1:
        if (l1.f() != null) goto _L4; else goto _L3
_L3:
        obj1 = null;
_L5:
        return new i(304, ((byte []) (obj1)), abyte0, true);
_L4:
        obj1 = l1.f().a;
        if (true) goto _L5; else goto _L2
_L2:
        if (((HttpResponse) (obj)).getEntity() == null) goto _L7; else goto _L6
_L6:
        obj1 = a(((HttpResponse) (obj)).getEntity());
_L9:
        a(SystemClock.elapsedRealtime() - l2, l1, ((byte []) (obj1)), statusline);
        if (k >= 200 && k <= 299)
        {
            break; /* Loop/switch isn't completed */
        }
        Object obj2;
        Object obj3;
        IOException ioexception;
        try
        {
            throw new IOException();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            a("socket", l1, ((s) (new r())));
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            a("connection", l1, ((s) (new r())));
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new RuntimeException((new StringBuilder("Bad URL ")).append(l1.d()).toString(), ((Throwable) (obj)));
        }
        catch (IOException ioexception1)
        {
            obj2 = obj1;
            Object obj4 = obj;
            obj = ioexception1;
            obj1 = abyte0;
            abyte0 = ((byte []) (obj2));
            obj2 = obj4;
        }
        break MISSING_BLOCK_LABEL_268;
_L7:
        obj1 = new byte[0];
        if (true) goto _L9; else goto _L8
_L8:
        obj2 = new i(k, ((byte []) (obj1)), abyte0, false);
        return ((i) (obj2));
        obj;
        obj2 = null;
        abyte0 = null;
_L12:
        if (obj2 != null)
        {
            k = ((HttpResponse) (obj2)).getStatusLine().getStatusCode();
            t.c("Unexpected response code %d for %s", new Object[] {
                Integer.valueOf(k), l1.d()
            });
            obj = new i(k, abyte0, ((Map) (obj1)), false);
            if (abyte0 != null)
            {
                if (k == 401 || k == 403)
                {
                    a("auth", l1, ((s) (new a(((i) (obj))))));
                } else
                {
                    throw new q(((i) (obj)));
                }
            } else
            {
                throw new h(((i) (obj)));
            }
        } else
        {
            throw new j(((Throwable) (obj)));
        }
        if (true) goto _L11; else goto _L10
_L10:
        abyte0;
        obj2 = obj;
        obj3 = null;
        obj = abyte0;
        abyte0 = obj3;
          goto _L12
        ioexception;
        obj3 = null;
        obj2 = obj;
        obj1 = abyte0;
        obj = ioexception;
        abyte0 = obj3;
          goto _L12
    }

    static 
    {
        a = t.b;
    }
}
