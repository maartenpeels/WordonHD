// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.identity.intents.model.UserAddress;

// Referenced classes of package com.google.android.gms.wallet:
//            FullWallet, ProxyCard, Address, InstrumentInfo

public class f
    implements android.os.Parcelable.Creator
{

    public f()
    {
    }

    static void a(FullWallet fullwallet, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.c(parcel, 1, fullwallet.getVersionCode());
        b.a(parcel, 2, fullwallet.abh, false);
        b.a(parcel, 3, fullwallet.abi, false);
        b.a(parcel, 4, fullwallet.abj, i, false);
        b.a(parcel, 5, fullwallet.abk, false);
        b.a(parcel, 6, fullwallet.abl, i, false);
        b.a(parcel, 7, fullwallet.abm, i, false);
        b.a(parcel, 8, fullwallet.abn, false);
        b.a(parcel, 9, fullwallet.abo, i, false);
        b.a(parcel, 10, fullwallet.abp, i, false);
        b.a(parcel, 11, fullwallet.abq, i, false);
        b.F(parcel, j);
    }

    public FullWallet bb(Parcel parcel)
    {
        Object obj;
        UserAddress useraddress;
        Object obj1;
        String as[];
        Address address;
        InstrumentInfo ainstrumentinfo[];
        Object obj2;
        Object obj3;
        Object obj4;
        Address address1;
        int i;
        int j;
        j = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        i = 0;
        obj1 = null;
        obj4 = null;
        obj = null;
        obj2 = null;
        address1 = null;
        address = null;
        as = null;
        obj3 = null;
        useraddress = null;
        ainstrumentinfo = null;
_L14:
        int k;
        if (parcel.dataPosition() >= j)
        {
            break MISSING_BLOCK_LABEL_670;
        }
        k = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(k);
        JVM INSTR tableswitch 1 11: default 116
    //                   1 191
    //                   2 232
    //                   3 269
    //                   4 310
    //                   5 354
    //                   6 395
    //                   7 442
    //                   8 493
    //                   9 538
    //                   10 581
    //                   11 627;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12
_L12:
        break MISSING_BLOCK_LABEL_627;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
        InstrumentInfo ainstrumentinfo1[] = ainstrumentinfo;
        ainstrumentinfo = ((InstrumentInfo []) (obj4));
        Object obj14 = obj3;
        Object obj19 = obj2;
        obj4 = obj1;
        obj3 = ainstrumentinfo;
        obj2 = obj;
        ainstrumentinfo = ((InstrumentInfo []) (obj19));
        obj1 = obj14;
        obj = ainstrumentinfo1;
_L15:
        Object obj5 = obj;
        obj = obj3;
        obj3 = obj1;
        obj1 = obj4;
        obj4 = obj;
        obj = obj2;
        obj2 = ainstrumentinfo;
        ainstrumentinfo = ((InstrumentInfo []) (obj5));
        if (true) goto _L14; else goto _L13
_L13:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
        InstrumentInfo ainstrumentinfo2[] = ainstrumentinfo;
        ainstrumentinfo = ((InstrumentInfo []) (obj2));
        obj2 = obj;
        Object obj6 = obj1;
        obj = ainstrumentinfo2;
        obj1 = obj3;
        obj3 = obj4;
        obj4 = obj6;
          goto _L15
_L3:
        String s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        obj1 = ainstrumentinfo;
        ainstrumentinfo = ((InstrumentInfo []) (obj2));
        obj2 = obj;
        obj = obj1;
        obj1 = obj3;
        obj3 = obj4;
        obj4 = s;
          goto _L15
_L4:
        obj4 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        InstrumentInfo ainstrumentinfo3[] = ainstrumentinfo;
        ainstrumentinfo = ((InstrumentInfo []) (obj2));
        obj2 = obj;
        Object obj7 = obj1;
        obj = ainstrumentinfo3;
        obj1 = obj3;
        obj3 = obj4;
        obj4 = obj7;
          goto _L15
_L5:
        ProxyCard proxycard = (ProxyCard)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, ProxyCard.CREATOR);
        Object obj15 = obj1;
        obj = ainstrumentinfo;
        obj1 = obj3;
        ainstrumentinfo = ((InstrumentInfo []) (obj2));
        obj2 = proxycard;
        obj3 = obj4;
        obj4 = obj15;
          goto _L15
_L6:
        obj2 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        InstrumentInfo ainstrumentinfo4[] = ainstrumentinfo;
        ainstrumentinfo = ((InstrumentInfo []) (obj2));
        obj2 = obj;
        Object obj8 = obj1;
        obj = ainstrumentinfo4;
        obj1 = obj3;
        obj3 = obj4;
        obj4 = obj8;
          goto _L15
_L7:
        address1 = (Address)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, Address.CREATOR);
        Object obj9 = obj1;
        Object obj16 = obj;
        obj = ainstrumentinfo;
        ainstrumentinfo = ((InstrumentInfo []) (obj2));
        obj1 = obj3;
        obj2 = obj16;
        obj3 = obj4;
        obj4 = obj9;
          goto _L15
_L8:
        address = (Address)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, Address.CREATOR);
        Object obj17 = obj3;
        Object obj10 = obj1;
        obj3 = obj;
        obj = ainstrumentinfo;
        obj1 = obj17;
        ainstrumentinfo = ((InstrumentInfo []) (obj2));
        obj2 = obj3;
        obj3 = obj4;
        obj4 = obj10;
          goto _L15
_L9:
        String as1[] = com.google.android.gms.common.internal.safeparcel.a.z(parcel, k);
        as = ainstrumentinfo;
        ainstrumentinfo = ((InstrumentInfo []) (obj2));
        obj2 = obj;
        Object obj11 = obj1;
        obj = as;
        obj1 = obj3;
        as = as1;
        obj3 = obj4;
        obj4 = obj11;
          goto _L15
_L10:
        UserAddress useraddress1 = (UserAddress)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, UserAddress.CREATOR);
        obj3 = obj4;
        obj4 = obj1;
        Object obj18 = obj;
        obj = ainstrumentinfo;
        obj1 = useraddress1;
        ainstrumentinfo = ((InstrumentInfo []) (obj2));
        obj2 = obj18;
          goto _L15
_L11:
        useraddress = (UserAddress)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, UserAddress.CREATOR);
        Object obj12 = obj1;
        obj1 = obj3;
        obj3 = obj;
        obj = ainstrumentinfo;
        ainstrumentinfo = ((InstrumentInfo []) (obj2));
        obj2 = obj3;
        obj3 = obj4;
        obj4 = obj12;
          goto _L15
        InstrumentInfo ainstrumentinfo5[] = (InstrumentInfo[])com.google.android.gms.common.internal.safeparcel.a.b(parcel, k, InstrumentInfo.CREATOR);
        ainstrumentinfo = ((InstrumentInfo []) (obj2));
        obj2 = obj;
        Object obj13 = obj1;
        obj = ainstrumentinfo5;
        obj1 = obj3;
        obj3 = obj4;
        obj4 = obj13;
          goto _L15
        if (parcel.dataPosition() != j)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
        } else
        {
            return new FullWallet(i, ((String) (obj1)), ((String) (obj4)), ((ProxyCard) (obj)), ((String) (obj2)), address1, address, as, ((UserAddress) (obj3)), useraddress, ainstrumentinfo);
        }
    }

    public FullWallet[] cn(int i)
    {
        return new FullWallet[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return bb(parcel);
    }

    public Object[] newArray(int i)
    {
        return cn(i);
    }
}
