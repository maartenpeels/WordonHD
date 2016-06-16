// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship;

import android.content.Context;
import java.lang.reflect.Field;

// Referenced classes of package com.urbanairship:
//            Options, LocationOptions, Logger, PropertyName

public class AirshipConfigOptions extends Options
{

    public String a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    public String h;
    public String i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public LocationOptions n;
    public int o;
    public int p;
    public int q;

    public AirshipConfigOptions()
    {
        e = "https://device-api.urbanairship.com/";
        f = "https://combine.urbanairship.com/";
        g = "https://dl.urbanairship.com/aaa/";
        j = false;
        k = true;
        l = false;
        m = true;
        n = new LocationOptions();
        o = 3;
        p = 6;
        q = 4;
    }

    public static AirshipConfigOptions a(Context context)
    {
        AirshipConfigOptions airshipconfigoptions = new AirshipConfigOptions();
        airshipconfigoptions.b(context);
        airshipconfigoptions.n.b(context);
        return airshipconfigoptions;
    }

    private static boolean a(int i1)
    {
        switch (i1)
        {
        default:
            return false;

        case 2: // '\002'
        case 3: // '\003'
        case 4: // '\004'
        case 5: // '\005'
        case 6: // '\006'
        case 7: // '\007'
            return true;
        }
    }

    public final TransportType a()
    {
        if (TransportType.b.toString().equalsIgnoreCase(i))
        {
            return TransportType.b;
        }
        if (TransportType.a.toString().equalsIgnoreCase(i))
        {
            return TransportType.a;
        }
        if (TransportType.c.toString().equalsIgnoreCase(i))
        {
            return TransportType.c;
        } else
        {
            return TransportType.b;
        }
    }

    public final String b()
    {
        if (j)
        {
            return a;
        } else
        {
            return c;
        }
    }

    public final String c()
    {
        if (j)
        {
            return b;
        } else
        {
            return d;
        }
    }

    public final int d()
    {
        if (j)
        {
            return p;
        } else
        {
            return o;
        }
    }

    public final boolean e()
    {
        AirshipConfigOptions airshipconfigoptions;
        boolean flag;
        flag = true;
        airshipconfigoptions = new AirshipConfigOptions();
        Object obj;
        if (j)
        {
            obj = "production";
        } else
        {
            obj = "development";
        }
        if (b() == null || b().length() == 0 || b().indexOf(' ') > 0)
        {
            Logger.e((new StringBuilder("AirshipConfigOptions: ")).append(b()).append(" is not a valid ").append(((String) (obj))).append(" app key").toString());
            flag = false;
        }
        if (c() == null || c().length() == 0 || c().indexOf(' ') > 0)
        {
            Logger.e((new StringBuilder("AirshipConfigOptions: ")).append(c()).append(" is not a valid ").append(((String) (obj))).append(" app secret").toString());
            flag = false;
        }
        if (flag)
        {
            break MISSING_BLOCK_LABEL_221;
        }
        obj = getClass().getFields();
        if (obj.length > 0)
        {
            obj = obj[0];
            try
            {
                if (!((Field) (obj)).isAnnotationPresent(com/urbanairship/PropertyName))
                {
                    Logger.e((new StringBuilder("The public field '")).append(((Field) (obj)).getName()).append("' is missing an annotation").toString());
                    Logger.e("AirshipConfigOptions appears to be obfuscated. If using Proguard, add the following to your proguard.cfg:");
                    Logger.e("\t-keepattributes *Annotation*");
                }
            }
            catch (SecurityException securityexception) { }
        }
        if (j)
        {
            if (!a(p))
            {
                Logger.e((new StringBuilder()).append(p).append(" is not a valid log level. Falling back to ").append(airshipconfigoptions.p).append(" ERROR.").toString());
                p = airshipconfigoptions.p;
            }
        } else
        if (!a(o))
        {
            Logger.e((new StringBuilder()).append(o).append(" is not a valid log level. Falling back to ").append(airshipconfigoptions.o).append(" DEBUG.").toString());
            o = airshipconfigoptions.o;
            return flag;
        }
        return flag;
    }

    public final String f()
    {
        return "airshipconfig.properties";
    }

    private class TransportType extends Enum
    {

        public static final TransportType a;
        public static final TransportType b;
        public static final TransportType c;
        private static final TransportType d[];

        public static TransportType valueOf(String s)
        {
            return (TransportType)Enum.valueOf(com/urbanairship/AirshipConfigOptions$TransportType, s);
        }

        public static TransportType[] values()
        {
            return (TransportType[])d.clone();
        }

        static 
        {
            a = new TransportType("HELIUM", 0);
            b = new TransportType("GCM", 1);
            c = new TransportType("HYBRID", 2);
            d = (new TransportType[] {
                a, b, c
            });
        }

        private TransportType(String s, int i1)
        {
            super(s, i1);
        }
    }

}
