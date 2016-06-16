// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.SimpleTimeZone;

// Referenced classes of package com.chartboost.sdk.impl:
//            ca, bt, cc

private static class <init> extends <init>
{

    public void a(Object obj, StringBuilder stringbuilder)
    {
        obj = (Date)obj;
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        simpledateformat.setCalendar(new GregorianCalendar(new SimpleTimeZone(0, "GMT")));
        a.a(new bt("$date", simpledateformat.format(((Date) (obj)))), stringbuilder);
    }

    (cc cc1)
    {
        super(cc1);
    }
}
