// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.actions.tags;

import com.urbanairship.actions.Action;
import com.urbanairship.actions.ActionArguments;
import com.urbanairship.push.PushManager;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public abstract class BaseTagsAction extends Action
{

    private final PushManager a;

    public BaseTagsAction()
    {
        this(PushManager.b());
    }

    private BaseTagsAction(PushManager pushmanager)
    {
        a = pushmanager;
    }

    protected static Set d(ActionArguments actionarguments)
    {
        Object obj = actionarguments.a();
        if (obj == null)
        {
            return null;
        }
        if (obj instanceof String)
        {
            obj = new HashSet();
            ((Set) (obj)).add(String.valueOf(actionarguments.a()));
            return ((Set) (obj));
        }
        if (obj instanceof Collection)
        {
            actionarguments = new HashSet();
            for (obj = ((Collection)obj).iterator(); ((Iterator) (obj)).hasNext(); actionarguments.add(String.valueOf(((Iterator) (obj)).next()))) { }
            return actionarguments;
        } else
        {
            return null;
        }
    }

    protected final PushManager a()
    {
        return a;
    }

    public final boolean b(ActionArguments actionarguments)
    {
        return d(actionarguments) != null;
    }
}
