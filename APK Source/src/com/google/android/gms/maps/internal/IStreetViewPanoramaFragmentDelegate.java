// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
import com.google.android.gms.maps.StreetViewPanoramaOptionsCreator;

// Referenced classes of package com.google.android.gms.maps.internal:
//            IStreetViewPanoramaDelegate

public interface IStreetViewPanoramaFragmentDelegate
    extends IInterface
{
    public static abstract class a extends Binder
        implements IStreetViewPanoramaFragmentDelegate
    {

        public static IStreetViewPanoramaFragmentDelegate ay(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
            if (iinterface != null && (iinterface instanceof IStreetViewPanoramaFragmentDelegate))
            {
                return (IStreetViewPanoramaFragmentDelegate)iinterface;
            } else
            {
                return new a(ibinder);
            }
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
            throws RemoteException
        {
            boolean flag;
            switch (i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, j);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
                parcel = getStreetViewPanorama();
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

            case 2: // '\002'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
                d d2 = com.google.android.gms.dynamic.d.a.K(parcel.readStrongBinder());
                StreetViewPanoramaOptions streetviewpanoramaoptions;
                if (parcel.readInt() != 0)
                {
                    streetviewpanoramaoptions = StreetViewPanoramaOptions.CREATOR.createFromParcel(parcel);
                } else
                {
                    streetviewpanoramaoptions = null;
                }
                if (parcel.readInt() != 0)
                {
                    parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                onInflate(d2, streetviewpanoramaoptions, parcel);
                parcel1.writeNoException();
                return true;

            case 3: // '\003'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
                if (parcel.readInt() != 0)
                {
                    parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                onCreate(parcel);
                parcel1.writeNoException();
                return true;

            case 4: // '\004'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
                d d1 = com.google.android.gms.dynamic.d.a.K(parcel.readStrongBinder());
                d d3 = com.google.android.gms.dynamic.d.a.K(parcel.readStrongBinder());
                if (parcel.readInt() != 0)
                {
                    parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                parcel = onCreateView(d1, d3, parcel);
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

            case 5: // '\005'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
                onResume();
                parcel1.writeNoException();
                return true;

            case 6: // '\006'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
                onPause();
                parcel1.writeNoException();
                return true;

            case 7: // '\007'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
                onDestroyView();
                parcel1.writeNoException();
                return true;

            case 8: // '\b'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
                onDestroy();
                parcel1.writeNoException();
                return true;

            case 9: // '\t'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
                onLowMemory();
                parcel1.writeNoException();
                return true;

            case 10: // '\n'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
                if (parcel.readInt() != 0)
                {
                    parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                onSaveInstanceState(parcel);
                parcel1.writeNoException();
                if (parcel != null)
                {
                    parcel1.writeInt(1);
                    parcel.writeToParcel(parcel1, 1);
                } else
                {
                    parcel1.writeInt(0);
                }
                return true;

            case 11: // '\013'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
                flag = isReady();
                parcel1.writeNoException();
                break;
            }
            if (flag)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            parcel1.writeInt(i);
            return true;
        }
    }

    private static class a.a
        implements IStreetViewPanoramaFragmentDelegate
    {

        private IBinder kn;

        public IBinder asBinder()
        {
            return kn;
        }

        public IStreetViewPanoramaDelegate getStreetViewPanorama()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            IStreetViewPanoramaDelegate istreetviewpanoramadelegate;
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
            kn.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            istreetviewpanoramadelegate = IStreetViewPanoramaDelegate.a.ax(parcel1.readStrongBinder());
            parcel1.recycle();
            parcel.recycle();
            return istreetviewpanoramadelegate;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean isReady()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
            kn.transact(11, parcel, parcel1, 0);
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
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void onCreate(Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
            if (bundle == null)
            {
                break MISSING_BLOCK_LABEL_56;
            }
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L1:
            kn.transact(3, parcel, parcel1, 0);
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

        public d onCreateView(d d1, d d2, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
            if (d1 == null) goto _L2; else goto _L1
_L1:
            d1 = d1.asBinder();
_L7:
            parcel.writeStrongBinder(d1);
            if (d2 == null) goto _L4; else goto _L3
_L3:
            d1 = d2.asBinder();
_L8:
            parcel.writeStrongBinder(d1);
            if (bundle == null) goto _L6; else goto _L5
_L5:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L9:
            kn.transact(4, parcel, parcel1, 0);
            parcel1.readException();
            d1 = com.google.android.gms.dynamic.d.a.K(parcel1.readStrongBinder());
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
              goto _L7
        }

        public void onDestroy()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
            kn.transact(8, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void onDestroyView()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
            kn.transact(7, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void onInflate(d d1, StreetViewPanoramaOptions streetviewpanoramaoptions, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
            if (d1 == null) goto _L2; else goto _L1
_L1:
            d1 = d1.asBinder();
_L5:
            parcel.writeStrongBinder(d1);
            if (streetviewpanoramaoptions == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            streetviewpanoramaoptions.writeToParcel(parcel, 0);
_L6:
            if (bundle == null)
            {
                break MISSING_BLOCK_LABEL_127;
            }
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L7:
            kn.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            d1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            d1;
            parcel1.recycle();
            parcel.recycle();
            throw d1;
            parcel.writeInt(0);
              goto _L7
        }

        public void onLowMemory()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
            kn.transact(9, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void onPause()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
            kn.transact(6, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void onResume()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
            kn.transact(5, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void onSaveInstanceState(Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
            if (bundle == null)
            {
                break MISSING_BLOCK_LABEL_69;
            }
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L1:
            kn.transact(10, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() != 0)
            {
                bundle.readFromParcel(parcel1);
            }
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

        a.a(IBinder ibinder)
        {
            kn = ibinder;
        }
    }


    public abstract IStreetViewPanoramaDelegate getStreetViewPanorama()
        throws RemoteException;

    public abstract boolean isReady()
        throws RemoteException;

    public abstract void onCreate(Bundle bundle)
        throws RemoteException;

    public abstract d onCreateView(d d, d d1, Bundle bundle)
        throws RemoteException;

    public abstract void onDestroy()
        throws RemoteException;

    public abstract void onDestroyView()
        throws RemoteException;

    public abstract void onInflate(d d, StreetViewPanoramaOptions streetviewpanoramaoptions, Bundle bundle)
        throws RemoteException;

    public abstract void onLowMemory()
        throws RemoteException;

    public abstract void onPause()
        throws RemoteException;

    public abstract void onResume()
        throws RemoteException;

    public abstract void onSaveInstanceState(Bundle bundle)
        throws RemoteException;
}
