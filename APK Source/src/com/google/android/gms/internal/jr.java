// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            jo, jp, ju

public class jr
    implements android.os.Parcelable.Creator
{

    public jr()
    {
    }

    static void a(jo jo1, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.c(parcel, 1, jo1.getVersionCode());
        b.a(parcel, 2, jo1.label, false);
        b.a(parcel, 3, jo1.adg, i, false);
        b.a(parcel, 4, jo1.type, false);
        b.a(parcel, 5, jo1.abJ, i, false);
        b.F(parcel, j);
    }

    public jo bt(Parcel parcel)
    {
        Object obj;
        Object obj1;
        Object obj2;
        jp jp1;
        int i;
        int j;
        obj = null;
        j = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        i = 0;
        obj2 = null;
        obj1 = null;
        jp1 = null;
_L8:
        int k;
        if (parcel.dataPosition() >= j)
        {
            break MISSING_BLOCK_LABEL_212;
        }
        k = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(k);
        JVM INSTR tableswitch 1 5: default 72
    //                   1 101
    //                   2 122
    //                   3 140
    //                   4 167
    //                   5 189;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L6:
        break MISSING_BLOCK_LABEL_189;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
        Object obj3 = obj2;
        obj2 = obj;
        obj = obj3;
_L9:
        Object obj4 = obj;
        obj = obj2;
        obj2 = obj4;
        if (true) goto _L8; else goto _L7
_L7:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
        Object obj5 = obj2;
        obj2 = obj;
        obj = obj5;
          goto _L9
_L3:
        String s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        obj = obj2;
        obj2 = s;
          goto _L9
_L4:
        jp1 = (jp)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, jp.CREATOR);
        Object obj6 = obj;
        obj = obj2;
        obj2 = obj6;
          goto _L9
_L5:
        String s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k);
        obj1 = obj2;
        obj2 = obj;
        obj = obj1;
        obj1 = s1;
          goto _L9
        ju ju1 = (ju)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, ju.CREATOR);
        obj2 = obj;
        obj = ju1;
          goto _L9
        if (parcel.dataPosition() != j)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
        } else
        {
            return new jo(i, ((String) (obj)), jp1, ((String) (obj1)), ((ju) (obj2)));
        }
    }

    public jo[] cH(int i)
    {
        return new jo[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return bt(parcel);
    }

    public Object[] newArray(int i)
    {
        return cH(i);
    }
}
