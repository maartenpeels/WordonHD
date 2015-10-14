// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.ConflictEvent;

// Referenced classes of package com.google.android.gms.drive.internal:
//            OnEventResponse

public class ac
    implements android.os.Parcelable.Creator
{

    public ac()
    {
    }

    static void a(OnEventResponse oneventresponse, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.c(parcel, 1, oneventresponse.xH);
        b.c(parcel, 2, oneventresponse.ES);
        b.a(parcel, 3, oneventresponse.FH, i, false);
        b.a(parcel, 4, oneventresponse.FI, i, false);
        b.F(parcel, j);
    }

    public OnEventResponse Q(Parcel parcel)
    {
        ChangeEvent changeevent = null;
        int k = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        int j = 0;
        int i = 0;
        ConflictEvent conflictevent = null;
        do
        {
            if (parcel.dataPosition() < k)
            {
                int l = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.R(l))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 3: // '\003'
                    changeevent = (ChangeEvent)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, ChangeEvent.CREATOR);
                    break;

                case 4: // '\004'
                    conflictevent = (ConflictEvent)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, ConflictEvent.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != k)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(k).toString(), parcel);
            } else
            {
                return new OnEventResponse(i, j, changeevent, conflictevent);
            }
        } while (true);
    }

    public OnEventResponse[] au(int i)
    {
        return new OnEventResponse[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return Q(parcel);
    }

    public Object[] newArray(int i)
    {
        return au(i);
    }
}
