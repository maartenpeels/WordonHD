// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.actions;


// Referenced classes of package com.urbanairship.actions:
//            Situation

public class ActionArguments
{

    private final Situation a;
    private Object b;

    public ActionArguments(Situation situation, Object obj)
    {
        b = obj;
        a = situation;
    }

    public final Object a()
    {
        return b;
    }

    public final Situation b()
    {
        return a;
    }

    public final String toString()
    {
        return (new StringBuilder("ActionArguments situation: ")).append(a).append(" value: ").append(b).toString();
    }
}
