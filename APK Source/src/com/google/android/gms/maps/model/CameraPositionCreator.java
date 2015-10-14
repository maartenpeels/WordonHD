// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.maps.model:
//            CameraPosition, LatLng

public class CameraPositionCreator
    implements android.os.Parcelable.Creator
{

    public static final int CONTENT_DESCRIPTION = 0;

    public CameraPositionCreator()
    {
    }

    static void a(CameraPosition cameraposition, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.c(parcel, 1, cameraposition.getVersionCode());
        b.a(parcel, 2, cameraposition.target, i, false);
        b.a(parcel, 3, cameraposition.zoom);
        b.a(parcel, 4, cameraposition.tilt);
        b.a(parcel, 5, cameraposition.bearing);
        b.F(parcel, j);
    }

    public CameraPosition createFromParcel(Parcel parcel)
    {
        float f;
        float f1;
        float f2;
        LatLng latlng;
        int i;
        int j;
        f2 = 0.0F;
        j = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        i = 0;
        latlng = null;
        f1 = 0.0F;
        f = 0.0F;
_L8:
        int k;
        if (parcel.dataPosition() >= j)
        {
            break MISSING_BLOCK_LABEL_198;
        }
        k = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(k);
        JVM INSTR tableswitch 1 5: default 72
    //                   1 97
    //                   2 116
    //                   3 141
    //                   4 164
    //                   5 180;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L6:
        break MISSING_BLOCK_LABEL_180;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
        float f3 = f1;
        f1 = f;
        f = f3;
_L9:
        float f4 = f;
        f = f1;
        f1 = f4;
        if (true) goto _L8; else goto _L7
_L7:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
        float f5 = f;
        f = f1;
        f1 = f5;
          goto _L9
_L3:
        latlng = (LatLng)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LatLng.CREATOR);
        float f6 = f;
        f = f1;
        f1 = f6;
          goto _L9
_L4:
        float f7 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, k);
        f2 = f;
        f = f1;
        f1 = f2;
        f2 = f7;
          goto _L9
_L5:
        float f8 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, k);
        f = f1;
        f1 = f8;
          goto _L9
        f1 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, k);
        float f9 = f;
        f = f1;
        f1 = f9;
          goto _L9
        if (parcel.dataPosition() != j)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
        } else
        {
            return new CameraPosition(i, latlng, f2, f, f1);
        }
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public CameraPosition[] newArray(int i)
    {
        return new CameraPosition[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }
}
