// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;


// Referenced classes of package com.chartboost.sdk:
//            Chartboost

public static final class a extends Enum
{

    public static final CBFrameworkCocoonJS CBFrameworkAir;
    public static final CBFrameworkCocoonJS CBFrameworkCocoonJS;
    public static final CBFrameworkCocoonJS CBFrameworkCordova;
    public static final CBFrameworkCocoonJS CBFrameworkCorona;
    public static final CBFrameworkCocoonJS CBFrameworkGameSalad;
    public static final CBFrameworkCocoonJS CBFrameworkUnity;
    private static final CBFrameworkCocoonJS b[];
    private final String a;

    public static a valueOf(String s)
    {
        return (a)Enum.valueOf(com/chartboost/sdk/Chartboost$CBFramework, s);
    }

    public static a[] values()
    {
        return (a[])b.clone();
    }

    public String toString()
    {
        return a;
    }

    static 
    {
        CBFrameworkUnity = new <init>("CBFrameworkUnity", 0, "Unity");
        CBFrameworkCorona = new <init>("CBFrameworkCorona", 1, "Corona");
        CBFrameworkAir = new <init>("CBFrameworkAir", 2, "AIR");
        CBFrameworkGameSalad = new <init>("CBFrameworkGameSalad", 3, "GameSalad");
        CBFrameworkCordova = new <init>("CBFrameworkCordova", 4, "Cordova");
        CBFrameworkCocoonJS = new <init>("CBFrameworkCocoonJS", 5, "CocoonJS");
        b = (new b[] {
            CBFrameworkUnity, CBFrameworkCorona, CBFrameworkAir, CBFrameworkGameSalad, CBFrameworkCordova, CBFrameworkCocoonJS
        });
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        a = s1;
    }
}
