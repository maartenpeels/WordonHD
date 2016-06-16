// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;

// Referenced classes of package com.google.android.gms.internal:
//            ah, bs, ak, al, 
//            ai

public interface br
    extends IInterface
{
    public static abstract class a extends Binder
        implements br
    {

        public static br j(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            if (iinterface != null && (iinterface instanceof br))
            {
                return (br)iinterface;
            } else
            {
                return new a(ibinder);
            }
        }

        public IBinder asBinder()
        {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int k)
            throws RemoteException
        {
            d d3 = null;
            ah ah3 = null;
            switch (i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, k);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                d3 = com.google.android.gms.dynamic.d.a.K(parcel.readStrongBinder());
                ak ak1;
                if (parcel.readInt() != 0)
                {
                    ak1 = ak.CREATOR.b(parcel);
                } else
                {
                    ak1 = null;
                }
                if (parcel.readInt() != 0)
                {
                    ah3 = ah.CREATOR.a(parcel);
                }
                a(d3, ak1, ah3, parcel.readString(), bs.a.k(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 2: // '\002'
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                parcel = getView();
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

            case 3: // '\003'
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                d d1 = com.google.android.gms.dynamic.d.a.K(parcel.readStrongBinder());
                ah ah1;
                if (parcel.readInt() != 0)
                {
                    ah1 = ah.CREATOR.a(parcel);
                } else
                {
                    ah1 = null;
                }
                a(d1, ah1, parcel.readString(), bs.a.k(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 4: // '\004'
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                showInterstitial();
                parcel1.writeNoException();
                return true;

            case 5: // '\005'
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                destroy();
                parcel1.writeNoException();
                return true;

            case 6: // '\006'
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                d d4 = com.google.android.gms.dynamic.d.a.K(parcel.readStrongBinder());
                ak ak2;
                Object obj;
                if (parcel.readInt() != 0)
                {
                    ak2 = ak.CREATOR.b(parcel);
                } else
                {
                    ak2 = null;
                }
                obj = d3;
                if (parcel.readInt() != 0)
                {
                    obj = ah.CREATOR.a(parcel);
                }
                a(d4, ak2, ((ah) (obj)), parcel.readString(), parcel.readString(), bs.a.k(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 7: // '\007'
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                d d2 = com.google.android.gms.dynamic.d.a.K(parcel.readStrongBinder());
                ah ah2;
                if (parcel.readInt() != 0)
                {
                    ah2 = ah.CREATOR.a(parcel);
                } else
                {
                    ah2 = null;
                }
                a(d2, ah2, parcel.readString(), parcel.readString(), bs.a.k(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 8: // '\b'
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                pause();
                parcel1.writeNoException();
                return true;

            case 9: // '\t'
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                resume();
                parcel1.writeNoException();
                return true;
            }
        }

        public a()
        {
            attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
        }
    }

    private static class a.a
        implements br
    {

        private IBinder kn;

        public void a(d d1, ah ah1, String s, bs bs1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            if (d1 == null) goto _L2; else goto _L1
_L1:
            d1 = d1.asBinder();
_L5:
            parcel.writeStrongBinder(d1);
            if (ah1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            ah1.writeToParcel(parcel, 0);
_L6:
            parcel.writeString(s);
            if (bs1 == null)
            {
                break MISSING_BLOCK_LABEL_135;
            }
            d1 = bs1.asBinder();
_L7:
            parcel.writeStrongBinder(d1);
            kn.transact(3, parcel, parcel1, 0);
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
            d1 = null;
              goto _L7
        }

        public void a(d d1, ah ah1, String s, String s1, bs bs1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            if (d1 == null) goto _L2; else goto _L1
_L1:
            d1 = d1.asBinder();
_L5:
            parcel.writeStrongBinder(d1);
            if (ah1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            ah1.writeToParcel(parcel, 0);
_L6:
            parcel.writeString(s);
            parcel.writeString(s1);
            if (bs1 == null)
            {
                break MISSING_BLOCK_LABEL_143;
            }
            d1 = bs1.asBinder();
_L7:
            parcel.writeStrongBinder(d1);
            kn.transact(7, parcel, parcel1, 0);
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
            d1 = null;
              goto _L7
        }

        public void a(d d1, ak ak1, ah ah1, String s, bs bs1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            if (d1 == null) goto _L2; else goto _L1
_L1:
            d1 = d1.asBinder();
_L7:
            parcel.writeStrongBinder(d1);
            if (ak1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            ak1.writeToParcel(parcel, 0);
_L8:
            if (ah1 == null) goto _L6; else goto _L5
_L5:
            parcel.writeInt(1);
            ah1.writeToParcel(parcel, 0);
_L9:
            parcel.writeString(s);
            if (bs1 == null)
            {
                break MISSING_BLOCK_LABEL_162;
            }
            d1 = bs1.asBinder();
_L10:
            parcel.writeStrongBinder(d1);
            kn.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            d1 = null;
              goto _L7
_L4:
            parcel.writeInt(0);
              goto _L8
            d1;
            parcel1.recycle();
            parcel.recycle();
            throw d1;
_L6:
            parcel.writeInt(0);
              goto _L9
            d1 = null;
              goto _L10
        }

        public void a(d d1, ak ak1, ah ah1, String s, String s1, bs bs1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            if (d1 == null) goto _L2; else goto _L1
_L1:
            d1 = d1.asBinder();
_L7:
            parcel.writeStrongBinder(d1);
            if (ak1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            ak1.writeToParcel(parcel, 0);
_L8:
            if (ah1 == null) goto _L6; else goto _L5
_L5:
            parcel.writeInt(1);
            ah1.writeToParcel(parcel, 0);
_L9:
            parcel.writeString(s);
            parcel.writeString(s1);
            if (bs1 == null)
            {
                break MISSING_BLOCK_LABEL_170;
            }
            d1 = bs1.asBinder();
_L10:
            parcel.writeStrongBinder(d1);
            kn.transact(6, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            d1 = null;
              goto _L7
_L4:
            parcel.writeInt(0);
              goto _L8
            d1;
            parcel1.recycle();
            parcel.recycle();
            throw d1;
_L6:
            parcel.writeInt(0);
              goto _L9
            d1 = null;
              goto _L10
        }

        public IBinder asBinder()
        {
            return kn;
        }

        public void destroy()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
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

        public d getView()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            d d1;
            parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            kn.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            d1 = com.google.android.gms.dynamic.d.a.K(parcel1.readStrongBinder());
            parcel1.recycle();
            parcel.recycle();
            return d1;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void pause()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
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

        public void resume()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
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

        public void showInterstitial()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            kn.transact(4, parcel, parcel1, 0);
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

        a.a(IBinder ibinder)
        {
            kn = ibinder;
        }
    }


    public abstract void a(d d, ah ah, String s, bs bs)
        throws RemoteException;

    public abstract void a(d d, ah ah, String s, String s1, bs bs)
        throws RemoteException;

    public abstract void a(d d, ak ak, ah ah, String s, bs bs)
        throws RemoteException;

    public abstract void a(d d, ak ak, ah ah, String s, String s1, bs bs)
        throws RemoteException;

    public abstract void destroy()
        throws RemoteException;

    public abstract d getView()
        throws RemoteException;

    public abstract void pause()
        throws RemoteException;

    public abstract void resume()
        throws RemoteException;

    public abstract void showInterstitial()
        throws RemoteException;
}
