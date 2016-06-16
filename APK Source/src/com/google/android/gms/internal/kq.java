// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            kv, kn, kt, kw

public class kq
{

    protected final Class adV;
    protected final boolean adW;
    protected final int tag;
    protected final int type;

    private kq(int i, Class class1, int j, boolean flag)
    {
        type = i;
        adV = class1;
        tag = j;
        adW = flag;
    }

    public static kq a(int i, Class class1, int j)
    {
        return new kq(i, class1, j, false);
    }

    protected void a(kv kv1, List list)
    {
        list.add(o(kn.n(kv1.adZ)));
    }

    protected boolean dd(int i)
    {
        return i == tag;
    }

    final Object f(List list)
    {
        if (list == null)
        {
            return null;
        }
        if (adW)
        {
            ArrayList arraylist = new ArrayList();
            for (int i = 0; i < list.size(); i++)
            {
                kv kv2 = (kv)list.get(i);
                if (dd(kv2.tag) && kv2.adZ.length != 0)
                {
                    a(kv2, arraylist);
                }
            }

            int l = arraylist.size();
            if (l == 0)
            {
                return null;
            }
            list = ((List) (adV.cast(Array.newInstance(adV.getComponentType(), l))));
            for (int j = 0; j < l; j++)
            {
                Array.set(list, j, arraylist.get(j));
            }

            return list;
        }
        int k = list.size() - 1;
        kv kv1;
        for (kv1 = null; kv1 == null && k >= 0; k--)
        {
            kv kv3 = (kv)list.get(k);
            if (dd(kv3.tag) && kv3.adZ.length != 0)
            {
                kv1 = kv3;
            }
        }

        if (kv1 == null)
        {
            return null;
        } else
        {
            return adV.cast(o(kn.n(kv1.adZ)));
        }
    }

    protected Object o(kn kn1)
    {
        Class class1;
        if (adW)
        {
            class1 = adV.getComponentType();
        } else
        {
            class1 = adV;
        }
        type;
        JVM INSTR tableswitch 10 11: default 185
    //                   10 107
    //                   11 129;
           goto _L1 _L2 _L3
_L1:
        throw new IllegalArgumentException((new StringBuilder()).append("Unknown type ").append(type).toString());
_L2:
        kt kt1;
        try
        {
            kt1 = (kt)class1.newInstance();
            kn1.a(kt1, kw.df(tag));
        }
        // Misplaced declaration of an exception variable
        catch (kn kn1)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Error creating instance of class ").append(class1).toString(), kn1);
        }
        // Misplaced declaration of an exception variable
        catch (kn kn1)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Error creating instance of class ").append(class1).toString(), kn1);
        }
        // Misplaced declaration of an exception variable
        catch (kn kn1)
        {
            throw new IllegalArgumentException("Error reading extension field", kn1);
        }
        return kt1;
_L3:
        kt1 = (kt)class1.newInstance();
        kn1.a(kt1);
        return kt1;
    }
}
