// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.location;

import android.location.Location;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.location:
//            a

private static class kn
    implements a
{

    private IBinder kn;

    public IBinder asBinder()
    {
        return kn;
    }

    public void onLocationChanged(Location location)
        throws RemoteException
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.location.ILocationListener");
        if (location == null)
        {
            break MISSING_BLOCK_LABEL_44;
        }
        parcel.writeInt(1);
        location.writeToParcel(parcel, 0);
_L1:
        kn.transact(1, parcel, null, 1);
        parcel.recycle();
        return;
        parcel.writeInt(0);
          goto _L1
        location;
        parcel.recycle();
        throw location;
    }

    (IBinder ibinder)
    {
        kn = ibinder;
    }
}
