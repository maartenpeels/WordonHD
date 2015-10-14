// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;

import android.content.Intent;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

// Referenced classes of package c.m.x.a.gv:
//            at, aq

final class ar
    implements InvocationHandler
{

    final at a;
    final aq b;

    ar(aq aq, at at1)
    {
        b = aq;
        a = at1;
        super();
    }

    public final Object invoke(Object obj, Method method, Object aobj[])
    {
        obj = method.getName();
        if (((String) (obj)).equals("onActivityResult"))
        {
            a.a(((Integer)aobj[0]).intValue(), ((Integer)aobj[1]).intValue(), (Intent)aobj[2]);
        } else
        if (((String) (obj)).equals("equals"))
        {
            obj = aobj[0];
            if (obj == null)
            {
                return Boolean.valueOf(false);
            }
            if (obj == this)
            {
                return Boolean.valueOf(true);
            } else
            {
                return Boolean.valueOf(false);
            }
        }
        return null;
    }
}
