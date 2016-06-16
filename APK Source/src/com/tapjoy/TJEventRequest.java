// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;


// Referenced classes of package com.tapjoy:
//            TJEventRequestCallback

public class TJEventRequest
{

    public static final int TYPE_CURRENCY = 3;
    public static final int TYPE_IN_APP_PURCHASE = 1;
    public static final int TYPE_NAVIGATION = 4;
    public static final int TYPE_VIRTUAL_GOOD = 2;
    public TJEventRequestCallback callback;
    public String identifier;
    public int quantity;
    public int type;

    public TJEventRequest()
    {
    }
}
