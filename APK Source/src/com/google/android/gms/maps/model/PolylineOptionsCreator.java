// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.maps.model:
//            PolylineOptions, LatLng

public class PolylineOptionsCreator
    implements android.os.Parcelable.Creator
{

    public static final int CONTENT_DESCRIPTION = 0;

    public PolylineOptionsCreator()
    {
    }

    static void a(PolylineOptions polylineoptions, Parcel parcel, int i)
    {
        i = b.p(parcel);
        b.c(parcel, 1, polylineoptions.getVersionCode());
        b.b(parcel, 2, polylineoptions.getPoints(), false);
        b.a(parcel, 3, polylineoptions.getWidth());
        b.c(parcel, 4, polylineoptions.getColor());
        b.a(parcel, 5, polylineoptions.getZIndex());
        b.a(parcel, 6, polylineoptions.isVisible());
        b.a(parcel, 7, polylineoptions.isGeodesic());
        b.F(parcel, i);
    }

    public PolylineOptions createFromParcel(Parcel parcel)
    {
        float f;
        float f1;
        java.util.ArrayList arraylist;
        int i;
        int j;
        int k;
        boolean flag;
        boolean flag1;
        f1 = 0.0F;
        k = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        flag1 = false;
        flag = false;
        f = 0.0F;
        j = 0;
        i = 0;
        arraylist = null;
_L10:
        int l;
        if (parcel.dataPosition() >= k)
        {
            break MISSING_BLOCK_LABEL_279;
        }
        l = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(l);
        JVM INSTR tableswitch 1 7: default 88
    //                   1 121
    //                   2 144
    //                   3 170
    //                   4 192
    //                   5 215
    //                   6 237
    //                   7 256;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L8:
        break MISSING_BLOCK_LABEL_256;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
        boolean flag2 = flag1;
        flag1 = flag;
        flag = flag2;
_L11:
        boolean flag3 = flag;
        flag = flag1;
        flag1 = flag3;
        if (true) goto _L10; else goto _L9
_L9:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        boolean flag4 = flag;
        flag = flag1;
        flag1 = flag4;
          goto _L11
_L3:
        arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l, LatLng.CREATOR);
        boolean flag5 = flag;
        flag = flag1;
        flag1 = flag5;
          goto _L11
_L4:
        f1 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, l);
        boolean flag6 = flag;
        flag = flag1;
        flag1 = flag6;
          goto _L11
_L5:
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        boolean flag7 = flag;
        flag = flag1;
        flag1 = flag7;
          goto _L11
_L6:
        f = com.google.android.gms.common.internal.safeparcel.a.k(parcel, l);
        boolean flag8 = flag;
        flag = flag1;
        flag1 = flag8;
          goto _L11
_L7:
        boolean flag9 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l);
        flag = flag1;
        flag1 = flag9;
          goto _L11
        flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l);
        boolean flag10 = flag;
        flag = flag1;
        flag1 = flag10;
          goto _L11
        if (parcel.dataPosition() != k)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(k).toString(), parcel);
        } else
        {
            return new PolylineOptions(i, arraylist, f1, j, f, flag, flag1);
        }
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public PolylineOptions[] newArray(int i)
    {
        return new PolylineOptions[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }
}
