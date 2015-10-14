// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.maps.model:
//            MarkerOptions, LatLng

public class MarkerOptionsCreator
    implements android.os.Parcelable.Creator
{

    public static final int CONTENT_DESCRIPTION = 0;

    public MarkerOptionsCreator()
    {
    }

    static void a(MarkerOptions markeroptions, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.c(parcel, 1, markeroptions.getVersionCode());
        b.a(parcel, 2, markeroptions.getPosition(), i, false);
        b.a(parcel, 3, markeroptions.getTitle(), false);
        b.a(parcel, 4, markeroptions.getSnippet(), false);
        b.a(parcel, 5, markeroptions.iE(), false);
        b.a(parcel, 6, markeroptions.getAnchorU());
        b.a(parcel, 7, markeroptions.getAnchorV());
        b.a(parcel, 8, markeroptions.isDraggable());
        b.a(parcel, 9, markeroptions.isVisible());
        b.a(parcel, 10, markeroptions.isFlat());
        b.a(parcel, 11, markeroptions.getRotation());
        b.a(parcel, 12, markeroptions.getInfoWindowAnchorU());
        b.a(parcel, 13, markeroptions.getInfoWindowAnchorV());
        b.a(parcel, 14, markeroptions.getAlpha());
        b.F(parcel, j);
    }

    public MarkerOptions createFromParcel(Parcel parcel)
    {
        float f;
        float f1;
        float f2;
        float f3;
        float f4;
        float f5;
        Object obj;
        String s;
        Object obj1;
        Object obj2;
        int i;
        int j;
        boolean flag;
        boolean flag1;
        boolean flag2;
        j = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        i = 0;
        obj = null;
        obj2 = null;
        s = null;
        obj1 = null;
        f2 = 0.0F;
        f3 = 0.0F;
        flag1 = false;
        flag = false;
        flag2 = false;
        f1 = 0.0F;
        f4 = 0.5F;
        f = 0.0F;
        f5 = 1.0F;
_L17:
        int k;
        if (parcel.dataPosition() >= j)
        {
            break MISSING_BLOCK_LABEL_1259;
        }
        k = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(k);
        JVM INSTR tableswitch 1 14: default 136
    //                   1 275
    //                   2 346
    //                   3 423
    //                   4 494
    //                   5 565
    //                   6 632
    //                   7 699
    //                   8 774
    //                   9 849
    //                   10 916
    //                   11 983
    //                   12 1057
    //                   13 1124
    //                   14 1192;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15
_L15:
        break MISSING_BLOCK_LABEL_1192;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
        float f6 = f5;
        Object obj17 = obj2;
        float f22 = f4;
        Object obj3 = obj1;
        boolean flag3 = flag2;
        obj2 = obj;
        obj1 = obj17;
        obj = obj3;
        f5 = f2;
        f4 = f3;
        flag2 = flag1;
        flag1 = flag;
        flag = flag3;
        f3 = f1;
        f2 = f22;
        f1 = f;
        f = f6;
_L18:
        float f7 = f;
        Object obj4 = obj1;
        f = f2;
        obj1 = obj;
        boolean flag4 = flag;
        flag = flag1;
        f2 = f5;
        float f23 = f3;
        f5 = f1;
        obj = obj2;
        obj2 = obj4;
        f3 = f4;
        flag1 = flag2;
        flag2 = flag4;
        f1 = f23;
        f4 = f;
        f = f5;
        f5 = f7;
        if (true) goto _L17; else goto _L16
_L16:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
        float f24 = f5;
        float f8 = f4;
        boolean flag5 = flag2;
        f4 = f3;
        flag2 = flag1;
        flag1 = flag;
        f5 = f2;
        f3 = f1;
        f1 = f;
        Object obj5 = obj;
        f = f24;
        f2 = f8;
        flag = flag5;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj5;
          goto _L18
_L3:
        LatLng latlng = (LatLng)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LatLng.CREATOR);
        float f25 = f;
        float f38 = f4;
        obj = obj1;
        boolean flag6 = flag2;
        f4 = f3;
        flag2 = flag1;
        flag1 = flag;
        float f9 = f2;
        f3 = f1;
        f = f5;
        f1 = f25;
        f2 = f38;
        flag = flag6;
        f5 = f9;
        obj1 = obj2;
        obj2 = latlng;
          goto _L18
_L4:
        obj2 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        float f26 = f5;
        float f10 = f4;
        boolean flag7 = flag2;
        f4 = f3;
        flag2 = flag1;
        flag1 = flag;
        f5 = f2;
        f3 = f1;
        f1 = f;
        Object obj6 = obj;
        f = f26;
        f2 = f10;
        flag = flag7;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj6;
          goto _L18
_L5:
        s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        float f27 = f5;
        float f11 = f4;
        boolean flag8 = flag2;
        f4 = f3;
        flag2 = flag1;
        flag1 = flag;
        f5 = f2;
        f3 = f1;
        f1 = f;
        Object obj7 = obj;
        f = f27;
        f2 = f11;
        flag = flag8;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj7;
          goto _L18
_L6:
        android.os.IBinder ibinder = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
        float f28 = f5;
        obj1 = obj2;
        float f12 = f4;
        boolean flag9 = flag2;
        f4 = f3;
        flag2 = flag1;
        flag1 = flag;
        f5 = f2;
        f3 = f1;
        f1 = f;
        obj2 = obj;
        f = f28;
        f2 = f12;
        flag = flag9;
        obj = ibinder;
          goto _L18
_L7:
        float f29 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, k);
        float f13 = f5;
        f2 = f4;
        boolean flag10 = flag2;
        f4 = f3;
        flag2 = flag1;
        flag1 = flag;
        f5 = f29;
        f3 = f1;
        f1 = f;
        Object obj8 = obj;
        f = f13;
        flag = flag10;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj8;
          goto _L18
_L8:
        float f30 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, k);
        float f14 = f5;
        f3 = f4;
        boolean flag11 = flag2;
        f4 = f30;
        flag2 = flag1;
        flag1 = flag;
        f5 = f2;
        f30 = f1;
        f1 = f;
        Object obj9 = obj;
        f = f14;
        f2 = f3;
        f3 = f30;
        flag = flag11;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj9;
          goto _L18
_L9:
        boolean flag12 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
        float f31 = f5;
        float f15 = f4;
        flag1 = flag2;
        f4 = f3;
        flag2 = flag12;
        flag12 = flag;
        f5 = f2;
        f3 = f1;
        f1 = f;
        Object obj10 = obj;
        f = f31;
        f2 = f15;
        flag = flag1;
        flag1 = flag12;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj10;
          goto _L18
_L10:
        boolean flag13 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
        float f32 = f5;
        float f16 = f4;
        flag = flag2;
        f4 = f3;
        flag2 = flag1;
        flag1 = flag13;
        f5 = f2;
        f3 = f1;
        f1 = f;
        Object obj11 = obj;
        f = f32;
        f2 = f16;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj11;
          goto _L18
_L11:
        boolean flag14 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k);
        float f33 = f5;
        float f17 = f4;
        f4 = f3;
        flag2 = flag1;
        flag1 = flag;
        f5 = f2;
        f3 = f1;
        f1 = f;
        Object obj12 = obj;
        f = f33;
        f2 = f17;
        flag = flag14;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj12;
          goto _L18
_L12:
        float f34 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, k);
        f1 = f5;
        float f18 = f4;
        boolean flag15 = flag2;
        f4 = f3;
        flag2 = flag1;
        flag1 = flag;
        f5 = f2;
        f3 = f34;
        f2 = f;
        Object obj13 = obj;
        f = f1;
        f1 = f2;
        f2 = f18;
        flag = flag15;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj13;
          goto _L18
_L13:
        float f19 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, k);
        float f35 = f5;
        boolean flag16 = flag2;
        f4 = f3;
        flag2 = flag1;
        flag1 = flag;
        f5 = f2;
        f3 = f1;
        f1 = f;
        Object obj14 = obj;
        f = f35;
        f2 = f19;
        flag = flag16;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj14;
          goto _L18
_L14:
        float f36 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, k);
        f = f5;
        float f20 = f4;
        boolean flag17 = flag2;
        f4 = f3;
        flag2 = flag1;
        flag1 = flag;
        f5 = f2;
        f3 = f1;
        f1 = f36;
        Object obj15 = obj;
        f2 = f20;
        flag = flag17;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj15;
          goto _L18
        float f37 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, k);
        float f21 = f4;
        boolean flag18 = flag2;
        f4 = f3;
        flag2 = flag1;
        flag1 = flag;
        f5 = f2;
        f3 = f1;
        f1 = f;
        Object obj16 = obj;
        f = f37;
        f2 = f21;
        flag = flag18;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj16;
          goto _L18
        if (parcel.dataPosition() != j)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
        } else
        {
            return new MarkerOptions(i, ((LatLng) (obj)), ((String) (obj2)), s, ((android.os.IBinder) (obj1)), f2, f3, flag1, flag, flag2, f1, f4, f, f5);
        }
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public MarkerOptions[] newArray(int i)
    {
        return new MarkerOptions[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }
}
