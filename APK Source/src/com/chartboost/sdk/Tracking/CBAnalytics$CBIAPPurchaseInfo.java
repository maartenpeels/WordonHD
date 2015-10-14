// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Tracking;


// Referenced classes of package com.chartboost.sdk.Tracking:
//            CBAnalytics

public static final class  extends Enum
{

    public static final AMAZON_USER_ID AMAZON_PURCHASE_TOKEN;
    public static final AMAZON_USER_ID AMAZON_USER_ID;
    public static final AMAZON_USER_ID GOOGLE_PURCHASE_DATA;
    public static final AMAZON_USER_ID GOOGLE_PURCHASE_SIGNATURE;
    public static final AMAZON_USER_ID PRODUCT_CURRENCY_CODE;
    public static final AMAZON_USER_ID PRODUCT_DESCRIPTION;
    public static final AMAZON_USER_ID PRODUCT_ID;
    public static final AMAZON_USER_ID PRODUCT_PRICE;
    public static final AMAZON_USER_ID PRODUCT_TITLE;
    private static final AMAZON_USER_ID a[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo, s);
    }

    public static [] values()
    {
        return ([])a.clone();
    }

    static 
    {
        PRODUCT_ID = new <init>("PRODUCT_ID", 0);
        PRODUCT_TITLE = new <init>("PRODUCT_TITLE", 1);
        PRODUCT_DESCRIPTION = new <init>("PRODUCT_DESCRIPTION", 2);
        PRODUCT_PRICE = new <init>("PRODUCT_PRICE", 3);
        PRODUCT_CURRENCY_CODE = new <init>("PRODUCT_CURRENCY_CODE", 4);
        GOOGLE_PURCHASE_DATA = new <init>("GOOGLE_PURCHASE_DATA", 5);
        GOOGLE_PURCHASE_SIGNATURE = new <init>("GOOGLE_PURCHASE_SIGNATURE", 6);
        AMAZON_PURCHASE_TOKEN = new <init>("AMAZON_PURCHASE_TOKEN", 7);
        AMAZON_USER_ID = new <init>("AMAZON_USER_ID", 8);
        a = (new a[] {
            PRODUCT_ID, PRODUCT_TITLE, PRODUCT_DESCRIPTION, PRODUCT_PRICE, PRODUCT_CURRENCY_CODE, GOOGLE_PURCHASE_DATA, GOOGLE_PURCHASE_SIGNATURE, AMAZON_PURCHASE_TOKEN, AMAZON_USER_ID
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
