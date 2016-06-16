// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.fragment;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;

// Referenced classes of package com.google.android.gms.wallet.fragment:
//            WalletFragmentInitParams

public class a
    implements android.os.Parcelable.Creator
{

    public a()
    {
    }

    static void a(WalletFragmentInitParams walletfragmentinitparams, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.c(parcel, 1, walletfragmentinitparams.xH);
        b.a(parcel, 2, walletfragmentinitparams.getAccountName(), false);
        b.a(parcel, 3, walletfragmentinitparams.getMaskedWalletRequest(), i, false);
        b.c(parcel, 4, walletfragmentinitparams.getMaskedWalletRequestCode());
        b.a(parcel, 5, walletfragmentinitparams.getMaskedWallet(), i, false);
        b.F(parcel, j);
    }

    public WalletFragmentInitParams bn(Parcel parcel)
    {
        Object obj;
        Object obj1;
        MaskedWalletRequest maskedwalletrequest;
        int i;
        int j;
        int k;
        maskedwalletrequest = null;
        k = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        j = 0;
        obj1 = null;
        i = -1;
        obj = null;
_L8:
        int l;
        if (parcel.dataPosition() >= k)
        {
            break MISSING_BLOCK_LABEL_198;
        }
        l = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(l);
        JVM INSTR tableswitch 1 5: default 72
    //                   1 97
    //                   2 116
    //                   3 132
    //                   4 157
    //                   5 176;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L6:
        break MISSING_BLOCK_LABEL_176;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
        Object obj2 = obj1;
        obj1 = obj;
        obj = obj2;
_L9:
        Object obj3 = obj;
        obj = obj1;
        obj1 = obj3;
        if (true) goto _L8; else goto _L7
_L7:
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        Object obj4 = obj1;
        obj1 = obj;
        obj = obj4;
          goto _L9
_L3:
        String s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        obj = obj1;
        obj1 = s;
          goto _L9
_L4:
        maskedwalletrequest = (MaskedWalletRequest)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, MaskedWalletRequest.CREATOR);
        Object obj5 = obj;
        obj = obj1;
        obj1 = obj5;
          goto _L9
_L5:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        Object obj6 = obj1;
        obj1 = obj;
        obj = obj6;
          goto _L9
        MaskedWallet maskedwallet = (MaskedWallet)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, MaskedWallet.CREATOR);
        obj1 = obj;
        obj = maskedwallet;
          goto _L9
        if (parcel.dataPosition() != k)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a((new StringBuilder()).append("Overread allowed size end=").append(k).toString(), parcel);
        } else
        {
            return new WalletFragmentInitParams(j, ((String) (obj)), maskedwalletrequest, i, ((MaskedWallet) (obj1)));
        }
    }

    public WalletFragmentInitParams[] cA(int i)
    {
        return new WalletFragmentInitParams[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return bn(parcel);
    }

    public Object[] newArray(int i)
    {
        return cA(i);
    }
}
