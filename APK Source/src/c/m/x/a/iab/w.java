// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.iab;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

// Referenced classes of package c.m.x.a.iab:
//            y, u

final class w
    implements InvocationHandler
{

    final y a;
    final u b;

    w(u u, y y)
    {
        b = u;
        a = y;
        super();
    }

    public final Object invoke(Object obj, Method method, Object aobj[])
    {
        obj = method.getName();
        if (!((String) (obj)).equals("onActivityStateChanged")) goto _L2; else goto _L1
_L1:
        obj = aobj[0].toString();
        if (!((String) (obj)).equals("STARTED")) goto _L4; else goto _L3
_L3:
        obj = a;
_L6:
        return null;
_L4:
        if (((String) (obj)).equals("RESTARTED"))
        {
            obj = a;
        } else
        if (((String) (obj)).equals("RESUMED"))
        {
            obj = a;
        } else
        if (((String) (obj)).equals("PAUSED"))
        {
            obj = a;
        } else
        if (((String) (obj)).equals("STOPPED"))
        {
            obj = a;
        } else
        if (((String) (obj)).equals("DESTROYED"))
        {
            obj = a;
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
_L2:
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
        if (true) goto _L6; else goto _L5
_L5:
    }
}
