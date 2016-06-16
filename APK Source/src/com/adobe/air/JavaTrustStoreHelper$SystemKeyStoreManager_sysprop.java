// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import java.io.File;
import java.io.FileInputStream;
import java.security.KeyStore;

// Referenced classes of package com.adobe.air:
//            JavaTrustStoreHelper

private static class <init>
    implements <init>
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

    private ()
    {
    }

    ( )
    {
        this();
    }
}
