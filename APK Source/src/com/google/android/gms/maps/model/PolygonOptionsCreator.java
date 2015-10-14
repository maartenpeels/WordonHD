// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.maps.model:
//            PolygonOptions, LatLng

public class PolygonOptionsCreator
    implements android.os.Parcelable.Creator
{

    public static final int CONTENT_DESCRIPTION = 0;

    public PolygonOptionsCreator()
    {
    }

    static void a(PolygonOptions polygonoptions, Parcel parcel, int i)
    {
        i = b.p(parcel);
        b.c(parcel, 1, polygonoptions.getVersionCode());
        b.b(parcel, 2, polygonoptions.getPoints(), false);
        b.c(parcel, 3, polygonoptions.iF(), false);
        b.a(parcel, 4, polygonoptions.getStrokeWidth());
        b.c(parcel, 5, polygonoptions.getStrokeColor());
        b.c(parcel, 6, polygonoptions.getFillColor());
        b.a(parcel, 7, polygonoptions.getZIndex());
        b.a(parcel, 8, polygonoptions.isVisible());
        b.a(parcel, 9, polygonoptions.isGeodesic());
        b.F(parcel, i);
    }

    public PolygonOptions createFromParcel(Parcel parcel)
    {
        float f;
        float f1;
        ArrayList arraylist;
        ArrayList arraylist1;
        int i;
        int j;
        int k;
        int i1;
        boolean flag;
        boolean flag1;
        i1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        k = 0;
        arraylist = null;
        arraylist1 = new ArrayList();
        f1 = 0.0F;
        i = 0;
        j = 0;
        f = 0.0F;
        flag = false;
        flag1 = false;
_L12:
        int l;
        if (parcel.dataPosition() >= i1)
        {
            break MISSING_BLOCK_LABEL_484;
        }
        l = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(l);
        JVM INSTR tableswitch 1 9: default 108
    //                   1 165
    //                   2 204
    //                   3 242
    //                   4 284
    //                   5 318
    //                   6 349
    //                   7 384
    //                   8 418
    //                   9 449;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10
_L10:
        break MISSING_BLOCK_LABEL_449;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
        boolean flag2 = flag1;
        l = j;
        j = i;
        i = l;
        flag1 = flag;
        flag = flag2;
_L13:
        boolean flag3 = flag;
        l = i;
        i = j;
        flag = flag1;
        j = l;
        flag1 = flag3;
        if (true) goto _L12; else goto _L11
_L11:
        l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        k = i;
        boolean flag4 = flag;
        flag = flag1;
        flag1 = flag4;
        i = j;
        j = k;
        k = l;
          goto _L13
_L3:
        arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l, LatLng.CREATOR);
        l = i;
        boolean flag5 = flag;
        flag = flag1;
        flag1 = flag5;
        i = j;
        j = l;
          goto _L13
_L4:
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, arraylist1, getClass().getClassLoader());
        l = i;
        boolean flag6 = flag;
        flag = flag1;
        flag1 = flag6;
        i = j;
        j = l;
          goto _L13
_L5:
        f1 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, l);
        l = i;
        boolean flag7 = flag;
        flag = flag1;
        flag1 = flag7;
        i = j;
        j = l;
          goto _L13
_L6:
        l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        i = j;
        j = l;
        boolean flag8 = flag;
        flag = flag1;
        flag1 = flag8;
          goto _L13
_L7:
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        l = i;
        boolean flag9 = flag;
        flag = flag1;
        flag1 = flag9;
        i = j;
        j = l;
          goto _L13
_L8:
        f = com.google.android.gms.common.internal.safeparcel.a.k(parcel, l);
        l = i;
        boolean flag10 = flag;
        flag = flag1;
        flag1 = flag10;
        i = j;
        j = l;
          goto _L13
_L9:
        boolean flag11 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l);
        flag = flag1;
        l = i;
        flag1 = flag11;
        i = j;
        j = l;
          goto _L13
        flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l);
        l = i;
        boolean flag12 = flag;
        flag = flag1;
        flag1 = flag12;
        i = j;
        j = l;
          goto _L13
        if (parcel.dataPosition() != i1)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i1).toString(), parcel);
        } else
        {
            return new PolygonOptions(k, arraylist, arraylist1, f1, i, j, f, flag, flag1);
        }
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public PolygonOptions[] newArray(int i)
    {
        return new PolygonOptions[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }
}
