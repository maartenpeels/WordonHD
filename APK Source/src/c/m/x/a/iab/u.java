// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.iab;

import android.util.Log;
import com.adobe.fre.FREContext;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

// Referenced classes of package c.m.x.a.iab:
//            z, v, w, y

public final class u
    implements z
{

    private static String c = "[MMGAPA]";
    FREContext a;
    y b;

    public u(FREContext frecontext)
    {
        a = frecontext;
    }

    public final void a(y y)
    {
        int j;
        b = y;
        Object obj;
        try
        {
            obj = a.getActivity().getClass().getDeclaredField("sAndroidActivityWrapper");
            ((Field) (obj)).setAccessible(true);
            obj = ((Field) (obj)).get(null);
        }
        // Misplaced declaration of an exception variable
        catch (y y)
        {
            Log.e(c, "Exception hooking AIR container.");
            return;
        }
        Class aclass[];
        Object obj1;
        Class class1;
        Method amethod[];
        Object obj2;
        int i;
        if (obj == null)
        {
            obj = null;
        }
        if (obj != null) goto _L2; else goto _L1
_L1:
        Log.e(c, "Could not discover AIR container.");
_L4:
        return;
_L2:
        try
        {
            aclass = obj.getClass().getDeclaredClasses();
        }
        // Misplaced declaration of an exception variable
        catch (y y)
        {
            Log.e(c, "Invocation target exception.");
            return;
        }
        // Misplaced declaration of an exception variable
        catch (y y)
        {
            Log.e(c, "Failed to get the statechange class.");
            return;
        }
        i = 0;
_L10:
        if (i >= aclass.length) goto _L4; else goto _L3
_L3:
        if (!aclass[i].getName().contains("ActivityResultCallback")) goto _L6; else goto _L5
_L5:
        obj1 = aclass[i].getClassLoader();
        class1 = aclass[i];
        obj2 = new v(this, y);
        obj1 = Proxy.newProxyInstance(((ClassLoader) (obj1)), new Class[] {
            class1
        }, ((java.lang.reflect.InvocationHandler) (obj2)));
        amethod = obj.getClass().getMethods();
        j = 0;
_L11:
        if (j < amethod.length)
        {
            if (amethod[j].getName().contains("addActivityResultListener"))
            {
                amethod[j].invoke(obj, new Object[] {
                    obj1
                });
            }
            break MISSING_BLOCK_LABEL_355;
        }
          goto _L7
_L6:
        if (!aclass[i].getName().contains("StateChangeCallback")) goto _L7; else goto _L8
_L8:
        obj1 = aclass[i].getClassLoader();
        amethod = aclass[i];
        obj2 = new w(this, y);
        obj1 = Proxy.newProxyInstance(((ClassLoader) (obj1)), new Class[] {
            amethod
        }, ((java.lang.reflect.InvocationHandler) (obj2)));
        amethod = obj.getClass().getMethods();
        j = 0;
_L9:
        if (j >= amethod.length)
        {
            break; /* Loop/switch isn't completed */
        }
        if (amethod[j].getName().contains("addActivityStateChangeListner"))
        {
            amethod[j].invoke(obj, new Object[] {
                obj1
            });
        }
        j++;
        if (true) goto _L9; else goto _L7
_L7:
        i++;
          goto _L10
        j++;
          goto _L11
    }

    public final void a(String s, String s1)
    {
        a.dispatchStatusEventAsync(s, s1);
    }

}
