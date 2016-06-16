// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            ih

public class ii
    implements android.os.Parcelable.Creator
{

    public ii()
    {
    }

    static void a(ih ih1, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        Set set = ih1.ja();
        if (set.contains(Integer.valueOf(1)))
        {
            b.c(parcel, 1, ih1.getVersionCode());
        }
        if (set.contains(Integer.valueOf(2)))
        {
            b.a(parcel, 2, ih1.getAboutMe(), true);
        }
        if (set.contains(Integer.valueOf(3)))
        {
            b.a(parcel, 3, ih1.jv(), i, true);
        }
        if (set.contains(Integer.valueOf(4)))
        {
            b.a(parcel, 4, ih1.getBirthday(), true);
        }
        if (set.contains(Integer.valueOf(5)))
        {
            b.a(parcel, 5, ih1.getBraggingRights(), true);
        }
        if (set.contains(Integer.valueOf(6)))
        {
            b.c(parcel, 6, ih1.getCircledByCount());
        }
        if (set.contains(Integer.valueOf(7)))
        {
            b.a(parcel, 7, ih1.jw(), i, true);
        }
        if (set.contains(Integer.valueOf(8)))
        {
            b.a(parcel, 8, ih1.getCurrentLocation(), true);
        }
        if (set.contains(Integer.valueOf(9)))
        {
            b.a(parcel, 9, ih1.getDisplayName(), true);
        }
        if (set.contains(Integer.valueOf(12)))
        {
            b.c(parcel, 12, ih1.getGender());
        }
        if (set.contains(Integer.valueOf(14)))
        {
            b.a(parcel, 14, ih1.getId(), true);
        }
        if (set.contains(Integer.valueOf(15)))
        {
            b.a(parcel, 15, ih1.jx(), i, true);
        }
        if (set.contains(Integer.valueOf(16)))
        {
            b.a(parcel, 16, ih1.isPlusUser());
        }
        if (set.contains(Integer.valueOf(19)))
        {
            b.a(parcel, 19, ih1.jy(), i, true);
        }
        if (set.contains(Integer.valueOf(18)))
        {
            b.a(parcel, 18, ih1.getLanguage(), true);
        }
        if (set.contains(Integer.valueOf(21)))
        {
            b.c(parcel, 21, ih1.getObjectType());
        }
        if (set.contains(Integer.valueOf(20)))
        {
            b.a(parcel, 20, ih1.getNickname(), true);
        }
        if (set.contains(Integer.valueOf(23)))
        {
            b.b(parcel, 23, ih1.jA(), true);
        }
        if (set.contains(Integer.valueOf(22)))
        {
            b.b(parcel, 22, ih1.jz(), true);
        }
        if (set.contains(Integer.valueOf(25)))
        {
            b.c(parcel, 25, ih1.getRelationshipStatus());
        }
        if (set.contains(Integer.valueOf(24)))
        {
            b.c(parcel, 24, ih1.getPlusOneCount());
        }
        if (set.contains(Integer.valueOf(27)))
        {
            b.a(parcel, 27, ih1.getUrl(), true);
        }
        if (set.contains(Integer.valueOf(26)))
        {
            b.a(parcel, 26, ih1.getTagline(), true);
        }
        if (set.contains(Integer.valueOf(29)))
        {
            b.a(parcel, 29, ih1.isVerified());
        }
        if (set.contains(Integer.valueOf(28)))
        {
            b.b(parcel, 28, ih1.jB(), true);
        }
        b.F(parcel, j);
    }

    public ih aN(Parcel parcel)
    {
        Object obj;
        Object obj1;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        Object obj8;
        Object obj9;
        Object obj10;
        Object obj11;
        Object obj12;
        Object obj13;
        Object obj14;
        Object obj15;
        Object obj16;
        HashSet hashset;
        int i;
        int j;
        int k;
        int l;
        int i1;
        int j1;
        int l7;
        boolean flag;
        boolean flag1;
        l7 = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        hashset = new HashSet();
        j1 = 0;
        obj = null;
        obj16 = null;
        obj2 = null;
        obj14 = null;
        i = 0;
        obj13 = null;
        obj4 = null;
        obj11 = null;
        k = 0;
        obj10 = null;
        obj7 = null;
        flag1 = false;
        obj8 = null;
        obj9 = null;
        obj6 = null;
        l = 0;
        obj5 = null;
        obj12 = null;
        j = 0;
        i1 = 0;
        obj3 = null;
        obj15 = null;
        obj1 = null;
        flag = false;
_L28:
        int k1;
        if (parcel.dataPosition() >= l7)
        {
            break MISSING_BLOCK_LABEL_3831;
        }
        k1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(k1);
        JVM INSTR tableswitch 1 29: default 240
    //                   1 493
    //                   2 624
    //                   3 752
    //                   4 893
    //                   5 1020
    //                   6 1151
    //                   7 1275
    //                   8 1413
    //                   9 1541
    //                   10 240
    //                   11 240
    //                   12 1673
    //                   13 240
    //                   14 1797
    //                   15 1933
    //                   16 2067
    //                   17 240
    //                   18 2341
    //                   19 2199
    //                   20 2605
    //                   21 2473
    //                   22 2880
    //                   23 2741
    //                   24 3147
    //                   25 3019
    //                   26 3423
    //                   27 3287
    //                   28 3691
    //                   29 3559;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L1 _L1 _L11 _L1 _L12 _L13 _L14 _L1 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24 _L25 _L26
_L25:
        break MISSING_BLOCK_LABEL_3691;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, k1);
        Object obj96 = obj16;
        Object obj17 = obj15;
        Object obj118 = obj14;
        k1 = i1;
        Object obj119 = obj13;
        Object obj43 = obj12;
        Object obj120 = obj11;
        int l1 = l;
        Object obj121 = obj10;
        Object obj69 = obj9;
        Object obj122 = obj8;
        Object obj123 = obj6;
        Object obj124 = obj5;
        Object obj125 = obj3;
        Object obj126 = obj1;
        obj16 = obj;
        obj15 = obj96;
        obj14 = obj2;
        obj13 = obj118;
        i1 = i;
        obj12 = obj119;
        obj11 = obj4;
        obj10 = obj120;
        l = k;
        obj9 = obj121;
        obj8 = obj7;
        obj7 = obj122;
        obj6 = obj69;
        obj5 = obj123;
        k = l1;
        obj4 = obj124;
        obj3 = obj43;
        i = k1;
        obj2 = obj125;
        obj1 = obj17;
        obj = obj126;
_L29:
        k1 = i;
        int i2 = k;
        Object obj18 = obj7;
        obj7 = obj8;
        k = l;
        Object obj44 = obj4;
        obj4 = obj11;
        i = i1;
        Object obj70 = obj2;
        obj2 = obj14;
        Object obj97 = obj;
        obj = obj16;
        obj16 = obj15;
        obj14 = obj13;
        obj13 = obj12;
        obj11 = obj10;
        obj10 = obj9;
        obj8 = obj18;
        obj9 = obj6;
        obj6 = obj5;
        l = i2;
        obj5 = obj44;
        obj12 = obj3;
        i1 = k1;
        obj3 = obj70;
        obj15 = obj1;
        obj1 = obj97;
        if (true) goto _L28; else goto _L27
_L27:
        j1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
        hashset.add(Integer.valueOf(1));
        k1 = i1;
        Object obj71 = obj7;
        i1 = k;
        Object obj98 = obj4;
        int j2 = i;
        Object obj19 = obj2;
        Object obj45 = obj;
        obj = obj1;
        obj1 = obj15;
        obj2 = obj3;
        i = k1;
        obj3 = obj12;
        obj4 = obj5;
        k = l;
        obj5 = obj6;
        obj6 = obj9;
        obj7 = obj8;
        obj8 = obj71;
        obj9 = obj10;
        l = i1;
        obj10 = obj11;
        obj11 = obj98;
        obj12 = obj13;
        i1 = j2;
        obj13 = obj14;
        obj14 = obj19;
        obj15 = obj16;
        obj16 = obj45;
          goto _L29
_L3:
        String s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k1);
        hashset.add(Integer.valueOf(2));
        k1 = i1;
        Object obj72 = obj7;
        i1 = k;
        Object obj99 = obj4;
        int k2 = i;
        Object obj20 = obj2;
        obj = obj1;
        obj1 = obj15;
        obj2 = obj3;
        i = k1;
        obj3 = obj12;
        obj4 = obj5;
        k = l;
        obj5 = obj6;
        obj6 = obj9;
        obj7 = obj8;
        obj8 = obj72;
        obj9 = obj10;
        l = i1;
        obj10 = obj11;
        obj11 = obj99;
        obj12 = obj13;
        i1 = k2;
        obj13 = obj14;
        obj14 = obj20;
        obj15 = obj16;
        obj16 = s1;
          goto _L29
_L4:
        Object obj21 = (ih.a)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k1, ih.a.CREATOR);
        hashset.add(Integer.valueOf(3));
        obj16 = obj15;
        obj15 = obj21;
        k1 = i1;
        Object obj73 = obj7;
        i1 = k;
        Object obj100 = obj4;
        int l2 = i;
        obj21 = obj2;
        Object obj46 = obj;
        obj = obj1;
        obj1 = obj16;
        obj2 = obj3;
        i = k1;
        obj3 = obj12;
        obj4 = obj5;
        k = l;
        obj5 = obj6;
        obj6 = obj9;
        obj7 = obj8;
        obj8 = obj73;
        obj9 = obj10;
        l = i1;
        obj10 = obj11;
        obj11 = obj100;
        obj12 = obj13;
        i1 = l2;
        obj13 = obj14;
        obj14 = obj21;
        obj16 = obj46;
          goto _L29
_L5:
        String s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k1);
        hashset.add(Integer.valueOf(4));
        k1 = i1;
        Object obj74 = obj7;
        i1 = k;
        Object obj101 = obj4;
        int i3 = i;
        obj2 = obj3;
        Object obj47 = obj;
        obj = obj1;
        obj1 = obj15;
        i = k1;
        obj3 = obj12;
        obj4 = obj5;
        k = l;
        obj5 = obj6;
        obj6 = obj9;
        obj7 = obj8;
        obj8 = obj74;
        obj9 = obj10;
        l = i1;
        obj10 = obj11;
        obj11 = obj101;
        obj12 = obj13;
        i1 = i3;
        obj13 = obj14;
        obj14 = s;
        obj15 = obj16;
        obj16 = obj47;
          goto _L29
_L6:
        obj14 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k1);
        hashset.add(Integer.valueOf(5));
        k1 = i1;
        Object obj75 = obj7;
        i1 = k;
        Object obj102 = obj4;
        int j3 = i;
        Object obj22 = obj2;
        Object obj48 = obj;
        obj = obj1;
        obj1 = obj15;
        obj2 = obj3;
        i = k1;
        obj3 = obj12;
        obj4 = obj5;
        k = l;
        obj5 = obj6;
        obj6 = obj9;
        obj7 = obj8;
        obj8 = obj75;
        obj9 = obj10;
        l = i1;
        obj10 = obj11;
        obj11 = obj102;
        obj12 = obj13;
        i1 = j3;
        obj13 = obj14;
        obj14 = obj22;
        obj15 = obj16;
        obj16 = obj48;
          goto _L29
_L7:
        k1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
        hashset.add(Integer.valueOf(6));
        i = i1;
        Object obj76 = obj7;
        i1 = k;
        Object obj103 = obj4;
        Object obj23 = obj2;
        Object obj49 = obj;
        obj = obj1;
        obj1 = obj15;
        obj2 = obj3;
        obj3 = obj12;
        obj4 = obj5;
        k = l;
        obj5 = obj6;
        obj6 = obj9;
        obj7 = obj8;
        obj8 = obj76;
        obj9 = obj10;
        l = i1;
        obj10 = obj11;
        obj11 = obj103;
        obj12 = obj13;
        i1 = k1;
        obj13 = obj14;
        obj14 = obj23;
        obj15 = obj16;
        obj16 = obj49;
          goto _L29
_L8:
        obj13 = (ih.b)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k1, ih.b.CREATOR);
        hashset.add(Integer.valueOf(7));
        Object obj24 = obj12;
        obj12 = obj13;
        Object obj104 = obj15;
        obj13 = obj14;
        obj15 = obj7;
        k1 = k;
        Object obj77 = obj4;
        int k3 = i;
        obj14 = obj2;
        Object obj50 = obj;
        obj = obj1;
        obj1 = obj104;
        obj2 = obj3;
        i = i1;
        obj3 = obj24;
        obj4 = obj5;
        k = l;
        obj5 = obj6;
        obj6 = obj9;
        obj7 = obj8;
        obj8 = obj15;
        obj9 = obj10;
        l = k1;
        obj10 = obj11;
        obj11 = obj77;
        i1 = k3;
        obj15 = obj16;
        obj16 = obj50;
          goto _L29
_L9:
        String s2 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k1);
        hashset.add(Integer.valueOf(8));
        k1 = i1;
        Object obj78 = obj7;
        i1 = k;
        obj4 = obj5;
        int l3 = i;
        Object obj25 = obj2;
        Object obj51 = obj;
        obj = obj1;
        obj1 = obj15;
        obj2 = obj3;
        i = k1;
        obj3 = obj12;
        k = l;
        obj5 = obj6;
        obj6 = obj9;
        obj7 = obj8;
        obj8 = obj78;
        obj9 = obj10;
        l = i1;
        obj10 = obj11;
        obj11 = s2;
        obj12 = obj13;
        i1 = l3;
        obj13 = obj14;
        obj14 = obj25;
        obj15 = obj16;
        obj16 = obj51;
          goto _L29
_L10:
        obj11 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k1);
        hashset.add(Integer.valueOf(9));
        k1 = i1;
        Object obj79 = obj7;
        i1 = k;
        Object obj105 = obj4;
        int i4 = i;
        Object obj26 = obj2;
        Object obj52 = obj;
        obj = obj1;
        obj1 = obj15;
        obj2 = obj3;
        i = k1;
        obj3 = obj12;
        obj4 = obj5;
        k = l;
        obj5 = obj6;
        obj6 = obj9;
        obj7 = obj8;
        obj8 = obj79;
        obj9 = obj10;
        l = i1;
        obj10 = obj11;
        obj11 = obj105;
        obj12 = obj13;
        i1 = i4;
        obj13 = obj14;
        obj14 = obj26;
        obj15 = obj16;
        obj16 = obj52;
          goto _L29
_L11:
        k1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
        hashset.add(Integer.valueOf(12));
        k = l;
        Object obj80 = obj7;
        l = k1;
        Object obj106 = obj4;
        k1 = i;
        Object obj27 = obj2;
        Object obj53 = obj;
        obj = obj1;
        obj1 = obj15;
        obj2 = obj3;
        i = i1;
        obj3 = obj12;
        obj4 = obj5;
        obj5 = obj6;
        obj6 = obj9;
        obj7 = obj8;
        obj8 = obj80;
        obj9 = obj10;
        obj10 = obj11;
        obj11 = obj106;
        obj12 = obj13;
        i1 = k1;
        obj13 = obj14;
        obj14 = obj27;
        obj15 = obj16;
        obj16 = obj53;
          goto _L29
_L12:
        Object obj28 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k1);
        hashset.add(Integer.valueOf(14));
        k1 = i1;
        obj10 = obj11;
        obj11 = obj28;
        Object obj81 = obj7;
        i1 = k;
        Object obj107 = obj4;
        int j4 = i;
        obj28 = obj2;
        Object obj54 = obj;
        obj = obj1;
        obj1 = obj15;
        obj2 = obj3;
        i = k1;
        obj3 = obj12;
        obj4 = obj5;
        k = l;
        obj5 = obj6;
        obj6 = obj9;
        obj7 = obj8;
        obj8 = obj81;
        obj9 = obj11;
        l = i1;
        obj11 = obj107;
        obj12 = obj13;
        i1 = j4;
        obj13 = obj14;
        obj14 = obj28;
        obj15 = obj16;
        obj16 = obj54;
          goto _L29
_L13:
        Object obj29 = (ih.c)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k1, ih.c.CREATOR);
        hashset.add(Integer.valueOf(15));
        obj7 = obj8;
        obj8 = obj29;
        k1 = i1;
        obj29 = obj;
        obj = obj1;
        i1 = k;
        Object obj82 = obj4;
        int k4 = i;
        Object obj55 = obj2;
        obj1 = obj15;
        obj2 = obj3;
        i = k1;
        obj3 = obj12;
        obj4 = obj5;
        k = l;
        obj5 = obj6;
        obj6 = obj9;
        obj9 = obj10;
        l = i1;
        obj10 = obj11;
        obj11 = obj82;
        obj12 = obj13;
        i1 = k4;
        obj13 = obj14;
        obj14 = obj55;
        obj15 = obj16;
        obj16 = obj29;
          goto _L29
_L14:
        flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k1);
        hashset.add(Integer.valueOf(16));
        k1 = i1;
        Object obj83 = obj7;
        i1 = k;
        Object obj108 = obj4;
        int l4 = i;
        Object obj30 = obj2;
        Object obj56 = obj;
        obj = obj1;
        obj1 = obj15;
        obj2 = obj3;
        i = k1;
        obj3 = obj12;
        obj4 = obj5;
        k = l;
        obj5 = obj6;
        obj6 = obj9;
        obj7 = obj8;
        obj8 = obj83;
        obj9 = obj10;
        l = i1;
        obj10 = obj11;
        obj11 = obj108;
        obj12 = obj13;
        i1 = l4;
        obj13 = obj14;
        obj14 = obj30;
        obj15 = obj16;
        obj16 = obj56;
          goto _L29
_L16:
        Object obj31 = (ih.d)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k1, ih.d.CREATOR);
        hashset.add(Integer.valueOf(19));
        obj9 = obj10;
        obj10 = obj31;
        k1 = i1;
        obj31 = obj;
        obj = obj1;
        Object obj84 = obj7;
        i1 = k;
        Object obj109 = obj4;
        int i5 = i;
        Object obj57 = obj2;
        obj1 = obj15;
        obj2 = obj3;
        i = k1;
        obj3 = obj12;
        obj4 = obj5;
        k = l;
        obj5 = obj6;
        obj6 = obj10;
        obj7 = obj8;
        obj8 = obj84;
        l = i1;
        obj10 = obj11;
        obj11 = obj109;
        obj12 = obj13;
        i1 = i5;
        obj13 = obj14;
        obj14 = obj57;
        obj15 = obj16;
        obj16 = obj31;
          goto _L29
_L15:
        obj8 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k1);
        hashset.add(Integer.valueOf(18));
        k1 = i1;
        Object obj85 = obj7;
        i1 = k;
        Object obj110 = obj4;
        int j5 = i;
        Object obj32 = obj2;
        Object obj58 = obj;
        obj = obj1;
        obj1 = obj15;
        obj2 = obj3;
        i = k1;
        obj3 = obj12;
        obj4 = obj5;
        k = l;
        obj5 = obj6;
        obj6 = obj9;
        obj7 = obj8;
        obj8 = obj85;
        obj9 = obj10;
        l = i1;
        obj10 = obj11;
        obj11 = obj110;
        obj12 = obj13;
        i1 = j5;
        obj13 = obj14;
        obj14 = obj32;
        obj15 = obj16;
        obj16 = obj58;
          goto _L29
_L18:
        l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
        hashset.add(Integer.valueOf(21));
        k1 = i1;
        Object obj86 = obj7;
        i1 = k;
        Object obj111 = obj4;
        int k5 = i;
        Object obj33 = obj2;
        Object obj59 = obj;
        obj = obj1;
        obj1 = obj15;
        obj2 = obj3;
        i = k1;
        obj3 = obj12;
        obj4 = obj5;
        k = l;
        obj5 = obj6;
        obj6 = obj9;
        obj7 = obj8;
        obj8 = obj86;
        obj9 = obj10;
        l = i1;
        obj10 = obj11;
        obj11 = obj111;
        obj12 = obj13;
        i1 = k5;
        obj13 = obj14;
        obj14 = obj33;
        obj15 = obj16;
        obj16 = obj59;
          goto _L29
_L17:
        Object obj34 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k1);
        hashset.add(Integer.valueOf(20));
        k1 = i1;
        obj6 = obj9;
        obj9 = obj7;
        obj7 = obj34;
        i1 = k;
        Object obj87 = obj4;
        int l5 = i;
        obj34 = obj2;
        Object obj60 = obj;
        obj = obj1;
        obj1 = obj15;
        obj2 = obj3;
        i = k1;
        obj3 = obj12;
        obj4 = obj5;
        k = l;
        obj5 = obj7;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = obj10;
        l = i1;
        obj10 = obj11;
        obj11 = obj87;
        obj12 = obj13;
        i1 = l5;
        obj13 = obj14;
        obj14 = obj34;
        obj15 = obj16;
        obj16 = obj60;
          goto _L29
_L20:
        Object obj35 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k1, ih.g.CREATOR);
        hashset.add(Integer.valueOf(23));
        k1 = i1;
        obj12 = obj13;
        obj13 = obj35;
        Object obj88 = obj7;
        i1 = k;
        Object obj112 = obj4;
        int i6 = i;
        obj35 = obj2;
        Object obj61 = obj;
        obj = obj1;
        obj1 = obj15;
        obj2 = obj3;
        i = k1;
        obj3 = obj13;
        obj4 = obj5;
        k = l;
        obj5 = obj6;
        obj6 = obj9;
        obj7 = obj8;
        obj8 = obj88;
        obj9 = obj10;
        l = i1;
        obj10 = obj11;
        obj11 = obj112;
        i1 = i6;
        obj13 = obj14;
        obj14 = obj35;
        obj15 = obj16;
        obj16 = obj61;
          goto _L29
_L19:
        Object obj36 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k1, ih.f.CREATOR);
        hashset.add(Integer.valueOf(22));
        k1 = i1;
        Object obj89 = obj7;
        obj5 = obj6;
        i1 = k;
        obj6 = obj36;
        Object obj113 = obj4;
        int j6 = i;
        obj36 = obj2;
        Object obj62 = obj;
        obj = obj1;
        obj1 = obj15;
        obj2 = obj3;
        i = k1;
        obj3 = obj12;
        obj4 = obj6;
        k = l;
        obj6 = obj9;
        obj7 = obj8;
        obj8 = obj89;
        obj9 = obj10;
        l = i1;
        obj10 = obj11;
        obj11 = obj113;
        obj12 = obj13;
        i1 = j6;
        obj13 = obj14;
        obj14 = obj36;
        obj15 = obj16;
        obj16 = obj62;
          goto _L29
_L22:
        k1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
        hashset.add(Integer.valueOf(25));
        Object obj90 = obj7;
        i1 = k;
        Object obj114 = obj4;
        int k6 = i;
        Object obj37 = obj2;
        Object obj63 = obj;
        obj = obj1;
        obj1 = obj15;
        obj2 = obj3;
        i = k1;
        obj3 = obj12;
        obj4 = obj5;
        k = l;
        obj5 = obj6;
        obj6 = obj9;
        obj7 = obj8;
        obj8 = obj90;
        obj9 = obj10;
        l = i1;
        obj10 = obj11;
        obj11 = obj114;
        obj12 = obj13;
        i1 = k6;
        obj13 = obj14;
        obj14 = obj37;
        obj15 = obj16;
        obj16 = obj63;
          goto _L29
_L21:
        k1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
        hashset.add(Integer.valueOf(24));
        j = i1;
        Object obj91 = obj7;
        i1 = k;
        Object obj115 = obj4;
        k = k1;
        k1 = i;
        Object obj38 = obj2;
        Object obj64 = obj;
        obj = obj1;
        obj1 = obj15;
        obj2 = obj3;
        i = j;
        j = k;
        obj3 = obj12;
        obj4 = obj5;
        k = l;
        obj5 = obj6;
        obj6 = obj9;
        obj7 = obj8;
        obj8 = obj91;
        obj9 = obj10;
        l = i1;
        obj10 = obj11;
        obj11 = obj115;
        obj12 = obj13;
        i1 = k1;
        obj13 = obj14;
        obj14 = obj38;
        obj15 = obj16;
        obj16 = obj64;
          goto _L29
_L24:
        Object obj39 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k1);
        hashset.add(Integer.valueOf(27));
        obj15 = obj16;
        obj16 = obj39;
        k1 = i1;
        Object obj92 = obj7;
        i1 = k;
        Object obj116 = obj4;
        int l6 = i;
        obj39 = obj2;
        Object obj65 = obj;
        obj = obj1;
        obj1 = obj16;
        obj2 = obj3;
        i = k1;
        obj3 = obj12;
        obj4 = obj5;
        k = l;
        obj5 = obj6;
        obj6 = obj9;
        obj7 = obj8;
        obj8 = obj92;
        obj9 = obj10;
        l = i1;
        obj10 = obj11;
        obj11 = obj116;
        obj12 = obj13;
        i1 = l6;
        obj13 = obj14;
        obj14 = obj39;
        obj16 = obj65;
          goto _L29
_L23:
        Object obj40 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k1);
        hashset.add(Integer.valueOf(26));
        k1 = i1;
        obj3 = obj12;
        obj12 = obj7;
        i1 = k;
        Object obj93 = obj4;
        int i7 = i;
        obj4 = obj40;
        obj40 = obj2;
        Object obj66 = obj;
        obj = obj1;
        obj1 = obj15;
        obj2 = obj4;
        i = k1;
        obj4 = obj5;
        k = l;
        obj5 = obj6;
        obj6 = obj9;
        obj7 = obj8;
        obj8 = obj12;
        obj9 = obj10;
        l = i1;
        obj10 = obj11;
        obj11 = obj93;
        obj12 = obj13;
        i1 = i7;
        obj13 = obj14;
        obj14 = obj40;
        obj15 = obj16;
        obj16 = obj66;
          goto _L29
_L26:
        flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k1);
        hashset.add(Integer.valueOf(29));
        k1 = i1;
        Object obj94 = obj7;
        i1 = k;
        Object obj117 = obj4;
        int j7 = i;
        Object obj41 = obj2;
        Object obj67 = obj;
        obj = obj1;
        obj1 = obj15;
        obj2 = obj3;
        i = k1;
        obj3 = obj12;
        obj4 = obj5;
        k = l;
        obj5 = obj6;
        obj6 = obj9;
        obj7 = obj8;
        obj8 = obj94;
        obj9 = obj10;
        l = i1;
        obj10 = obj11;
        obj11 = obj117;
        obj12 = obj13;
        i1 = j7;
        obj13 = obj14;
        obj14 = obj41;
        obj15 = obj16;
        obj16 = obj67;
          goto _L29
        Object obj42 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k1, ih.h.CREATOR);
        hashset.add(Integer.valueOf(28));
        obj1 = obj15;
        k1 = i1;
        Object obj68 = obj7;
        i1 = k;
        Object obj95 = obj4;
        int k7 = i;
        obj15 = obj2;
        obj2 = obj42;
        obj42 = obj;
        obj = obj2;
        obj2 = obj3;
        i = k1;
        obj3 = obj12;
        obj4 = obj5;
        k = l;
        obj5 = obj6;
        obj6 = obj9;
        obj7 = obj8;
        obj8 = obj68;
        obj9 = obj10;
        l = i1;
        obj10 = obj11;
        obj11 = obj95;
        obj12 = obj13;
        i1 = k7;
        obj13 = obj14;
        obj14 = obj15;
        obj15 = obj16;
        obj16 = obj42;
          goto _L29
        if (parcel.dataPosition() != l7)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(l7).toString(), parcel);
        } else
        {
            return new ih(hashset, j1, ((String) (obj)), ((ih.a) (obj16)), ((String) (obj2)), ((String) (obj14)), i, ((ih.b) (obj13)), ((String) (obj4)), ((String) (obj11)), k, ((String) (obj10)), ((ih.c) (obj7)), flag1, ((String) (obj8)), ((ih.d) (obj9)), ((String) (obj6)), l, ((java.util.List) (obj5)), ((java.util.List) (obj12)), j, i1, ((String) (obj3)), ((String) (obj15)), ((java.util.List) (obj1)), flag);
        }
    }

    public ih[] bQ(int i)
    {
        return new ih[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return aN(parcel);
    }

    public Object[] newArray(int i)
    {
        return bQ(i);
    }
}
