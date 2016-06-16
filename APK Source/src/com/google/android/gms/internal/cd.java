// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            ce, cb, dx

public class cd
    implements android.os.Parcelable.Creator
{

    public cd()
    {
    }

    static void a(ce ce1, Parcel parcel, int j)
    {
        int k = b.p(parcel);
        b.c(parcel, 1, ce1.versionCode);
        b.a(parcel, 2, ce1.og, j, false);
        b.a(parcel, 3, ce1.aO(), false);
        b.a(parcel, 4, ce1.aP(), false);
        b.a(parcel, 5, ce1.aQ(), false);
        b.a(parcel, 6, ce1.aR(), false);
        b.a(parcel, 7, ce1.ol, false);
        b.a(parcel, 8, ce1.om);
        b.a(parcel, 9, ce1.on, false);
        b.a(parcel, 10, ce1.aT(), false);
        b.c(parcel, 11, ce1.orientation);
        b.c(parcel, 12, ce1.op);
        b.a(parcel, 13, ce1.nO, false);
        b.a(parcel, 14, ce1.kK, j, false);
        b.a(parcel, 15, ce1.aS(), false);
        b.a(parcel, 16, ce1.or, false);
        b.F(parcel, k);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return e(parcel);
    }

    public ce e(Parcel parcel)
    {
        Object obj;
        Object obj1;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        android.os.IBinder ibinder;
        Object obj8;
        Object obj9;
        Object obj10;
        int j;
        int k;
        int l;
        int j1;
        boolean flag;
        j1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        l = 0;
        obj = null;
        obj10 = null;
        obj1 = null;
        ibinder = null;
        obj4 = null;
        obj7 = null;
        flag = false;
        obj5 = null;
        obj6 = null;
        j = 0;
        k = 0;
        obj3 = null;
        obj8 = null;
        obj2 = null;
        obj9 = null;
_L19:
        int i1;
        if (parcel.dataPosition() >= j1)
        {
            break MISSING_BLOCK_LABEL_1417;
        }
        i1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(i1);
        JVM INSTR tableswitch 1 16: default 152
    //                   1 281
    //                   2 356
    //                   3 426
    //                   4 497
    //                   5 563
    //                   6 634
    //                   7 705
    //                   8 776
    //                   9 847
    //                   10 922
    //                   11 989
    //                   12 1056
    //                   13 1127
    //                   14 1206
    //                   15 1279
    //                   16 1350;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17
_L17:
        break MISSING_BLOCK_LABEL_1350;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
        Object obj11 = obj9;
        obj9 = obj10;
        Object obj26 = obj8;
        i1 = k;
        Object obj56 = obj7;
        Object obj44 = obj6;
        obj8 = obj1;
        obj1 = obj2;
        obj10 = obj;
        obj7 = obj4;
        obj6 = obj56;
        obj4 = obj44;
        k = j;
        j = i1;
        obj2 = obj26;
        obj = obj11;
_L20:
        Object obj12 = obj;
        Object obj27 = obj9;
        i1 = j;
        obj9 = obj6;
        obj6 = obj4;
        j = k;
        obj4 = obj7;
        Object obj45 = obj1;
        obj = obj10;
        obj10 = obj27;
        obj1 = obj8;
        obj7 = obj9;
        k = i1;
        obj8 = obj2;
        obj2 = obj45;
        obj9 = obj12;
        if (true) goto _L19; else goto _L18
_L18:
        i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        Object obj13 = obj9;
        obj9 = obj10;
        l = j;
        obj10 = obj4;
        Object obj28 = obj1;
        obj1 = obj2;
        Object obj46 = obj;
        obj = obj13;
        obj2 = obj8;
        j = k;
        k = l;
        obj4 = obj6;
        obj6 = obj7;
        obj7 = obj10;
        obj8 = obj28;
        obj10 = obj46;
        l = i1;
          goto _L20
_L3:
        cb cb1 = (cb)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, cb.CREATOR);
        i1 = j;
        Object obj29 = obj4;
        Object obj47 = obj1;
        obj = obj9;
        obj1 = obj2;
        obj2 = obj8;
        j = k;
        k = i1;
        obj4 = obj6;
        obj6 = obj7;
        obj7 = obj29;
        obj8 = obj47;
        obj9 = obj10;
        obj10 = cb1;
          goto _L20
_L4:
        Object obj14 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
        obj10 = obj9;
        obj9 = obj14;
        i1 = j;
        obj14 = obj4;
        Object obj30 = obj1;
        obj1 = obj2;
        Object obj48 = obj;
        obj = obj10;
        obj2 = obj8;
        j = k;
        k = i1;
        obj4 = obj6;
        obj6 = obj7;
        obj7 = obj14;
        obj8 = obj30;
        obj10 = obj48;
          goto _L20
_L5:
        android.os.IBinder ibinder1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
        obj1 = obj9;
        obj9 = obj10;
        i1 = j;
        obj10 = obj4;
        Object obj31 = obj;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj8;
        j = k;
        k = i1;
        obj4 = obj6;
        obj6 = obj7;
        obj7 = obj10;
        obj8 = ibinder1;
        obj10 = obj31;
          goto _L20
_L6:
        ibinder = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
        Object obj15 = obj9;
        obj9 = obj10;
        i1 = j;
        obj10 = obj4;
        Object obj32 = obj1;
        obj1 = obj2;
        Object obj49 = obj;
        obj = obj15;
        obj2 = obj8;
        j = k;
        k = i1;
        obj4 = obj6;
        obj6 = obj7;
        obj7 = obj10;
        obj8 = obj32;
        obj10 = obj49;
          goto _L20
_L7:
        Object obj16 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
        obj4 = obj9;
        obj9 = obj10;
        i1 = j;
        obj10 = obj16;
        obj16 = obj1;
        obj1 = obj2;
        Object obj33 = obj;
        obj = obj4;
        obj2 = obj8;
        j = k;
        k = i1;
        obj4 = obj6;
        obj6 = obj7;
        obj7 = obj10;
        obj8 = obj16;
        obj10 = obj33;
          goto _L20
_L8:
        obj7 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        Object obj17 = obj9;
        obj9 = obj10;
        i1 = j;
        obj10 = obj4;
        Object obj34 = obj1;
        obj1 = obj2;
        Object obj50 = obj;
        obj = obj17;
        obj2 = obj8;
        j = k;
        k = i1;
        obj4 = obj6;
        obj6 = obj7;
        obj7 = obj10;
        obj8 = obj34;
        obj10 = obj50;
          goto _L20
_L9:
        flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1);
        Object obj18 = obj9;
        obj9 = obj10;
        i1 = j;
        obj10 = obj4;
        Object obj35 = obj1;
        obj1 = obj2;
        Object obj51 = obj;
        obj = obj18;
        obj2 = obj8;
        j = k;
        k = i1;
        obj4 = obj6;
        obj6 = obj7;
        obj7 = obj10;
        obj8 = obj35;
        obj10 = obj51;
          goto _L20
_L10:
        String s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        obj5 = obj9;
        obj9 = obj10;
        i1 = j;
        obj10 = obj4;
        Object obj19 = obj1;
        obj1 = obj2;
        Object obj36 = obj;
        obj = obj5;
        obj2 = obj8;
        j = k;
        k = i1;
        obj4 = obj6;
        obj5 = s1;
        obj6 = obj7;
        obj7 = obj10;
        obj8 = obj19;
        obj10 = obj36;
          goto _L20
_L11:
        android.os.IBinder ibinder2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
        Object obj20 = obj9;
        obj9 = obj10;
        obj6 = obj7;
        i1 = j;
        obj7 = obj4;
        obj10 = obj1;
        obj1 = obj2;
        Object obj37 = obj;
        obj = obj20;
        obj2 = obj8;
        j = k;
        k = i1;
        obj4 = ibinder2;
        obj8 = obj10;
        obj10 = obj37;
          goto _L20
_L12:
        i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        Object obj21 = obj9;
        obj9 = obj10;
        j = k;
        k = i1;
        obj10 = obj4;
        Object obj38 = obj1;
        obj1 = obj2;
        Object obj52 = obj;
        obj = obj21;
        obj2 = obj8;
        obj4 = obj6;
        obj6 = obj7;
        obj7 = obj10;
        obj8 = obj38;
        obj10 = obj52;
          goto _L20
_L13:
        k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        Object obj22 = obj9;
        obj9 = obj10;
        i1 = j;
        obj10 = obj4;
        Object obj39 = obj1;
        obj1 = obj2;
        Object obj53 = obj;
        obj = obj22;
        obj2 = obj8;
        j = k;
        k = i1;
        obj4 = obj6;
        obj6 = obj7;
        obj7 = obj10;
        obj8 = obj39;
        obj10 = obj53;
          goto _L20
_L14:
        Object obj23 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        obj3 = obj9;
        obj9 = obj10;
        i1 = j;
        obj10 = obj4;
        obj4 = obj23;
        obj23 = obj1;
        obj1 = obj2;
        Object obj40 = obj;
        obj = obj3;
        obj2 = obj8;
        obj3 = obj4;
        j = k;
        k = i1;
        obj4 = obj6;
        obj6 = obj7;
        obj7 = obj10;
        obj8 = obj23;
        obj10 = obj40;
          goto _L20
_L15:
        obj8 = (dx)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, dx.CREATOR);
        Object obj24 = obj;
        i1 = j;
        Object obj41 = obj4;
        Object obj54 = obj1;
        obj = obj9;
        obj1 = obj2;
        obj2 = obj8;
        j = k;
        k = i1;
        obj4 = obj6;
        obj6 = obj7;
        obj7 = obj41;
        obj8 = obj54;
        obj9 = obj10;
        obj10 = obj24;
          goto _L20
_L16:
        Object obj42 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
        obj2 = obj9;
        obj9 = obj10;
        i1 = j;
        obj10 = obj4;
        Object obj25 = obj1;
        obj1 = obj42;
        obj42 = obj;
        obj = obj2;
        obj2 = obj8;
        j = k;
        k = i1;
        obj4 = obj6;
        obj6 = obj7;
        obj7 = obj10;
        obj8 = obj25;
        obj10 = obj42;
          goto _L20
        String s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        obj9 = obj10;
        i1 = j;
        obj10 = obj4;
        Object obj43 = obj1;
        obj1 = obj2;
        Object obj55 = obj;
        obj = s;
        obj2 = obj8;
        j = k;
        k = i1;
        obj4 = obj6;
        obj6 = obj7;
        obj7 = obj10;
        obj8 = obj43;
        obj10 = obj55;
          goto _L20
        if (parcel.dataPosition() != j1)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j1).toString(), parcel);
        } else
        {
            return new ce(l, ((cb) (obj)), ((android.os.IBinder) (obj10)), ((android.os.IBinder) (obj1)), ibinder, ((android.os.IBinder) (obj4)), ((String) (obj7)), flag, ((String) (obj5)), ((android.os.IBinder) (obj6)), j, k, ((String) (obj3)), ((dx) (obj8)), ((android.os.IBinder) (obj2)), ((String) (obj9)));
        }
    }

    public ce[] i(int j)
    {
        return new ce[j];
    }

    public Object[] newArray(int j)
    {
        return i(j);
    }
}
