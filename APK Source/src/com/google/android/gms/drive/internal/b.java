// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.drive.DriveId;

// Referenced classes of package com.google.android.gms.drive.internal:
//            AuthorizeAccessRequest

public class b
    implements android.os.Parcelable.Creator
{

    public b()
    {
    }

    static void a(AuthorizeAccessRequest authorizeaccessrequest, Parcel parcel, int i)
    {
        int j = com.google.android.gms.common.internal.safeparcel.b.p(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, authorizeaccessrequest.xH);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, authorizeaccessrequest.EU);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, authorizeaccessrequest.Ew, i, false);
        com.google.android.gms.common.internal.safeparcel.b.F(parcel, j);
    }

    public AuthorizeAccessRequest D(Parcel parcel)
    {
        int j = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        long l = 0L;
        int i = 0;
        DriveId driveid = null;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int k = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.R(k))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
                    break;

                case 1: // '\001'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, k);
                    break;

                case 3: // '\003'
                    driveid = (DriveId)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, DriveId.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new AuthorizeAccessRequest(i, l, driveid);
            }
        } while (true);
    }

    public AuthorizeAccessRequest[] ah(int i)
    {
        return new AuthorizeAccessRequest[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return D(parcel);
    }

    public Object[] newArray(int i)
    {
        return ah(i);
    }
}
