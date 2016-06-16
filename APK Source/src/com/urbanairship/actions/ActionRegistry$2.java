// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.actions;

import com.android.internal.util.Predicate;

// Referenced classes of package com.urbanairship.actions:
//            ActionArguments, Situation, ActionRegistry

class a
    implements Predicate
{

    final ActionRegistry a;

    public boolean apply(Object obj)
    {
        obj = (ActionArguments)obj;
        return !Situation.b.equals(((ActionArguments) (obj)).b());
    }

    (ActionRegistry actionregistry)
    {
        a = actionregistry;
        super();
    }
}
