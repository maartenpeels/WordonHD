// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.internal:
//            hv, hu

public static abstract class a.kn extends Binder
    implements hv
{
    private static class a
        implements hv
    {

        private IBinder kn;

        public void a(hu hu1, Uri uri, Bundle bundle, boolean flag)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.panorama.internal.IPanoramaService");
            if (hu1 == null) goto _L2; else goto _L1
_L1:
            hu1 = hu1.asBinder();
_L8:
            parcel.writeStrongBinder(hu1);
            if (uri == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            uri.writeToParcel(parcel, 0);
_L9:
            if (bundle == null) goto _L6; else goto _L5
_L5:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
              goto _L7
_L10:
            int i;
            parcel.writeInt(i);
            kn.transact(1, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            hu1 = null;
              goto _L8
_L4:
            parcel.writeInt(0);
              goto _L9
            hu1;
            parcel.recycle();
            throw hu1;
_L6:
            parcel.writeInt(0);
              goto _L7
_L12:
            i = 0;
              goto _L10
_L7:
            if (!flag) goto _L12; else goto _L11
_L11:
            i = 1;
              goto _L10
        }

        public IBinder asBinder()
        {
            return kn;
        }

        a(IBinder ibinder)
        {
            kn = ibinder;
        }
    }


    public static hv aM(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.panorama.internal.IPanoramaService");
        if (iinterface != null && (iinterface instanceof hv))
        {
            return (hv)iinterface;
        } else
        {
            return new a(ibinder);
        }
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
        throws RemoteException
    {
        hu hu;
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.panorama.internal.IPanoramaService");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.panorama.internal.IPanoramaService");
            hu = aL(parcel.readStrongBinder());
            break;
        }
        Bundle bundle;
        boolean flag;
        if (parcel.readInt() != 0)
        {
            parcel1 = (Uri)Uri.CREATOR.createFromParcel(parcel);
        } else
        {
            parcel1 = null;
        }
        if (parcel.readInt() != 0)
        {
            bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
        } else
        {
            bundle = null;
        }
        if (parcel.readInt() != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a(hu, parcel1, bundle, flag);
        return true;
    }
}
