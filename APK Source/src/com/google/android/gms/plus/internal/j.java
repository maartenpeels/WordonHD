// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.plus.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.plus.internal:
//            h, PlusCommonExtras

public class j
    implements android.os.Parcelable.Creator
{

    public j()
    {
    }

    static void a(h h1, Parcel parcel, int i)
    {
        int k = b.p(parcel);
        b.a(parcel, 1, h1.getAccountName(), false);
        b.c(parcel, 1000, h1.getVersionCode());
        b.a(parcel, 2, h1.iP(), false);
        b.a(parcel, 3, h1.iQ(), false);
        b.a(parcel, 4, h1.iR(), false);
        b.a(parcel, 5, h1.iS(), false);
        b.a(parcel, 6, h1.iT(), false);
        b.a(parcel, 7, h1.iU(), false);
        b.a(parcel, 8, h1.iV(), false);
        b.a(parcel, 9, h1.iW(), i, false);
        b.F(parcel, k);
    }

    public h aK(Parcel parcel)
    {
        Object obj;
        String s;
        String as[];
        String s1;
        String s2;
        String as1[];
        Object obj1;
        String as2[];
        Object obj2;
        int i;
        int k;
        k = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        i = 0;
        obj = null;
        as2 = null;
        as = null;
        as1 = null;
        s2 = null;
        s1 = null;
        obj1 = null;
        s = null;
        obj2 = null;
_L13:
        int l;
        if (parcel.dataPosition() >= k)
        {
            break MISSING_BLOCK_LABEL_525;
        }
        l = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(l);
        JVM INSTR lookupswitch 10: default 144
    //                   1: 197
    //                   2: 260
    //                   3: 293
    //                   4: 322
    //                   5: 355
    //                   6: 388
    //                   7: 421
    //                   8: 454
    //                   9: 486
    //                   1000: 227;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L10:
        break MISSING_BLOCK_LABEL_486;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
        Object obj3 = obj2;
        Object obj6 = obj1;
        obj2 = obj;
        obj1 = as;
        as = ((String []) (obj6));
        obj = obj3;
_L14:
        Object obj4 = obj;
        String as12[] = as;
        as = ((String []) (obj1));
        obj = obj2;
        obj1 = as12;
        obj2 = obj4;
        if (true) goto _L13; else goto _L12
_L12:
        String s3 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        obj = obj2;
        obj2 = as;
        as = ((String []) (obj1));
        obj1 = obj2;
        obj2 = s3;
          goto _L14
_L11:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        String as3[] = as;
        Object obj7 = obj;
        obj = obj2;
        as = ((String []) (obj1));
        obj1 = as3;
        obj2 = obj7;
          goto _L14
_L3:
        as2 = com.google.android.gms.common.internal.safeparcel.a.z(parcel, l);
        String as4[] = as;
        Object obj8 = obj;
        obj = obj2;
        as = ((String []) (obj1));
        obj1 = as4;
        obj2 = obj8;
          goto _L14
_L4:
        String as5[] = com.google.android.gms.common.internal.safeparcel.a.z(parcel, l);
        as = ((String []) (obj1));
        obj1 = as5;
        Object obj5 = obj;
        obj = obj2;
        obj2 = obj5;
          goto _L14
_L5:
        as1 = com.google.android.gms.common.internal.safeparcel.a.z(parcel, l);
        String as6[] = as;
        Object obj9 = obj;
        obj = obj2;
        as = ((String []) (obj1));
        obj1 = as6;
        obj2 = obj9;
          goto _L14
_L6:
        s2 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        String as7[] = as;
        Object obj10 = obj;
        obj = obj2;
        as = ((String []) (obj1));
        obj1 = as7;
        obj2 = obj10;
          goto _L14
_L7:
        s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        String as8[] = as;
        Object obj11 = obj;
        obj = obj2;
        as = ((String []) (obj1));
        obj1 = as8;
        obj2 = obj11;
          goto _L14
_L8:
        obj1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        String as9[] = as;
        Object obj12 = obj;
        obj = obj2;
        as = ((String []) (obj1));
        obj1 = as9;
        obj2 = obj12;
          goto _L14
_L9:
        s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        String as10[] = as;
        Object obj13 = obj;
        obj = obj2;
        as = ((String []) (obj1));
        obj1 = as10;
        obj2 = obj13;
          goto _L14
        obj2 = (PlusCommonExtras)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, PlusCommonExtras.CREATOR);
        String as11[] = as;
        Object obj14 = obj;
        obj = obj2;
        as = ((String []) (obj1));
        obj1 = as11;
        obj2 = obj14;
          goto _L14
        if (parcel.dataPosition() != k)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(k).toString(), parcel);
        } else
        {
            return new h(i, ((String) (obj)), as2, as, as1, s2, s1, ((String) (obj1)), s, ((PlusCommonExtras) (obj2)));
        }
    }

    public h[] bN(int i)
    {
        return new h[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return aK(parcel);
    }

    public Object[] newArray(int i)
    {
        return bN(i);
    }
}
