// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.CameraPosition;

// Referenced classes of package com.google.android.gms.maps:
//            GoogleMapOptions

public class GoogleMapOptionsCreator
    implements android.os.Parcelable.Creator
{

    public static final int CONTENT_DESCRIPTION = 0;

    public GoogleMapOptionsCreator()
    {
    }

    static void a(GoogleMapOptions googlemapoptions, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.c(parcel, 1, googlemapoptions.getVersionCode());
        b.a(parcel, 2, googlemapoptions.ig());
        b.a(parcel, 3, googlemapoptions.ih());
        b.c(parcel, 4, googlemapoptions.getMapType());
        b.a(parcel, 5, googlemapoptions.getCamera(), i, false);
        b.a(parcel, 6, googlemapoptions.ii());
        b.a(parcel, 7, googlemapoptions.ij());
        b.a(parcel, 8, googlemapoptions.ik());
        b.a(parcel, 9, googlemapoptions.il());
        b.a(parcel, 10, googlemapoptions.im());
        b.a(parcel, 11, googlemapoptions.in());
        b.F(parcel, j);
    }

    public GoogleMapOptions createFromParcel(Parcel parcel)
    {
        byte byte0;
        byte byte1;
        byte byte2;
        byte byte3;
        byte byte4;
        byte byte5;
        byte byte6;
        byte byte7;
        CameraPosition cameraposition;
        int i;
        int j;
        int k;
        k = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        j = 0;
        byte0 = 0;
        byte5 = 0;
        i = 0;
        cameraposition = null;
        byte7 = 0;
        byte3 = 0;
        byte2 = 0;
        byte4 = 0;
        byte1 = 0;
        byte6 = 0;
_L14:
        int l;
        if (parcel.dataPosition() >= k)
        {
            break MISSING_BLOCK_LABEL_592;
        }
        l = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(l);
        JVM INSTR tableswitch 1 11: default 116
    //                   1 177
    //                   2 214
    //                   3 248
    //                   4 285
    //                   5 322
    //                   6 365
    //                   7 406
    //                   8 447
    //                   9 484
    //                   10 517
    //                   11 559;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12
_L12:
        break MISSING_BLOCK_LABEL_559;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
        byte byte8 = byte6;
        byte byte21 = byte4;
        byte6 = byte0;
        byte4 = byte3;
        byte3 = byte2;
        byte2 = byte21;
        byte0 = byte8;
_L15:
        byte byte9 = byte0;
        byte byte22 = byte2;
        byte2 = byte3;
        byte0 = byte6;
        byte3 = byte4;
        byte4 = byte22;
        byte6 = byte9;
        if (true) goto _L14; else goto _L13
_L13:
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        byte byte10 = byte6;
        byte byte23 = byte4;
        byte4 = byte3;
        byte3 = byte2;
        byte6 = byte0;
        byte0 = byte10;
        byte2 = byte23;
          goto _L15
_L3:
        byte byte24 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, l);
        byte0 = byte6;
        byte byte11 = byte4;
        byte4 = byte3;
        byte3 = byte2;
        byte6 = byte24;
        byte2 = byte11;
          goto _L15
_L4:
        byte5 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, l);
        byte byte12 = byte6;
        byte byte25 = byte4;
        byte4 = byte3;
        byte3 = byte2;
        byte6 = byte0;
        byte0 = byte12;
        byte2 = byte25;
          goto _L15
_L5:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        byte byte13 = byte6;
        byte byte26 = byte4;
        byte4 = byte3;
        byte3 = byte2;
        byte6 = byte0;
        byte0 = byte13;
        byte2 = byte26;
          goto _L15
_L6:
        cameraposition = (CameraPosition)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, CameraPosition.CREATOR);
        byte byte14 = byte3;
        byte byte27 = byte6;
        byte3 = byte2;
        byte6 = byte0;
        byte0 = byte27;
        byte2 = byte4;
        byte4 = byte14;
          goto _L15
_L7:
        byte byte28 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, l);
        byte7 = byte6;
        byte byte15 = byte4;
        byte4 = byte3;
        byte3 = byte2;
        byte6 = byte0;
        byte0 = byte7;
        byte2 = byte15;
        byte7 = byte28;
          goto _L15
_L8:
        byte byte29 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, l);
        byte3 = byte6;
        byte byte16 = byte4;
        byte4 = byte29;
        byte29 = byte2;
        byte6 = byte0;
        byte0 = byte3;
        byte2 = byte16;
        byte3 = byte29;
          goto _L15
_L9:
        byte byte30 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, l);
        byte2 = byte6;
        byte byte17 = byte4;
        byte4 = byte3;
        byte3 = byte30;
        byte6 = byte0;
        byte0 = byte2;
        byte2 = byte17;
          goto _L15
_L10:
        byte byte31 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, l);
        byte byte18 = byte6;
        byte4 = byte3;
        byte3 = byte2;
        byte6 = byte0;
        byte0 = byte18;
        byte2 = byte31;
          goto _L15
_L11:
        byte byte32 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, l);
        byte1 = byte6;
        byte byte19 = byte4;
        byte4 = byte3;
        byte3 = byte2;
        byte2 = byte32;
        byte6 = byte0;
        byte0 = byte1;
        byte1 = byte2;
        byte2 = byte19;
          goto _L15
        byte byte20 = com.google.android.gms.common.internal.safeparcel.a.e(parcel, l);
        byte byte33 = byte4;
        byte4 = byte3;
        byte3 = byte2;
        byte6 = byte0;
        byte0 = byte20;
        byte2 = byte33;
          goto _L15
        if (parcel.dataPosition() != k)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(k).toString(), parcel);
        } else
        {
            return new GoogleMapOptions(j, byte0, byte5, i, cameraposition, byte7, byte3, byte2, byte4, byte1, byte6);
        }
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public GoogleMapOptions[] newArray(int i)
    {
        return new GoogleMapOptions[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }
}
