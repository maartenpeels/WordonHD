// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.SyncFailedException;
import java.security.KeyStore;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

public final class JavaTrustStoreHelper
{
    private static interface SystemKeyStoreManager
    {

        public abstract KeyStore getKeyStore();

        public abstract long getTimestamp();
    }

    private static class SystemKeyStoreManager_files
        implements SystemKeyStoreManager
    {

        private static final String kDirectoryPath = "/system/etc/security/cacerts";
        private int mNumFilesWhenCreated;

        private static String[] getFileListing()
        {
            return (new File("/system/etc/security/cacerts")).list();
        }

        public static boolean isValid()
        {
            return (new File("/system/etc/security/cacerts")).exists();
        }

        public KeyStore getKeyStore()
        {
            KeyStore keystore;
            CertificateFactory certificatefactory;
            String as[];
            keystore = KeyStore.getInstance(KeyStore.getDefaultType());
            keystore.load(null);
            certificatefactory = CertificateFactory.getInstance("X.509");
            as = getFileListing();
            mNumFilesWhenCreated = as.length;
            int i = 0;
_L2:
            Object obj = keystore;
            if (i >= as.length)
            {
                break; /* Loop/switch isn't completed */
            }
            obj = as[i];
            keystore.setCertificateEntry(String.valueOf(i), certificatefactory.generateCertificate(new FileInputStream(new File((new StringBuilder()).append("/system/etc/security/cacerts/").append(((String) (obj))).toString()))));
            i++;
            if (true) goto _L2; else goto _L1
            obj;
            mNumFilesWhenCreated = -1;
            obj = null;
_L1:
            return ((KeyStore) (obj));
        }

        public long getTimestamp()
        {
            String as[] = getFileListing();
            if (mNumFilesWhenCreated != -1 && as.length != mNumFilesWhenCreated)
            {
                return 0x7fffffffffffffffL;
            }
            long l = 0L;
            for (int i = 0; i < as.length; i++)
            {
                l = Math.max((new File((new StringBuilder()).append("/system/etc/security/cacerts/").append(as[i]).toString())).lastModified(), l);
            }

            return l;
        }

        private SystemKeyStoreManager_files()
        {
            mNumFilesWhenCreated = -1;
        }

    }

    private static class SystemKeyStoreManager_stub
        implements SystemKeyStoreManager
    {

        public KeyStore getKeyStore()
        {
            return null;
        }

        public long getTimestamp()
        {
            return 0L;
        }

        private SystemKeyStoreManager_stub()
        {
        }

    }

    private static class SystemKeyStoreManager_sysprop
        implements SystemKeyStoreManager
    {

        private static final String kTheProp = "javax.net.ssl.trustStore";

        public static boolean isValid()
        {
            return System.getProperty("javax.net.ssl.trustStore") != null;
        }

        public KeyStore getKeyStore()
        {
            KeyStore keystore;
            Object obj;
            try
            {
                keystore = KeyStore.getInstance(KeyStore.getDefaultType());
                obj = System.getProperty("javax.net.ssl.trustStore");
            }
            catch (Exception exception)
            {
                return null;
            }
            if (obj == null)
            {
                return null;
            }
            obj = new File(((String) (obj)));
            if (obj == null)
            {
                return null;
            }
            keystore.load(new FileInputStream(((File) (obj))), null);
            return keystore;
        }

        public long getTimestamp()
        {
            return (new File(System.getProperty("javax.net.ssl.trustStore"))).lastModified();
        }

        private SystemKeyStoreManager_sysprop()
        {
        }

    }


    private static final String LOG_TAG = "JavaTrustStoreHelper";
    private static SystemKeyStoreManager mSystemKeyStoreMgr = initSystemKeyStoreMgr();

    public JavaTrustStoreHelper()
    {
    }

    public static void copyTimestamp(String s, String s1)
    {
        try
        {
            s = new File(s);
            (new File(s1)).setLastModified(s.lastModified());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
    }

    private static int dumpAcceptedIssuersToFile(X509TrustManager x509trustmanager, RandomAccessFile randomaccessfile)
        throws CertificateEncodingException, IOException, SyncFailedException
    {
        x509trustmanager = x509trustmanager.getAcceptedIssuers();
        for (int i = 0; i < x509trustmanager.length; i++)
        {
            byte abyte0[] = x509trustmanager[i].getEncoded();
            randomaccessfile.writeInt(abyte0.length);
            randomaccessfile.write(abyte0);
        }

        randomaccessfile.getFD().sync();
        return x509trustmanager.length;
    }

    public static boolean enumerateRootCAs(String s, String s1)
    {
        if (!isAirCertBundleStale(s))
        {
            return false;
        }
        s = getX509TrustManager();
        if (s == null)
        {
            return false;
        }
        try
        {
            s1 = new File(s1);
            RandomAccessFile randomaccessfile = new RandomAccessFile(s1, "rw");
            randomaccessfile.setLength(0L);
            dumpAcceptedIssuersToFile(s, randomaccessfile);
            s1.setLastModified(getTrustStoreTimestamp());
            randomaccessfile.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        return true;
    }

    private static long getTrustStoreTimestamp()
    {
        return mSystemKeyStoreMgr.getTimestamp();
    }

    private static X509TrustManager getX509TrustManager()
    {
        TrustManagerFactory trustmanagerfactory = getX509TrustManagerFactory();
        if (trustmanagerfactory != null)
        {
            javax.net.ssl.TrustManager atrustmanager[] = trustmanagerfactory.getTrustManagers();
            for (int i = 0; i < atrustmanager.length; i++)
            {
                if (atrustmanager[i] instanceof X509TrustManager)
                {
                    return (X509TrustManager)atrustmanager[i];
                }
            }

        }
        return null;
    }

    private static TrustManagerFactory getX509TrustManagerFactory()
    {
        TrustManagerFactory trustmanagerfactory;
        try
        {
            trustmanagerfactory = TrustManagerFactory.getInstance("X509");
            trustmanagerfactory.init(mSystemKeyStoreMgr.getKeyStore());
        }
        catch (Exception exception)
        {
            return null;
        }
        return trustmanagerfactory;
    }

    private static SystemKeyStoreManager initSystemKeyStoreMgr()
    {
        if (SystemKeyStoreManager_sysprop.isValid())
        {
            return new SystemKeyStoreManager_sysprop();
        }
        if (SystemKeyStoreManager_files.isValid())
        {
            return new SystemKeyStoreManager_files();
        } else
        {
            return new SystemKeyStoreManager_stub();
        }
    }

    private static boolean isAirCertBundleStale(String s)
    {
        s = new File(s);
        if (s.exists())
        {
            return mSystemKeyStoreMgr.getTimestamp() > s.lastModified();
        } else
        {
            return true;
        }
    }

}
