// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.ep;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

// Referenced classes of package c.m.x.a.ep:
//            am, aj

final class al
    implements InvocationHandler
{

    final am a;
    final aj b;

    al(aj aj, am am1)
    {
        b = aj;
        a = am1;
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
        a.b();
_L6:
        return null;
_L4:
        if (((String) (obj)).equals("RESTARTED"))
        {
            a.c();
        } else
        if (((String) (obj)).equals("RESUMED"))
        {
            obj = a;
        } else
        if (((String) (obj)).equals("PAUSED"))
        {
            a.d();
        } else
        if (((String) (obj)).equals("STOPPED"))
        {
            a.a();
        } else
        if (((String) (obj)).equals("DESTROYED"))
        {
            a.e();
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (!((String) (obj)).equals("onConfigurationChanged"))
        {
            break; /* Loop/switch isn't completed */
        }
        obj = a;
        if (true) goto _L6; else goto _L5
_L5:
        if (!((String) (obj)).equals("equals")) goto _L6; else goto _L7
_L7:
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
}
