// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.gi;
import com.google.android.gms.internal.jm;
import com.google.android.gms.internal.jo;
import com.google.android.gms.internal.js;
import com.google.android.gms.internal.ju;
import com.google.android.gms.internal.jw;
import com.google.android.gms.internal.jy;
import com.google.android.gms.maps.model.LatLng;

// Referenced classes of package com.google.android.gms.wallet:
//            LoyaltyWalletObject

public class j
    implements android.os.Parcelable.Creator
{

    public j()
    {
    }

    static void a(LoyaltyWalletObject loyaltywalletobject, Parcel parcel, int i)
    {
        int k = b.p(parcel);
        b.c(parcel, 1, loyaltywalletobject.getVersionCode());
        b.a(parcel, 2, loyaltywalletobject.eC, false);
        b.a(parcel, 3, loyaltywalletobject.abz, false);
        b.a(parcel, 4, loyaltywalletobject.abA, false);
        b.a(parcel, 5, loyaltywalletobject.abB, false);
        b.a(parcel, 6, loyaltywalletobject.abC, false);
        b.a(parcel, 7, loyaltywalletobject.abD, false);
        b.a(parcel, 8, loyaltywalletobject.abE, false);
        b.a(parcel, 9, loyaltywalletobject.abF, false);
        b.a(parcel, 10, loyaltywalletobject.abG, false);
        b.a(parcel, 11, loyaltywalletobject.abH, false);
        b.c(parcel, 12, loyaltywalletobject.state);
        b.b(parcel, 13, loyaltywalletobject.abI, false);
        b.a(parcel, 14, loyaltywalletobject.abJ, i, false);
        b.b(parcel, 15, loyaltywalletobject.abK, false);
        b.a(parcel, 17, loyaltywalletobject.abM, false);
        b.a(parcel, 16, loyaltywalletobject.abL, false);
        b.a(parcel, 19, loyaltywalletobject.abO);
        b.b(parcel, 18, loyaltywalletobject.abN, false);
        b.b(parcel, 21, loyaltywalletobject.abQ, false);
        b.b(parcel, 20, loyaltywalletobject.abP, false);
        b.a(parcel, 23, loyaltywalletobject.abS, i, false);
        b.b(parcel, 22, loyaltywalletobject.abR, false);
        b.F(parcel, k);
    }

    public LoyaltyWalletObject bf(Parcel parcel)
    {
        Object obj;
        java.util.ArrayList arraylist;
        Object obj1;
        java.util.ArrayList arraylist1;
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
        String s;
        Object obj14;
        String s1;
        Object obj15;
        int i;
        int k;
        int l;
        boolean flag;
        l = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        i = 0;
        obj = null;
        s1 = null;
        obj1 = null;
        s = null;
        obj2 = null;
        obj13 = null;
        obj4 = null;
        obj11 = null;
        obj6 = null;
        obj9 = null;
        k = 0;
        obj8 = gi.fs();
        obj7 = null;
        obj10 = gi.fs();
        obj5 = null;
        obj12 = null;
        obj3 = gi.fs();
        flag = false;
        arraylist1 = gi.fs();
        obj14 = gi.fs();
        arraylist = gi.fs();
        obj15 = null;
_L26:
        int i1;
        if (parcel.dataPosition() >= l)
        {
            break MISSING_BLOCK_LABEL_2590;
        }
        i1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(i1);
        JVM INSTR tableswitch 1 23: default 212
    //                   1 409
    //                   2 502
    //                   3 592
    //                   4 685
    //                   5 774
    //                   6 867
    //                   7 956
    //                   8 1049
    //                   9 1138
    //                   10 1231
    //                   11 1320
    //                   12 1413
    //                   13 1506
    //                   14 1606
    //                   15 1717
    //                   16 1914
    //                   17 1817
    //                   18 2104
    //                   19 2011
    //                   20 2300
    //                   21 2204
    //                   22 2495
    //                   23 2396;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24
_L23:
        break MISSING_BLOCK_LABEL_2495;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
        Object obj16 = obj15;
        Object obj40 = obj14;
        Object obj111 = obj13;
        Object obj64 = obj12;
        Object obj131 = obj11;
        Object obj87 = obj10;
        Object obj132 = obj9;
        Object obj133 = obj8;
        Object obj134 = obj7;
        Object obj135 = obj5;
        Object obj136 = obj3;
        obj15 = obj;
        obj14 = obj1;
        obj13 = obj2;
        obj12 = obj111;
        obj11 = obj4;
        obj10 = obj131;
        obj9 = obj6;
        obj8 = obj132;
        obj7 = obj133;
        obj6 = obj134;
        obj5 = obj87;
        obj4 = obj135;
        obj3 = obj64;
        obj2 = obj136;
        obj1 = obj40;
        obj = obj16;
_L27:
        Object obj17 = obj;
        Object obj41 = obj1;
        Object obj65 = obj6;
        obj6 = obj9;
        Object obj88 = obj4;
        obj4 = obj11;
        Object obj112 = obj2;
        obj2 = obj13;
        obj1 = obj14;
        obj = obj15;
        obj13 = obj12;
        obj11 = obj10;
        obj9 = obj8;
        obj8 = obj7;
        obj7 = obj65;
        obj10 = obj5;
        obj5 = obj88;
        obj12 = obj3;
        obj3 = obj112;
        obj14 = obj41;
        obj15 = obj17;
        if (true) goto _L26; else goto _L25
_L25:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        Object obj18 = obj6;
        Object obj42 = obj4;
        Object obj66 = obj2;
        Object obj89 = obj1;
        Object obj113 = obj;
        obj = obj15;
        obj1 = obj14;
        obj2 = obj3;
        obj3 = obj12;
        obj4 = obj5;
        obj5 = obj10;
        obj6 = obj7;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = obj18;
        obj10 = obj11;
        obj11 = obj42;
        obj12 = obj13;
        obj13 = obj66;
        obj14 = obj89;
        obj15 = obj113;
          goto _L27
_L3:
        String s6 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        obj = obj15;
        obj15 = obj6;
        Object obj19 = obj4;
        Object obj43 = obj2;
        Object obj67 = obj1;
        obj1 = obj14;
        obj2 = obj3;
        obj3 = obj12;
        obj4 = obj5;
        obj5 = obj10;
        obj6 = obj7;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = obj15;
        obj10 = obj11;
        obj11 = obj19;
        obj12 = obj13;
        obj13 = obj43;
        obj14 = obj67;
        obj15 = s6;
          goto _L27
_L4:
        s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        Object obj20 = obj6;
        Object obj44 = obj4;
        Object obj68 = obj2;
        Object obj90 = obj1;
        Object obj114 = obj;
        obj = obj15;
        obj1 = obj14;
        obj2 = obj3;
        obj3 = obj12;
        obj4 = obj5;
        obj5 = obj10;
        obj6 = obj7;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = obj20;
        obj10 = obj11;
        obj11 = obj44;
        obj12 = obj13;
        obj13 = obj68;
        obj14 = obj90;
        obj15 = obj114;
          goto _L27
_L5:
        String s4 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        obj1 = obj14;
        obj14 = obj6;
        Object obj21 = obj4;
        Object obj45 = obj2;
        Object obj91 = obj;
        obj = obj15;
        obj2 = obj3;
        obj3 = obj12;
        obj4 = obj5;
        obj5 = obj10;
        obj6 = obj7;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = obj14;
        obj10 = obj11;
        obj11 = obj21;
        obj12 = obj13;
        obj13 = obj45;
        obj14 = s4;
        obj15 = obj91;
          goto _L27
_L6:
        s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        Object obj22 = obj6;
        Object obj46 = obj4;
        Object obj69 = obj2;
        Object obj92 = obj1;
        Object obj115 = obj;
        obj = obj15;
        obj1 = obj14;
        obj2 = obj3;
        obj3 = obj12;
        obj4 = obj5;
        obj5 = obj10;
        obj6 = obj7;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = obj22;
        obj10 = obj11;
        obj11 = obj46;
        obj12 = obj13;
        obj13 = obj69;
        obj14 = obj92;
        obj15 = obj115;
          goto _L27
_L7:
        String s5 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        Object obj23 = obj6;
        Object obj47 = obj4;
        obj2 = obj3;
        Object obj93 = obj1;
        Object obj116 = obj;
        obj = obj15;
        obj1 = obj14;
        obj3 = obj12;
        obj4 = obj5;
        obj5 = obj10;
        obj6 = obj7;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = obj23;
        obj10 = obj11;
        obj11 = obj47;
        obj12 = obj13;
        obj13 = s5;
        obj14 = obj93;
        obj15 = obj116;
          goto _L27
_L8:
        obj13 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        Object obj24 = obj6;
        Object obj48 = obj4;
        Object obj70 = obj2;
        Object obj94 = obj1;
        Object obj117 = obj;
        obj = obj15;
        obj1 = obj14;
        obj2 = obj3;
        obj3 = obj12;
        obj4 = obj5;
        obj5 = obj10;
        obj6 = obj7;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = obj24;
        obj10 = obj11;
        obj11 = obj48;
        obj12 = obj13;
        obj13 = obj70;
        obj14 = obj94;
        obj15 = obj117;
          goto _L27
_L9:
        String s3 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        Object obj25 = obj6;
        obj4 = obj5;
        Object obj71 = obj2;
        Object obj95 = obj1;
        Object obj118 = obj;
        obj = obj15;
        obj1 = obj14;
        obj2 = obj3;
        obj3 = obj12;
        obj5 = obj10;
        obj6 = obj7;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = obj25;
        obj10 = obj11;
        obj11 = s3;
        obj12 = obj13;
        obj13 = obj71;
        obj14 = obj95;
        obj15 = obj118;
          goto _L27
_L10:
        obj11 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        Object obj26 = obj6;
        Object obj49 = obj4;
        Object obj72 = obj2;
        Object obj96 = obj1;
        Object obj119 = obj;
        obj = obj15;
        obj1 = obj14;
        obj2 = obj3;
        obj3 = obj12;
        obj4 = obj5;
        obj5 = obj10;
        obj6 = obj7;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = obj26;
        obj10 = obj11;
        obj11 = obj49;
        obj12 = obj13;
        obj13 = obj72;
        obj14 = obj96;
        obj15 = obj119;
          goto _L27
_L11:
        String s2 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        obj6 = obj7;
        Object obj50 = obj4;
        Object obj73 = obj2;
        Object obj97 = obj1;
        Object obj120 = obj;
        obj = obj15;
        obj1 = obj14;
        obj2 = obj3;
        obj3 = obj12;
        obj4 = obj5;
        obj5 = obj10;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = s2;
        obj10 = obj11;
        obj11 = obj50;
        obj12 = obj13;
        obj13 = obj73;
        obj14 = obj97;
        obj15 = obj120;
          goto _L27
_L12:
        obj9 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        Object obj27 = obj6;
        Object obj51 = obj4;
        Object obj74 = obj2;
        Object obj98 = obj1;
        Object obj121 = obj;
        obj = obj15;
        obj1 = obj14;
        obj2 = obj3;
        obj3 = obj12;
        obj4 = obj5;
        obj5 = obj10;
        obj6 = obj7;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = obj27;
        obj10 = obj11;
        obj11 = obj51;
        obj12 = obj13;
        obj13 = obj74;
        obj14 = obj98;
        obj15 = obj121;
          goto _L27
_L13:
        k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        Object obj28 = obj6;
        Object obj52 = obj4;
        Object obj75 = obj2;
        Object obj99 = obj1;
        Object obj122 = obj;
        obj = obj15;
        obj1 = obj14;
        obj2 = obj3;
        obj3 = obj12;
        obj4 = obj5;
        obj5 = obj10;
        obj6 = obj7;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = obj28;
        obj10 = obj11;
        obj11 = obj52;
        obj12 = obj13;
        obj13 = obj75;
        obj14 = obj99;
        obj15 = obj122;
          goto _L27
_L14:
        Object obj29 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1, jy.CREATOR);
        obj8 = obj9;
        obj9 = obj29;
        obj29 = obj6;
        Object obj53 = obj4;
        Object obj76 = obj2;
        Object obj100 = obj1;
        Object obj123 = obj;
        obj = obj15;
        obj1 = obj14;
        obj2 = obj3;
        obj3 = obj12;
        obj4 = obj5;
        obj5 = obj10;
        obj6 = obj7;
        obj7 = obj9;
        obj9 = obj29;
        obj10 = obj11;
        obj11 = obj53;
        obj12 = obj13;
        obj13 = obj76;
        obj14 = obj100;
        obj15 = obj123;
          goto _L27
_L15:
        obj7 = (ju)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, ju.CREATOR);
        Object obj30 = obj6;
        obj6 = obj7;
        obj7 = obj14;
        Object obj77 = obj12;
        Object obj101 = obj15;
        obj12 = obj4;
        obj14 = obj2;
        obj15 = obj1;
        Object obj54 = obj;
        obj = obj101;
        obj1 = obj7;
        obj2 = obj3;
        obj3 = obj77;
        obj4 = obj5;
        obj5 = obj10;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = obj30;
        obj10 = obj11;
        obj11 = obj12;
        obj12 = obj13;
        obj13 = obj14;
        obj14 = obj15;
        obj15 = obj54;
          goto _L27
_L16:
        Object obj31 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1, LatLng.CREATOR);
        obj10 = obj11;
        obj11 = obj31;
        obj31 = obj6;
        Object obj55 = obj4;
        Object obj78 = obj2;
        Object obj102 = obj1;
        Object obj124 = obj;
        obj = obj15;
        obj1 = obj14;
        obj2 = obj3;
        obj3 = obj12;
        obj4 = obj5;
        obj5 = obj11;
        obj6 = obj7;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = obj31;
        obj11 = obj55;
        obj12 = obj13;
        obj13 = obj78;
        obj14 = obj102;
        obj15 = obj124;
          goto _L27
_L18:
        Object obj32 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        obj12 = obj13;
        obj13 = obj32;
        obj32 = obj6;
        Object obj56 = obj4;
        Object obj79 = obj2;
        Object obj103 = obj1;
        Object obj125 = obj;
        obj = obj15;
        obj1 = obj14;
        obj2 = obj3;
        obj3 = obj13;
        obj4 = obj5;
        obj5 = obj10;
        obj6 = obj7;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = obj32;
        obj10 = obj11;
        obj11 = obj56;
        obj13 = obj79;
        obj14 = obj103;
        obj15 = obj125;
          goto _L27
_L17:
        Object obj33 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        obj5 = obj10;
        obj10 = obj6;
        obj6 = obj33;
        obj33 = obj4;
        Object obj57 = obj2;
        Object obj80 = obj1;
        Object obj104 = obj;
        obj = obj15;
        obj1 = obj14;
        obj2 = obj3;
        obj3 = obj12;
        obj4 = obj6;
        obj6 = obj7;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = obj10;
        obj10 = obj11;
        obj11 = obj33;
        obj12 = obj13;
        obj13 = obj57;
        obj14 = obj80;
        obj15 = obj104;
          goto _L27
_L20:
        flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1);
        Object obj34 = obj6;
        Object obj58 = obj4;
        Object obj81 = obj2;
        Object obj105 = obj1;
        Object obj126 = obj;
        obj = obj15;
        obj1 = obj14;
        obj2 = obj3;
        obj3 = obj12;
        obj4 = obj5;
        obj5 = obj10;
        obj6 = obj7;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = obj34;
        obj10 = obj11;
        obj11 = obj58;
        obj12 = obj13;
        obj13 = obj81;
        obj14 = obj105;
        obj15 = obj126;
          goto _L27
_L19:
        Object obj59 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1, jm.CREATOR);
        obj3 = obj12;
        obj12 = obj6;
        Object obj35 = obj4;
        obj4 = obj59;
        obj59 = obj2;
        Object obj82 = obj1;
        Object obj106 = obj;
        obj = obj15;
        obj1 = obj14;
        obj2 = obj4;
        obj4 = obj5;
        obj5 = obj10;
        obj6 = obj7;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = obj12;
        obj10 = obj11;
        obj11 = obj35;
        obj12 = obj13;
        obj13 = obj59;
        obj14 = obj82;
        obj15 = obj106;
          goto _L27
_L22:
        obj14 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1, js.CREATOR);
        Object obj36 = obj6;
        Object obj60 = obj4;
        Object obj83 = obj2;
        Object obj107 = obj1;
        Object obj127 = obj;
        obj = obj15;
        obj1 = obj14;
        obj2 = obj3;
        obj3 = obj12;
        obj4 = obj5;
        obj5 = obj10;
        obj6 = obj7;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = obj36;
        obj10 = obj11;
        obj11 = obj60;
        obj12 = obj13;
        obj13 = obj83;
        obj14 = obj107;
        obj15 = obj127;
          goto _L27
_L21:
        arraylist1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1, jw.CREATOR);
        Object obj37 = obj6;
        Object obj61 = obj4;
        Object obj84 = obj2;
        Object obj108 = obj1;
        Object obj128 = obj;
        obj = obj15;
        obj1 = obj14;
        obj2 = obj3;
        obj3 = obj12;
        obj4 = obj5;
        obj5 = obj10;
        obj6 = obj7;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = obj37;
        obj10 = obj11;
        obj11 = obj61;
        obj12 = obj13;
        obj13 = obj84;
        obj14 = obj108;
        obj15 = obj128;
          goto _L27
_L24:
        obj15 = (jo)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, jo.CREATOR);
        Object obj38 = obj6;
        Object obj62 = obj4;
        Object obj85 = obj2;
        Object obj109 = obj1;
        Object obj129 = obj;
        obj = obj15;
        obj1 = obj14;
        obj2 = obj3;
        obj3 = obj12;
        obj4 = obj5;
        obj5 = obj10;
        obj6 = obj7;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = obj38;
        obj10 = obj11;
        obj11 = obj62;
        obj12 = obj13;
        obj13 = obj85;
        obj14 = obj109;
        obj15 = obj129;
          goto _L27
        arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1, jw.CREATOR);
        Object obj39 = obj6;
        Object obj63 = obj4;
        Object obj86 = obj2;
        Object obj110 = obj1;
        Object obj130 = obj;
        obj = obj15;
        obj1 = obj14;
        obj2 = obj3;
        obj3 = obj12;
        obj4 = obj5;
        obj5 = obj10;
        obj6 = obj7;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = obj39;
        obj10 = obj11;
        obj11 = obj63;
        obj12 = obj13;
        obj13 = obj86;
        obj14 = obj110;
        obj15 = obj130;
          goto _L27
        if (parcel.dataPosition() != l)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(l).toString(), parcel);
        } else
        {
            return new LoyaltyWalletObject(i, ((String) (obj)), s1, ((String) (obj1)), s, ((String) (obj2)), ((String) (obj13)), ((String) (obj4)), ((String) (obj11)), ((String) (obj6)), ((String) (obj9)), k, ((java.util.ArrayList) (obj8)), ((ju) (obj7)), ((java.util.ArrayList) (obj10)), ((String) (obj5)), ((String) (obj12)), ((java.util.ArrayList) (obj3)), flag, arraylist1, ((java.util.ArrayList) (obj14)), arraylist, ((jo) (obj15)));
        }
    }

    public LoyaltyWalletObject[] cr(int i)
    {
        return new LoyaltyWalletObject[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return bf(parcel);
    }

    public Object[] newArray(int i)
    {
        return cr(i);
    }
}
