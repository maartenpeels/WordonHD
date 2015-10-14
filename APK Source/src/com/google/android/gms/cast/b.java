// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.cast;

import android.os.Parcel;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.a;

// Referenced classes of package com.google.android.gms.cast:
//            CastDevice

public class b
    implements android.os.Parcelable.Creator
{

    public b()
    {
    }

    static void a(CastDevice castdevice, Parcel parcel, int i)
    {
        i = com.google.android.gms.common.internal.safeparcel.b.p(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, castdevice.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, castdevice.getDeviceId(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, castdevice.yb, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, castdevice.getFriendlyName(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, castdevice.getModelName(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, castdevice.getDeviceVersion(), false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 7, castdevice.getServicePort());
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 8, castdevice.getIcons(), false);
        com.google.android.gms.common.internal.safeparcel.b.F(parcel, i);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return k(parcel);
    }

    public CastDevice k(Parcel parcel)
    {
        Object obj;
        String s;
        String s1;
        String s2;
        String s3;
        Object obj1;
        int i;
        int j;
        int l;
        l = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        j = 0;
        obj = null;
        s3 = null;
        s = null;
        s1 = null;
        s2 = null;
        i = 0;
        obj1 = null;
_L11:
        int i1;
        if (parcel.dataPosition() >= l)
        {
            break MISSING_BLOCK_LABEL_390;
        }
        i1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(i1);
        JVM INSTR tableswitch 1 8: default 96
    //                   1 145
    //                   2 176
    //                   3 204
    //                   4 235
    //                   5 263
    //                   6 294
    //                   7 325
    //                   8 356;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L9:
        break MISSING_BLOCK_LABEL_356;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
        Object obj2 = obj1;
        String s5 = s2;
        obj1 = obj;
        s2 = s;
        s = s5;
        obj = obj2;
_L12:
        Object obj3 = obj;
        String s6 = s;
        s = s2;
        obj = obj1;
        s2 = s6;
        obj1 = obj3;
        if (true) goto _L11; else goto _L10
_L10:
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        String s7 = s;
        Object obj4 = obj;
        obj = obj1;
        s = s2;
        s2 = s7;
        obj1 = obj4;
          goto _L12
_L3:
        String s8 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        obj = obj1;
        String s4 = s;
        obj1 = s8;
        s = s2;
        s2 = s4;
          goto _L12
_L4:
        s3 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        String s9 = s;
        Object obj5 = obj;
        obj = obj1;
        s = s2;
        s2 = s9;
        obj1 = obj5;
          goto _L12
_L5:
        Object obj6 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        s = s2;
        s2 = ((String) (obj6));
        obj6 = obj;
        obj = obj1;
        obj1 = obj6;
          goto _L12
_L6:
        s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        String s10 = s;
        Object obj7 = obj;
        obj = obj1;
        s = s2;
        s2 = s10;
        obj1 = obj7;
          goto _L12
_L7:
        s2 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        String s11 = s;
        Object obj8 = obj;
        obj = obj1;
        s = s2;
        s2 = s11;
        obj1 = obj8;
          goto _L12
_L8:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        String s12 = s;
        Object obj9 = obj;
        obj = obj1;
        s = s2;
        s2 = s12;
        obj1 = obj9;
          goto _L12
        obj1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1, WebImage.CREATOR);
        String s13 = s;
        Object obj10 = obj;
        obj = obj1;
        s = s2;
        s2 = s13;
        obj1 = obj10;
          goto _L12
        if (parcel.dataPosition() != l)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(l).toString(), parcel);
        } else
        {
            return new CastDevice(j, ((String) (obj)), s3, s, s1, s2, i, ((java.util.List) (obj1)));
        }
    }

    public Object[] newArray(int i)
    {
        return y(i);
    }

    public CastDevice[] y(int i)
    {
        return new CastDevice[i];
    }
}
