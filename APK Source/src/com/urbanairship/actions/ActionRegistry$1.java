// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.actions;

import com.android.internal.util.Predicate;
import com.urbanairship.ApplicationMetrics;
import com.urbanairship.UAirship;

// Referenced classes of package com.urbanairship.actions:
//            ActionArguments, Situation, ActionRegistry

class a
    implements Predicate
{

    final ActionRegistry a;

    public boolean apply(Object obj)
    {
        obj = (ActionArguments)obj;
        if (Situation.b.equals(((ActionArguments) (obj)).b()))
        {
            long l = UAirship.a().l().a();
            if (System.currentTimeMillis() - l > 0x240c8400L)
            {
                return false;
            }
        }
        return true;
    }

    (ActionRegistry actionregistry)
    {
        a = actionregistry;
        super();
    }
}
