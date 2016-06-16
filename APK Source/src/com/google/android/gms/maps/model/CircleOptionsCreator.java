// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.maps.model:
//            CircleOptions, LatLng

public class CircleOptionsCreator
    implements android.os.Parcelable.Creator
{

    public static final int CONTENT_DESCRIPTION = 0;

    public CircleOptionsCreator()
    {
    }

    static void a(CircleOptions circleoptions, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.c(parcel, 1, circleoptions.getVersionCode());
        b.a(parcel, 2, circleoptions.getCenter(), i, false);
        b.a(parcel, 3, circleoptions.getRadius());
        b.a(parcel, 4, circleoptions.getStrokeWidth());
        b.c(parcel, 5, circleoptions.getStrokeColor());
        b.c(parcel, 6, circleoptions.getFillColor());
        b.a(parcel, 7, circleoptions.getZIndex());
        b.a(parcel, 8, circleoptions.isVisible());
        b.F(parcel, j);
    }

    public CircleOptions createFromParcel(Parcel parcel)
    {
        double d;
        float f;
        float f1;
        LatLng latlng;
        int i;
        int j;
        int k;
        int i1;
        boolean flag;
        i1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        k = 0;
        latlng = null;
        d = 0.0D;
        f1 = 0.0F;
        i = 0;
        j = 0;
        f = 0.0F;
        flag = false;
_L11:
        int l;
        if (parcel.dataPosition() >= i1)
        {
            break MISSING_BLOCK_LABEL_318;
        }
        l = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(l);
        JVM INSTR tableswitch 1 8: default 96
    //                   1 129
    //                   2 156
    //                   3 185
    //                   4 207
    //                   5 230
    //                   6 249
    //                   7 272
    //                   8 295;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L9:
        break MISSING_BLOCK_LABEL_295;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
        l = j;
        j = i;
        i = l;
_L12:
        l = i;
        i = j;
        j = l;
        if (true) goto _L11; else goto _L10
_L10:
        l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        k = i;
        i = j;
        j = k;
        k = l;
          goto _L12
_L3:
        latlng = (LatLng)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, LatLng.CREATOR);
        l = i;
        i = j;
        j = l;
          goto _L12
_L4:
        d = com.google.android.gms.common.internal.safeparcel.a.l(parcel, l);
        l = i;
        i = j;
        j = l;
          goto _L12
_L5:
        f1 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, l);
        l = i;
        i = j;
        j = l;
          goto _L12
_L6:
        l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        i = j;
        j = l;
          goto _L12
_L7:
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        l = i;
        i = j;
        j = l;
          goto _L12
_L8:
        f = com.google.android.gms.common.internal.safeparcel.a.k(parcel, l);
        l = i;
        i = j;
        j = l;
          goto _L12
        flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l);
        l = i;
        i = j;
        j = l;
          goto _L12
        if (parcel.dataPosition() != i1)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i1).toString(), parcel);
        } else
        {
            return new CircleOptions(k, latlng, d, f1, i, j, f, flag);
        }
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public CircleOptions[] newArray(int i)
    {
        return new CircleOptions[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }
}
