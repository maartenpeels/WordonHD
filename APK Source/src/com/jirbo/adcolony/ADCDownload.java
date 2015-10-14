// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;

// Referenced classes of package com.jirbo.adcolony:
//            j, aa, l, a, 
//            d, ADCStorage, AdColony

class ADCDownload extends j
    implements Runnable
{
    public static interface Listener
    {

        public abstract void on_download_finished(ADCDownload adcdownload);
    }


    d a;
    Listener b;
    String c;
    File d;
    Object e;
    String f;
    String g;
    boolean h;
    boolean i;
    boolean j;
    Map k;
    SSLContext l;
    int m;
    String n;

    ADCDownload(d d1, String s, Listener listener)
    {
        this(d1, s, listener, null);
    }

    ADCDownload(d d1, String s, Listener listener, String s1)
    {
        super(d1, false);
        c = s;
        b = listener;
        if (s1 != null)
        {
            d = new File(s1);
        }
    }

    ADCDownload a(Object obj)
    {
        e = obj;
        return this;
    }

    ADCDownload a(String s, String s1)
    {
        f = s;
        g = s1;
        return this;
    }

    void a()
    {
        b.on_download_finished(this);
    }

    public void b()
    {
        aa.a(this);
    }

    public void run()
    {
        int l1 = 1;
_L44:
        if (l1 > 3) goto _L2; else goto _L1
_L1:
        Object obj;
        Object obj1;
        Object obj2;
        obj1 = null;
        obj = null;
        obj2 = null;
        byte abyte1[] = (HttpURLConnection)(HttpURLConnection)(new URL(c)).openConnection();
        if (f == null) goto _L4; else goto _L3
_L3:
        l.a.b("Performing POST");
        obj = obj2;
        if (!c.startsWith("https://"))
        {
            break MISSING_BLOCK_LABEL_103;
        }
        obj = obj2;
        if (android.os.Build.VERSION.SDK_INT >= 10)
        {
            obj = (HttpsURLConnection)(HttpsURLConnection)(new URL(c)).openConnection();
            j = true;
        }
        if (!j) goto _L6; else goto _L5
_L5:
        ((HttpsURLConnection) (obj)).setRequestMethod("POST");
_L24:
        if (!j) goto _L8; else goto _L7
_L7:
        ((HttpsURLConnection) (obj)).setDoOutput(true);
_L25:
        if (!j) goto _L10; else goto _L9
_L9:
        obj1 = new PrintStream(((HttpsURLConnection) (obj)).getOutputStream());
_L26:
        ((PrintStream) (obj1)).println(g);
        l.a.a("Post data: ").b(g);
        if (!j) goto _L12; else goto _L11
_L11:
        ((HttpsURLConnection) (obj)).connect();
_L27:
        if ((!j || ((HttpsURLConnection) (obj)).getResponseCode() != 200) && (j || abyte1.getResponseCode() != 200)) goto _L14; else goto _L13
_L13:
        if (!j) goto _L16; else goto _L15
_L15:
        obj1 = ((HttpsURLConnection) (obj)).getInputStream();
_L28:
        obj2 = new StringBuilder();
        if (!j) goto _L18; else goto _L17
_L17:
        obj = ((HttpsURLConnection) (obj)).getHeaderFields();
_L29:
        int i1;
        k = ((Map) (obj));
        obj = new byte[1024];
        i1 = ((InputStream) (obj1)).read(((byte []) (obj)), 0, 1024);
          goto _L19
_L22:
        int j1;
        j1++;
        if (j1 >= i1) goto _L21; else goto _L20
_L20:
        ((StringBuilder) (obj2)).append((char)obj[j1]);
          goto _L22
_L14:
        if (l1 != 3) goto _L23; else goto _L2
_L2:
        i = false;
        com.jirbo.adcolony.a.a(this);
        return;
_L6:
        abyte1.setRequestMethod("POST");
          goto _L24
_L8:
        abyte1.setDoOutput(true);
          goto _L25
_L10:
        obj1 = new PrintStream(abyte1.getOutputStream());
          goto _L26
_L12:
        abyte1.connect();
          goto _L27
_L16:
        obj1 = abyte1.getInputStream();
          goto _L28
_L18:
        obj = abyte1.getHeaderFields();
          goto _L29
_L21:
        i1 = ((InputStream) (obj1)).read(((byte []) (obj)), 0, 1024);
          goto _L19
_L46:
        try
        {
            ((InputStream) (obj1)).close();
            n = ((StringBuilder) (obj2)).toString();
            m = n.length();
            i = true;
            com.jirbo.adcolony.a.a(this);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            com.jirbo.adcolony.a.c((new StringBuilder()).append("Download of ").append(c).append(" failed:\n").append(((IOException) (obj)).toString()).toString());
        }
          goto _L14
_L4:
        abyte1.setReadTimeout(30000);
        if (h)
        {
            abyte1.setInstanceFollowRedirects(false);
        }
        if (d == null) goto _L31; else goto _L30
_L30:
        if (a != null && a.f != null)
        {
            a.f.b();
        }
        obj = d.getAbsolutePath();
        obj1 = new FileOutputStream(((String) (obj)));
        obj2 = abyte1.getInputStream();
        j1 = abyte1.getContentLength();
        m = 0;
        abyte1 = new byte[1024];
        i1 = ((InputStream) (obj2)).read(abyte1, 0, 1024);
          goto _L32
_L48:
        int k1;
        m = m + k1;
        ((OutputStream) (obj1)).write(abyte1, 0, k1);
        i1 = ((InputStream) (obj2)).read(abyte1, 0, 1024);
        int i2;
        j1 = i2;
        if (i2 != 0) goto _L32; else goto _L33
_L33:
        ((InputStream) (obj2)).close();
        ((OutputStream) (obj1)).flush();
        ((OutputStream) (obj1)).close();
        l.b.a("Downloaded ").a(c).a(" to ").b(obj);
_L43:
        i = true;
        com.jirbo.adcolony.a.a(this);
        return;
_L31:
        if (!h)
        {
            break MISSING_BLOCK_LABEL_807;
        }
        obj = obj1;
        if (!c.startsWith("https://"))
        {
            break MISSING_BLOCK_LABEL_720;
        }
        obj = obj1;
        if (android.os.Build.VERSION.SDK_INT >= 10)
        {
            obj = (HttpsURLConnection)(HttpsURLConnection)(new URL(c)).openConnection();
            j = true;
        }
        if (!j)
        {
            break MISSING_BLOCK_LABEL_797;
        }
        i1 = ((HttpsURLConnection) (obj)).getResponseCode();
_L34:
        if (i1 <= 0)
        {
            break MISSING_BLOCK_LABEL_807;
        }
        l.a.a("Got HTTP response ").a(i1).b(" - counting as completed submission for 3rd party tracking.");
        l.b.a("Downloaded ").b(c);
        n = "";
        m = 0;
        i = true;
        com.jirbo.adcolony.a.a(this);
        return;
        i1 = abyte1.getResponseCode();
          goto _L34
        if (!c.startsWith("https://") || android.os.Build.VERSION.SDK_INT < 10) goto _L36; else goto _L35
_L35:
        obj = (HttpsURLConnection)(HttpsURLConnection)(new URL(c)).openConnection();
        j = true;
        l.a.b("ADCDownload - use ssl!");
_L40:
        l.a.b("ADCDownload - before pause");
        OutOfMemoryError outofmemoryerror;
        byte abyte0[];
        try
        {
            Thread.sleep(3000L);
        }
        catch (Exception exception) { }
        l.a.b("ADCDownload - getInputStream");
        if (!j) goto _L38; else goto _L37
_L37:
        obj = ((HttpsURLConnection) (obj)).getInputStream();
_L41:
        obj1 = new StringBuilder();
        abyte0 = new byte[1024];
        i1 = ((InputStream) (obj)).read(abyte0, 0, 1024);
_L42:
        if (i1 == -1)
        {
            break MISSING_BLOCK_LABEL_1007;
        }
        j1 = -1;
_L39:
        j1++;
        if (j1 >= i1)
        {
            break MISSING_BLOCK_LABEL_993;
        }
        ((StringBuilder) (obj1)).append((char)abyte0[j1]);
          goto _L39
        obj;
        l.d.b("Out of memory, disabling AdColony");
        AdColony.disable();
        return;
_L36:
        j = false;
          goto _L40
_L38:
        obj = abyte1.getInputStream();
          goto _L41
        i1 = ((InputStream) (obj)).read(abyte0, 0, 1024);
          goto _L42
        ((InputStream) (obj)).close();
        n = ((StringBuilder) (obj1)).toString();
        m = n.length();
        if (c.contains("androidads21"))
        {
            a.ab = System.currentTimeMillis();
        }
        l.b.a("Downloaded ").b(c);
          goto _L43
        outofmemoryerror;
        l.d.b("Out of memory, disabling AdColony");
        AdColony.disable();
        return;
_L23:
        long l2 = (l1 + 1) * 10 * 1000;
        try
        {
            Thread.sleep(l2);
        }
        catch (InterruptedException interruptedexception) { }
        l.b.a("Trying again (").a(l1 + 1).b("/3)");
        l1++;
          goto _L44
_L19:
        if (i1 == -1) goto _L46; else goto _L45
_L45:
        j1 = -1;
          goto _L22
_L32:
        if (i1 == -1) goto _L33; else goto _L47
_L47:
        k1 = i1;
        i2 = j1;
        if (j1 > 0)
        {
            k1 = i1;
            if (i1 > j1)
            {
                k1 = j1;
            }
            i2 = j1 - k1;
        }
          goto _L48
    }
}
