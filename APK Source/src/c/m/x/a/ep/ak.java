// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.ep;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

// Referenced classes of package c.m.x.a.ep:
//            am, aj

final class ak
    implements InvocationHandler
{

    final am a;
    final aj b;

    ak(aj aj, am am)
    {
        b = aj;
        a = am;
        super();
    }

    public final Object invoke(Object obj, Method method, Object aobj[])
    {
        obj = method.getName();
        if (((String) (obj)).equals("onActivityResult"))
        {
            obj = a;
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
