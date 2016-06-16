// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.LatLng;

// Referenced classes of package com.google.android.gms.internal:
//            ho, hm

public class hp
    implements android.os.Parcelable.Creator
{

    public hp()
    {
    }

    static void a(ho ho1, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.a(parcel, 1, ho1.getName(), false);
        b.c(parcel, 1000, ho1.xH);
        b.a(parcel, 2, ho1.ia(), i, false);
        b.a(parcel, 3, ho1.getAddress(), false);
        b.b(parcel, 4, ho1.ib(), false);
        b.a(parcel, 5, ho1.getPhoneNumber(), false);
        b.a(parcel, 6, ho1.ic(), false);
        b.F(parcel, j);
    }

    public ho aH(Parcel parcel)
    {
        Object obj;
        Object obj1;
        Object obj2;
        LatLng latlng;
        Object obj3;
        Object obj4;
        int i;
        int j;
        obj = null;
        j = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        i = 0;
        obj3 = null;
        obj1 = null;
        obj2 = null;
        obj4 = null;
        latlng = null;
_L10:
        int k;
        if (parcel.dataPosition() >= j)
        {
            break MISSING_BLOCK_LABEL_299;
        }
        k = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(k);
        JVM INSTR lookupswitch 7: default 112
    //                   1: 141
    //                   2: 180
    //                   3: 207
    //                   4: 232
    //                   5: 260
    //                   6: 282
    //                   1000: 159;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L7:
        break MISSING_BLOCK_LABEL_282;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
        Object obj5 = obj3;
        obj3 = obj;
        obj = obj5;
_L11:
        Object obj6 = obj;
        obj = obj3;
        obj3 = obj6;
        if (true) goto _L10; else goto _L9
_L9:
        String s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        obj = obj3;
        obj3 = s;
          goto _L11
_L8:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
        Object obj7 = obj3;
        obj3 = obj;
        obj = obj7;
          goto _L11
_L3:
        latlng = (LatLng)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LatLng.CREATOR);
        Object obj8 = obj3;
        obj3 = obj;
        obj = obj8;
          goto _L11
_L4:
        String s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        obj4 = obj3;
        obj3 = obj;
        obj = obj4;
        obj4 = s1;
          goto _L11
_L5:
        java.util.ArrayList arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, hm.CREATOR);
        obj2 = obj3;
        obj3 = obj;
        obj = obj2;
        obj2 = arraylist;
          goto _L11
_L6:
        String s2 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        obj1 = obj3;
        obj3 = obj;
        obj = obj1;
        obj1 = s2;
          goto _L11
        String s3 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        obj3 = obj;
        obj = s3;
          goto _L11
        if (parcel.dataPosition() != j)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
        } else
        {
            return new ho(i, ((String) (obj)), latlng, ((String) (obj4)), ((java.util.List) (obj2)), ((String) (obj1)), ((String) (obj3)));
        }
    }

    public ho[] bI(int i)
    {
        return new ho[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return aH(parcel);
    }

    public Object[] newArray(int i)
    {
        return bI(i);
    }
}
