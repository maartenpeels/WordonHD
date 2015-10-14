// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.wallet.FullWalletRequest;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.NotifyTransactionStatusRequest;
import com.google.android.gms.wallet.d;

// Referenced classes of package com.google.android.gms.internal:
//            je, iv, jd

public interface jb
    extends IInterface
{
    public static abstract class a extends Binder
        implements jb
    {

        public static jb aU(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.wallet.internal.IOwService");
            if (iinterface != null && (iinterface instanceof jb))
            {
                return (jb)iinterface;
            } else
            {
                return new a(ibinder);
            }
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
            throws RemoteException
        {
            switch (i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, j);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.wallet.internal.IOwService");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                Bundle bundle;
                if (parcel.readInt() != 0)
                {
                    parcel1 = (MaskedWalletRequest)MaskedWalletRequest.CREATOR.createFromParcel(parcel);
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
                a(parcel1, bundle, je.a.aX(parcel.readStrongBinder()));
                return true;

            case 2: // '\002'
                parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                Bundle bundle1;
                if (parcel.readInt() != 0)
                {
                    parcel1 = (FullWalletRequest)FullWalletRequest.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel1 = null;
                }
                if (parcel.readInt() != 0)
                {
                    bundle1 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                } else
                {
                    bundle1 = null;
                }
                a(parcel1, bundle1, je.a.aX(parcel.readStrongBinder()));
                return true;

            case 3: // '\003'
                parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                String s = parcel.readString();
                String s1 = parcel.readString();
                if (parcel.readInt() != 0)
                {
                    parcel1 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel1 = null;
                }
                a(s, s1, parcel1, je.a.aX(parcel.readStrongBinder()));
                return true;

            case 4: // '\004'
                parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                if (parcel.readInt() != 0)
                {
                    parcel1 = (NotifyTransactionStatusRequest)NotifyTransactionStatusRequest.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel1 = null;
                }
                if (parcel.readInt() != 0)
                {
                    parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                a(parcel1, parcel);
                return true;

            case 5: // '\005'
                parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                if (parcel.readInt() != 0)
                {
                    parcel1 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel1 = null;
                }
                a(parcel1, je.a.aX(parcel.readStrongBinder()));
                return true;

            case 6: // '\006'
                parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                Bundle bundle2;
                if (parcel.readInt() != 0)
                {
                    parcel1 = (d)d.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel1 = null;
                }
                if (parcel.readInt() != 0)
                {
                    bundle2 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                } else
                {
                    bundle2 = null;
                }
                a(parcel1, bundle2, je.a.aX(parcel.readStrongBinder()));
                return true;

            case 7: // '\007'
                parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                Bundle bundle3;
                if (parcel.readInt() != 0)
                {
                    parcel1 = (MaskedWalletRequest)MaskedWalletRequest.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel1 = null;
                }
                if (parcel.readInt() != 0)
                {
                    bundle3 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                } else
                {
                    bundle3 = null;
                }
                a(parcel1, bundle3, jd.a.aW(parcel.readStrongBinder()));
                return true;

            case 8: // '\b'
                parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                break;
            }
            Bundle bundle4;
            if (parcel.readInt() != 0)
            {
                parcel1 = (iv)iv.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel1 = null;
            }
            if (parcel.readInt() != 0)
            {
                bundle4 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                bundle4 = null;
            }
            a(parcel1, bundle4, je.a.aX(parcel.readStrongBinder()));
            return true;
        }
    }

    private static class a.a
        implements jb
    {

        private IBinder kn;

        public void a(Bundle bundle, je je1)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
            if (bundle == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L3:
            if (je1 == null)
            {
                break MISSING_BLOCK_LABEL_75;
            }
            bundle = je1.asBinder();
_L4:
            parcel.writeStrongBinder(bundle);
            kn.transact(5, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            bundle;
            parcel.recycle();
            throw bundle;
            bundle = null;
              goto _L4
        }

        public void a(iv iv1, Bundle bundle, je je1)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
            if (iv1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            iv1.writeToParcel(parcel, 0);
_L5:
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            if (je1 == null)
            {
                break MISSING_BLOCK_LABEL_111;
            }
            iv1 = je1.asBinder();
_L7:
            parcel.writeStrongBinder(iv1);
            kn.transact(8, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L5
            iv1;
            parcel.recycle();
            throw iv1;
_L4:
            parcel.writeInt(0);
              goto _L6
            iv1 = null;
              goto _L7
        }

        public void a(FullWalletRequest fullwalletrequest, Bundle bundle, je je1)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
            if (fullwalletrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            fullwalletrequest.writeToParcel(parcel, 0);
_L5:
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            if (je1 == null)
            {
                break MISSING_BLOCK_LABEL_110;
            }
            fullwalletrequest = je1.asBinder();
_L7:
            parcel.writeStrongBinder(fullwalletrequest);
            kn.transact(2, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L5
            fullwalletrequest;
            parcel.recycle();
            throw fullwalletrequest;
_L4:
            parcel.writeInt(0);
              goto _L6
            fullwalletrequest = null;
              goto _L7
        }

        public void a(MaskedWalletRequest maskedwalletrequest, Bundle bundle, jd jd1)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
            if (maskedwalletrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            maskedwalletrequest.writeToParcel(parcel, 0);
_L5:
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            if (jd1 == null)
            {
                break MISSING_BLOCK_LABEL_111;
            }
            maskedwalletrequest = jd1.asBinder();
_L7:
            parcel.writeStrongBinder(maskedwalletrequest);
            kn.transact(7, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L5
            maskedwalletrequest;
            parcel.recycle();
            throw maskedwalletrequest;
_L4:
            parcel.writeInt(0);
              goto _L6
            maskedwalletrequest = null;
              goto _L7
        }

        public void a(MaskedWalletRequest maskedwalletrequest, Bundle bundle, je je1)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
            if (maskedwalletrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            maskedwalletrequest.writeToParcel(parcel, 0);
_L5:
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            if (je1 == null)
            {
                break MISSING_BLOCK_LABEL_110;
            }
            maskedwalletrequest = je1.asBinder();
_L7:
            parcel.writeStrongBinder(maskedwalletrequest);
            kn.transact(1, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L5
            maskedwalletrequest;
            parcel.recycle();
            throw maskedwalletrequest;
_L4:
            parcel.writeInt(0);
              goto _L6
            maskedwalletrequest = null;
              goto _L7
        }

        public void a(NotifyTransactionStatusRequest notifytransactionstatusrequest, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
            if (notifytransactionstatusrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            notifytransactionstatusrequest.writeToParcel(parcel, 0);
_L3:
            if (bundle == null)
            {
                break MISSING_BLOCK_LABEL_74;
            }
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L4:
            kn.transact(4, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            notifytransactionstatusrequest;
            parcel.recycle();
            throw notifytransactionstatusrequest;
            parcel.writeInt(0);
              goto _L4
        }

        public void a(d d1, Bundle bundle, je je1)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
            if (d1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            d1.writeToParcel(parcel, 0);
_L5:
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            if (je1 == null)
            {
                break MISSING_BLOCK_LABEL_111;
            }
            d1 = je1.asBinder();
_L7:
            parcel.writeStrongBinder(d1);
            kn.transact(6, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L5
            d1;
            parcel.recycle();
            throw d1;
_L4:
            parcel.writeInt(0);
              goto _L6
            d1 = null;
              goto _L7
        }

        public void a(String s, String s1, Bundle bundle, je je1)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
            parcel.writeString(s);
            parcel.writeString(s1);
            if (bundle == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L3:
            if (je1 == null)
            {
                break MISSING_BLOCK_LABEL_98;
            }
            s = je1.asBinder();
_L4:
            parcel.writeStrongBinder(s);
            kn.transact(3, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            s;
            parcel.recycle();
            throw s;
            s = null;
              goto _L4
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


    public abstract void a(Bundle bundle, je je)
        throws RemoteException;

    public abstract void a(iv iv, Bundle bundle, je je)
        throws RemoteException;

    public abstract void a(FullWalletRequest fullwalletrequest, Bundle bundle, je je)
        throws RemoteException;

    public abstract void a(MaskedWalletRequest maskedwalletrequest, Bundle bundle, jd jd)
        throws RemoteException;

    public abstract void a(MaskedWalletRequest maskedwalletrequest, Bundle bundle, je je)
        throws RemoteException;

    public abstract void a(NotifyTransactionStatusRequest notifytransactionstatusrequest, Bundle bundle)
        throws RemoteException;

    public abstract void a(d d, Bundle bundle, je je)
        throws RemoteException;

    public abstract void a(String s, String s1, Bundle bundle, je je)
        throws RemoteException;
}
