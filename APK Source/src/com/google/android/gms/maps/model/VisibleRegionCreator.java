// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.maps.model:
//            VisibleRegion, LatLng, LatLngBounds

public class VisibleRegionCreator
    implements android.os.Parcelable.Creator
{

    public static final int CONTENT_DESCRIPTION = 0;

    public VisibleRegionCreator()
    {
    }

    static void a(VisibleRegion visibleregion, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.c(parcel, 1, visibleregion.getVersionCode());
        b.a(parcel, 2, visibleregion.nearLeft, i, false);
        b.a(parcel, 3, visibleregion.nearRight, i, false);
        b.a(parcel, 4, visibleregion.farLeft, i, false);
        b.a(parcel, 5, visibleregion.farRight, i, false);
        b.a(parcel, 6, visibleregion.latLngBounds, i, false);
        b.F(parcel, j);
    }

    public VisibleRegion createFromParcel(Parcel parcel)
    {
        Object obj;
        LatLng latlng;
        Object obj1;
        Object obj2;
        Object obj3;
        int i;
        int j;
        obj = null;
        j = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        i = 0;
        obj1 = null;
        latlng = null;
        obj2 = null;
        obj3 = null;
_L9:
        int k;
        if (parcel.dataPosition() >= j)
        {
            break MISSING_BLOCK_LABEL_329;
        }
        k = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(k);
        JVM INSTR tableswitch 1 6: default 80
    //                   1 133
    //                   2 162
    //                   3 194
    //                   4 229
    //                   5 260
    //                   6 294;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L7:
        break MISSING_BLOCK_LABEL_294;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
        Object obj4 = obj1;
        obj1 = obj3;
        Object obj10 = obj2;
        obj3 = obj;
        obj2 = obj1;
        obj1 = obj10;
        obj = obj4;
_L10:
        Object obj5 = obj;
        obj = obj3;
        obj3 = obj2;
        obj2 = obj1;
        obj1 = obj5;
        if (true) goto _L9; else goto _L8
_L8:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
        Object obj6 = obj;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = obj6;
          goto _L10
_L3:
        LatLng latlng1 = (LatLng)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LatLng.CREATOR);
        obj = obj1;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = latlng1;
          goto _L10
_L4:
        obj3 = (LatLng)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LatLng.CREATOR);
        Object obj7 = obj;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = obj7;
          goto _L10
_L5:
        LatLng latlng2 = (LatLng)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LatLng.CREATOR);
        obj2 = obj3;
        obj3 = obj;
        obj = obj1;
        obj1 = latlng2;
          goto _L10
_L6:
        latlng = (LatLng)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LatLng.CREATOR);
        Object obj8 = obj;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = obj8;
          goto _L10
        obj1 = (LatLngBounds)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LatLngBounds.CREATOR);
        Object obj9 = obj;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = obj9;
          goto _L10
        if (parcel.dataPosition() != j)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
        } else
        {
            return new VisibleRegion(i, ((LatLng) (obj)), ((LatLng) (obj3)), ((LatLng) (obj2)), latlng, ((LatLngBounds) (obj1)));
        }
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public VisibleRegion[] newArray(int i)
    {
        return new VisibleRegion[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }
}
