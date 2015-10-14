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
//            ie, ic

public class if
    implements android.os.Parcelable.Creator
{

    public if()
    {
    }

    static void a(ie ie1, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        Set set = ie1.ja();
        if (set.contains(Integer.valueOf(1)))
        {
            b.c(parcel, 1, ie1.getVersionCode());
        }
        if (set.contains(Integer.valueOf(2)))
        {
            b.a(parcel, 2, ie1.getId(), true);
        }
        if (set.contains(Integer.valueOf(4)))
        {
            b.a(parcel, 4, ie1.jr(), i, true);
        }
        if (set.contains(Integer.valueOf(5)))
        {
            b.a(parcel, 5, ie1.getStartDate(), true);
        }
        if (set.contains(Integer.valueOf(6)))
        {
            b.a(parcel, 6, ie1.js(), i, true);
        }
        if (set.contains(Integer.valueOf(7)))
        {
            b.a(parcel, 7, ie1.getType(), true);
        }
        b.F(parcel, j);
    }

    public ie aM(Parcel parcel)
    {
        String s;
        ic ic1;
        String s1;
        ic ic2;
        String s2;
        HashSet hashset;
        int i;
        int j;
        s = null;
        j = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        hashset = new HashSet();
        i = 0;
        s2 = null;
        ic1 = null;
        s1 = null;
        ic2 = null;
_L9:
        int k;
        if (parcel.dataPosition() >= j)
        {
            break MISSING_BLOCK_LABEL_329;
        }
        k = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(k);
        JVM INSTR tableswitch 1 7: default 92
    //                   1 121
    //                   2 154
    //                   3 92
    //                   4 184
    //                   5 223
    //                   6 256
    //                   7 295;
           goto _L1 _L2 _L3 _L1 _L4 _L5 _L6 _L7
_L7:
        break MISSING_BLOCK_LABEL_295;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
        String s3 = s2;
        s2 = s;
        s = s3;
_L10:
        String s4 = s;
        s = s2;
        s2 = s4;
        if (true) goto _L9; else goto _L8
_L8:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
        hashset.add(Integer.valueOf(1));
        String s5 = s;
        s = s2;
        s2 = s5;
          goto _L10
_L3:
        String s6 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        hashset.add(Integer.valueOf(2));
        s = s2;
        s2 = s6;
          goto _L10
_L4:
        ic2 = (ic)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, ic.CREATOR);
        hashset.add(Integer.valueOf(4));
        String s7 = s2;
        s2 = s;
        s = s7;
          goto _L10
_L5:
        s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        hashset.add(Integer.valueOf(5));
        String s8 = s;
        s = s2;
        s2 = s8;
          goto _L10
_L6:
        ic1 = (ic)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, ic.CREATOR);
        hashset.add(Integer.valueOf(6));
        String s9 = s;
        s = s2;
        s2 = s9;
          goto _L10
        s2 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        hashset.add(Integer.valueOf(7));
        String s10 = s;
        s = s2;
        s2 = s10;
          goto _L10
        if (parcel.dataPosition() != j)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
        } else
        {
            return new ie(hashset, i, s, ic2, s1, ic1, s2);
        }
    }

    public ie[] bP(int i)
    {
        return new ie[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return aM(parcel);
    }

    public Object[] newArray(int i)
    {
        return bP(i);
    }
}
