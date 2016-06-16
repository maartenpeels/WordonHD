// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;

// Referenced classes of package com.google.android.gms.maps:
//            StreetViewPanoramaOptions

public class StreetViewPanoramaOptionsCreator
    implements android.os.Parcelable.Creator
{

    public static final int CONTENT_DESCRIPTION = 0;

    public StreetViewPanoramaOptionsCreator()
    {
    }

    static void a(StreetViewPanoramaOptions streetviewpanoramaoptions, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.c(parcel, 1, streetviewpanoramaoptions.getVersionCode());
        b.a(parcel, 2, streetviewpanoramaoptions.getStreetViewPanoramaCamera(), i, false);
        b.a(parcel, 3, streetviewpanoramaoptions.getPanoramaId(), false);
        b.a(parcel, 4, streetviewpanoramaoptions.getPosition(), i, false);
        b.a(parcel, 5, streetviewpanoramaoptions.getRadius(), false);
        b.a(parcel, 6, streetviewpanoramaoptions.it());
        b.a(parcel, 7, streetviewpanoramaoptions.il());
        b.a(parcel, 8, streetviewpanoramaoptions.iu());
        b.a(parcel, 9, streetviewpanoramaoptions.iv());
        b.a(parcel, 10, streetviewpanoramaoptions.ih());
        b.F(parcel, j);
    }

    public StreetViewPanoramaOptions createFromParcel(Parcel parcel)
    {
        byte byte0;
        byte byte1;
        byte byte2;
        byte byte3;
        byte byte4;
        Object obj;
        LatLng latlng;
        Object obj1;
        Object obj2;
        int i;
        int j;
        j = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        i = 0;
        obj = null;
        obj2 = null;
        latlng = null;
        obj1 = null;
        byte2 = 0;
        byte1 = 0;
        byte3 = 0;
        byte0 = 0;
        byte4 = 0;
_L13:
        int k;
        if (parcel.dataPosition() >= j)
        {
            break MISSING_BLOCK_LABEL_709;
        }
        k = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(k);
        JVM INSTR tableswitch 1 10: default 108
    //                   1 203
    //                   2 254
    //                   3 311
    //                   4 362
    //                   5 419
    //                   6 466
    //                   7 513
    //                   8 563
    //                   9 614
    //                   10 662;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L11:
        break MISSING_BLOCK_LABEL_662;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
        byte byte5 = byte4;
        Object obj13 = obj2;
        byte byte17 = byte3;
        Object obj3 = obj1;
        obj2 = obj;
        obj1 = obj13;
        obj = obj3;
        byte4 = byte2;
        byte3 = byte1;
        byte2 = byte17;
        byte1 = byte0;
        byte0 = byte5;
_L14:
        byte byte6 = byte0;
        Object obj4 = obj1;
        byte0 = byte2;
        obj1 = obj;
        byte2 = byte4;
        byte4 = byte1;
        obj = obj2;
        obj2 = obj4;
        byte1 = byte3;
        byte3 = byte0;
        byte0 = byte4;
        byte4 = byte6;
        if (true) goto _L13; else goto _L12
_L12:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
        byte byte7 = byte4;
        byte4 = byte2;
        byte byte18 = byte1;
        byte1 = byte0;
        Object obj5 = obj;
        byte0 = byte7;
        byte2 = byte3;
        byte3 = byte18;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj5;
          goto _L14
_L3:
        StreetViewPanoramaCamera streetviewpanoramacamera = (StreetViewPanoramaCamera)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, StreetViewPanoramaCamera.CREATOR);
        byte byte19 = byte0;
        obj = obj1;
        byte byte8 = byte2;
        byte byte27 = byte1;
        byte0 = byte4;
        byte1 = byte19;
        byte2 = byte3;
        byte3 = byte27;
        byte4 = byte8;
        obj1 = obj2;
        obj2 = streetviewpanoramacamera;
          goto _L14
_L4:
        obj2 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        byte byte9 = byte4;
        byte4 = byte2;
        byte byte20 = byte1;
        byte1 = byte0;
        Object obj6 = obj;
        byte0 = byte9;
        byte2 = byte3;
        byte3 = byte20;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj6;
          goto _L14
_L5:
        latlng = (LatLng)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LatLng.CREATOR);
        byte byte10 = byte1;
        byte byte21 = byte2;
        Object obj7 = obj;
        byte1 = byte0;
        byte0 = byte4;
        byte2 = byte3;
        byte3 = byte10;
        byte4 = byte21;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj7;
          goto _L14
_L6:
        Integer integer = com.google.android.gms.common.internal.safeparcel.a.h(parcel, k);
        byte byte11 = byte4;
        obj1 = obj2;
        byte4 = byte2;
        byte byte22 = byte1;
        byte1 = byte0;
        obj2 = obj;
        byte0 = byte11;
        byte2 = byte3;
        byte3 = byte22;
        obj = integer;
          goto _L14
_L7:
        byte byte23 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, k);
        byte byte12 = byte4;
        byte2 = byte3;
        byte4 = byte23;
        byte3 = byte1;
        byte1 = byte0;
        Object obj8 = obj;
        byte0 = byte12;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj8;
          goto _L14
_L8:
        byte byte13 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, k);
        byte1 = byte4;
        byte4 = byte2;
        byte2 = byte0;
        Object obj9 = obj;
        byte0 = byte1;
        byte1 = byte2;
        byte2 = byte3;
        byte3 = byte13;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj9;
          goto _L14
_L9:
        byte3 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, k);
        byte byte14 = byte4;
        byte4 = byte2;
        byte byte24 = byte1;
        byte1 = byte0;
        Object obj10 = obj;
        byte0 = byte14;
        byte2 = byte3;
        byte3 = byte24;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj10;
          goto _L14
_L10:
        byte byte25 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, k);
        byte0 = byte4;
        byte4 = byte2;
        byte byte15 = byte1;
        byte1 = byte25;
        Object obj11 = obj;
        byte2 = byte3;
        byte3 = byte15;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj11;
          goto _L14
        byte byte16 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, k);
        byte4 = byte2;
        byte byte26 = byte1;
        byte1 = byte0;
        Object obj12 = obj;
        byte0 = byte16;
        byte2 = byte3;
        byte3 = byte26;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj12;
          goto _L14
        if (parcel.dataPosition() != j)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
        } else
        {
            return new StreetViewPanoramaOptions(i, ((StreetViewPanoramaCamera) (obj)), ((String) (obj2)), latlng, ((Integer) (obj1)), byte2, byte1, byte3, byte0, byte4);
        }
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public StreetViewPanoramaOptions[] newArray(int i)
    {
        return new StreetViewPanoramaOptions[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }
}
