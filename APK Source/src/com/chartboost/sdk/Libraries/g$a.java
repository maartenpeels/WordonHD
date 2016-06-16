// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;


// Referenced classes of package com.chartboost.sdk.Libraries:
//            g

public static abstract class a
{

    private String a;

    public abstract String a();

    public abstract boolean a(Object obj);

    public boolean a(Object obj, StringBuilder stringbuilder)
    {
        if (obj instanceof a)
        {
            obj = ((a)obj).n();
        }
        boolean flag = a(obj);
        if (!flag)
        {
            if (a != null)
            {
                obj = a;
            } else
            {
                obj = a();
            }
            stringbuilder.append(((String) (obj)));
        }
        return flag;
    }

    public ()
    {
        a = null;
    }
}
