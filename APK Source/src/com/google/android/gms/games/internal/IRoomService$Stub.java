// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.DataHolderCreator;

// Referenced classes of package com.google.android.gms.games.internal:
//            IRoomService, IRoomServiceCallbacks

public static abstract class attachInterface extends Binder
    implements IRoomService
{
    private static class Proxy
        implements IRoomService
    {

        private IBinder kn;

        public void B(boolean flag)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            int i;
            if (flag)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            parcel.writeInt(i);
            kn.transact(1008, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(IBinder ibinder, IRoomServiceCallbacks iroomservicecallbacks)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            parcel.writeStrongBinder(ibinder);
            if (iroomservicecallbacks == null)
            {
                break MISSING_BLOCK_LABEL_52;
            }
            ibinder = iroomservicecallbacks.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            kn.transact(1001, parcel, null, 1);
            parcel.recycle();
            return;
            ibinder = null;
              goto _L1
            ibinder;
            parcel.recycle();
            throw ibinder;
        }

        public void a(DataHolder dataholder, boolean flag)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            if (dataholder == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            dataholder.writeToParcel(parcel, 0);
              goto _L3
_L5:
            int i;
            parcel.writeInt(i);
            kn.transact(1006, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            dataholder;
            parcel.recycle();
            throw dataholder;
_L3:
            while (!flag) 
            {
                i = 0;
                continue; /* Loop/switch isn't completed */
            }
            i = 1;
            if (true) goto _L5; else goto _L4
_L4:
        }

        public void a(String s, String s1, String s2)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeString(s2);
            kn.transact(1004, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void a(byte abyte0[], String s, int i)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            parcel.writeByteArray(abyte0);
            parcel.writeString(s);
            parcel.writeInt(i);
            kn.transact(1009, parcel, null, 1);
            parcel.recycle();
            return;
            abyte0;
            parcel.recycle();
            throw abyte0;
        }

        public void a(byte abyte0[], String as[])
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            parcel.writeByteArray(abyte0);
            parcel.writeStringArray(as);
            kn.transact(1010, parcel, null, 1);
            parcel.recycle();
            return;
            abyte0;
            parcel.recycle();
            throw abyte0;
        }

        public void aM(String s)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            parcel.writeString(s);
            kn.transact(1013, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void aN(String s)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            parcel.writeString(s);
            kn.transact(1014, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public IBinder asBinder()
        {
            return kn;
        }

        public void gM()
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            kn.transact(1002, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void gN()
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            kn.transact(1003, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void gO()
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            kn.transact(1005, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void gP()
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            kn.transact(1007, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void p(String s, int i)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            parcel.writeString(s);
            parcel.writeInt(i);
            kn.transact(1011, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void q(String s, int i)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            parcel.writeString(s);
            parcel.writeInt(i);
            kn.transact(1012, parcel, null, 1);
            parcel.recycle();
            return;
            s;
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
            parcel1.writeString("com.google.android.gms.games.internal.IRoomService");
            return true;

        case 1001: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            a(parcel.readStrongBinder(), cks.Stub.Q(parcel.readStrongBinder()));
            return true;

        case 1002: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            gM();
            return true;

        case 1003: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            gN();
            return true;

        case 1004: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            a(parcel.readString(), parcel.readString(), parcel.readString());
            return true;

        case 1005: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            gO();
            return true;

        case 1006: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            boolean flag;
            if (parcel.readInt() != 0)
            {
                parcel1 = DataHolder.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel1 = null;
            }
            if (parcel.readInt() != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            a(parcel1, flag);
            return true;

        case 1007: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            gP();
            return true;

        case 1008: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            boolean flag1;
            if (parcel.readInt() != 0)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            B(flag1);
            return true;

        case 1009: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            a(parcel.createByteArray(), parcel.readString(), parcel.readInt());
            return true;

        case 1010: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            a(parcel.createByteArray(), parcel.createStringArray());
            return true;

        case 1011: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            p(parcel.readString(), parcel.readInt());
            return true;

        case 1012: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            q(parcel.readString(), parcel.readInt());
            return true;

        case 1013: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            aM(parcel.readString());
            return true;

        case 1014: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            aN(parcel.readString());
            return true;
        }
    }

    public cks()
    {
        attachInterface(this, "com.google.android.gms.games.internal.IRoomService");
    }
}
