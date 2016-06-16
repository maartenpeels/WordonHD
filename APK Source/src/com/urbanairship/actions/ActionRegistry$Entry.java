// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.actions;

import com.android.internal.util.Predicate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.urbanairship.actions:
//            Action, Situation

public final class <init>
{

    private List a;
    private Action b;
    private Predicate c;
    private Map d;

    static void a(<init> <init>1, String s)
    {
        synchronized (<init>1.a)
        {
            <init>1.a.remove(s);
        }
    }

    public final Predicate a()
    {
        return c;
    }

    public final Action a(Situation situation)
    {
        if (situation == null)
        {
            situation = b;
        } else
        {
            Action action = (Action)d.get(situation);
            situation = action;
            if (action == null)
            {
                return b;
            }
        }
        return situation;
    }

    public final void a(Predicate predicate)
    {
        c = predicate;
    }

    public final String toString()
    {
        return (new StringBuilder("Action Entry: ")).append(a).toString();
    }

    private (Action action, String as[])
    {
        d = new ConcurrentHashMap();
        b = action;
        a = new ArrayList(Arrays.asList(as));
    }

    a(Action action, String as[], byte byte0)
    {
        this(action, as);
    }
}
