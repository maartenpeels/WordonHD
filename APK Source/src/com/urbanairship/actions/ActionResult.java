// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.actions;


public class ActionResult
{

    private final Exception a;
    private final Object b;
    private final Status c;

    private ActionResult(Object obj, Exception exception, Status status)
    {
        b = obj;
        a = exception;
        if (status == null)
        {
            status = Status.a;
        }
        c = status;
    }

    public static ActionResult a()
    {
        return new ActionResult(null, null, Status.a);
    }

    static ActionResult a(Status status)
    {
        return new ActionResult(null, null, status);
    }

    public static ActionResult a(Exception exception)
    {
        return new ActionResult(null, exception, Status.d);
    }

    public static ActionResult a(Object obj)
    {
        return new ActionResult(obj, null, Status.a);
    }

    public final Object b()
    {
        return b;
    }

    public final Exception c()
    {
        return a;
    }

    public final Status d()
    {
        return c;
    }

    private class Status extends Enum
    {

        public static final Status a;
        public static final Status b;
        public static final Status c;
        public static final Status d;
        private static final Status e[];

        public static Status valueOf(String s)
        {
            return (Status)Enum.valueOf(com/urbanairship/actions/ActionResult$Status, s);
        }

        public static Status[] values()
        {
            return (Status[])e.clone();
        }

        static 
        {
            a = new Status("COMPLETED", 0);
            b = new Status("REJECTED_ARGUMENTS", 1);
            c = new Status("ACTION_NOT_FOUND", 2);
            d = new Status("EXECUTION_ERROR", 3);
            e = (new Status[] {
                a, b, c, d
            });
        }

        private Status(String s, int i)
        {
            super(s, i);
        }
    }

}
