// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            fv

public class gb
    implements android.os.Parcelable.Creator
{

    public gb()
    {
    }

    static void a(ga.a a1, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.c(parcel, 1, a1.getVersionCode());
        b.c(parcel, 2, a1.eW());
        b.a(parcel, 3, a1.fc());
        b.c(parcel, 4, a1.eX());
        b.a(parcel, 5, a1.fd());
        b.a(parcel, 6, a1.fe(), false);
        b.c(parcel, 7, a1.ff());
        b.a(parcel, 8, a1.fh(), false);
        b.a(parcel, 9, a1.fj(), i, false);
        b.F(parcel, j);
    }

    public ga.a[] V(int i)
    {
        return new ga.a[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return t(parcel);
    }

    public Object[] newArray(int i)
    {
        return V(i);
    }

    public ga.a t(Parcel parcel)
    {
        Object obj;
        Object obj1;
        Object obj2;
        int i;
        int j;
        int k;
        int l;
        int j1;
        boolean flag;
        boolean flag1;
        j1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        l = 0;
        i = 0;
        flag = false;
        j = 0;
        flag1 = false;
        obj1 = null;
        k = 0;
        obj = null;
        obj2 = null;
_L12:
        int i1;
        if (parcel.dataPosition() >= j1)
        {
            break MISSING_BLOCK_LABEL_474;
        }
        i1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(i1);
        JVM INSTR tableswitch 1 9: default 100
    //                   1 157
    //                   2 196
    //                   3 227
    //                   4 262
    //                   5 297
    //                   6 332
    //                   7 370
    //                   8 405
    //                   9 437;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10
_L10:
        break MISSING_BLOCK_LABEL_437;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
        Object obj3 = obj2;
        i1 = k;
        k = i;
        obj2 = obj1;
        i = i1;
        obj1 = obj;
        obj = obj3;
_L13:
        Object obj4 = obj;
        i1 = i;
        obj = obj1;
        i = k;
        obj1 = obj2;
        k = i1;
        obj2 = obj4;
        if (true) goto _L12; else goto _L11
_L11:
        i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        Object obj5 = obj2;
        obj2 = obj1;
        obj1 = obj;
        l = i;
        obj = obj5;
        i = k;
        k = l;
        l = i1;
          goto _L13
_L3:
        i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        Object obj6 = obj2;
        i = k;
        obj2 = obj1;
        obj1 = obj;
        k = i1;
        obj = obj6;
          goto _L13
_L4:
        flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1);
        Object obj7 = obj2;
        obj2 = obj1;
        obj1 = obj;
        i1 = i;
        obj = obj7;
        i = k;
        k = i1;
          goto _L13
_L5:
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        Object obj8 = obj2;
        obj2 = obj1;
        obj1 = obj;
        i1 = i;
        obj = obj8;
        i = k;
        k = i1;
          goto _L13
_L6:
        flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1);
        Object obj9 = obj2;
        obj2 = obj1;
        obj1 = obj;
        i1 = i;
        obj = obj9;
        i = k;
        k = i1;
          goto _L13
_L7:
        Object obj10 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        obj1 = obj2;
        obj2 = obj10;
        obj10 = obj;
        i1 = i;
        obj = obj1;
        obj1 = obj10;
        i = k;
        k = i1;
          goto _L13
_L8:
        k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        Object obj11 = obj2;
        obj2 = obj1;
        obj1 = obj;
        i1 = i;
        obj = obj11;
        i = k;
        k = i1;
          goto _L13
_L9:
        String s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        obj = obj2;
        obj2 = obj1;
        obj1 = s;
        i1 = i;
        i = k;
        k = i1;
          goto _L13
        fv fv1 = (fv)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, fv.CREATOR);
        obj2 = obj1;
        obj1 = obj;
        i1 = i;
        obj = fv1;
        i = k;
        k = i1;
          goto _L13
        if (parcel.dataPosition() != j1)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j1).toString(), parcel);
        } else
        {
            return new ga.a(l, i, flag, j, flag1, ((String) (obj1)), k, ((String) (obj)), ((fv) (obj2)));
        }
    }
}
