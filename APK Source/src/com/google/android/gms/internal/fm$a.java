// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.internal:
//            fm, fl

public static abstract class a.kn extends Binder
    implements fm
{
    private static class a
        implements fm
    {

        private IBinder kn;

        public void a(fl fl1, int i1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            fl1 = fl1.asBinder();
_L1:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            kn.transact(4, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            fl1 = null;
              goto _L1
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
        }

        public void a(fl fl1, int i1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null)
            {
                break MISSING_BLOCK_LABEL_78;
            }
            fl1 = fl1.asBinder();
_L1:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            kn.transact(3, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            fl1 = null;
              goto _L1
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
        }

        public void a(fl fl1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null) goto _L2; else goto _L1
_L1:
            fl1 = fl1.asBinder();
_L5:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            kn.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            fl1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
              goto _L5
        }

        public void a(fl fl1, int i1, String s, IBinder ibinder, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null) goto _L2; else goto _L1
_L1:
            fl1 = fl1.asBinder();
_L5:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            parcel.writeStrongBinder(ibinder);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            kn.transact(19, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            fl1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
              goto _L5
        }

        public void a(fl fl1, int i1, String s, String s1, String as[])
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null)
            {
                break MISSING_BLOCK_LABEL_93;
            }
            fl1 = fl1.asBinder();
_L1:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeStringArray(as);
            kn.transact(10, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            fl1 = null;
              goto _L1
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
        }

        public void a(fl fl1, int i1, String s, String s1, String as[], String s2, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null) goto _L2; else goto _L1
_L1:
            fl1 = fl1.asBinder();
_L5:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeStringArray(as);
            parcel.writeString(s2);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            kn.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            fl1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
              goto _L5
        }

        public void a(fl fl1, int i1, String s, String s1, String as[], String s2, IBinder ibinder, 
                String s3, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null) goto _L2; else goto _L1
_L1:
            fl1 = fl1.asBinder();
_L5:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeStringArray(as);
            parcel.writeString(s2);
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s3);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            kn.transact(9, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            fl1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
              goto _L5
        }

        public void a(fl fl1, int i1, String s, String as[], String s1, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null) goto _L2; else goto _L1
_L1:
            fl1 = fl1.asBinder();
_L5:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            parcel.writeStringArray(as);
            parcel.writeString(s1);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            kn.transact(20, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            fl1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
              goto _L5
        }

        public IBinder asBinder()
        {
            return kn;
        }

        public void b(fl fl1, int i1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null)
            {
                break MISSING_BLOCK_LABEL_79;
            }
            fl1 = fl1.asBinder();
_L1:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            kn.transact(21, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            fl1 = null;
              goto _L1
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
        }

        public void b(fl fl1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null) goto _L2; else goto _L1
_L1:
            fl1 = fl1.asBinder();
_L5:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            kn.transact(5, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            fl1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
              goto _L5
        }

        public void b(fl fl1, int i1, String s, String s1, String as[])
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null)
            {
                break MISSING_BLOCK_LABEL_93;
            }
            fl1 = fl1.asBinder();
_L1:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeStringArray(as);
            kn.transact(28, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            fl1 = null;
              goto _L1
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
        }

        public void c(fl fl1, int i1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null)
            {
                break MISSING_BLOCK_LABEL_79;
            }
            fl1 = fl1.asBinder();
_L1:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            kn.transact(22, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            fl1 = null;
              goto _L1
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
        }

        public void c(fl fl1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null) goto _L2; else goto _L1
_L1:
            fl1 = fl1.asBinder();
_L5:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            kn.transact(6, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            fl1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
              goto _L5
        }

        public void d(fl fl1, int i1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null)
            {
                break MISSING_BLOCK_LABEL_79;
            }
            fl1 = fl1.asBinder();
_L1:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            kn.transact(24, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            fl1 = null;
              goto _L1
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
        }

        public void d(fl fl1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null) goto _L2; else goto _L1
_L1:
            fl1 = fl1.asBinder();
_L5:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            kn.transact(7, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            fl1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
              goto _L5
        }

        public void e(fl fl1, int i1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null)
            {
                break MISSING_BLOCK_LABEL_79;
            }
            fl1 = fl1.asBinder();
_L1:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            kn.transact(26, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            fl1 = null;
              goto _L1
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
        }

        public void e(fl fl1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null) goto _L2; else goto _L1
_L1:
            fl1 = fl1.asBinder();
_L5:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            kn.transact(8, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            fl1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
              goto _L5
        }

        public void f(fl fl1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null) goto _L2; else goto _L1
_L1:
            fl1 = fl1.asBinder();
_L5:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            kn.transact(11, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            fl1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
              goto _L5
        }

        public void g(fl fl1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null) goto _L2; else goto _L1
_L1:
            fl1 = fl1.asBinder();
_L5:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            kn.transact(12, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            fl1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
              goto _L5
        }

        public void h(fl fl1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null) goto _L2; else goto _L1
_L1:
            fl1 = fl1.asBinder();
_L5:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            kn.transact(13, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            fl1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
              goto _L5
        }

        public void i(fl fl1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null) goto _L2; else goto _L1
_L1:
            fl1 = fl1.asBinder();
_L5:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            kn.transact(14, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            fl1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
              goto _L5
        }

        public void j(fl fl1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null) goto _L2; else goto _L1
_L1:
            fl1 = fl1.asBinder();
_L5:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            kn.transact(15, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            fl1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
              goto _L5
        }

        public void k(fl fl1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null) goto _L2; else goto _L1
_L1:
            fl1 = fl1.asBinder();
_L5:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            kn.transact(16, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            fl1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
              goto _L5
        }

        public void l(fl fl1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null) goto _L2; else goto _L1
_L1:
            fl1 = fl1.asBinder();
_L5:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            kn.transact(17, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            fl1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
              goto _L5
        }

        public void m(fl fl1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null) goto _L2; else goto _L1
_L1:
            fl1 = fl1.asBinder();
_L5:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            kn.transact(18, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            fl1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
              goto _L5
        }

        public void n(fl fl1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null) goto _L2; else goto _L1
_L1:
            fl1 = fl1.asBinder();
_L5:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            kn.transact(23, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            fl1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
              goto _L5
        }

        public void o(fl fl1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null) goto _L2; else goto _L1
_L1:
            fl1 = fl1.asBinder();
_L5:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            kn.transact(25, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            fl1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
              goto _L5
        }

        public void p(fl fl1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (fl1 == null) goto _L2; else goto _L1
_L1:
            fl1 = fl1.asBinder();
_L5:
            parcel.writeStrongBinder(fl1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            kn.transact(27, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            fl1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            fl1;
            parcel1.recycle();
            parcel.recycle();
            throw fl1;
              goto _L5
        }

        a(IBinder ibinder)
        {
            kn = ibinder;
        }
    }


    public static fm C(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (iinterface != null && (iinterface instanceof fm))
        {
            return (fm)iinterface;
        } else
        {
            return new a(ibinder);
        }
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
        throws RemoteException
    {
        Object obj = null;
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.common.internal.IGmsServiceBroker");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            obj = B(parcel.readStrongBinder());
            i = parcel.readInt();
            String s = parcel.readString();
            String s19 = parcel.readString();
            String as1[] = parcel.createStringArray();
            String s23 = parcel.readString();
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            a(((fl) (obj)), i, s, s19, as1, s23, parcel);
            parcel1.writeNoException();
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            obj = B(parcel.readStrongBinder());
            i = parcel.readInt();
            String s1 = parcel.readString();
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            a(((fl) (obj)), i, s1, parcel);
            parcel1.writeNoException();
            return true;

        case 3: // '\003'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            a(B(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 4: // '\004'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            a(B(parcel.readStrongBinder()), parcel.readInt());
            parcel1.writeNoException();
            return true;

        case 5: // '\005'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            obj = B(parcel.readStrongBinder());
            i = parcel.readInt();
            String s2 = parcel.readString();
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            b(((fl) (obj)), i, s2, parcel);
            parcel1.writeNoException();
            return true;

        case 6: // '\006'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            obj = B(parcel.readStrongBinder());
            i = parcel.readInt();
            String s3 = parcel.readString();
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            c(((fl) (obj)), i, s3, parcel);
            parcel1.writeNoException();
            return true;

        case 7: // '\007'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            obj = B(parcel.readStrongBinder());
            i = parcel.readInt();
            String s4 = parcel.readString();
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            d(((fl) (obj)), i, s4, parcel);
            parcel1.writeNoException();
            return true;

        case 8: // '\b'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            obj = B(parcel.readStrongBinder());
            i = parcel.readInt();
            String s5 = parcel.readString();
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            e(((fl) (obj)), i, s5, parcel);
            parcel1.writeNoException();
            return true;

        case 9: // '\t'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            fl fl13 = B(parcel.readStrongBinder());
            i = parcel.readInt();
            String s20 = parcel.readString();
            String s21 = parcel.readString();
            String as2[] = parcel.createStringArray();
            String s24 = parcel.readString();
            IBinder ibinder1 = parcel.readStrongBinder();
            String s25 = parcel.readString();
            if (parcel.readInt() != 0)
            {
                obj = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            }
            a(fl13, i, s20, s21, as2, s24, ibinder1, s25, ((Bundle) (obj)));
            parcel1.writeNoException();
            return true;

        case 10: // '\n'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            a(B(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArray());
            parcel1.writeNoException();
            return true;

        case 11: // '\013'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            fl fl = B(parcel.readStrongBinder());
            i = parcel.readInt();
            String s6 = parcel.readString();
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            f(fl, i, s6, parcel);
            parcel1.writeNoException();
            return true;

        case 12: // '\f'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            fl fl1 = B(parcel.readStrongBinder());
            i = parcel.readInt();
            String s7 = parcel.readString();
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            g(fl1, i, s7, parcel);
            parcel1.writeNoException();
            return true;

        case 13: // '\r'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            fl fl2 = B(parcel.readStrongBinder());
            i = parcel.readInt();
            String s8 = parcel.readString();
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            h(fl2, i, s8, parcel);
            parcel1.writeNoException();
            return true;

        case 14: // '\016'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            fl fl3 = B(parcel.readStrongBinder());
            i = parcel.readInt();
            String s9 = parcel.readString();
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            i(fl3, i, s9, parcel);
            parcel1.writeNoException();
            return true;

        case 15: // '\017'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            fl fl4 = B(parcel.readStrongBinder());
            i = parcel.readInt();
            String s10 = parcel.readString();
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            j(fl4, i, s10, parcel);
            parcel1.writeNoException();
            return true;

        case 16: // '\020'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            fl fl5 = B(parcel.readStrongBinder());
            i = parcel.readInt();
            String s11 = parcel.readString();
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            k(fl5, i, s11, parcel);
            parcel1.writeNoException();
            return true;

        case 17: // '\021'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            fl fl6 = B(parcel.readStrongBinder());
            i = parcel.readInt();
            String s12 = parcel.readString();
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            l(fl6, i, s12, parcel);
            parcel1.writeNoException();
            return true;

        case 18: // '\022'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            fl fl7 = B(parcel.readStrongBinder());
            i = parcel.readInt();
            String s13 = parcel.readString();
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            m(fl7, i, s13, parcel);
            parcel1.writeNoException();
            return true;

        case 19: // '\023'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            fl fl8 = B(parcel.readStrongBinder());
            i = parcel.readInt();
            String s14 = parcel.readString();
            IBinder ibinder = parcel.readStrongBinder();
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            a(fl8, i, s14, ibinder, parcel);
            parcel1.writeNoException();
            return true;

        case 20: // '\024'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            fl fl9 = B(parcel.readStrongBinder());
            i = parcel.readInt();
            String s15 = parcel.readString();
            String as[] = parcel.createStringArray();
            String s22 = parcel.readString();
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            a(fl9, i, s15, as, s22, parcel);
            parcel1.writeNoException();
            return true;

        case 21: // '\025'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            b(B(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 22: // '\026'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            c(B(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 23: // '\027'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            fl fl10 = B(parcel.readStrongBinder());
            i = parcel.readInt();
            String s16 = parcel.readString();
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            n(fl10, i, s16, parcel);
            parcel1.writeNoException();
            return true;

        case 24: // '\030'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            d(B(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 25: // '\031'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            fl fl11 = B(parcel.readStrongBinder());
            i = parcel.readInt();
            String s17 = parcel.readString();
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            o(fl11, i, s17, parcel);
            parcel1.writeNoException();
            return true;

        case 26: // '\032'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            e(B(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 27: // '\033'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            fl fl12 = B(parcel.readStrongBinder());
            i = parcel.readInt();
            String s18 = parcel.readString();
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            p(fl12, i, s18, parcel);
            parcel1.writeNoException();
            return true;

        case 28: // '\034'
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            b(B(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArray());
            parcel1.writeNoException();
            return true;
        }
    }
}
