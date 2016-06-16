// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Tracking;

import android.text.TextUtils;
import android.util.Base64;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.a;
import com.chartboost.sdk.Libraries.e;
import com.chartboost.sdk.Libraries.g;
import com.chartboost.sdk.Libraries.h;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.b;
import com.chartboost.sdk.impl.ba;
import com.chartboost.sdk.impl.bb;
import java.io.File;
import java.util.EnumMap;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CBAnalytics
{
    public static final class CBIAPPurchaseInfo extends Enum
    {

        public static final CBIAPPurchaseInfo AMAZON_PURCHASE_TOKEN;
        public static final CBIAPPurchaseInfo AMAZON_USER_ID;
        public static final CBIAPPurchaseInfo GOOGLE_PURCHASE_DATA;
        public static final CBIAPPurchaseInfo GOOGLE_PURCHASE_SIGNATURE;
        public static final CBIAPPurchaseInfo PRODUCT_CURRENCY_CODE;
        public static final CBIAPPurchaseInfo PRODUCT_DESCRIPTION;
        public static final CBIAPPurchaseInfo PRODUCT_ID;
        public static final CBIAPPurchaseInfo PRODUCT_PRICE;
        public static final CBIAPPurchaseInfo PRODUCT_TITLE;
        private static final CBIAPPurchaseInfo a[];

        public static CBIAPPurchaseInfo valueOf(String s)
        {
            return (CBIAPPurchaseInfo)Enum.valueOf(com/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo, s);
        }

        public static CBIAPPurchaseInfo[] values()
        {
            return (CBIAPPurchaseInfo[])a.clone();
        }

        static 
        {
            PRODUCT_ID = new CBIAPPurchaseInfo("PRODUCT_ID", 0);
            PRODUCT_TITLE = new CBIAPPurchaseInfo("PRODUCT_TITLE", 1);
            PRODUCT_DESCRIPTION = new CBIAPPurchaseInfo("PRODUCT_DESCRIPTION", 2);
            PRODUCT_PRICE = new CBIAPPurchaseInfo("PRODUCT_PRICE", 3);
            PRODUCT_CURRENCY_CODE = new CBIAPPurchaseInfo("PRODUCT_CURRENCY_CODE", 4);
            GOOGLE_PURCHASE_DATA = new CBIAPPurchaseInfo("GOOGLE_PURCHASE_DATA", 5);
            GOOGLE_PURCHASE_SIGNATURE = new CBIAPPurchaseInfo("GOOGLE_PURCHASE_SIGNATURE", 6);
            AMAZON_PURCHASE_TOKEN = new CBIAPPurchaseInfo("AMAZON_PURCHASE_TOKEN", 7);
            AMAZON_USER_ID = new CBIAPPurchaseInfo("AMAZON_USER_ID", 8);
            a = (new CBIAPPurchaseInfo[] {
                PRODUCT_ID, PRODUCT_TITLE, PRODUCT_DESCRIPTION, PRODUCT_PRICE, PRODUCT_CURRENCY_CODE, GOOGLE_PURCHASE_DATA, GOOGLE_PURCHASE_SIGNATURE, AMAZON_PURCHASE_TOKEN, AMAZON_USER_ID
            });
        }

        private CBIAPPurchaseInfo(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class CBIAPType extends Enum
    {

        public static final CBIAPType AMAZON;
        public static final CBIAPType GOOGLE_PLAY;
        private static final CBIAPType a[];

        public static CBIAPType valueOf(String s)
        {
            return (CBIAPType)Enum.valueOf(com/chartboost/sdk/Tracking/CBAnalytics$CBIAPType, s);
        }

        public static CBIAPType[] values()
        {
            return (CBIAPType[])a.clone();
        }

        static 
        {
            GOOGLE_PLAY = new CBIAPType("GOOGLE_PLAY", 0);
            AMAZON = new CBIAPType("AMAZON", 1);
            a = (new CBIAPType[] {
                GOOGLE_PLAY, AMAZON
            });
        }

        private CBIAPType(String s, int i)
        {
            super(s, i);
        }
    }


    private CBAnalytics()
    {
    }

    private static void a(com.chartboost.sdk.Libraries.e.a a1, String s, CBIAPType cbiaptype)
    {
        com/chartboost/sdk/Tracking/CBAnalytics;
        JVM INSTR monitorenter ;
        ba ba1 = new ba(String.format(Locale.US, "%s%s", new Object[] {
            "/post-install-event/", s
        }));
        ba1.a(s, a1);
        ba1.a(g.a(new com.chartboost.sdk.Libraries.g.k[] {
            g.a("status", a.a)
        }));
        ba1.b(s);
        ba1.a(true);
        ba1.a(new com.chartboost.sdk.impl.ba.c(s, cbiaptype) {

            final String a;
            final CBIAPType b;

            public void a(com.chartboost.sdk.Libraries.e.a a2, ba ba2)
            {
                CBLogging.a("CBPostInstallTracker", (new StringBuilder()).append(a).append(" success response!!").toString());
            }

            public void a(com.chartboost.sdk.Libraries.e.a a2, ba ba2, CBError cberror)
            {
                if (a.equals("iap") && a2 != null && a2.f("status") == 400 && b == CBIAPType.GOOGLE_PLAY)
                {
                    CBLogging.a("CBPostInstallTracker", (new StringBuilder()).append(a).append(" 400 response from server!!").toString());
                    cberror = bb.a(com.chartboost.sdk.b.l());
                    a2 = cberror.j();
                    cberror = cberror.i();
                    if (a2 != null && cberror != null)
                    {
                        a2.c((File)cberror.get(ba2));
                        cberror.remove(ba2);
                    }
                    return;
                } else
                {
                    CBLogging.a("CBPostInstallTracker", (new StringBuilder()).append(a).append(" failure response!!").toString());
                    return;
                }
            }

            
            {
                a = s;
                b = cbiaptype;
                super();
            }
        });
        com/chartboost/sdk/Tracking/CBAnalytics;
        JVM INSTR monitorexit ;
        return;
        a1;
        throw a1;
    }

    private static void a(String s, String s1, String s2, String s3, String s4, String s5, String s6, String s7, 
            String s8, CBIAPType cbiaptype)
    {
        com/chartboost/sdk/Tracking/CBAnalytics;
        JVM INSTR monitorenter ;
        if (b.l() != null) goto _L2; else goto _L1
_L1:
        CBLogging.b("CBPostInstallTracker", "You need call Chartboost.init() before calling any public API's");
_L3:
        com/chartboost/sdk/Tracking/CBAnalytics;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (b.m())
        {
            break MISSING_BLOCK_LABEL_42;
        }
        CBLogging.b("CBPostInstallTracker", "You need call Chartboost.OnStart() before tracking in-app purchases");
          goto _L3
        s;
        throw s;
label0:
        {
            if (!TextUtils.isEmpty(s) && !TextUtils.isEmpty(s1) && !TextUtils.isEmpty(s2) && !TextUtils.isEmpty(s3) && !TextUtils.isEmpty(s4))
            {
                break label0;
            }
            CBLogging.b("CBPostInstallTracker", "Null object is passed. Please pass a valid value object");
        }
          goto _L3
        s3 = Pattern.compile("(\\d+\\.\\d+)|(\\d+)").matcher(s3);
        s3.find();
        s3 = s3.group();
        if (!TextUtils.isEmpty(s3))
        {
            break MISSING_BLOCK_LABEL_136;
        }
        CBLogging.b("CBPostInstallTracker", "Invalid price object");
          goto _L3
        s;
        CBLogging.b("CBPostInstallTracker", "Invalid price object");
          goto _L3
        float f = Float.parseFloat(s3);
        s3 = null;
        if (cbiaptype != CBIAPType.GOOGLE_PLAY) goto _L5; else goto _L4
_L4:
        if (!TextUtils.isEmpty(s5) && !TextUtils.isEmpty(s6))
        {
            break MISSING_BLOCK_LABEL_178;
        }
        CBLogging.b("CBPostInstallTracker", "Null object is passed for for purchase data or purchase signature");
          goto _L3
        s3 = e.a(new com.chartboost.sdk.Libraries.e.b[] {
            e.a("purchaseData", s5), e.a("purchaseSignature", s6), e.a("type", Integer.valueOf(CBIAPType.GOOGLE_PLAY.ordinal()))
        });
_L7:
        if (s3 != null)
        {
            break MISSING_BLOCK_LABEL_319;
        }
        CBLogging.b("CBPostInstallTracker", "Error while parsing the receipt to a JSON Object, ");
          goto _L3
_L5:
        if (cbiaptype != CBIAPType.AMAZON) goto _L7; else goto _L6
_L6:
        if (!TextUtils.isEmpty(s7) && !TextUtils.isEmpty(s8))
        {
            break MISSING_BLOCK_LABEL_271;
        }
        CBLogging.b("CBPostInstallTracker", "Null object is passed for for amazon user id or amazon purchase token");
          goto _L3
        s3 = e.a(new com.chartboost.sdk.Libraries.e.b[] {
            e.a("userID", s7), e.a("purchaseToken", s8), e.a("type", Integer.valueOf(CBIAPType.AMAZON.ordinal()))
        });
          goto _L7
        s3 = Base64.encodeToString(s3.toString().getBytes(), 2);
        a(e.a(new com.chartboost.sdk.Libraries.e.b[] {
            e.a("localized-title", s1), e.a("localized-description", s2), e.a("price", Float.valueOf(f)), e.a("currency", s4), e.a("productID", s), e.a("receipt", s3)
        }), "iap", cbiaptype);
          goto _L3
    }

    public static void trackInAppAmazonStorePurchaseEvent(String s, String s1, String s2, String s3, String s4, String s5, String s6)
    {
        com/chartboost/sdk/Tracking/CBAnalytics;
        JVM INSTR monitorenter ;
        a(s4, s, s1, s2, s3, null, null, s5, s6, CBIAPType.AMAZON);
        com/chartboost/sdk/Tracking/CBAnalytics;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
    }

    public static void trackInAppGooglePlayPurchaseEvent(String s, String s1, String s2, String s3, String s4, String s5, String s6)
    {
        com/chartboost/sdk/Tracking/CBAnalytics;
        JVM INSTR monitorenter ;
        a(s4, s, s1, s2, s3, s5, s6, null, null, CBIAPType.GOOGLE_PLAY);
        com/chartboost/sdk/Tracking/CBAnalytics;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
    }

    public void trackInAppPurchaseEvent(EnumMap enummap, CBIAPType cbiaptype)
    {
        this;
        JVM INSTR monitorenter ;
        if (enummap == null || cbiaptype == null) goto _L2; else goto _L1
_L1:
        if (!TextUtils.isEmpty((CharSequence)enummap.get(CBIAPPurchaseInfo.PRODUCT_ID)) && !TextUtils.isEmpty((CharSequence)enummap.get(CBIAPPurchaseInfo.PRODUCT_TITLE)) && !TextUtils.isEmpty((CharSequence)enummap.get(CBIAPPurchaseInfo.PRODUCT_DESCRIPTION)) && !TextUtils.isEmpty((CharSequence)enummap.get(CBIAPPurchaseInfo.PRODUCT_PRICE)) && !TextUtils.isEmpty((CharSequence)enummap.get(CBIAPPurchaseInfo.PRODUCT_CURRENCY_CODE))) goto _L3; else goto _L2
_L2:
        CBLogging.b("CBPostInstallTracker", "Null object is passed. Please pass a valid value object");
_L5:
        this;
        JVM INSTR monitorexit ;
        return;
_L3:
        String s = (String)enummap.get(CBIAPPurchaseInfo.GOOGLE_PURCHASE_DATA);
        String s1 = (String)enummap.get(CBIAPPurchaseInfo.GOOGLE_PURCHASE_SIGNATURE);
        String s2 = (String)enummap.get(CBIAPPurchaseInfo.AMAZON_USER_ID);
        String s3 = (String)enummap.get(CBIAPPurchaseInfo.AMAZON_PURCHASE_TOKEN);
        a((String)enummap.get(CBIAPPurchaseInfo.PRODUCT_ID), (String)enummap.get(CBIAPPurchaseInfo.PRODUCT_TITLE), (String)enummap.get(CBIAPPurchaseInfo.PRODUCT_DESCRIPTION), (String)enummap.get(CBIAPPurchaseInfo.PRODUCT_PRICE), (String)enummap.get(CBIAPPurchaseInfo.PRODUCT_CURRENCY_CODE), s, s1, s2, s3, cbiaptype);
        if (true) goto _L5; else goto _L4
_L4:
        enummap;
        throw enummap;
    }
}
