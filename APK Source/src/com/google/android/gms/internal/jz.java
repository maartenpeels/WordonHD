// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            jy, ju, jw

public class jz
    implements android.os.Parcelable.Creator
{

    public jz()
    {
    }

    static void a(jy jy1, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.c(parcel, 1, jy1.getVersionCode());
        b.a(parcel, 2, jy1.adn, false);
        b.a(parcel, 3, jy1.pm, false);
        b.a(parcel, 4, jy1.adr, i, false);
        b.a(parcel, 5, jy1.ads, i, false);
        b.a(parcel, 6, jy1.adt, i, false);
        b.F(parcel, j);
    }

    public jy bx(Parcel parcel)
    {
        Object obj;
        jw jw1;
        ju ju1;
        Object obj1;
        Object obj2;
        int i;
        int j;
        obj = null;
        j = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        i = 0;
        obj1 = null;
        jw1 = null;
        ju1 = null;
        obj2 = null;
_L9:
        int k;
        if (parcel.dataPosition() >= j)
        {
            break MISSING_BLOCK_LABEL_281;
        }
        k = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(k);
        JVM INSTR tableswitch 1 6: default 80
    //                   1 117
    //                   2 142
    //                   3 164
    //                   4 193
    //                   5 224
    //                   6 254;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L7:
        break MISSING_BLOCK_LABEL_254;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
        Object obj3 = obj1;
        obj1 = obj2;
        obj2 = obj;
        obj = obj3;
_L10:
        Object obj4 = obj;
        obj = obj2;
        obj2 = obj1;
        obj1 = obj4;
        if (true) goto _L9; else goto _L8
_L8:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
        Object obj5 = obj1;
        obj1 = obj2;
        obj2 = obj;
        obj = obj5;
          goto _L10
_L3:
        String s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        obj = obj1;
        obj1 = obj2;
        obj2 = s;
          goto _L10
_L4:
        Object obj6 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        obj2 = obj1;
        obj1 = obj6;
        obj6 = obj;
        obj = obj2;
        obj2 = obj6;
          goto _L10
_L5:
        ju1 = (ju)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, ju.CREATOR);
        Object obj7 = obj;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj7;
          goto _L10
_L6:
        jw1 = (jw)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, jw.CREATOR);
        Object obj8 = obj;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj8;
          goto _L10
        jw jw2 = (jw)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, jw.CREATOR);
        obj1 = obj2;
        obj2 = obj;
        obj = jw2;
          goto _L10
        if (parcel.dataPosition() != j)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
        } else
        {
            return new jy(i, ((String) (obj)), ((String) (obj2)), ju1, jw1, ((jw) (obj1)));
        }
    }

    public jy[] cL(int i)
    {
        return new jy[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return bx(parcel);
    }

    public Object[] newArray(int i)
    {
        return cL(i);
    }
}
