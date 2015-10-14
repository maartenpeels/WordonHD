// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.analytics;


public final class _cls9 extends Enum
{

    public static final c a;
    public static final c b;
    public static final c c;
    private static final c d[];

    public static _cls9 valueOf(String s)
    {
        return (_cls9)Enum.valueOf(com/urbanairship/analytics/LocationEvent$UpdateType, s);
    }

    public static _cls9[] values()
    {
        return (_cls9[])d.clone();
    }

    static 
    {
        a = new <init>("CONTINUOUS", 0);
        b = new <init>("SINGLE", 1);
        c = new <init>("CHANGE", 2);
        d = (new d[] {
            a, b, c
        });
    }

    private _cls9(String s, int i)
    {
        super(s, i);
    }
}
