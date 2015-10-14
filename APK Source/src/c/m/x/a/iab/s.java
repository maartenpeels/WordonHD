// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.iab;

import android.text.TextUtils;
import android.util.Log;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;

// Referenced classes of package c.m.x.a.iab:
//            b, a

public final class s
{

    private static PublicKey a(String s1)
    {
        try
        {
            s1 = c.m.x.a.iab.a.a(s1);
            s1 = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(s1));
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            throw new RuntimeException(s1);
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            Log.e("IABUtil/Security", "Invalid key specification.");
            throw new IllegalArgumentException(s1);
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            Log.e("IABUtil/Security", "Base64 decoding failed.");
            throw new IllegalArgumentException(s1);
        }
        return s1;
    }

    public static boolean a(String s1, String s2, String s3)
    {
        if (s2 == null)
        {
            Log.e("IABUtil/Security", "data is null");
            return false;
        }
        if (!TextUtils.isEmpty(s3) && !a(a(s1), s2, s3))
        {
            Log.w("IABUtil/Security", "signature does not match data.");
            return false;
        } else
        {
            return true;
        }
    }

    private static boolean a(PublicKey publickey, String s1, String s2)
    {
        Signature signature = Signature.getInstance("SHA1withRSA");
        signature.initVerify(publickey);
        signature.update(s1.getBytes());
        if (signature.verify(c.m.x.a.iab.a.a(s2)))
        {
            break MISSING_BLOCK_LABEL_40;
        }
        Log.e("IABUtil/Security", "Signature verification failed.");
        return false;
        return true;
        publickey;
        Log.e("IABUtil/Security", "NoSuchAlgorithmException.");
_L2:
        return false;
        publickey;
        Log.e("IABUtil/Security", "Invalid key specification.");
        continue; /* Loop/switch isn't completed */
        publickey;
        Log.e("IABUtil/Security", "Signature exception.");
        continue; /* Loop/switch isn't completed */
        publickey;
        Log.e("IABUtil/Security", "Base64 decoding failed.");
        if (true) goto _L2; else goto _L1
_L1:
    }
}
