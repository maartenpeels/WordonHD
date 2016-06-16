// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.location:
//            LocationRequest

public class LocationRequestCreator
    implements android.os.Parcelable.Creator
{

    public static final int CONTENT_DESCRIPTION = 0;

    public LocationRequestCreator()
    {
    }

    static void a(LocationRequest locationrequest, Parcel parcel, int i)
    {
        i = b.p(parcel);
        b.c(parcel, 1, locationrequest.mPriority);
        b.c(parcel, 1000, locationrequest.getVersionCode());
        b.a(parcel, 2, locationrequest.Oc);
        b.a(parcel, 3, locationrequest.Od);
        b.a(parcel, 4, locationrequest.Oe);
        b.a(parcel, 5, locationrequest.NV);
        b.c(parcel, 6, locationrequest.Of);
        b.a(parcel, 7, locationrequest.Og);
        b.F(parcel, i);
    }

    public LocationRequest createFromParcel(Parcel parcel)
    {
        float f;
        int i;
        int j;
        int k;
        int i1;
        long l1;
        long l2;
        long l3;
        boolean flag;
        i1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        k = 0;
        i = 102;
        l3 = 0x36ee80L;
        l1 = 0x927c0L;
        flag = false;
        l2 = 0x7fffffffffffffffL;
        j = 0x7fffffff;
        f = 0.0F;
_L11:
        int l;
        if (parcel.dataPosition() >= i1)
        {
            break MISSING_BLOCK_LABEL_445;
        }
        l = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(l);
        JVM INSTR lookupswitch 8: default 132
    //                   1: 185
    //                   2: 252
    //                   3: 285
    //                   4: 314
    //                   5: 347
    //                   6: 380
    //                   7: 413
    //                   1000: 215;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L8:
        break MISSING_BLOCK_LABEL_413;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
        long l4 = l2;
        l = j;
        j = i;
        l2 = l1;
        l1 = l4;
        i = l;
_L12:
        long l5 = l1;
        l1 = l2;
        l = i;
        i = j;
        l2 = l5;
        j = l;
        if (true) goto _L11; else goto _L10
_L10:
        l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        long l6 = l1;
        i = j;
        j = l;
        l1 = l2;
        l2 = l6;
          goto _L12
_L9:
        l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        long l7 = l1;
        k = i;
        i = j;
        l1 = l2;
        l2 = l7;
        j = k;
        k = l;
          goto _L12
_L3:
        l3 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, l);
        long l8 = l1;
        l = i;
        i = j;
        l1 = l2;
        l2 = l8;
        j = l;
          goto _L12
_L4:
        long l9 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, l);
        l1 = l2;
        l2 = l9;
        l = i;
        i = j;
        j = l;
          goto _L12
_L5:
        flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l);
        long l10 = l1;
        l = i;
        i = j;
        l1 = l2;
        l2 = l10;
        j = l;
          goto _L12
_L6:
        l2 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, l);
        long l11 = l1;
        l = i;
        i = j;
        l1 = l2;
        l2 = l11;
        j = l;
          goto _L12
_L7:
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        long l12 = l1;
        l = i;
        i = j;
        l1 = l2;
        l2 = l12;
        j = l;
          goto _L12
        f = com.google.android.gms.common.internal.safeparcel.a.k(parcel, l);
        long l13 = l1;
        l = i;
        i = j;
        l1 = l2;
        l2 = l13;
        j = l;
          goto _L12
        if (parcel.dataPosition() != i1)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i1).toString(), parcel);
        } else
        {
            return new LocationRequest(k, i, l3, l1, flag, l2, j, f);
        }
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public LocationRequest[] newArray(int i)
    {
        return new LocationRequest[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }
}
