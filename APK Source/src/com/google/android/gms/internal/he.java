// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            hd

public class he
    implements android.os.Parcelable.Creator
{

    public he()
    {
    }

    static void a(hd hd1, Parcel parcel, int i)
    {
        i = b.p(parcel);
        b.a(parcel, 1, hd1.getRequestId(), false);
        b.c(parcel, 1000, hd1.getVersionCode());
        b.a(parcel, 2, hd1.getExpirationTime());
        b.a(parcel, 3, hd1.hS());
        b.a(parcel, 4, hd1.getLatitude());
        b.a(parcel, 5, hd1.getLongitude());
        b.a(parcel, 6, hd1.hT());
        b.c(parcel, 7, hd1.hU());
        b.c(parcel, 8, hd1.getNotificationResponsiveness());
        b.c(parcel, 9, hd1.hV());
        b.F(parcel, i);
    }

    public hd aC(Parcel parcel)
    {
        double d;
        double d1;
        float f;
        short word0;
        String s;
        int i;
        int j;
        int k;
        int l;
        int j1;
        long l1;
        j1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        l = 0;
        s = null;
        j = 0;
        word0 = 0;
        d = 0.0D;
        d1 = 0.0D;
        f = 0.0F;
        l1 = 0L;
        i = 0;
        k = -1;
_L13:
        int i1;
        if (parcel.dataPosition() >= j1)
        {
            break MISSING_BLOCK_LABEL_572;
        }
        i1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(i1);
        JVM INSTR lookupswitch 10: default 144
    //                   1: 205
    //                   2: 283
    //                   3: 320
    //                   4: 357
    //                   5: 391
    //                   6: 428
    //                   7: 465
    //                   8: 506
    //                   9: 539
    //                   1000: 242;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L10:
        break MISSING_BLOCK_LABEL_539;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
        i1 = k;
        double d2 = d1;
        k = j;
        d1 = d;
        d = d2;
        j = i;
        i = i1;
_L14:
        i1 = i;
        double d3 = d;
        d = d1;
        i = j;
        j = k;
        d1 = d3;
        k = i1;
        if (true) goto _L13; else goto _L12
_L12:
        s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        i1 = k;
        k = j;
        double d4 = d;
        j = i;
        i = i1;
        d = d1;
        d1 = d4;
          goto _L14
_L11:
        i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        l = k;
        k = j;
        double d5 = d;
        j = i;
        i = l;
        d = d1;
        d1 = d5;
        l = i1;
          goto _L14
_L3:
        l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
        i1 = k;
        k = j;
        double d6 = d;
        j = i;
        i = i1;
        d = d1;
        d1 = d6;
          goto _L14
_L4:
        word0 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, i1);
        i1 = k;
        k = j;
        double d7 = d;
        j = i;
        i = i1;
        d = d1;
        d1 = d7;
          goto _L14
_L5:
        double d8 = com.google.android.gms.common.internal.safeparcel.a.l(parcel, i1);
        i1 = k;
        k = j;
        d = d1;
        d1 = d8;
        j = i;
        i = i1;
          goto _L14
_L6:
        d1 = com.google.android.gms.common.internal.safeparcel.a.l(parcel, i1);
        i1 = k;
        k = j;
        double d9 = d;
        j = i;
        i = i1;
        d = d1;
        d1 = d9;
          goto _L14
_L7:
        f = com.google.android.gms.common.internal.safeparcel.a.k(parcel, i1);
        i1 = k;
        k = j;
        double d10 = d;
        j = i;
        i = i1;
        d = d1;
        d1 = d10;
          goto _L14
_L8:
        i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        j = k;
        k = i1;
        double d11 = d;
        i1 = i;
        i = j;
        j = i1;
        d = d1;
        d1 = d11;
          goto _L14
_L9:
        i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        i = k;
        k = j;
        double d12 = d;
        j = i1;
        d = d1;
        d1 = d12;
          goto _L14
        i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        k = j;
        double d13 = d;
        j = i;
        i = i1;
        d = d1;
        d1 = d13;
          goto _L14
        if (parcel.dataPosition() != j1)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j1).toString(), parcel);
        } else
        {
            return new hd(l, s, j, word0, d, d1, f, l1, i, k);
        }
    }

    public hd[] bD(int i)
    {
        return new hd[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return aC(parcel);
    }

    public Object[] newArray(int i)
    {
        return bD(i);
    }
}
