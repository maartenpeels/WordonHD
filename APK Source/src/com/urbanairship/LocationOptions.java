// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship;

import java.lang.reflect.Field;

// Referenced classes of package com.urbanairship:
//            Options, PropertyName, Logger

public class LocationOptions extends Options
{

    public boolean a;
    public boolean b;
    public int c;
    public long d;
    public long e;
    public int f;
    public int g;
    public int h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;

    public LocationOptions()
    {
        a = false;
        b = true;
        c = 500;
        d = 900L;
        e = 900L;
        f = 2;
        g = 0;
        h = 1;
        i = false;
        j = false;
        k = false;
        l = false;
    }

    private static boolean a(int i1)
    {
        switch (i1)
        {
        default:
            return false;

        case 0: // '\0'
        case 1: // '\001'
        case 2: // '\002'
            return true;
        }
    }

    public final boolean a()
    {
        LocationOptions locationoptions = new LocationOptions();
        Field afield[];
        Field field;
        int i1;
        boolean flag;
        int j1;
        boolean flag1;
        try
        {
            afield = getClass().getFields();
            j1 = afield.length;
        }
        catch (SecurityException securityexception)
        {
            flag1 = true;
            continue; /* Loop/switch isn't completed */
        }
        i1 = 0;
        flag1 = true;
_L2:
        if (i1 >= j1)
        {
            break; /* Loop/switch isn't completed */
        }
        field = afield[i1];
        if (field.isAnnotationPresent(com/urbanairship/PropertyName))
        {
            break; /* Loop/switch isn't completed */
        }
        Logger.e((new StringBuilder("The public field '")).append(field.getName()).append("' is missing an annotation").toString());
        Logger.e("LocationOptions appears to be obfuscated. If using Proguard, add the following to your proguard.cfg:");
        Logger.e("\t-keepattributes *Annotation*");
        i1++;
        flag1 = false;
        if (true) goto _L2; else goto _L1
_L1:
        if (!a(f))
        {
            Logger.e((new StringBuilder()).append(f).append(" is not a valid location accuracy requirement. Falling back to ").append(locationoptions.f).append(" ACCURACY_COARSE.").toString());
            f = locationoptions.f;
        }
        if (!a(g))
        {
            Logger.e((new StringBuilder()).append(g).append(" is not a valid location accuracy requirement. Falling back to ").append(locationoptions.g).append(" NO_REQUIREMENT.").toString());
            g = locationoptions.g;
        }
        h;
        JVM INSTR tableswitch 0 3: default 240
    //                   0 408
    //                   1 408
    //                   2 408
    //                   3 408;
           goto _L3 _L4 _L4 _L4 _L4
_L3:
        flag = false;
_L7:
        if (!flag)
        {
            Logger.e((new StringBuilder()).append(h).append(" is not a valid power requirement. Falling back to ").append(locationoptions.h).append(" POWER_LOW").toString());
            h = locationoptions.h;
        }
        if (d < 60L)
        {
            Logger.a((new StringBuilder("The updateIntervalSeconds ")).append(d).append(" may decrease battery life.").toString());
        } else
        if (d > 0x15180L)
        {
            Logger.a((new StringBuilder("The updateIntervalSeconds ")).append(d).append(" may provide less accurate location updates.").toString());
        }
        if (c < 10)
        {
            Logger.a((new StringBuilder("The updateIntervalMeters ")).append(c).append(" may decrease battery life if the updateIntervalSeconds value is also low.").toString());
        } else
        if (c > 0x186a0)
        {
            Logger.a((new StringBuilder("The updateIntervalMeters ")).append(c).append(" may provide less accurate location updates.").toString());
        }
        if (e >= 60L) goto _L6; else goto _L5
_L5:
        Logger.a((new StringBuilder("The backgroundReportingIntervalSeconds ")).append(e).append(" may decrease battery life.").toString());
_L9:
        return flag1;
_L4:
        flag = true;
          goto _L7
_L6:
        if (e <= 0x15180L) goto _L9; else goto _L8
_L8:
        Logger.a((new StringBuilder("The backgroundReportingIntervalSeconds ")).append(e).append(" may provide less detailed analytic reports.").toString());
        return flag1;
        SecurityException securityexception1;
        securityexception1;
        if (true) goto _L1; else goto _L10
_L10:
    }

    public final String f()
    {
        return "location.properties";
    }
}
