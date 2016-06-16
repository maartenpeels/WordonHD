// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.drive:
//            Contents, DriveId

public class a
    implements android.os.Parcelable.Creator
{

    public a()
    {
    }

    static void a(Contents contents, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.c(parcel, 1, contents.xH);
        b.a(parcel, 2, contents.Cj, i, false);
        b.c(parcel, 3, contents.Eu);
        b.c(parcel, 4, contents.Ev);
        b.a(parcel, 5, contents.Ew, i, false);
        b.F(parcel, j);
    }

    public Contents[] ac(int i)
    {
        return new Contents[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return y(parcel);
    }

    public Object[] newArray(int i)
    {
        return ac(i);
    }

    public Contents y(Parcel parcel)
    {
        Object obj;
        Object obj1;
        int i;
        int j;
        int k;
        int l;
        obj = null;
        j = 0;
        l = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        obj1 = null;
        i = 0;
        k = 0;
_L8:
        int i1;
        if (parcel.dataPosition() >= l)
        {
            break MISSING_BLOCK_LABEL_200;
        }
        i1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(i1);
        JVM INSTR tableswitch 1 5: default 72
    //                   1 97
    //                   2 116
    //                   3 138
    //                   4 157
    //                   5 176;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L6:
        break MISSING_BLOCK_LABEL_176;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
        Object obj2 = obj1;
        obj1 = obj;
        obj = obj2;
_L9:
        Object obj3 = obj;
        obj = obj1;
        obj1 = obj3;
        if (true) goto _L8; else goto _L7
_L7:
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        Object obj4 = obj;
        obj = obj1;
        obj1 = obj4;
          goto _L9
_L3:
        ParcelFileDescriptor parcelfiledescriptor = (ParcelFileDescriptor)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, ParcelFileDescriptor.CREATOR);
        obj = obj1;
        obj1 = parcelfiledescriptor;
          goto _L9
_L4:
        k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        Object obj5 = obj;
        obj = obj1;
        obj1 = obj5;
          goto _L9
_L5:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        Object obj6 = obj;
        obj = obj1;
        obj1 = obj6;
          goto _L9
        obj1 = (DriveId)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, DriveId.CREATOR);
        Object obj7 = obj;
        obj = obj1;
        obj1 = obj7;
          goto _L9
        if (parcel.dataPosition() != l)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a((new StringBuilder()).append("Overread allowed size end=").append(l).toString(), parcel);
        } else
        {
            return new Contents(j, ((ParcelFileDescriptor) (obj)), k, i, ((DriveId) (obj1)));
        }
    }
}
