// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.identity.intents.model.CountrySpecification;

// Referenced classes of package com.google.android.gms.wallet:
//            MaskedWalletRequest, Cart, CountrySpecification

public class l
    implements android.os.Parcelable.Creator
{

    public l()
    {
    }

    static void a(MaskedWalletRequest maskedwalletrequest, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.c(parcel, 1, maskedwalletrequest.getVersionCode());
        b.a(parcel, 2, maskedwalletrequest.abi, false);
        b.a(parcel, 3, maskedwalletrequest.abV);
        b.a(parcel, 4, maskedwalletrequest.abW);
        b.a(parcel, 5, maskedwalletrequest.abX);
        b.a(parcel, 6, maskedwalletrequest.abY, false);
        b.a(parcel, 7, maskedwalletrequest.abd, false);
        b.a(parcel, 8, maskedwalletrequest.abZ, false);
        b.a(parcel, 9, maskedwalletrequest.abr, i, false);
        b.a(parcel, 10, maskedwalletrequest.aca);
        b.a(parcel, 11, maskedwalletrequest.acb);
        b.a(parcel, 12, maskedwalletrequest.acc, i, false);
        b.a(parcel, 13, maskedwalletrequest.acd);
        b.a(parcel, 14, maskedwalletrequest.ace);
        b.b(parcel, 15, maskedwalletrequest.acf, false);
        b.F(parcel, j);
    }

    public MaskedWalletRequest bh(Parcel parcel)
    {
        Object obj;
        com.google.android.gms.wallet.CountrySpecification acountryspecification[];
        Object obj1;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        int i;
        int j;
        boolean flag;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        boolean flag5;
        boolean flag6;
        j = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        i = 0;
        obj = null;
        flag6 = false;
        flag1 = false;
        flag4 = false;
        obj1 = null;
        obj3 = null;
        obj5 = null;
        obj2 = null;
        flag2 = false;
        flag3 = false;
        acountryspecification = null;
        flag5 = true;
        flag = true;
        obj4 = null;
_L18:
        int k;
        if (parcel.dataPosition() >= j)
        {
            break MISSING_BLOCK_LABEL_1219;
        }
        k = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(k);
        JVM INSTR tableswitch 1 15: default 144
    //                   1 257
    //                   2 322
    //                   3 380
    //                   4 445
    //                   5 506
    //                   6 571
    //                   7 636
    //                   8 701
    //                   9 770
    //                   10 833
    //                   11 894
    //                   12 959
    //                   13 1025
    //                   14 1090
    //                   15 1155;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16
_L16:
        break MISSING_BLOCK_LABEL_1155;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
        Object obj6 = obj4;
        boolean flag7 = flag5;
        boolean flag24 = flag3;
        Object obj33 = obj3;
        Object obj22 = obj2;
        obj4 = obj;
        flag5 = flag1;
        obj3 = obj1;
        obj2 = obj33;
        obj1 = obj22;
        flag3 = flag2;
        flag2 = flag24;
        flag1 = flag7;
        obj = obj6;
_L19:
        Object obj7 = obj;
        boolean flag8 = flag1;
        boolean flag25 = flag2;
        Object obj23 = obj2;
        obj2 = obj1;
        flag2 = flag3;
        obj1 = obj3;
        flag1 = flag5;
        obj = obj4;
        obj3 = obj23;
        flag3 = flag25;
        flag5 = flag8;
        obj4 = obj7;
        if (true) goto _L18; else goto _L17
_L17:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
        Object obj24 = obj4;
        boolean flag26 = flag2;
        obj4 = obj1;
        boolean flag9 = flag1;
        Object obj8 = obj;
        obj = obj24;
        flag1 = flag5;
        flag2 = flag3;
        flag3 = flag26;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = obj4;
        flag5 = flag9;
        obj4 = obj8;
          goto _L19
_L3:
        String s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        obj = obj4;
        boolean flag27 = flag2;
        obj4 = obj1;
        boolean flag10 = flag1;
        flag1 = flag5;
        flag2 = flag3;
        flag3 = flag27;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = obj4;
        flag5 = flag10;
        obj4 = s;
          goto _L19
_L4:
        flag6 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
        Object obj25 = obj4;
        boolean flag28 = flag2;
        obj4 = obj1;
        boolean flag11 = flag1;
        Object obj9 = obj;
        obj = obj25;
        flag1 = flag5;
        flag2 = flag3;
        flag3 = flag28;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = obj4;
        flag5 = flag11;
        obj4 = obj9;
          goto _L19
_L5:
        boolean flag29 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
        Object obj26 = obj4;
        flag1 = flag5;
        boolean flag12 = flag2;
        obj4 = obj1;
        flag5 = flag29;
        Object obj10 = obj;
        obj = obj26;
        flag2 = flag3;
        flag3 = flag12;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = obj4;
        obj4 = obj10;
          goto _L19
_L6:
        flag4 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
        Object obj27 = obj4;
        boolean flag30 = flag2;
        obj4 = obj1;
        boolean flag13 = flag1;
        Object obj11 = obj;
        obj = obj27;
        flag1 = flag5;
        flag2 = flag3;
        flag3 = flag30;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = obj4;
        flag5 = flag13;
        obj4 = obj11;
          goto _L19
_L7:
        Object obj12 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        obj1 = obj4;
        boolean flag31 = flag2;
        obj4 = obj12;
        boolean flag14 = flag1;
        obj12 = obj;
        obj = obj1;
        flag1 = flag5;
        flag2 = flag3;
        flag3 = flag31;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = obj4;
        flag5 = flag14;
        obj4 = obj12;
          goto _L19
_L8:
        obj3 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        Object obj28 = obj4;
        boolean flag32 = flag2;
        obj4 = obj1;
        boolean flag15 = flag1;
        Object obj13 = obj;
        obj = obj28;
        flag1 = flag5;
        flag2 = flag3;
        flag3 = flag32;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = obj4;
        flag5 = flag15;
        obj4 = obj13;
          goto _L19
_L9:
        String s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        obj5 = obj4;
        boolean flag33 = flag2;
        obj4 = obj1;
        boolean flag16 = flag1;
        Object obj14 = obj;
        obj = obj5;
        flag1 = flag5;
        flag2 = flag3;
        flag3 = flag33;
        obj1 = obj2;
        obj5 = s1;
        obj2 = obj3;
        obj3 = obj4;
        flag5 = flag16;
        obj4 = obj14;
          goto _L19
_L10:
        Cart cart = (Cart)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, Cart.CREATOR);
        obj2 = obj3;
        Object obj15 = obj;
        boolean flag34 = flag2;
        obj3 = obj1;
        boolean flag17 = flag1;
        obj = obj4;
        flag1 = flag5;
        flag2 = flag3;
        flag3 = flag34;
        obj1 = cart;
        flag5 = flag17;
        obj4 = obj15;
          goto _L19
_L11:
        boolean flag18 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
        Object obj29 = obj4;
        flag2 = flag3;
        flag3 = flag18;
        obj4 = obj1;
        flag18 = flag1;
        Object obj16 = obj;
        obj = obj29;
        flag1 = flag5;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = obj4;
        flag5 = flag18;
        obj4 = obj16;
          goto _L19
_L12:
        flag3 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
        Object obj30 = obj4;
        boolean flag35 = flag2;
        obj4 = obj1;
        boolean flag19 = flag1;
        Object obj17 = obj;
        obj = obj30;
        flag1 = flag5;
        flag2 = flag3;
        flag3 = flag35;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = obj4;
        flag5 = flag19;
        obj4 = obj17;
          goto _L19
_L13:
        acountryspecification = (com.google.android.gms.wallet.CountrySpecification[])com.google.android.gms.common.internal.safeparcel.a.b(parcel, k, CountrySpecification.CREATOR);
        boolean flag20 = flag1;
        flag1 = flag5;
        flag5 = flag2;
        Object obj18 = obj1;
        obj1 = obj4;
        obj4 = obj;
        obj = obj1;
        flag2 = flag3;
        flag3 = flag5;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = obj18;
        flag5 = flag20;
          goto _L19
_L14:
        flag5 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
        Object obj31 = obj4;
        boolean flag36 = flag2;
        obj4 = obj1;
        boolean flag21 = flag1;
        Object obj19 = obj;
        obj = obj31;
        flag1 = flag5;
        flag2 = flag3;
        flag3 = flag36;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = obj4;
        flag5 = flag21;
        obj4 = obj19;
          goto _L19
_L15:
        flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
        Object obj32 = obj4;
        boolean flag37 = flag2;
        obj4 = obj1;
        boolean flag22 = flag1;
        Object obj20 = obj;
        obj = obj32;
        flag1 = flag5;
        flag2 = flag3;
        flag3 = flag37;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = obj4;
        flag5 = flag22;
        obj4 = obj20;
          goto _L19
        java.util.ArrayList arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, CountrySpecification.CREATOR);
        boolean flag38 = flag2;
        obj4 = obj1;
        boolean flag23 = flag1;
        Object obj21 = obj;
        obj = arraylist;
        flag1 = flag5;
        flag2 = flag3;
        flag3 = flag38;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = obj4;
        flag5 = flag23;
        obj4 = obj21;
          goto _L19
        if (parcel.dataPosition() != j)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
        } else
        {
            return new MaskedWalletRequest(i, ((String) (obj)), flag6, flag1, flag4, ((String) (obj1)), ((String) (obj3)), ((String) (obj5)), ((Cart) (obj2)), flag2, flag3, acountryspecification, flag5, flag, ((java.util.ArrayList) (obj4)));
        }
    }

    public Object createFromParcel(Parcel parcel)
    {
        return bh(parcel);
    }

    public MaskedWalletRequest[] ct(int i)
    {
        return new MaskedWalletRequest[i];
    }

    public Object[] newArray(int i)
    {
        return ct(i);
    }
}
