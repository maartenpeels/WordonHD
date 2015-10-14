// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.maps.model:
//            GroundOverlayOptions, LatLng, LatLngBounds

public class GroundOverlayOptionsCreator
    implements android.os.Parcelable.Creator
{

    public static final int CONTENT_DESCRIPTION = 0;

    public GroundOverlayOptionsCreator()
    {
    }

    static void a(GroundOverlayOptions groundoverlayoptions, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.c(parcel, 1, groundoverlayoptions.getVersionCode());
        b.a(parcel, 2, groundoverlayoptions.iD(), false);
        b.a(parcel, 3, groundoverlayoptions.getLocation(), i, false);
        b.a(parcel, 4, groundoverlayoptions.getWidth());
        b.a(parcel, 5, groundoverlayoptions.getHeight());
        b.a(parcel, 6, groundoverlayoptions.getBounds(), i, false);
        b.a(parcel, 7, groundoverlayoptions.getBearing());
        b.a(parcel, 8, groundoverlayoptions.getZIndex());
        b.a(parcel, 9, groundoverlayoptions.isVisible());
        b.a(parcel, 10, groundoverlayoptions.getTransparency());
        b.a(parcel, 11, groundoverlayoptions.getAnchorU());
        b.a(parcel, 12, groundoverlayoptions.getAnchorV());
        b.F(parcel, j);
    }

    public GroundOverlayOptions createFromParcel(Parcel parcel)
    {
        float f;
        float f1;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        Object obj;
        Object obj1;
        Object obj2;
        int i;
        int j;
        boolean flag;
        j = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        i = 0;
        obj = null;
        obj2 = null;
        f1 = 0.0F;
        f4 = 0.0F;
        obj1 = null;
        f2 = 0.0F;
        f3 = 0.0F;
        flag = false;
        f5 = 0.0F;
        f = 0.0F;
        f6 = 0.0F;
_L15:
        int k;
        if (parcel.dataPosition() >= j)
        {
            break MISSING_BLOCK_LABEL_935;
        }
        k = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(k);
        JVM INSTR tableswitch 1 12: default 124
    //                   1 231
    //                   2 290
    //                   3 345
    //                   4 406
    //                   5 464
    //                   6 523
    //                   7 588
    //                   8 639
    //                   9 706
    //                   10 765
    //                   11 824
    //                   12 880;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13
_L13:
        break MISSING_BLOCK_LABEL_880;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
        float f7 = f6;
        Object obj3 = obj2;
        float f21 = f5;
        Object obj16 = obj1;
        obj2 = obj;
        obj1 = obj3;
        f6 = f1;
        f5 = f4;
        obj = obj16;
        f4 = f2;
        f2 = f21;
        f1 = f;
        f = f7;
_L16:
        float f8 = f;
        f = f2;
        f2 = f4;
        Object obj4 = obj;
        f4 = f6;
        f6 = f1;
        obj = obj2;
        obj2 = obj1;
        f1 = f4;
        f4 = f5;
        obj1 = obj4;
        f5 = f;
        f = f6;
        f6 = f8;
        if (true) goto _L15; else goto _L14
_L14:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
        float f22 = f6;
        f6 = f5;
        f5 = f4;
        f4 = f2;
        float f9 = f1;
        f1 = f;
        Object obj5 = obj;
        f = f22;
        f2 = f6;
        obj = obj1;
        f6 = f9;
        obj1 = obj2;
        obj2 = obj5;
          goto _L16
_L3:
        android.os.IBinder ibinder = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
        float f23 = f6;
        f6 = f5;
        f5 = f4;
        f4 = f2;
        obj = obj1;
        float f10 = f1;
        f1 = f;
        f = f23;
        f2 = f6;
        f6 = f10;
        obj1 = obj2;
        obj2 = ibinder;
          goto _L16
_L4:
        obj2 = (LatLng)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LatLng.CREATOR);
        float f11 = f5;
        float f24 = f6;
        f5 = f4;
        f4 = f2;
        f6 = f1;
        f1 = f;
        Object obj6 = obj;
        f = f24;
        f2 = f11;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj6;
          goto _L16
_L5:
        float f12 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, k);
        f1 = f6;
        f6 = f5;
        f5 = f4;
        f4 = f2;
        f2 = f;
        Object obj7 = obj;
        f = f1;
        f1 = f2;
        f2 = f6;
        obj = obj1;
        f6 = f12;
        obj1 = obj2;
        obj2 = obj7;
          goto _L16
_L6:
        float f25 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, k);
        float f13 = f6;
        f4 = f5;
        f5 = f25;
        f25 = f2;
        f6 = f1;
        f1 = f;
        Object obj8 = obj;
        f = f13;
        f2 = f4;
        f4 = f25;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj8;
          goto _L16
_L7:
        obj1 = (LatLngBounds)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LatLngBounds.CREATOR);
        float f14 = f2;
        f2 = f5;
        f5 = f4;
        Object obj9 = obj;
        f4 = f;
        float f26 = f1;
        f = f6;
        f1 = f4;
        f4 = f14;
        obj = obj1;
        f6 = f26;
        obj1 = obj2;
        obj2 = obj9;
          goto _L16
_L8:
        float f27 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, k);
        float f15 = f6;
        f2 = f5;
        f5 = f4;
        f4 = f27;
        f6 = f1;
        f1 = f;
        Object obj10 = obj;
        f = f15;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj10;
          goto _L16
_L9:
        float f28 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, k);
        float f16 = f6;
        f3 = f5;
        f5 = f4;
        f4 = f28;
        f28 = f2;
        f6 = f1;
        f1 = f;
        Object obj11 = obj;
        f = f16;
        f2 = f3;
        f3 = f4;
        f4 = f28;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj11;
          goto _L16
_L10:
        flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
        float f29 = f6;
        f6 = f5;
        f5 = f4;
        f4 = f2;
        float f17 = f1;
        f1 = f;
        Object obj12 = obj;
        f = f29;
        f2 = f6;
        obj = obj1;
        f6 = f17;
        obj1 = obj2;
        obj2 = obj12;
          goto _L16
_L11:
        f5 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, k);
        float f30 = f6;
        f6 = f5;
        f5 = f4;
        f4 = f2;
        float f18 = f1;
        f1 = f;
        Object obj13 = obj;
        f = f30;
        f2 = f6;
        obj = obj1;
        f6 = f18;
        obj1 = obj2;
        obj2 = obj13;
          goto _L16
_L12:
        float f31 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, k);
        f = f6;
        f6 = f5;
        f5 = f4;
        f4 = f2;
        float f19 = f1;
        f1 = f31;
        Object obj14 = obj;
        f2 = f6;
        obj = obj1;
        f6 = f19;
        obj1 = obj2;
        obj2 = obj14;
          goto _L16
        float f32 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, k);
        f6 = f5;
        f5 = f4;
        f4 = f2;
        float f20 = f1;
        f1 = f;
        Object obj15 = obj;
        f = f32;
        f2 = f6;
        obj = obj1;
        f6 = f20;
        obj1 = obj2;
        obj2 = obj15;
          goto _L16
        if (parcel.dataPosition() != j)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
        } else
        {
            return new GroundOverlayOptions(i, ((android.os.IBinder) (obj)), ((LatLng) (obj2)), f1, f4, ((LatLngBounds) (obj1)), f2, f3, flag, f5, f, f6);
        }
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public GroundOverlayOptions[] newArray(int i)
    {
        return new GroundOverlayOptions[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }
}
