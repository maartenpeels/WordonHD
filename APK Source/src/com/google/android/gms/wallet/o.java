// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.wallet:
//            ProxyCard

public class o
    implements android.os.Parcelable.Creator
{

    public o()
    {
    }

    static void a(ProxyCard proxycard, Parcel parcel, int i)
    {
        i = b.p(parcel);
        b.c(parcel, 1, proxycard.getVersionCode());
        b.a(parcel, 2, proxycard.ack, false);
        b.a(parcel, 3, proxycard.acl, false);
        b.c(parcel, 4, proxycard.acm);
        b.c(parcel, 5, proxycard.acn);
        b.F(parcel, i);
    }

    public ProxyCard bk(Parcel parcel)
    {
        String s;
        String s1;
        int i;
        int j;
        int k;
        int i1;
        s = null;
        k = 0;
        i1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        j = 0;
        i = 0;
        s1 = null;
_L8:
        int l;
        if (parcel.dataPosition() >= i1)
        {
            break MISSING_BLOCK_LABEL_218;
        }
        l = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(l);
        JVM INSTR tableswitch 1 5: default 72
    //                   1 105
    //                   2 132
    //                   3 154
    //                   4 176
    //                   5 195;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L6:
        break MISSING_BLOCK_LABEL_195;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
        l = j;
        j = i;
        i = l;
_L9:
        l = i;
        i = j;
        j = l;
        if (true) goto _L8; else goto _L7
_L7:
        l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        k = i;
        i = j;
        j = k;
        k = l;
          goto _L9
_L3:
        s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        l = i;
        i = j;
        j = l;
          goto _L9
_L4:
        s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        l = i;
        i = j;
        j = l;
          goto _L9
_L5:
        l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        i = j;
        j = l;
          goto _L9
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        l = i;
        i = j;
        j = l;
          goto _L9
        if (parcel.dataPosition() != i1)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i1).toString(), parcel);
        } else
        {
            return new ProxyCard(k, s, s1, i, j);
        }
    }

    public Object createFromParcel(Parcel parcel)
    {
        return bk(parcel);
    }

    public ProxyCard[] cw(int i)
    {
        return new ProxyCard[i];
    }

    public Object[] newArray(int i)
    {
        return cw(i);
    }
}
