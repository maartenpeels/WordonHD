// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            cx, ah, ak, dx

public class cy
    implements android.os.Parcelable.Creator
{

    public cy()
    {
    }

    static void a(cx cx1, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.c(parcel, 1, cx1.versionCode);
        b.a(parcel, 2, cx1.pf, false);
        b.a(parcel, 3, cx1.pg, i, false);
        b.a(parcel, 4, cx1.kN, i, false);
        b.a(parcel, 5, cx1.kH, false);
        b.a(parcel, 6, cx1.applicationInfo, i, false);
        b.a(parcel, 7, cx1.ph, i, false);
        b.a(parcel, 8, cx1.pi, false);
        b.a(parcel, 9, cx1.pj, false);
        b.a(parcel, 10, cx1.pk, false);
        b.a(parcel, 11, cx1.kK, i, false);
        b.a(parcel, 12, cx1.pl, false);
        b.F(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return f(parcel);
    }

    public cx f(Parcel parcel)
    {
        Object obj;
        Object obj1;
        Object obj2;
        String s;
        Object obj3;
        PackageInfo packageinfo;
        Object obj4;
        String s1;
        Object obj5;
        Object obj6;
        Object obj7;
        int i;
        int j;
        j = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        i = 0;
        obj1 = null;
        obj7 = null;
        obj2 = null;
        s1 = null;
        obj3 = null;
        packageinfo = null;
        obj4 = null;
        s = null;
        obj6 = null;
        obj = null;
        obj5 = null;
_L15:
        int l;
        if (parcel.dataPosition() >= j)
        {
            break MISSING_BLOCK_LABEL_893;
        }
        l = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(l);
        JVM INSTR tableswitch 1 12: default 124
    //                   1 219
    //                   2 274
    //                   3 322
    //                   4 391
    //                   5 444
    //                   6 499
    //                   7 552
    //                   8 613
    //                   9 668
    //                   10 723
    //                   11 782
    //                   12 838;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13
_L13:
        break MISSING_BLOCK_LABEL_838;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
        Object obj8 = obj5;
        obj5 = obj7;
        Object obj20 = obj6;
        Object obj34 = obj4;
        obj7 = obj1;
        obj6 = obj5;
        obj5 = obj2;
        obj4 = obj3;
        obj3 = obj34;
        obj2 = obj20;
        obj1 = obj;
        obj = obj8;
_L16:
        Object obj9 = obj;
        Object obj21 = obj6;
        obj6 = obj2;
        obj = obj3;
        obj3 = obj4;
        obj2 = obj5;
        obj5 = obj1;
        obj1 = obj7;
        obj7 = obj21;
        obj4 = obj;
        obj = obj5;
        obj5 = obj9;
        if (true) goto _L15; else goto _L14
_L14:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        Object obj10 = obj3;
        Object obj22 = obj2;
        obj2 = obj;
        Object obj35 = obj1;
        obj = obj5;
        obj1 = obj2;
        obj2 = obj6;
        obj3 = obj4;
        obj4 = obj10;
        obj5 = obj22;
        obj6 = obj7;
        obj7 = obj35;
          goto _L16
_L3:
        android.os.Bundle bundle = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
        Object obj11 = obj3;
        Object obj23 = obj2;
        obj1 = obj;
        obj = obj5;
        obj2 = obj6;
        obj3 = obj4;
        obj4 = obj11;
        obj5 = obj23;
        obj6 = obj7;
        obj7 = bundle;
          goto _L16
_L4:
        Object obj12 = (ah)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, ah.CREATOR);
        obj7 = obj6;
        obj6 = obj12;
        Object obj36 = obj5;
        obj5 = obj3;
        obj12 = obj2;
        obj2 = obj;
        Object obj24 = obj1;
        obj = obj36;
        obj1 = obj2;
        obj2 = obj7;
        obj3 = obj4;
        obj4 = obj5;
        obj5 = obj12;
        obj7 = obj24;
          goto _L16
_L5:
        ak ak1 = (ak)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, ak.CREATOR);
        obj2 = obj6;
        obj6 = obj3;
        Object obj25 = obj1;
        obj1 = obj;
        obj = obj5;
        obj3 = obj4;
        obj4 = obj6;
        obj5 = ak1;
        obj6 = obj7;
        obj7 = obj25;
          goto _L16
_L6:
        s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        Object obj13 = obj3;
        Object obj26 = obj2;
        obj2 = obj;
        Object obj37 = obj1;
        obj = obj5;
        obj1 = obj2;
        obj2 = obj6;
        obj3 = obj4;
        obj4 = obj13;
        obj5 = obj26;
        obj6 = obj7;
        obj7 = obj37;
          goto _L16
_L7:
        ApplicationInfo applicationinfo = (ApplicationInfo)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, ApplicationInfo.CREATOR);
        obj3 = obj4;
        Object obj27 = obj1;
        obj1 = obj;
        Object obj38 = obj2;
        obj = obj5;
        obj2 = obj6;
        obj4 = applicationinfo;
        obj5 = obj38;
        obj6 = obj7;
        obj7 = obj27;
          goto _L16
_L8:
        packageinfo = (PackageInfo)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, PackageInfo.CREATOR);
        Object obj14 = obj3;
        obj3 = obj4;
        obj4 = obj5;
        obj5 = obj2;
        obj2 = obj;
        Object obj28 = obj1;
        obj = obj4;
        obj1 = obj2;
        obj2 = obj6;
        obj4 = obj14;
        obj6 = obj7;
        obj7 = obj28;
          goto _L16
_L9:
        obj4 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        Object obj15 = obj3;
        Object obj29 = obj2;
        obj2 = obj;
        Object obj39 = obj1;
        obj = obj5;
        obj1 = obj2;
        obj2 = obj6;
        obj3 = obj4;
        obj4 = obj15;
        obj5 = obj29;
        obj6 = obj7;
        obj7 = obj39;
          goto _L16
_L10:
        s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        Object obj16 = obj3;
        Object obj30 = obj2;
        obj2 = obj;
        Object obj40 = obj1;
        obj = obj5;
        obj1 = obj2;
        obj2 = obj6;
        obj3 = obj4;
        obj4 = obj16;
        obj5 = obj30;
        obj6 = obj7;
        obj7 = obj40;
          goto _L16
_L11:
        Object obj17 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        obj6 = obj7;
        obj7 = obj17;
        obj17 = obj3;
        Object obj31 = obj2;
        obj2 = obj;
        Object obj41 = obj1;
        obj = obj5;
        obj1 = obj2;
        obj2 = obj7;
        obj3 = obj4;
        obj4 = obj17;
        obj5 = obj31;
        obj7 = obj41;
          goto _L16
_L12:
        obj = (dx)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, dx.CREATOR);
        Object obj18 = obj1;
        obj1 = obj;
        Object obj32 = obj3;
        Object obj42 = obj2;
        obj = obj5;
        obj2 = obj6;
        obj3 = obj4;
        obj4 = obj32;
        obj5 = obj42;
        obj6 = obj7;
        obj7 = obj18;
          goto _L16
        obj5 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
        Object obj19 = obj3;
        Object obj33 = obj2;
        obj2 = obj;
        Object obj43 = obj1;
        obj = obj5;
        obj1 = obj2;
        obj2 = obj6;
        obj3 = obj4;
        obj4 = obj19;
        obj5 = obj33;
        obj6 = obj7;
        obj7 = obj43;
          goto _L16
        if (parcel.dataPosition() != j)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
        } else
        {
            return new cx(i, ((android.os.Bundle) (obj1)), ((ah) (obj7)), ((ak) (obj2)), s1, ((ApplicationInfo) (obj3)), packageinfo, ((String) (obj4)), s, ((String) (obj6)), ((dx) (obj)), ((android.os.Bundle) (obj5)));
        }
    }

    public cx[] k(int i)
    {
        return new cx[i];
    }

    public Object[] newArray(int i)
    {
        return k(i);
    }
}
