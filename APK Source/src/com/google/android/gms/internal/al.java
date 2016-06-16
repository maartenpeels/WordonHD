// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            ak

public class al
    implements android.os.Parcelable.Creator
{

    public al()
    {
    }

    static void a(ak ak1, Parcel parcel, int i)
    {
        int j = com.google.android.gms.common.internal.safeparcel.b.p(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, ak1.versionCode);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, ak1.lS, false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 3, ak1.height);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 4, ak1.heightPixels);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, ak1.lT);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 6, ak1.width);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 7, ak1.widthPixels);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, ak1.lU, i, false);
        com.google.android.gms.common.internal.safeparcel.b.F(parcel, j);
    }

    public ak b(Parcel parcel)
    {
        Object obj;
        ak aak[];
        int i;
        int j;
        int k;
        int l;
        int i1;
        int k1;
        boolean flag;
        k1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        i1 = 0;
        obj = null;
        l = 0;
        j = 0;
        flag = false;
        k = 0;
        i = 0;
        aak = null;
_L11:
        int j1;
        if (parcel.dataPosition() >= k1)
        {
            break MISSING_BLOCK_LABEL_395;
        }
        j1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(j1);
        JVM INSTR tableswitch 1 8: default 96
    //                   1 145
    //                   2 180
    //                   3 208
    //                   4 239
    //                   5 266
    //                   6 297
    //                   7 328
    //                   8 359;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L9:
        break MISSING_BLOCK_LABEL_359;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, j1);
        ak aak1[] = aak;
        j1 = k;
        aak = ((ak []) (obj));
        k = j;
        j = j1;
        obj = aak1;
_L12:
        Object obj1 = obj;
        j1 = j;
        j = k;
        obj = aak;
        k = j1;
        aak = ((ak []) (obj1));
        if (true) goto _L11; else goto _L10
_L10:
        j1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
        i1 = j;
        Object obj2 = obj;
        obj = aak;
        j = k;
        k = i1;
        aak = ((ak []) (obj2));
        i1 = j1;
          goto _L12
_L3:
        String s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, j1);
        obj = aak;
        j1 = j;
        aak = s;
        j = k;
        k = j1;
          goto _L12
_L4:
        l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
        j1 = j;
        Object obj3 = obj;
        obj = aak;
        j = k;
        k = j1;
        aak = ((ak []) (obj3));
          goto _L12
_L5:
        j1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
        j = k;
        k = j1;
        Object obj4 = obj;
        obj = aak;
        aak = ((ak []) (obj4));
          goto _L12
_L6:
        flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
        j1 = j;
        Object obj5 = obj;
        obj = aak;
        j = k;
        k = j1;
        aak = ((ak []) (obj5));
          goto _L12
_L7:
        k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
        j1 = j;
        Object obj6 = obj;
        obj = aak;
        j = k;
        k = j1;
        aak = ((ak []) (obj6));
          goto _L12
_L8:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
        j1 = j;
        Object obj7 = obj;
        obj = aak;
        j = k;
        k = j1;
        aak = ((ak []) (obj7));
          goto _L12
        aak = (ak[])com.google.android.gms.common.internal.safeparcel.a.b(parcel, j1, ak.CREATOR);
        j1 = j;
        Object obj8 = obj;
        obj = aak;
        j = k;
        k = j1;
        aak = ((ak []) (obj8));
          goto _L12
        if (parcel.dataPosition() != k1)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(k1).toString(), parcel);
        } else
        {
            return new ak(i1, ((String) (obj)), l, j, flag, k, i, aak);
        }
    }

    public ak[] c(int i)
    {
        return new ak[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return b(parcel);
    }

    public Object[] newArray(int i)
    {
        return c(i);
    }
}
