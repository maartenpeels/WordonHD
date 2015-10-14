// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.app.PendingIntent;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.DriveId;

// Referenced classes of package com.google.android.gms.drive.internal:
//            AddEventListenerRequest

public class a
    implements android.os.Parcelable.Creator
{

    public a()
    {
    }

    static void a(AddEventListenerRequest addeventlistenerrequest, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.c(parcel, 1, addeventlistenerrequest.xH);
        b.a(parcel, 2, addeventlistenerrequest.Ew, i, false);
        b.c(parcel, 3, addeventlistenerrequest.ES);
        b.a(parcel, 4, addeventlistenerrequest.ET, i, false);
        b.F(parcel, j);
    }

    public AddEventListenerRequest C(Parcel parcel)
    {
        int k = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        DriveId driveid = null;
        int i = 0;
        int j = 0;
        PendingIntent pendingintent = null;
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
                    driveid = (DriveId)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, DriveId.CREATOR);
                    break;

                case 3: // '\003'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 4: // '\004'
                    pendingintent = (PendingIntent)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, PendingIntent.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != k)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a((new StringBuilder()).append("Overread allowed size end=").append(k).toString(), parcel);
            } else
            {
                return new AddEventListenerRequest(i, driveid, j, pendingintent);
            }
        } while (true);
    }

    public AddEventListenerRequest[] ag(int i)
    {
        return new AddEventListenerRequest[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return C(parcel);
    }

    public Object[] newArray(int i)
    {
        return ag(i);
    }
}
