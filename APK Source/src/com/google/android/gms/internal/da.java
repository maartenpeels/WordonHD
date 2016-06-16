// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            cz

public class da
    implements android.os.Parcelable.Creator
{

    public da()
    {
    }

    static void a(cz cz1, Parcel parcel, int i)
    {
        i = b.p(parcel);
        b.c(parcel, 1, cz1.versionCode);
        b.a(parcel, 2, cz1.ol, false);
        b.a(parcel, 3, cz1.pm, false);
        b.a(parcel, 4, cz1.ne, false);
        b.c(parcel, 5, cz1.errorCode);
        b.a(parcel, 6, cz1.nf, false);
        b.a(parcel, 7, cz1.pn);
        b.a(parcel, 8, cz1.po);
        b.a(parcel, 9, cz1.pp);
        b.a(parcel, 10, cz1.pq, false);
        b.a(parcel, 11, cz1.ni);
        b.c(parcel, 12, cz1.orientation);
        b.a(parcel, 13, cz1.pr, false);
        b.a(parcel, 14, cz1.ps);
        b.a(parcel, 15, cz1.pt, false);
        b.a(parcel, 19, cz1.pv, false);
        b.a(parcel, 18, cz1.pu);
        b.a(parcel, 21, cz1.pw, false);
        b.F(parcel, i);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return g(parcel);
    }

    public cz g(Parcel parcel)
    {
        Object obj;
        String s;
        Object obj1;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        String s1;
        Object obj6;
        int i;
        int j;
        int k;
        int i1;
        long l1;
        long l2;
        long l3;
        long l4;
        boolean flag;
        boolean flag1;
        i1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        k = 0;
        obj = null;
        s1 = null;
        obj1 = null;
        j = 0;
        obj5 = null;
        l1 = 0L;
        flag = false;
        l3 = 0L;
        obj4 = null;
        l2 = 0L;
        i = 0;
        obj3 = null;
        l4 = 0L;
        obj2 = null;
        flag1 = false;
        s = null;
        obj6 = null;
_L21:
        int j1;
        if (parcel.dataPosition() >= i1)
        {
            break MISSING_BLOCK_LABEL_1551;
        }
        j1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(j1);
        JVM INSTR tableswitch 1 21: default 176
    //                   1 313
    //                   2 382
    //                   3 448
    //                   4 517
    //                   5 582
    //                   6 651
    //                   7 720
    //                   8 785
    //                   9 850
    //                   10 919
    //                   11 992
    //                   12 1061
    //                   13 1130
    //                   14 1203
    //                   15 1272
    //                   16 176
    //                   17 176
    //                   18 1413
    //                   19 1345
    //                   20 176
    //                   21 1482;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L1 _L1 _L17 _L18 _L1 _L19
_L19:
        break MISSING_BLOCK_LABEL_1482;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, j1);
        Object obj7 = obj6;
        boolean flag2 = flag1;
        Object obj25 = obj5;
        long l5 = l4;
        Object obj44 = obj4;
        Object obj45 = obj3;
        Object obj46 = obj2;
        obj6 = obj;
        obj5 = obj1;
        obj4 = obj25;
        l4 = l1;
        flag1 = flag;
        obj3 = obj44;
        obj2 = obj45;
        l1 = l5;
        obj1 = obj46;
        flag = flag2;
        obj = obj7;
_L22:
        Object obj8 = obj;
        boolean flag3 = flag;
        long l6 = l1;
        flag = flag1;
        l1 = l4;
        Object obj26 = obj1;
        obj1 = obj5;
        obj = obj6;
        obj5 = obj4;
        obj4 = obj3;
        obj3 = obj2;
        l4 = l6;
        obj2 = obj26;
        flag1 = flag3;
        obj6 = obj8;
        if (true) goto _L21; else goto _L20
_L20:
        k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
        boolean flag4 = flag;
        long l7 = l1;
        Object obj9 = obj1;
        Object obj27 = obj;
        obj = obj6;
        flag = flag1;
        obj1 = obj2;
        l1 = l4;
        obj2 = obj3;
        obj3 = obj4;
        flag1 = flag4;
        l4 = l7;
        obj4 = obj5;
        obj5 = obj9;
        obj6 = obj27;
          goto _L22
_L3:
        String s2 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, j1);
        obj = obj6;
        boolean flag5 = flag;
        long l8 = l1;
        obj6 = obj1;
        flag = flag1;
        obj1 = obj2;
        l1 = l4;
        obj2 = obj3;
        obj3 = obj4;
        flag1 = flag5;
        l4 = l8;
        obj4 = obj5;
        obj5 = obj6;
        obj6 = s2;
          goto _L22
_L4:
        s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, j1);
        boolean flag6 = flag;
        long l9 = l1;
        Object obj10 = obj1;
        Object obj28 = obj;
        obj = obj6;
        flag = flag1;
        obj1 = obj2;
        l1 = l4;
        obj2 = obj3;
        obj3 = obj4;
        flag1 = flag6;
        l4 = l9;
        obj4 = obj5;
        obj5 = obj10;
        obj6 = obj28;
          goto _L22
_L5:
        java.util.ArrayList arraylist = com.google.android.gms.common.internal.safeparcel.a.A(parcel, j1);
        boolean flag7 = flag;
        long l10 = l1;
        obj1 = obj2;
        Object obj29 = obj;
        obj = obj6;
        flag = flag1;
        l1 = l4;
        obj2 = obj3;
        obj3 = obj4;
        flag1 = flag7;
        l4 = l10;
        obj4 = obj5;
        obj5 = arraylist;
        obj6 = obj29;
          goto _L22
_L6:
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
        boolean flag8 = flag;
        long l11 = l1;
        Object obj11 = obj1;
        Object obj30 = obj;
        obj = obj6;
        flag = flag1;
        obj1 = obj2;
        l1 = l4;
        obj2 = obj3;
        obj3 = obj4;
        flag1 = flag8;
        l4 = l11;
        obj4 = obj5;
        obj5 = obj11;
        obj6 = obj30;
          goto _L22
_L7:
        obj5 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, j1);
        boolean flag9 = flag;
        long l12 = l1;
        Object obj12 = obj1;
        Object obj31 = obj;
        obj = obj6;
        flag = flag1;
        obj1 = obj2;
        l1 = l4;
        obj2 = obj3;
        obj3 = obj4;
        flag1 = flag9;
        l4 = l12;
        obj4 = obj5;
        obj5 = obj12;
        obj6 = obj31;
          goto _L22
_L8:
        long l13 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
        l1 = l4;
        boolean flag10 = flag;
        l4 = l13;
        Object obj13 = obj1;
        Object obj32 = obj;
        obj = obj6;
        flag = flag1;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = obj4;
        flag1 = flag10;
        obj4 = obj5;
        obj5 = obj13;
        obj6 = obj32;
          goto _L22
_L9:
        boolean flag11 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
        flag = flag1;
        flag1 = flag11;
        long l14 = l1;
        Object obj14 = obj1;
        Object obj33 = obj;
        obj = obj6;
        obj1 = obj2;
        l1 = l4;
        obj2 = obj3;
        obj3 = obj4;
        l4 = l14;
        obj4 = obj5;
        obj5 = obj14;
        obj6 = obj33;
          goto _L22
_L10:
        l3 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
        boolean flag12 = flag;
        long l15 = l1;
        Object obj15 = obj1;
        Object obj34 = obj;
        obj = obj6;
        flag = flag1;
        obj1 = obj2;
        l1 = l4;
        obj2 = obj3;
        obj3 = obj4;
        flag1 = flag12;
        l4 = l15;
        obj4 = obj5;
        obj5 = obj15;
        obj6 = obj34;
          goto _L22
_L11:
        Object obj16 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, j1);
        obj4 = obj5;
        boolean flag13 = flag;
        obj5 = obj16;
        long l16 = l1;
        obj16 = obj1;
        Object obj35 = obj;
        obj = obj6;
        flag = flag1;
        obj1 = obj2;
        l1 = l4;
        obj2 = obj3;
        obj3 = obj5;
        flag1 = flag13;
        l4 = l16;
        obj5 = obj16;
        obj6 = obj35;
          goto _L22
_L12:
        l2 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
        boolean flag14 = flag;
        long l17 = l1;
        Object obj17 = obj1;
        Object obj36 = obj;
        obj = obj6;
        flag = flag1;
        obj1 = obj2;
        l1 = l4;
        obj2 = obj3;
        obj3 = obj4;
        flag1 = flag14;
        l4 = l17;
        obj4 = obj5;
        obj5 = obj17;
        obj6 = obj36;
          goto _L22
_L13:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
        boolean flag15 = flag;
        long l18 = l1;
        Object obj18 = obj1;
        Object obj37 = obj;
        obj = obj6;
        flag = flag1;
        obj1 = obj2;
        l1 = l4;
        obj2 = obj3;
        obj3 = obj4;
        flag1 = flag15;
        l4 = l18;
        obj4 = obj5;
        obj5 = obj18;
        obj6 = obj37;
          goto _L22
_L14:
        Object obj19 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, j1);
        boolean flag16 = flag;
        obj3 = obj4;
        obj4 = obj19;
        long l19 = l1;
        obj19 = obj1;
        Object obj38 = obj;
        obj = obj6;
        flag = flag1;
        obj1 = obj2;
        l1 = l4;
        obj2 = obj4;
        flag1 = flag16;
        l4 = l19;
        obj4 = obj5;
        obj5 = obj19;
        obj6 = obj38;
          goto _L22
_L15:
        l4 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
        boolean flag17 = flag;
        long l20 = l1;
        Object obj20 = obj1;
        Object obj39 = obj;
        obj = obj6;
        flag = flag1;
        obj1 = obj2;
        l1 = l4;
        obj2 = obj3;
        obj3 = obj4;
        flag1 = flag17;
        l4 = l20;
        obj4 = obj5;
        obj5 = obj20;
        obj6 = obj39;
          goto _L22
_L16:
        Object obj21 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, j1);
        boolean flag18 = flag;
        obj2 = obj3;
        long l21 = l1;
        obj3 = obj21;
        obj21 = obj1;
        Object obj40 = obj;
        obj = obj6;
        flag = flag1;
        obj1 = obj3;
        l1 = l4;
        obj3 = obj4;
        flag1 = flag18;
        l4 = l21;
        obj4 = obj5;
        obj5 = obj21;
        obj6 = obj40;
          goto _L22
_L18:
        s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, j1);
        boolean flag19 = flag;
        long l22 = l1;
        Object obj22 = obj1;
        Object obj41 = obj;
        obj = obj6;
        flag = flag1;
        obj1 = obj2;
        l1 = l4;
        obj2 = obj3;
        obj3 = obj4;
        flag1 = flag19;
        l4 = l22;
        obj4 = obj5;
        obj5 = obj22;
        obj6 = obj41;
          goto _L22
_L17:
        flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
        boolean flag20 = flag;
        long l23 = l1;
        Object obj23 = obj1;
        Object obj42 = obj;
        obj = obj6;
        flag = flag1;
        obj1 = obj2;
        l1 = l4;
        obj2 = obj3;
        obj3 = obj4;
        flag1 = flag20;
        l4 = l23;
        obj4 = obj5;
        obj5 = obj23;
        obj6 = obj42;
          goto _L22
        obj6 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, j1);
        boolean flag21 = flag;
        long l24 = l1;
        Object obj24 = obj1;
        Object obj43 = obj;
        obj = obj6;
        flag = flag1;
        obj1 = obj2;
        l1 = l4;
        obj2 = obj3;
        obj3 = obj4;
        flag1 = flag21;
        l4 = l24;
        obj4 = obj5;
        obj5 = obj24;
        obj6 = obj43;
          goto _L22
        if (parcel.dataPosition() != i1)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i1).toString(), parcel);
        } else
        {
            return new cz(k, ((String) (obj)), s1, ((java.util.List) (obj1)), j, ((java.util.List) (obj5)), l1, flag, l3, ((java.util.List) (obj4)), l2, i, ((String) (obj3)), l4, ((String) (obj2)), flag1, s, ((String) (obj6)));
        }
    }

    public cz[] l(int i)
    {
        return new cz[i];
    }

    public Object[] newArray(int i)
    {
        return l(i);
    }
}
