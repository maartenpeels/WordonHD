// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;


// Referenced classes of package com.chartboost.sdk.Libraries:
//            g

private static class a extends a
{

    private Object a[];

    public String a()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("object must equal one of the following: ");
        for (int i = 0; i < a.length; i++)
        {
            stringbuilder.append("<");
            stringbuilder.append(a[i].toString());
            stringbuilder.append(">");
            if (i < a.length - 1)
            {
                stringbuilder.append(", ");
            }
        }

        return stringbuilder.toString();
    }

    public boolean a(Object obj)
    {
        for (int i = 0; i < a.length; i++)
        {
            Object obj1 = a[i];
            if (obj == null)
            {
                if (obj1 == null)
                {
                    return true;
                }
                continue;
            }
            if (obj.equals(obj1))
            {
                return true;
            }
        }

        return false;
    }

    public (Object aobj[])
    {
        a = aobj;
    }
}
