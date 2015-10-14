// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.actions;


public final class Situation extends Enum
{

    public static final Situation a;
    public static final Situation b;
    public static final Situation c;
    public static final Situation d;
    private static final Situation e[];

    private Situation(String s, int i)
    {
        super(s, i);
    }

    public static Situation valueOf(String s)
    {
        return (Situation)Enum.valueOf(com/urbanairship/actions/Situation, s);
    }

    public static Situation[] values()
    {
        return (Situation[])e.clone();
    }

    static 
    {
        a = new Situation("MANUAL_INVOCATION", 0);
        b = new Situation("PUSH_RECEIVED", 1);
        c = new Situation("PUSH_OPENED", 2);
        d = new Situation("WEB_VIEW_INVOCATION", 3);
        e = (new Situation[] {
            a, b, c, d
        });
    }
}
