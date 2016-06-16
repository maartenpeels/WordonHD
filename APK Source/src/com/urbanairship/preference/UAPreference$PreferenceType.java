// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.preference;


public final class  extends Enum
{

    public static final k a;
    public static final k b;
    public static final k c;
    public static final k d;
    public static final k e;
    public static final k f;
    public static final k g;
    public static final k h;
    public static final k i;
    public static final k j;
    public static final k k;
    private static final k l[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/urbanairship/preference/UAPreference$PreferenceType, s);
    }

    public static [] values()
    {
        return ([])l.clone();
    }

    static 
    {
        a = new <init>("PUSH_ENABLE", 0);
        b = new <init>("SOUND_ENABLE", 1);
        c = new <init>("VIBRATE_ENABLE", 2);
        d = new <init>("QUIET_TIME_ENABLE", 3);
        e = new <init>("QUIET_TIME_START", 4);
        f = new <init>("QUIET_TIME_END", 5);
        g = new <init>("LOCATION_ENABLE", 6);
        h = new <init>("LOCATION_FOREGROUND_ENABLE", 7);
        i = new <init>("LOCATION_BACKGROUND_ENABLE", 8);
        j = new <init>("APID", 9);
        k = new <init>("USER_ID", 10);
        l = (new l[] {
            a, b, c, d, e, f, g, h, i, j, 
            k
        });
    }

    private (String s, int i1)
    {
        super(s, i1);
    }
}
