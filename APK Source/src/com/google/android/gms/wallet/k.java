// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.identity.intents.model.UserAddress;

// Referenced classes of package com.google.android.gms.wallet:
//            MaskedWallet, Address, LoyaltyWalletObject, OfferWalletObject, 
//            InstrumentInfo

public class k
    implements android.os.Parcelable.Creator
{

    public k()
    {
    }

    static void a(MaskedWallet maskedwallet, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.c(parcel, 1, maskedwallet.getVersionCode());
        b.a(parcel, 2, maskedwallet.abh, false);
        b.a(parcel, 3, maskedwallet.abi, false);
        b.a(parcel, 4, maskedwallet.abn, false);
        b.a(parcel, 5, maskedwallet.abk, false);
        b.a(parcel, 6, maskedwallet.abl, i, false);
        b.a(parcel, 7, maskedwallet.abm, i, false);
        b.a(parcel, 8, maskedwallet.abT, i, false);
        b.a(parcel, 9, maskedwallet.abU, i, false);
        b.a(parcel, 10, maskedwallet.abo, i, false);
        b.a(parcel, 11, maskedwallet.abp, i, false);
        b.a(parcel, 12, maskedwallet.abq, i, false);
        b.F(parcel, j);
    }

    public MaskedWallet bg(Parcel parcel)
    {
        Object obj;
        Object obj1;
        String as[];
        OfferWalletObject aofferwalletobject[];
        Object obj2;
        Address address;
        InstrumentInfo ainstrumentinfo[];
        LoyaltyWalletObject aloyaltywalletobject[];
        Object obj3;
        Object obj4;
        Object obj5;
        int i;
        int j;
        j = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        i = 0;
        obj1 = null;
        obj5 = null;
        as = null;
        obj3 = null;
        obj2 = null;
        address = null;
        aloyaltywalletobject = null;
        aofferwalletobject = null;
        obj4 = null;
        obj = null;
        ainstrumentinfo = null;
_L15:
        int l;
        if (parcel.dataPosition() >= j)
        {
            break MISSING_BLOCK_LABEL_953;
        }
        l = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(l);
        JVM INSTR tableswitch 1 12: default 124
    //                   1 231
    //                   2 290
    //                   3 342
    //                   4 401
    //                   5 456
    //                   6 515
    //                   7 572
    //                   8 641
    //                   9 706
    //                   10 771
    //                   11 828
    //                   12 888;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13
_L13:
        break MISSING_BLOCK_LABEL_888;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
        InstrumentInfo ainstrumentinfo1[] = ainstrumentinfo;
        ainstrumentinfo = ((InstrumentInfo []) (obj5));
        Object obj16 = obj4;
        Object obj34 = obj3;
        LoyaltyWalletObject aloyaltywalletobject3[] = aloyaltywalletobject;
        obj5 = obj1;
        obj4 = ainstrumentinfo;
        obj3 = as;
        aloyaltywalletobject = ((LoyaltyWalletObject []) (obj34));
        ainstrumentinfo = ((InstrumentInfo []) (obj2));
        obj2 = aloyaltywalletobject3;
        as = ((String []) (obj16));
        obj1 = obj;
        obj = ainstrumentinfo1;
_L16:
        Object obj6 = obj;
        obj = obj4;
        obj4 = as;
        LoyaltyWalletObject aloyaltywalletobject2[] = aloyaltywalletobject;
        aloyaltywalletobject = ((LoyaltyWalletObject []) (obj2));
        obj2 = ainstrumentinfo;
        as = ((String []) (obj3));
        ainstrumentinfo = ((InstrumentInfo []) (obj1));
        obj1 = obj5;
        obj5 = obj;
        obj3 = aloyaltywalletobject2;
        obj = ainstrumentinfo;
        ainstrumentinfo = ((InstrumentInfo []) (obj6));
        if (true) goto _L15; else goto _L14
_L14:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        Object obj7 = obj2;
        String as2[] = as;
        as = ((String []) (obj));
        Object obj26 = obj1;
        obj = ainstrumentinfo;
        obj1 = as;
        as = ((String []) (obj4));
        obj2 = aloyaltywalletobject;
        ainstrumentinfo = ((InstrumentInfo []) (obj7));
        aloyaltywalletobject = ((LoyaltyWalletObject []) (obj3));
        obj3 = as2;
        obj4 = obj5;
        obj5 = obj26;
          goto _L16
_L3:
        String s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        Object obj8 = obj2;
        String as3[] = as;
        obj1 = obj;
        obj = ainstrumentinfo;
        as = ((String []) (obj4));
        obj2 = aloyaltywalletobject;
        ainstrumentinfo = ((InstrumentInfo []) (obj8));
        aloyaltywalletobject = ((LoyaltyWalletObject []) (obj3));
        obj3 = as3;
        obj4 = obj5;
        obj5 = s;
          goto _L16
_L4:
        obj5 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        Object obj9 = obj2;
        String as4[] = as;
        as = ((String []) (obj));
        Object obj27 = obj1;
        obj = ainstrumentinfo;
        obj1 = as;
        as = ((String []) (obj4));
        obj2 = aloyaltywalletobject;
        ainstrumentinfo = ((InstrumentInfo []) (obj9));
        aloyaltywalletobject = ((LoyaltyWalletObject []) (obj3));
        obj3 = as4;
        obj4 = obj5;
        obj5 = obj27;
          goto _L16
_L5:
        String as1[] = com.google.android.gms.common.internal.safeparcel.a.z(parcel, l);
        as = ((String []) (obj4));
        obj4 = obj2;
        obj2 = obj;
        Object obj17 = obj1;
        obj = ainstrumentinfo;
        obj1 = obj2;
        obj2 = aloyaltywalletobject;
        ainstrumentinfo = ((InstrumentInfo []) (obj4));
        aloyaltywalletobject = ((LoyaltyWalletObject []) (obj3));
        obj3 = as1;
        obj4 = obj5;
        obj5 = obj17;
          goto _L16
_L6:
        obj3 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        Object obj10 = obj2;
        Object obj18 = as;
        as = ((String []) (obj));
        Object obj28 = obj1;
        obj = ainstrumentinfo;
        obj1 = as;
        as = ((String []) (obj4));
        obj2 = aloyaltywalletobject;
        ainstrumentinfo = ((InstrumentInfo []) (obj10));
        aloyaltywalletobject = ((LoyaltyWalletObject []) (obj3));
        obj3 = obj18;
        obj4 = obj5;
        obj5 = obj28;
          goto _L16
_L7:
        Address address1 = (Address)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, Address.CREATOR);
        obj2 = aloyaltywalletobject;
        Object obj19 = obj1;
        obj1 = obj;
        Object obj29 = as;
        obj = ainstrumentinfo;
        as = ((String []) (obj4));
        ainstrumentinfo = address1;
        aloyaltywalletobject = ((LoyaltyWalletObject []) (obj3));
        obj3 = obj29;
        obj4 = obj5;
        obj5 = obj19;
          goto _L16
_L8:
        address = (Address)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, Address.CREATOR);
        Object obj11 = obj2;
        obj2 = obj4;
        obj4 = as;
        as = ((String []) (obj));
        Object obj20 = obj1;
        obj = ainstrumentinfo;
        obj1 = as;
        as = ((String []) (obj2));
        obj2 = aloyaltywalletobject;
        ainstrumentinfo = ((InstrumentInfo []) (obj11));
        aloyaltywalletobject = ((LoyaltyWalletObject []) (obj3));
        obj3 = obj4;
        obj4 = obj5;
        obj5 = obj20;
          goto _L16
_L9:
        LoyaltyWalletObject aloyaltywalletobject1[] = (LoyaltyWalletObject[])com.google.android.gms.common.internal.safeparcel.a.b(parcel, l, LoyaltyWalletObject.CREATOR);
        aloyaltywalletobject = ((LoyaltyWalletObject []) (obj3));
        obj3 = aloyaltywalletobject1;
        Object obj12 = obj1;
        obj1 = obj;
        Object obj21 = obj2;
        Object obj30 = as;
        obj = ainstrumentinfo;
        as = ((String []) (obj4));
        obj2 = obj3;
        ainstrumentinfo = ((InstrumentInfo []) (obj21));
        obj3 = obj30;
        obj4 = obj5;
        obj5 = obj12;
          goto _L16
_L10:
        aofferwalletobject = (OfferWalletObject[])com.google.android.gms.common.internal.safeparcel.a.b(parcel, l, OfferWalletObject.CREATOR);
        Object obj13 = as;
        as = ((String []) (obj4));
        obj4 = obj2;
        obj2 = obj;
        Object obj22 = obj1;
        obj = ainstrumentinfo;
        obj1 = obj2;
        obj2 = aloyaltywalletobject;
        ainstrumentinfo = ((InstrumentInfo []) (obj4));
        aloyaltywalletobject = ((LoyaltyWalletObject []) (obj3));
        obj3 = obj13;
        obj4 = obj5;
        obj5 = obj22;
          goto _L16
_L11:
        UserAddress useraddress = (UserAddress)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, UserAddress.CREATOR);
        obj4 = obj5;
        obj5 = obj1;
        obj1 = obj;
        Object obj23 = obj2;
        Object obj31 = as;
        obj = ainstrumentinfo;
        as = useraddress;
        obj2 = aloyaltywalletobject;
        ainstrumentinfo = ((InstrumentInfo []) (obj23));
        aloyaltywalletobject = ((LoyaltyWalletObject []) (obj3));
        obj3 = obj31;
          goto _L16
_L12:
        obj = (UserAddress)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, UserAddress.CREATOR);
        Object obj14 = obj1;
        obj1 = obj;
        Object obj24 = obj2;
        Object obj32 = as;
        obj = ainstrumentinfo;
        as = ((String []) (obj4));
        obj2 = aloyaltywalletobject;
        ainstrumentinfo = ((InstrumentInfo []) (obj24));
        aloyaltywalletobject = ((LoyaltyWalletObject []) (obj3));
        obj3 = obj32;
        obj4 = obj5;
        obj5 = obj14;
          goto _L16
        ainstrumentinfo = (InstrumentInfo[])com.google.android.gms.common.internal.safeparcel.a.b(parcel, l, InstrumentInfo.CREATOR);
        Object obj15 = obj2;
        Object obj25 = as;
        as = ((String []) (obj));
        Object obj33 = obj1;
        obj = ainstrumentinfo;
        obj1 = as;
        as = ((String []) (obj4));
        obj2 = aloyaltywalletobject;
        ainstrumentinfo = ((InstrumentInfo []) (obj15));
        aloyaltywalletobject = ((LoyaltyWalletObject []) (obj3));
        obj3 = obj25;
        obj4 = obj5;
        obj5 = obj33;
          goto _L16
        if (parcel.dataPosition() != j)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
        } else
        {
            return new MaskedWallet(i, ((String) (obj1)), ((String) (obj5)), as, ((String) (obj3)), ((Address) (obj2)), address, aloyaltywalletobject, aofferwalletobject, ((UserAddress) (obj4)), ((UserAddress) (obj)), ainstrumentinfo);
        }
    }

    public Object createFromParcel(Parcel parcel)
    {
        return bg(parcel);
    }

    public MaskedWallet[] cs(int i)
    {
        return new MaskedWallet[i];
    }

    public Object[] newArray(int i)
    {
        return cs(i);
    }
}
