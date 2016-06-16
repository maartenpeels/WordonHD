// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            kt, kq, kv, ko, 
//            kn

public abstract class kp extends kt
{

    protected List adU;

    public kp()
    {
    }

    public final Object a(kq kq1)
    {
        return kq1.f(adU);
    }

    public void a(ko ko1)
        throws IOException
    {
        int j = 0;
        int i;
        if (adU == null)
        {
            i = 0;
        } else
        {
            i = adU.size();
        }
        for (; j < i; j++)
        {
            kv kv1 = (kv)adU.get(j);
            ko1.da(kv1.tag);
            ko1.p(kv1.adZ);
        }

    }

    protected final boolean a(kn kn1, int i)
        throws IOException
    {
        int j = kn1.getPosition();
        if (!kn1.cQ(i))
        {
            return false;
        }
        if (adU == null)
        {
            adU = new ArrayList();
        }
        kn1 = kn1.h(j, kn1.getPosition() - j);
        adU.add(new kv(i, kn1));
        return true;
    }

    protected int mx()
    {
        int k = 0;
        int i;
        int j;
        int l;
        int i1;
        if (adU == null)
        {
            i = 0;
        } else
        {
            i = adU.size();
        }
        for (j = 0; k < i; j = i1 + (j + l))
        {
            kv kv1 = (kv)adU.get(k);
            l = ko.db(kv1.tag);
            i1 = kv1.adZ.length;
            k++;
        }

        return j;
    }
}
