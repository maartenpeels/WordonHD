// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.http;

import com.heyzap.internal.Logger;
import java.io.IOException;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.ssl.SSLSocketFactory;

public class MySSLSocketFactory extends SSLSocketFactory
{

    SSLContext sslContext;

    public MySSLSocketFactory(KeyStore keystore)
        throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException
    {
        super(keystore);
        sslContext = SSLContext.getInstance("TLS");
        keystore = new X509TrustManager() {

            final MySSLSocketFactory this$0;

            public void checkClientTrusted(X509Certificate ax509certificate[], String s)
                throws CertificateException
            {
            }

            public void checkServerTrusted(X509Certificate ax509certificate[], String s)
                throws CertificateException
            {
            }

            public X509Certificate[] getAcceptedIssuers()
            {
                return null;
            }

            
            {
                this$0 = MySSLSocketFactory.this;
                super();
            }
        };
        sslContext.init(null, new TrustManager[] {
            keystore
        }, null);
    }

    public static SSLSocketFactory getFixedSocketFactory()
    {
        MySSLSocketFactory mysslsocketfactory;
        try
        {
            mysslsocketfactory = new MySSLSocketFactory(getKeystore());
            mysslsocketfactory.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
        }
        catch (Throwable throwable)
        {
            Logger.trace(throwable);
            return SSLSocketFactory.getSocketFactory();
        }
        return mysslsocketfactory;
    }

    public static KeyStore getKeystore()
    {
        Object obj = null;
        Object obj1 = KeyStore.getInstance(KeyStore.getDefaultType());
        ((KeyStore) (obj1)).load(null, null);
        return ((KeyStore) (obj1));
        obj1;
_L2:
        Logger.trace(((Throwable) (obj1)));
        return ((KeyStore) (obj));
        Throwable throwable;
        throwable;
        obj = obj1;
        obj1 = throwable;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public Socket createSocket()
        throws IOException
    {
        return sslContext.getSocketFactory().createSocket();
    }

    public Socket createSocket(Socket socket, String s, int i, boolean flag)
        throws IOException
    {
        return sslContext.getSocketFactory().createSocket(socket, s, i, flag);
    }
}
