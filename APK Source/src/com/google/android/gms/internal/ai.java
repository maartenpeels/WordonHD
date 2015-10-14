// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.location.Location;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            ah, av

public class ai
    implements android.os.Parcelable.Creator
{

    public ai()
    {
    }

    static void a(ah ah1, Parcel parcel, int i)
    {
        int j = com.google.android.gms.common.internal.safeparcel.b.p(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, ah1.versionCode);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, ah1.lH);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, ah1.extras, false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 4, ah1.lI);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, ah1.lJ, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, ah1.lK);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 7, ah1.lL);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, ah1.lM);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, ah1.lN, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, ah1.lO, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, ah1.lP, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, ah1.lQ, false);
        com.google.android.gms.common.internal.safeparcel.b.F(parcel, j);
    }

    public ah a(Parcel parcel)
    {
        Object obj;
        Object obj1;
        Object obj2;
        String s;
        Object obj3;
        Object obj4;
        int i;
        int j;
        int k;
        int l;
        long l1;
        boolean flag;
        boolean flag1;
        l = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        k = 0;
        l1 = 0L;
        obj3 = null;
        j = 0;
        obj2 = null;
        flag1 = false;
        i = 0;
        flag = false;
        s = null;
        obj1 = null;
        obj = null;
        obj4 = null;
_L15:
        int i1;
        if (parcel.dataPosition() >= l)
        {
            break MISSING_BLOCK_LABEL_579;
        }
        i1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(i1);
        JVM INSTR tableswitch 1 12: default 124
    //                   1 183
    //                   2 214
    //                   3 245
    //                   4 276
    //                   5 307
    //                   6 342
    //                   7 373
    //                   8 404
    //                   9 435
    //                   10 466
    //                   11 506
    //                   12 552;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13
_L13:
        break MISSING_BLOCK_LABEL_552;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
        Object obj5 = obj4;
        obj4 = obj3;
        obj3 = obj2;
        obj2 = obj1;
        obj1 = obj;
        obj = obj5;
_L16:
        Object obj6 = obj;
        Object obj20 = obj3;
        obj = obj2;
        Object obj18 = obj1;
        obj3 = obj4;
        obj2 = obj20;
        obj1 = obj;
        obj = obj18;
        obj4 = obj6;
        if (true) goto _L15; else goto _L14
_L14:
        k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        Object obj7 = obj4;
        obj4 = obj3;
        obj3 = obj2;
        obj2 = obj1;
        obj1 = obj;
        obj = obj7;
          goto _L16
_L3:
        l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
        Object obj8 = obj4;
        obj4 = obj3;
        obj3 = obj2;
        obj2 = obj1;
        obj1 = obj;
        obj = obj8;
          goto _L16
_L4:
        obj3 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
        Object obj9 = obj4;
        obj4 = obj3;
        obj3 = obj2;
        obj2 = obj1;
        obj1 = obj;
        obj = obj9;
          goto _L16
_L5:
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        Object obj10 = obj4;
        obj4 = obj3;
        obj3 = obj2;
        obj2 = obj1;
        obj1 = obj;
        obj = obj10;
          goto _L16
_L6:
        Object obj11 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, i1);
        obj2 = obj4;
        obj4 = obj3;
        obj3 = obj11;
        obj11 = obj1;
        obj1 = obj;
        obj = obj2;
        obj2 = obj11;
          goto _L16
_L7:
        flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1);
        Object obj12 = obj4;
        obj4 = obj3;
        obj3 = obj2;
        obj2 = obj1;
        obj1 = obj;
        obj = obj12;
          goto _L16
_L8:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        Object obj13 = obj4;
        obj4 = obj3;
        obj3 = obj2;
        obj2 = obj1;
        obj1 = obj;
        obj = obj13;
          goto _L16
_L9:
        flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1);
        Object obj14 = obj4;
        obj4 = obj3;
        obj3 = obj2;
        obj2 = obj1;
        obj1 = obj;
        obj = obj14;
          goto _L16
_L10:
        s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        Object obj15 = obj4;
        obj4 = obj3;
        obj3 = obj2;
        obj2 = obj1;
        obj1 = obj;
        obj = obj15;
          goto _L16
_L11:
        Object obj16 = (av)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, av.CREATOR);
        obj1 = obj4;
        obj4 = obj3;
        obj3 = obj2;
        obj2 = obj16;
        obj16 = obj;
        obj = obj1;
        obj1 = obj16;
          goto _L16
_L12:
        Object obj17 = (Location)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, Location.CREATOR);
        obj = obj4;
        obj4 = obj1;
        obj1 = obj17;
        obj17 = obj2;
        Object obj19 = obj3;
        obj2 = obj4;
        obj3 = obj17;
        obj4 = obj19;
          goto _L16
        String s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        obj4 = obj3;
        obj3 = obj2;
        obj2 = obj1;
        obj1 = obj;
        obj = s1;
          goto _L16
        if (parcel.dataPosition() != l)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(l).toString(), parcel);
        } else
        {
            return new ah(k, l1, ((android.os.Bundle) (obj3)), j, ((java.util.List) (obj2)), flag1, i, flag, s, ((av) (obj1)), ((Location) (obj)), ((String) (obj4)));
        }
    }

    public ah[] b(int i)
    {
        return new ah[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return a(parcel);
    }

    public Object[] newArray(int i)
    {
        return b(i);
    }
}
