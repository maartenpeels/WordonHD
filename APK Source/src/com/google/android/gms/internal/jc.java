// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.c;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.wallet.fragment.WalletFragmentOptions;

// Referenced classes of package com.google.android.gms.internal:
//            ja, iz

public interface jc
    extends IInterface
{
    public static abstract class a extends Binder
        implements jc
    {

        public static jc aV(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.wallet.internal.IWalletDynamiteCreator");
            if (iinterface != null && (iinterface instanceof jc))
            {
                return (jc)iinterface;
            } else
            {
                return new a(ibinder);
            }
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
            throws RemoteException
        {
            d d;
            c c;
            switch (i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, j);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.wallet.internal.IWalletDynamiteCreator");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.wallet.internal.IWalletDynamiteCreator");
                d = com.google.android.gms.dynamic.d.a.K(parcel.readStrongBinder());
                c = com.google.android.gms.dynamic.c.a.J(parcel.readStrongBinder());
                break;
            }
            WalletFragmentOptions walletfragmentoptions;
            if (parcel.readInt() != 0)
            {
                walletfragmentoptions = (WalletFragmentOptions)WalletFragmentOptions.CREATOR.createFromParcel(parcel);
            } else
            {
                walletfragmentoptions = null;
            }
            parcel = a(d, c, walletfragmentoptions, ja.a.aT(parcel.readStrongBinder()));
            parcel1.writeNoException();
            if (parcel != null)
            {
                parcel = parcel.asBinder();
            } else
            {
                parcel = null;
            }
            parcel1.writeStrongBinder(parcel);
            return true;
        }
    }

    private static class a.a
        implements jc
    {

        private IBinder kn;

        public iz a(d d1, c c1, WalletFragmentOptions walletfragmentoptions, ja ja1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IWalletDynamiteCreator");
            if (d1 == null) goto _L2; else goto _L1
_L1:
            d1 = d1.asBinder();
_L7:
            parcel.writeStrongBinder(d1);
            if (c1 == null) goto _L4; else goto _L3
_L3:
            d1 = c1.asBinder();
_L8:
            parcel.writeStrongBinder(d1);
            if (walletfragmentoptions == null) goto _L6; else goto _L5
_L5:
            parcel.writeInt(1);
            walletfragmentoptions.writeToParcel(parcel, 0);
_L9:
            if (ja1 == null)
            {
                break MISSING_BLOCK_LABEL_161;
            }
            d1 = ja1.asBinder();
_L10:
            parcel.writeStrongBinder(d1);
            kn.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            d1 = iz.a.aS(parcel1.readStrongBinder());
            parcel1.recycle();
            parcel.recycle();
            return d1;
_L2:
            d1 = null;
              goto _L7
_L4:
            d1 = null;
              goto _L8
_L6:
            parcel.writeInt(0);
              goto _L9
            d1;
            parcel1.recycle();
            parcel.recycle();
            throw d1;
            d1 = null;
              goto _L10
        }

        public IBinder asBinder()
        {
            return kn;
        }

        a.a(IBinder ibinder)
        {
            kn = ibinder;
        }
    }


    public abstract iz a(d d, c c, WalletFragmentOptions walletfragmentoptions, ja ja)
        throws RemoteException;
}
