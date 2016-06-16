// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.b;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;

public final class ay
{

    private static ExecutorService a = null;
    private static ThreadFactory b = null;
    private static HttpClient c = null;

    static String a(Application application, String s)
    {
        return b(application, s);
    }

    public static ExecutorService a()
    {
        if (b == null)
        {
            b = new ThreadFactory() {

                private final AtomicInteger a = new AtomicInteger(1);

                public Thread newThread(Runnable runnable)
                {
                    return new Thread(runnable, (new StringBuilder()).append("Chartboost Thread #").append(a.getAndIncrement()).toString());
                }

            };
        }
        if (a == null)
        {
            a = Executors.newFixedThreadPool(5, b);
        }
        return a;
    }

    private static String b(Application application, String s)
    {
        String s1;
        StringBuilder stringbuilder;
        try
        {
            s1 = application.getPackageManager().getPackageInfo(application.getPackageName(), 0).versionName;
        }
        // Misplaced declaration of an exception variable
        catch (Application application)
        {
            throw new RuntimeException(application);
        }
        stringbuilder = new StringBuilder();
        stringbuilder.append(application.getPackageName());
        stringbuilder.append("/");
        stringbuilder.append(s1);
        stringbuilder.append(" (");
        stringbuilder.append("Linux; U; Android ");
        stringbuilder.append(android.os.Build.VERSION.RELEASE);
        stringbuilder.append("; ");
        stringbuilder.append(Locale.getDefault());
        stringbuilder.append("; ");
        stringbuilder.append(Build.PRODUCT);
        stringbuilder.append(")");
        if (s != null)
        {
            stringbuilder.append(" ");
            stringbuilder.append(s);
        }
        return stringbuilder.toString();
    }

    protected static HttpClient b()
    {
        if (c != null)
        {
            return c;
        }
        HttpClient httpclient;
        try
        {
            c = new DefaultHttpClient((Application)com.chartboost.sdk.b.l().getApplicationContext()) {

                final Application a;

                protected SocketFactory a()
                {
                    Object obj2;
                    try
                    {
                        obj2 = Class.forName("android.net.SSLSessionCache");
                        Object obj3 = ((Class) (obj2)).getConstructor(new Class[] {
                            android/content/Context
                        }).newInstance(new Object[] {
                            a
                        });
                        obj2 = (SocketFactory)Class.forName("android.net.SSLCertificateSocketFactory").getMethod("getHttpSocketFactory", new Class[] {
                            Integer.TYPE, obj2
                        }).invoke(null, new Object[] {
                            Integer.valueOf(30000), obj3
                        });
                    }
                    catch (Exception exception2)
                    {
                        CBLogging.b("CBAsync:HttpClientProvider", "Unable to use android.net.SSLCertificateSocketFactory to get a SSL session caching socket factory, falling back to a non-caching socket factory", exception2);
                        return SSLSocketFactory.getSocketFactory();
                    }
                    return ((SocketFactory) (obj2));
                }

                protected ClientConnectionManager createClientConnectionManager()
                {
                    SchemeRegistry schemeregistry = new SchemeRegistry();
                    schemeregistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
                    schemeregistry.register(new Scheme("https", a(), 443));
                    org.apache.http.params.HttpParams httpparams = getParams();
                    HttpConnectionParams.setConnectionTimeout(httpparams, 30000);
                    HttpConnectionParams.setSoTimeout(httpparams, 30000);
                    HttpProtocolParams.setUserAgent(httpparams, ay.a(a, HttpProtocolParams.getUserAgent(httpparams)));
                    return new ThreadSafeClientConnManager(httpparams, schemeregistry);
                }

            
            {
                a = application;
                super();
            }
            };
            httpclient = c;
        }
        catch (Exception exception)
        {
            CBLogging.b("CBAsync", "Exception raised getting a Chartboost HTTPClient on which to run any network request", exception);
            Object obj;
            try
            {
                Object obj1 = new DefaultHttpClient();
                obj = ((HttpClient) (obj1)).getConnectionManager();
                obj1 = ((HttpClient) (obj1)).getParams();
                c = new DefaultHttpClient(new ThreadSafeClientConnManager(((org.apache.http.params.HttpParams) (obj1)), ((ClientConnectionManager) (obj)).getSchemeRegistry()), ((org.apache.http.params.HttpParams) (obj1)));
                obj = c;
            }
            catch (Exception exception1)
            {
                CBLogging.b("CBAsync", "Exception raised creating a simple HTTP client", exception);
                c = new DefaultHttpClient();
                return c;
            }
            return ((HttpClient) (obj));
        }
        return httpclient;
    }

}
