// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.internal:
//            ja

private static class kn
    implements ja
{

    private IBinder kn;

    public void a(int i, int j, Bundle bundle)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.wallet.fragment.internal.IWalletFragmentStateListener");
        parcel.writeInt(i);
        parcel.writeInt(j);
        if (bundle == null)
        {
            break MISSING_BLOCK_LABEL_78;
        }
        parcel.writeInt(1);
        bundle.writeToParcel(parcel, 0);
_L1:
        kn.transact(2, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
        parcel.writeInt(0);
          goto _L1
        bundle;
        parcel1.recycle();
        parcel.recycle();
        throw bundle;
    }

    public IBinder asBinder()
    {
        return kn;
    }

    (IBinder ibinder)
    {
        kn = ibinder;
    }
}
