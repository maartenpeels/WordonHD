// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.wallet:
//            LineItem

public class i
    implements android.os.Parcelable.Creator
{

    public i()
    {
    }

    static void a(LineItem lineitem, Parcel parcel, int j)
    {
        j = b.p(parcel);
        b.c(parcel, 1, lineitem.getVersionCode());
        b.a(parcel, 2, lineitem.description, false);
        b.a(parcel, 3, lineitem.abv, false);
        b.a(parcel, 4, lineitem.abw, false);
        b.a(parcel, 5, lineitem.abc, false);
        b.c(parcel, 6, lineitem.abx);
        b.a(parcel, 7, lineitem.abd, false);
        b.F(parcel, j);
    }

    public LineItem be(Parcel parcel)
    {
        String s;
        String s1;
        String s2;
        String s3;
        String s4;
        int j;
        int k;
        int l;
        l = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        s3 = null;
        j = 0;
        s1 = null;
        s4 = null;
        s2 = null;
        k = 0;
        s = null;
_L10:
        int i1;
        if (parcel.dataPosition() >= l)
        {
            break MISSING_BLOCK_LABEL_262;
        }
        i1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(i1);
        JVM INSTR tableswitch 1 7: default 88
    //                   1 117
    //                   2 138
    //                   3 156
    //                   4 177
    //                   5 202
    //                   6 224
    //                   7 245;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L8:
        break MISSING_BLOCK_LABEL_245;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
        String s5 = s3;
        s3 = s;
        s = s5;
_L11:
        String s6 = s;
        s = s3;
        s3 = s6;
        if (true) goto _L10; else goto _L9
_L9:
        k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        String s7 = s3;
        s3 = s;
        s = s7;
          goto _L11
_L3:
        String s8 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        s = s3;
        s3 = s8;
          goto _L11
_L4:
        s2 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        String s9 = s3;
        s3 = s;
        s = s9;
          goto _L11
_L5:
        String s10 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        s4 = s3;
        s3 = s;
        s = s4;
        s4 = s10;
          goto _L11
_L6:
        String s11 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        s1 = s3;
        s3 = s;
        s = s1;
        s1 = s11;
          goto _L11
_L7:
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        String s12 = s3;
        s3 = s;
        s = s12;
          goto _L11
        String s13 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        s3 = s;
        s = s13;
          goto _L11
        if (parcel.dataPosition() != l)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(l).toString(), parcel);
        } else
        {
            return new LineItem(k, s, s2, s4, s1, j, s3);
        }
    }

    public LineItem[] cq(int j)
    {
        return new LineItem[j];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return be(parcel);
    }

    public Object[] newArray(int j)
    {
        return cq(j);
    }
}
