// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            jp

public class jq
    implements android.os.Parcelable.Creator
{

    public jq()
    {
    }

    static void a(jp jp1, Parcel parcel, int i)
    {
        i = b.p(parcel);
        b.c(parcel, 1, jp1.getVersionCode());
        b.c(parcel, 2, jp1.adh);
        b.a(parcel, 3, jp1.adi, false);
        b.a(parcel, 4, jp1.adj);
        b.a(parcel, 5, jp1.adk, false);
        b.a(parcel, 6, jp1.adl);
        b.c(parcel, 7, jp1.adm);
        b.F(parcel, i);
    }

    public jp bs(Parcel parcel)
    {
        double d;
        String s;
        String s1;
        int i;
        int j;
        int k;
        int i1;
        long l1;
        i1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        k = 0;
        i = 0;
        s = null;
        d = 0.0D;
        s1 = null;
        l1 = 0L;
        j = -1;
_L10:
        int l;
        if (parcel.dataPosition() >= i1)
        {
            break MISSING_BLOCK_LABEL_385;
        }
        l = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(l);
        JVM INSTR tableswitch 1 7: default 88
    //                   1 145
    //                   2 184
    //                   3 215
    //                   4 246
    //                   5 280
    //                   6 315
    //                   7 350;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L8:
        break MISSING_BLOCK_LABEL_350;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
        l = j;
        String s2 = s1;
        j = i;
        s1 = s;
        s = s2;
        i = l;
_L11:
        l = i;
        String s3 = s;
        s = s1;
        i = j;
        s1 = s3;
        j = l;
        if (true) goto _L10; else goto _L9
_L9:
        l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        String s4 = s;
        k = i;
        i = j;
        s = s1;
        s1 = s4;
        j = k;
        k = l;
          goto _L11
_L3:
        l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        i = j;
        String s5 = s;
        j = l;
        s = s1;
        s1 = s5;
          goto _L11
_L4:
        String s6 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        s = s1;
        s1 = s6;
        l = i;
        i = j;
        j = l;
          goto _L11
_L5:
        d = com.google.android.gms.common.internal.safeparcel.a.l(parcel, l);
        String s7 = s;
        l = i;
        i = j;
        s = s1;
        s1 = s7;
        j = l;
          goto _L11
_L6:
        s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        String s8 = s;
        l = i;
        i = j;
        s = s1;
        s1 = s8;
        j = l;
          goto _L11
_L7:
        l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, l);
        String s9 = s;
        l = i;
        i = j;
        s = s1;
        s1 = s9;
        j = l;
          goto _L11
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        String s10 = s;
        l = i;
        i = j;
        s = s1;
        s1 = s10;
        j = l;
          goto _L11
        if (parcel.dataPosition() != i1)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i1).toString(), parcel);
        } else
        {
            return new jp(k, i, s, d, s1, l1, j);
        }
    }

    public jp[] cG(int i)
    {
        return new jp[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return bs(parcel);
    }

    public Object[] newArray(int i)
    {
        return cG(i);
    }
}
