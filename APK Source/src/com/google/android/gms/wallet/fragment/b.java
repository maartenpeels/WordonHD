// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.fragment;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;

// Referenced classes of package com.google.android.gms.wallet.fragment:
//            WalletFragmentOptions, WalletFragmentStyle

public class b
    implements android.os.Parcelable.Creator
{

    public b()
    {
    }

    static void a(WalletFragmentOptions walletfragmentoptions, Parcel parcel, int i)
    {
        int j = com.google.android.gms.common.internal.safeparcel.b.p(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, walletfragmentoptions.xH);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 2, walletfragmentoptions.getEnvironment());
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 3, walletfragmentoptions.getTheme());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, walletfragmentoptions.getFragmentStyle(), i, false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 5, walletfragmentoptions.getMode());
        com.google.android.gms.common.internal.safeparcel.b.F(parcel, j);
    }

    public WalletFragmentOptions bo(Parcel parcel)
    {
        WalletFragmentStyle walletfragmentstyle;
        int i;
        int j;
        int k;
        int l;
        int j1;
        j1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        j = 1;
        walletfragmentstyle = null;
        k = 0;
        l = 0;
        i = 1;
_L8:
        int i1;
        if (parcel.dataPosition() >= j1)
        {
            break MISSING_BLOCK_LABEL_212;
        }
        i1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(i1);
        JVM INSTR tableswitch 1 5: default 72
    //                   1 101
    //                   2 126
    //                   3 144
    //                   4 169
    //                   5 195;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L6:
        break MISSING_BLOCK_LABEL_195;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
        i1 = j;
        j = i;
        i = i1;
_L9:
        i1 = i;
        i = j;
        j = i1;
        if (true) goto _L8; else goto _L7
_L7:
        i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        k = j;
        j = i;
        i = k;
        k = i1;
          goto _L9
_L3:
        i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        i = j;
        j = i1;
          goto _L9
_L4:
        i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        l = j;
        j = i;
        i = l;
        l = i1;
          goto _L9
_L5:
        walletfragmentstyle = (WalletFragmentStyle)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, WalletFragmentStyle.CREATOR);
        i1 = i;
        i = j;
        j = i1;
          goto _L9
        i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        j = i;
        i = i1;
          goto _L9
        if (parcel.dataPosition() != j1)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j1).toString(), parcel);
        } else
        {
            return new WalletFragmentOptions(k, i, l, walletfragmentstyle, j);
        }
    }

    public WalletFragmentOptions[] cB(int i)
    {
        return new WalletFragmentOptions[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return bo(parcel);
    }

    public Object[] newArray(int i)
    {
        return cB(i);
    }
}
