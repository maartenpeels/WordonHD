// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            cb

public class ca
    implements android.os.Parcelable.Creator
{

    public ca()
    {
    }

    static void a(cb cb1, Parcel parcel, int i)
    {
        i = b.p(parcel);
        b.c(parcel, 1, cb1.versionCode);
        b.a(parcel, 2, cb1.nN, false);
        b.a(parcel, 3, cb1.nO, false);
        b.a(parcel, 4, cb1.mimeType, false);
        b.a(parcel, 5, cb1.packageName, false);
        b.a(parcel, 6, cb1.nP, false);
        b.a(parcel, 7, cb1.nQ, false);
        b.a(parcel, 8, cb1.nR, false);
        b.F(parcel, i);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return d(parcel);
    }

    public cb d(Parcel parcel)
    {
        String s;
        String s1;
        String s2;
        String s3;
        String s4;
        String s5;
        String s6;
        int i;
        int j;
        j = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        i = 0;
        s = null;
        s5 = null;
        s2 = null;
        s3 = null;
        s4 = null;
        s1 = null;
        s6 = null;
_L11:
        int k;
        if (parcel.dataPosition() >= j)
        {
            break MISSING_BLOCK_LABEL_405;
        }
        k = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(k);
        JVM INSTR tableswitch 1 8: default 96
    //                   1 149
    //                   2 182
    //                   3 212
    //                   4 245
    //                   5 274
    //                   6 307
    //                   7 340
    //                   8 372;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L9:
        break MISSING_BLOCK_LABEL_372;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
        String s7 = s6;
        String s17 = s4;
        s6 = s;
        s4 = s2;
        s2 = s17;
        s = s7;
_L12:
        String s8 = s;
        String s18 = s2;
        s2 = s4;
        s = s6;
        s4 = s18;
        s6 = s8;
        if (true) goto _L11; else goto _L10
_L10:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
        String s9 = s2;
        String s19 = s;
        s = s6;
        s2 = s4;
        s4 = s9;
        s6 = s19;
          goto _L12
_L3:
        String s10 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        s = s6;
        s6 = s2;
        s2 = s4;
        s4 = s6;
        s6 = s10;
          goto _L12
_L4:
        s5 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        String s11 = s2;
        String s20 = s;
        s = s6;
        s2 = s4;
        s4 = s11;
        s6 = s20;
          goto _L12
_L5:
        String s12 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        s2 = s4;
        s4 = s12;
        s12 = s;
        s = s6;
        s6 = s12;
          goto _L12
_L6:
        s3 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        String s13 = s2;
        String s21 = s;
        s = s6;
        s2 = s4;
        s4 = s13;
        s6 = s21;
          goto _L12
_L7:
        s4 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        String s14 = s2;
        String s22 = s;
        s = s6;
        s2 = s4;
        s4 = s14;
        s6 = s22;
          goto _L12
_L8:
        s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        String s15 = s2;
        String s23 = s;
        s = s6;
        s2 = s4;
        s4 = s15;
        s6 = s23;
          goto _L12
        s6 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        String s16 = s2;
        String s24 = s;
        s = s6;
        s2 = s4;
        s4 = s16;
        s6 = s24;
          goto _L12
        if (parcel.dataPosition() != j)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
        } else
        {
            return new cb(i, s, s5, s2, s3, s4, s1, s6);
        }
    }

    public cb[] h(int i)
    {
        return new cb[i];
    }

    public Object[] newArray(int i)
    {
        return h(i);
    }
}
