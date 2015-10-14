// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class fp
    implements android.os.Parcelable.Creator
{

    public fp()
    {
    }

    static void a(fc.a a1, Parcel parcel, int i)
    {
        i = b.p(parcel);
        b.a(parcel, 1, a1.getAccountName(), false);
        b.c(parcel, 1000, a1.getVersionCode());
        b.a(parcel, 2, a1.eE(), false);
        b.c(parcel, 3, a1.eD());
        b.a(parcel, 4, a1.eG(), false);
        b.F(parcel, i);
    }

    public fc.a[] Q(int i)
    {
        return new fc.a[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return m(parcel);
    }

    public fc.a m(Parcel parcel)
    {
        Object obj;
        Object obj1;
        Object obj2;
        int i;
        int j;
        int k;
        k = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        obj1 = null;
        i = 0;
        obj2 = null;
        j = 0;
        obj = null;
_L8:
        int l;
        if (parcel.dataPosition() >= k)
        {
            break MISSING_BLOCK_LABEL_206;
        }
        l = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(l);
        JVM INSTR lookupswitch 5: default 88
    //                   1: 113
    //                   2: 148
    //                   3: 171
    //                   4: 190
    //                   1000: 129;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L5:
        break MISSING_BLOCK_LABEL_190;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
        Object obj3 = obj1;
        obj1 = obj;
        obj = obj3;
_L9:
        Object obj4 = obj;
        obj = obj1;
        obj1 = obj4;
        if (true) goto _L8; else goto _L7
_L7:
        String s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        obj = obj1;
        obj1 = s;
          goto _L9
_L6:
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        Object obj5 = obj1;
        obj1 = obj;
        obj = obj5;
          goto _L9
_L3:
        java.util.ArrayList arraylist = com.google.android.gms.common.internal.safeparcel.a.A(parcel, l);
        obj2 = obj1;
        obj1 = obj;
        obj = obj2;
        obj2 = arraylist;
          goto _L9
_L4:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        Object obj6 = obj1;
        obj1 = obj;
        obj = obj6;
          goto _L9
        String s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        obj1 = obj;
        obj = s1;
          goto _L9
        if (parcel.dataPosition() != k)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(k).toString(), parcel);
        } else
        {
            return new fc.a(j, ((String) (obj)), ((java.util.List) (obj2)), i, ((String) (obj1)));
        }
    }

    public Object[] newArray(int i)
    {
        return Q(i);
    }
}
