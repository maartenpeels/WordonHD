// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.HashSet;
import java.util.Set;

public class im
    implements android.os.Parcelable.Creator
{

    public im()
    {
    }

    static void a(ih.b.b b1, Parcel parcel, int i)
    {
        i = b.p(parcel);
        Set set = b1.ja();
        if (set.contains(Integer.valueOf(1)))
        {
            b.c(parcel, 1, b1.getVersionCode());
        }
        if (set.contains(Integer.valueOf(2)))
        {
            b.c(parcel, 2, b1.getHeight());
        }
        if (set.contains(Integer.valueOf(3)))
        {
            b.a(parcel, 3, b1.getUrl(), true);
        }
        if (set.contains(Integer.valueOf(4)))
        {
            b.c(parcel, 4, b1.getWidth());
        }
        b.F(parcel, i);
    }

    public ih.b.b aR(Parcel parcel)
    {
        String s;
        HashSet hashset;
        int i;
        int j;
        int k;
        int i1;
        i = 0;
        i1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        hashset = new HashSet();
        j = 0;
        s = null;
        k = 0;
_L7:
        int l;
        if (parcel.dataPosition() >= i1)
        {
            break MISSING_BLOCK_LABEL_240;
        }
        l = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(l);
        JVM INSTR tableswitch 1 4: default 76
    //                   1 109
    //                   2 143
    //                   3 173
    //                   4 206;
           goto _L1 _L2 _L3 _L4 _L5
_L5:
        break MISSING_BLOCK_LABEL_206;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
        l = j;
        j = i;
        i = l;
_L8:
        l = i;
        i = j;
        j = l;
        if (true) goto _L7; else goto _L6
_L6:
        k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        hashset.add(Integer.valueOf(1));
        l = i;
        i = j;
        j = l;
          goto _L8
_L3:
        l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        hashset.add(Integer.valueOf(2));
        i = j;
        j = l;
          goto _L8
_L4:
        s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        hashset.add(Integer.valueOf(3));
        l = i;
        i = j;
        j = l;
          goto _L8
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        hashset.add(Integer.valueOf(4));
        l = i;
        i = j;
        j = l;
          goto _L8
        if (parcel.dataPosition() != i1)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i1).toString(), parcel);
        } else
        {
            return new ih.b.b(hashset, k, i, s, j);
        }
    }

    public ih.b.b[] bU(int i)
    {
        return new ih.b.b[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return aR(parcel);
    }

    public Object[] newArray(int i)
    {
        return bU(i);
    }
}
