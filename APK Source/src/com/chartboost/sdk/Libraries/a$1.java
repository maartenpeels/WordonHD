// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;


// Referenced classes of package com.chartboost.sdk.Libraries:
//            a

static final class  extends 
{

    public String a()
    {
        return "Must be a valid status code (>=200 && <300)";
    }

    public boolean a(Object obj)
    {
        int i = ((Number)obj).intValue();
        return i >= 200 && i < 300;
    }

    ()
    {
    }
}
