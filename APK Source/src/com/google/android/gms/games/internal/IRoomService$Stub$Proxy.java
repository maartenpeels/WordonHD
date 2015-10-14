// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;

// Referenced classes of package com.google.android.gms.games.internal:
//            IRoomService, IRoomServiceCallbacks

private static class 
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
