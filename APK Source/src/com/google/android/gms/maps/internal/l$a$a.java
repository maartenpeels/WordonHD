// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.internal.f;

// Referenced classes of package com.google.android.gms.maps.internal:
//            l

private static class kn
    implements l
{

    private IBinder kn;

    public boolean a(f f1)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IOnMarkerClickListener");
        if (f1 == null)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        f1 = f1.asBinder();
_L1:
        int i;
        parcel.writeStrongBinder(f1);
        kn.transact(1, parcel, parcel1, 0);
        parcel1.readException();
        i = parcel1.readInt();
        boolean flag;
        if (i != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        parcel1.recycle();
        parcel.recycle();
        return flag;
        f1 = null;
          goto _L1
        f1;
        parcel1.recycle();
        parcel.recycle();
        throw f1;
    }

    public IBinder asBinder()
    {
        return kn;
    }

    f(IBinder ibinder)
    {
        kn = ibinder;
    }
}
