// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

// Referenced classes of package com.google.android.gms.drive.internal:
//            CloseContentsAndUpdateMetadataRequest

public class d
    implements android.os.Parcelable.Creator
{

    public d()
    {
    }

    static void a(CloseContentsAndUpdateMetadataRequest closecontentsandupdatemetadatarequest, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.c(parcel, 1, closecontentsandupdatemetadatarequest.xH);
        b.a(parcel, 2, closecontentsandupdatemetadatarequest.EV, i, false);
        b.a(parcel, 3, closecontentsandupdatemetadatarequest.EW, i, false);
        b.a(parcel, 4, closecontentsandupdatemetadatarequest.EX, i, false);
        b.F(parcel, j);
    }

    public CloseContentsAndUpdateMetadataRequest E(Parcel parcel)
    {
        MetadataBundle metadatabundle = null;
        int j = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        DriveId driveid = null;
        int i = 0;
        Contents contents = null;
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
                    driveid = (DriveId)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, DriveId.CREATOR);
                    break;

                case 3: // '\003'
                    metadatabundle = (MetadataBundle)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, MetadataBundle.CREATOR);
                    break;

                case 4: // '\004'
                    contents = (Contents)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, Contents.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new CloseContentsAndUpdateMetadataRequest(i, driveid, metadatabundle, contents);
            }
        } while (true);
    }

    public CloseContentsAndUpdateMetadataRequest[] ai(int i)
    {
        return new CloseContentsAndUpdateMetadataRequest[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return E(parcel);
    }

    public Object[] newArray(int i)
    {
        return ai(i);
    }
}
