// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.location:
//            b

public class c
    implements android.os.Parcelable.Creator
{

    public c()
    {
    }

    static void a(com.google.android.gms.location.b b1, Parcel parcel, int i)
    {
        i = b.p(parcel);
        b.c(parcel, 1, b1.Oh);
        b.c(parcel, 1000, b1.getVersionCode());
        b.c(parcel, 2, b1.Oi);
        b.a(parcel, 3, b1.Oj);
        b.F(parcel, i);
    }

    public com.google.android.gms.location.b aB(Parcel parcel)
    {
        int i;
        int j;
        int k;
        int i1;
        long l1;
        i1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        i = 0;
        k = 1;
        j = 1;
        l1 = 0L;
_L7:
        int l;
        if (parcel.dataPosition() >= i1)
        {
            break MISSING_BLOCK_LABEL_175;
        }
        l = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(l);
        JVM INSTR lookupswitch 4: default 80
    //                   1: 105
    //                   2: 137
    //                   3: 156
    //                   1000: 121;
           goto _L1 _L2 _L3 _L4 _L5
_L4:
        break MISSING_BLOCK_LABEL_156;
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
        l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        j = i;
        i = l;
          goto _L8
_L5:
        l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        i = j;
        j = l;
          goto _L8
_L3:
        k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        l = i;
        i = j;
        j = l;
          goto _L8
        l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, l);
        l = i;
        i = j;
        j = l;
          goto _L8
        if (parcel.dataPosition() != i1)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i1).toString(), parcel);
        } else
        {
            return new com.google.android.gms.location.b(i, j, k, l1);
        }
    }

    public com.google.android.gms.location.b[] bA(int i)
    {
        return new com.google.android.gms.location.b[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return aB(parcel);
    }

    public Object[] newArray(int i)
    {
        return bA(i);
    }
}
