// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.DataHolderCreator;

// Referenced classes of package com.google.android.gms.internal:
//            ki, kk

public interface kh
    extends IInterface
{
    public static abstract class a extends Binder
        implements kh
    {

        public IBinder asBinder()
        {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
            throws RemoteException
        {
            switch (i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, j);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.wearable.internal.IWearableListener");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                if (parcel.readInt() != 0)
                {
                    parcel = DataHolder.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                M(parcel);
                return true;

            case 2: // '\002'
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                if (parcel.readInt() != 0)
                {
                    parcel = (ki)ki.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                a(parcel);
                return true;

            case 3: // '\003'
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                if (parcel.readInt() != 0)
                {
                    parcel = (kk)kk.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                a(parcel);
                return true;

            case 4: // '\004'
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                break;
            }
            if (parcel.readInt() != 0)
            {
                parcel = (kk)kk.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            b(parcel);
            return true;
        }

        public a()
        {
            attachInterface(this, "com.google.android.gms.wearable.internal.IWearableListener");
        }
    }


    public abstract void M(DataHolder dataholder)
        throws RemoteException;

    public abstract void a(ki ki)
        throws RemoteException;

    public abstract void a(kk kk)
        throws RemoteException;

    public abstract void b(kk kk)
        throws RemoteException;
}
