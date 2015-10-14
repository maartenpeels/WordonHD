// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

// Referenced classes of package com.google.android.gms.drive.internal:
//            CreateFileIntentSenderRequest

public class g
    implements android.os.Parcelable.Creator
{

    public g()
    {
    }

    static void a(CreateFileIntentSenderRequest createfileintentsenderrequest, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.c(parcel, 1, createfileintentsenderrequest.xH);
        b.a(parcel, 2, createfileintentsenderrequest.EZ, i, false);
        b.c(parcel, 3, createfileintentsenderrequest.Eu);
        b.a(parcel, 4, createfileintentsenderrequest.EB, false);
        b.a(parcel, 5, createfileintentsenderrequest.EC, i, false);
        b.F(parcel, j);
    }

    public CreateFileIntentSenderRequest H(Parcel parcel)
    {
        Object obj;
        String s;
        Object obj1;
        int i;
        int j;
        int k;
        k = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        obj1 = null;
        s = null;
        j = 0;
        i = 0;
        obj = null;
_L8:
        int l;
        if (parcel.dataPosition() >= k)
        {
            break MISSING_BLOCK_LABEL_214;
        }
        l = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(l);
        JVM INSTR tableswitch 1 5: default 72
    //                   1 101
    //                   2 122
    //                   3 146
    //                   4 167
    //                   5 187;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L6:
        break MISSING_BLOCK_LABEL_187;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
        Object obj2 = obj1;
        obj1 = obj;
        obj = obj2;
_L9:
        Object obj3 = obj;
        obj = obj1;
        obj1 = obj3;
        if (true) goto _L8; else goto _L7
_L7:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        Object obj4 = obj;
        obj = obj1;
        obj1 = obj4;
          goto _L9
_L3:
        MetadataBundle metadatabundle = (MetadataBundle)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, MetadataBundle.CREATOR);
        obj = obj1;
        obj1 = metadatabundle;
          goto _L9
_L4:
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        Object obj5 = obj;
        obj = obj1;
        obj1 = obj5;
          goto _L9
_L5:
        s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        Object obj6 = obj;
        obj = obj1;
        obj1 = obj6;
          goto _L9
        obj1 = (DriveId)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, DriveId.CREATOR);
        Object obj7 = obj;
        obj = obj1;
        obj1 = obj7;
          goto _L9
        if (parcel.dataPosition() != k)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(k).toString(), parcel);
        } else
        {
            return new CreateFileIntentSenderRequest(i, ((MetadataBundle) (obj)), j, s, ((DriveId) (obj1)));
        }
    }

    public CreateFileIntentSenderRequest[] al(int i)
    {
        return new CreateFileIntentSenderRequest[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return H(parcel);
    }

    public Object[] newArray(int i)
    {
        return al(i);
    }
}
