// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.wallet:
//            NotifyTransactionStatusRequest

public class m
    implements android.os.Parcelable.Creator
{

    public m()
    {
    }

    static void a(NotifyTransactionStatusRequest notifytransactionstatusrequest, Parcel parcel, int i)
    {
        i = b.p(parcel);
        b.c(parcel, 1, notifytransactionstatusrequest.xH);
        b.a(parcel, 2, notifytransactionstatusrequest.abh, false);
        b.c(parcel, 3, notifytransactionstatusrequest.status);
        b.a(parcel, 4, notifytransactionstatusrequest.ach, false);
        b.F(parcel, i);
    }

    public NotifyTransactionStatusRequest bi(Parcel parcel)
    {
        int k = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        String s = null;
        int i = 0;
        int j = 0;
        String s1 = null;
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
                    s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
                    break;

                case 3: // '\003'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 4: // '\004'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != k)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(k).toString(), parcel);
            } else
            {
                return new NotifyTransactionStatusRequest(i, s, j, s1);
            }
        } while (true);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return bi(parcel);
    }

    public NotifyTransactionStatusRequest[] cu(int i)
    {
        return new NotifyTransactionStatusRequest[i];
    }

    public Object[] newArray(int i)
    {
        return cu(i);
    }
}
