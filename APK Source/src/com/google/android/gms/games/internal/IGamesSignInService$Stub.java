// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.games.internal:
//            IGamesSignInService, IGamesSignInCallbacks

public static abstract class attachInterface extends Binder
    implements IGamesSignInService
{
    private static class Proxy
        implements IGamesSignInService
    {

        private IBinder kn;

        public void a(IGamesSignInCallbacks igamessignincallbacks, String s, String s1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
            if (igamessignincallbacks == null)
            {
                break MISSING_BLOCK_LABEL_80;
            }
            igamessignincallbacks = igamessignincallbacks.asBinder();
_L1:
            parcel.writeStrongBinder(igamessignincallbacks);
            parcel.writeString(s);
            parcel.writeString(s1);
            kn.transact(5006, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            igamessignincallbacks = null;
              goto _L1
            igamessignincallbacks;
            parcel1.recycle();
            parcel.recycle();
            throw igamessignincallbacks;
        }

        public void a(IGamesSignInCallbacks igamessignincallbacks, String s, String s1, String s2)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
            if (igamessignincallbacks == null)
            {
                break MISSING_BLOCK_LABEL_87;
            }
            igamessignincallbacks = igamessignincallbacks.asBinder();
_L1:
            parcel.writeStrongBinder(igamessignincallbacks);
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeString(s2);
            kn.transact(5005, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            igamessignincallbacks = null;
              goto _L1
            igamessignincallbacks;
            parcel1.recycle();
            parcel.recycle();
            throw igamessignincallbacks;
        }

        public void a(IGamesSignInCallbacks igamessignincallbacks, String s, String s1, String as[])
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
            if (igamessignincallbacks == null)
            {
                break MISSING_BLOCK_LABEL_87;
            }
            igamessignincallbacks = igamessignincallbacks.asBinder();
_L1:
            parcel.writeStrongBinder(igamessignincallbacks);
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeStringArray(as);
            kn.transact(5004, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            igamessignincallbacks = null;
              goto _L1
            igamessignincallbacks;
            parcel1.recycle();
            parcel.recycle();
            throw igamessignincallbacks;
        }

        public void a(IGamesSignInCallbacks igamessignincallbacks, String s, String s1, String as[], String s2)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
            if (igamessignincallbacks == null)
            {
                break MISSING_BLOCK_LABEL_94;
            }
            igamessignincallbacks = igamessignincallbacks.asBinder();
_L1:
            parcel.writeStrongBinder(igamessignincallbacks);
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeStringArray(as);
            parcel.writeString(s2);
            kn.transact(5003, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            igamessignincallbacks = null;
              goto _L1
            igamessignincallbacks;
            parcel1.recycle();
            parcel.recycle();
            throw igamessignincallbacks;
        }

        public String aK(String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
            parcel.writeString(s);
            kn.transact(5001, parcel, parcel1, 0);
            parcel1.readException();
            s = parcel1.readString();
            parcel1.recycle();
            parcel.recycle();
            return s;
            s;
            parcel1.recycle();
            parcel.recycle();
            throw s;
        }

        public String aL(String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
            parcel.writeString(s);
            kn.transact(5002, parcel, parcel1, 0);
            parcel1.readException();
            s = parcel1.readString();
            parcel1.recycle();
            parcel.recycle();
            return s;
            s;
            parcel1.recycle();
            parcel.recycle();
            throw s;
        }

        public IBinder asBinder()
        {
            return kn;
        }

        public void b(IGamesSignInCallbacks igamessignincallbacks, String s, String s1, String s2)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
            if (igamessignincallbacks == null)
            {
                break MISSING_BLOCK_LABEL_87;
            }
            igamessignincallbacks = igamessignincallbacks.asBinder();
_L1:
            parcel.writeStrongBinder(igamessignincallbacks);
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeString(s2);
            kn.transact(5007, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            igamessignincallbacks = null;
              goto _L1
            igamessignincallbacks;
            parcel1.recycle();
            parcel.recycle();
            throw igamessignincallbacks;
        }

        public void b(IGamesSignInCallbacks igamessignincallbacks, String s, String s1, String as[])
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
            if (igamessignincallbacks == null)
            {
                break MISSING_BLOCK_LABEL_87;
            }
            igamessignincallbacks = igamessignincallbacks.asBinder();
_L1:
            parcel.writeStrongBinder(igamessignincallbacks);
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeStringArray(as);
            kn.transact(5008, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            igamessignincallbacks = null;
              goto _L1
            igamessignincallbacks;
            parcel1.recycle();
            parcel.recycle();
            throw igamessignincallbacks;
        }

        public String f(String s, boolean flag)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
            parcel.writeString(s);
            int i;
            if (flag)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            parcel.writeInt(i);
            kn.transact(5009, parcel, parcel1, 0);
            parcel1.readException();
            s = parcel1.readString();
            parcel1.recycle();
            parcel.recycle();
            return s;
            s;
            parcel1.recycle();
            parcel.recycle();
            throw s;
        }

        public void l(String s, String s1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
            parcel.writeString(s);
            parcel.writeString(s1);
            kn.transact(9001, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            s;
            parcel1.recycle();
            parcel.recycle();
            throw s;
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
            parcel1.writeString("com.google.android.gms.games.internal.IGamesSignInService");
            return true;

        case 5001: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
            parcel = aK(parcel.readString());
            parcel1.writeNoException();
            parcel1.writeString(parcel);
            return true;

        case 5002: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
            parcel = aL(parcel.readString());
            parcel1.writeNoException();
            parcel1.writeString(parcel);
            return true;

        case 5009: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
            String s = parcel.readString();
            boolean flag;
            if (parcel.readInt() != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            parcel = f(s, flag);
            parcel1.writeNoException();
            parcel1.writeString(parcel);
            return true;

        case 5003: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
            a(b.O(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.createStringArray(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 5004: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
            a(b.O(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.createStringArray());
            parcel1.writeNoException();
            return true;

        case 5005: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
            a(b.O(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 5006: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
            a(b.O(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 5007: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
            b(b.O(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 5008: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
            b(b.O(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.createStringArray());
            parcel1.writeNoException();
            return true;

        case 9001: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
            l(parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            return true;
        }
    }

    public Proxy()
    {
        attachInterface(this, "com.google.android.gms.games.internal.IGamesSignInService");
    }
}
