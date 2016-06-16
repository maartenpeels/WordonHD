// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.chartboost.sdk.b;
import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;

// Referenced classes of package com.chartboost.sdk.Libraries:
//            CBLogging, f

public final class CBUtility
{

    private static Boolean a = null;
    private static final X500Principal b = new X500Principal("CN=Android Debug,O=Android,C=US");
    private static Handler c;

    private CBUtility()
    {
    }

    public static float a(float f1, Context context)
    {
        return b(context) * f1;
    }

    public static int a(int i, Context context)
    {
        return Math.round((float)i * b(context));
    }

    public static SharedPreferences a()
    {
        if (com.chartboost.sdk.b.l() == null)
        {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before modifying or accessing preferences.");
        } else
        {
            return com.chartboost.sdk.b.l().getSharedPreferences("cbPrefs", 0);
        }
    }

    public static String a(Map map)
    {
        StringBuilder stringbuilder;
        Iterator iterator;
        if (map == null)
        {
            return "";
        }
        stringbuilder = new StringBuilder();
        if (!map.keySet().isEmpty())
        {
            stringbuilder.append("?");
        }
        iterator = map.keySet().iterator();
_L6:
        String s;
        String s1;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_164;
        }
        s = (String)iterator.next();
        if (stringbuilder.length() > 1)
        {
            stringbuilder.append("&");
        }
        s1 = map.get(s).toString();
        if (s == null) goto _L2; else goto _L1
_L1:
        s = URLEncoder.encode(s, "UTF-8");
_L3:
        stringbuilder.append(s);
        stringbuilder.append("=");
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_158;
        }
        s = URLEncoder.encode(s1, "UTF-8");
_L4:
        stringbuilder.append(s);
        continue; /* Loop/switch isn't completed */
        map;
        throw new RuntimeException("This method requires UTF-8 encoding support", map);
_L2:
        s = "";
          goto _L3
        s = "";
          goto _L4
        return stringbuilder.toString();
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static void a(Handler handler)
    {
        c = handler;
    }

    public static void a(HttpEntity httpentity)
    {
        try
        {
            httpentity.consumeContent();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (HttpEntity httpentity)
        {
            com.chartboost.sdk.Libraries.CBLogging.b("CBUtility", "Exception raised calling entity.consumeContent()", httpentity);
        }
    }

    public static void a(HttpResponse httpresponse)
    {
        if (httpresponse == null)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        if (httpresponse.getEntity() != null)
        {
            a(httpresponse.getEntity());
        }
        return;
        httpresponse;
        com.chartboost.sdk.Libraries.CBLogging.b("CBUtility", "Exception raised calling consumeQuietly over http response", httpresponse);
        return;
    }

    public static boolean a(Context context)
    {
        if (a != null) goto _L2; else goto _L1
_L1:
        Signature asignature[] = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures;
        int i;
        boolean flag;
        i = 0;
        flag = false;
_L6:
        if (i >= asignature.length) goto _L4; else goto _L3
_L3:
        boolean flag1 = ((X509Certificate)CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(asignature[i].toByteArray()))).getSubjectX500Principal().equals(b);
        flag = flag1;
        if (!flag) goto _L5; else goto _L4
_L4:
        if ((context.getApplicationInfo().flags & 2) != 0)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        a = Boolean.valueOf(flag | i);
_L2:
        return a.booleanValue();
_L5:
        i++;
          goto _L6
        Exception exception;
        exception;
        flag = false;
          goto _L4
        exception;
          goto _L4
    }

    public static float b(Context context)
    {
        return context.getResources().getDisplayMetrics().density;
    }

    public static boolean b()
    {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static f c()
    {
        Context context = com.chartboost.sdk.b.l();
        Display display = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
        int i = context.getResources().getConfiguration().orientation;
        int j = display.getRotation();
        byte byte0;
        if (display.getWidth() == display.getHeight())
        {
            byte0 = 3;
        } else
        if (display.getWidth() < display.getHeight())
        {
            byte0 = 1;
        } else
        {
            byte0 = 2;
        }
        if (byte0 == 1)
        {
            byte0 = 1;
            break MISSING_BLOCK_LABEL_57;
        }
        if (byte0 == 2)
        {
            byte0 = 0;
            continue; /* Loop/switch isn't completed */
        }
        if (byte0 == 3)
        {
            if (i == 1)
            {
                byte0 = 1;
                continue; /* Loop/switch isn't completed */
            }
            if (i == 2)
            {
                byte0 = 0;
                continue; /* Loop/switch isn't completed */
            }
        }
        byte0 = 1;
          goto _L1
_L3:
        i = byte0;
        if (j != 0)
        {
            if (j == 2)
            {
                i = byte0;
            } else
            if (byte0 == 0)
            {
                i = 1;
            } else
            {
                i = 0;
            }
        }
        if (i != 0)
        {
            switch (j)
            {
            default:
                return f.a;

            case 1: // '\001'
                return f.g;

            case 2: // '\002'
                return f.c;

            case 3: // '\003'
                return f.h;
            }
        }
        switch (j)
        {
        default:
            return com.chartboost.sdk.Libraries.f.b;

        case 1: // '\001'
            return f.e;

        case 2: // '\002'
            return f.d;

        case 3: // '\003'
            return f.f;
        }
_L1:
        if (true) goto _L3; else goto _L2
_L2:
    }

    public static String d()
    {
        Object obj;
        if (com.chartboost.sdk.b.a() == null)
        {
            obj = "";
        } else
        {
            obj = com.chartboost.sdk.b.a();
        }
        return String.format("%s %s %s", new Object[] {
            "Chartboost-Android-SDK", obj, "5.1.0"
        });
    }

    public static Handler e()
    {
        return c;
    }

    public static void throwProguardError(Exception exception)
    {
        if (exception instanceof NoSuchMethodException)
        {
            throw new IllegalStateException("Chartboost library error! Have you used proguard on your application? Make sure to add the line '-keep class com.chartboost.sdk.** { *; }' to your proguard config file.");
        } else
        {
            throw new RuntimeException(exception);
        }
    }

}
