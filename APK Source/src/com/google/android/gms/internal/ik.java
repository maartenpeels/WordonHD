// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.HashSet;
import java.util.Set;

public class ik
    implements android.os.Parcelable.Creator
{

    public ik()
    {
    }

    static void a(ih.b b1, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        Set set = b1.ja();
        if (set.contains(Integer.valueOf(1)))
        {
            b.c(parcel, 1, b1.getVersionCode());
        }
        if (set.contains(Integer.valueOf(2)))
        {
            b.a(parcel, 2, b1.jE(), i, true);
        }
        if (set.contains(Integer.valueOf(3)))
        {
            b.a(parcel, 3, b1.jF(), i, true);
        }
        if (set.contains(Integer.valueOf(4)))
        {
            b.c(parcel, 4, b1.getLayout());
        }
        b.F(parcel, j);
    }

    public ih.b aP(Parcel parcel)
    {
        Object obj;
        Object obj1;
        HashSet hashset;
        int i;
        int j;
        int k;
        obj = null;
        j = 0;
        k = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        hashset = new HashSet();
        i = 0;
        obj1 = null;
_L7:
        int l;
        if (parcel.dataPosition() >= k)
        {
            break MISSING_BLOCK_LABEL_231;
        }
        l = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(l);
        JVM INSTR tableswitch 1 4: default 76
    //                   1 101
    //                   2 132
    //                   3 166
    //                   4 200;
           goto _L1 _L2 _L3 _L4 _L5
_L5:
        break MISSING_BLOCK_LABEL_200;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
        Object obj2 = obj1;
        obj1 = obj;
        obj = obj2;
_L8:
        Object obj3 = obj;
        obj = obj1;
        obj1 = obj3;
        if (true) goto _L7; else goto _L6
_L6:
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        hashset.add(Integer.valueOf(1));
        Object obj4 = obj;
        obj = obj1;
        obj1 = obj4;
          goto _L8
_L3:
        ih.b.a a1 = (ih.b.a)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, ih.b.a.CREATOR);
        hashset.add(Integer.valueOf(2));
        obj = obj1;
        obj1 = a1;
          goto _L8
_L4:
        ih.b.b b1 = (ih.b.b)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, ih.b.b.CREATOR);
        hashset.add(Integer.valueOf(3));
        obj1 = obj;
        obj = b1;
          goto _L8
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        hashset.add(Integer.valueOf(4));
        Object obj5 = obj;
        obj = obj1;
        obj1 = obj5;
          goto _L8
        if (parcel.dataPosition() != k)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(k).toString(), parcel);
        } else
        {
            return new ih.b(hashset, j, ((ih.b.a) (obj)), ((ih.b.b) (obj1)), i);
        }
    }

    public ih.b[] bS(int i)
    {
        return new ih.b[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return aP(parcel);
    }

    public Object[] newArray(int i)
    {
        return bS(i);
    }
}
