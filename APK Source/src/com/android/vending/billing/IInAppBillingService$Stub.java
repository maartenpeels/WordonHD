// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.android.vending.billing;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package com.android.vending.billing:
//            IInAppBillingService

public abstract class attachInterface extends Binder
    implements IInAppBillingService
{

    public static IInAppBillingService a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.android.vending.billing.IInAppBillingService");
        class Proxy
            implements IInAppBillingService
        {

            private IBinder a;

            public final int a(int i, String s, String s1)
            {
                Parcel parcel;
                Parcel parcel1;
                parcel = Parcel.obtain();
                parcel1 = Parcel.obtain();
                parcel.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                parcel.writeInt(i);
                parcel.writeString(s);
                parcel.writeString(s1);
                a.transact(1, parcel, parcel1, 0);
                parcel1.readException();
                i = parcel1.readInt();
                parcel1.recycle();
                parcel.recycle();
                return i;
                s;
                parcel1.recycle();
                parcel.recycle();
                throw s;
            }

            public final Bundle a(int i, String s, String s1, Bundle bundle)
            {
                Parcel parcel;
                Parcel parcel1;
                parcel = Parcel.obtain();
                parcel1 = Parcel.obtain();
                parcel.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                parcel.writeInt(i);
                parcel.writeString(s);
                parcel.writeString(s1);
                if (bundle == null) goto _L2; else goto _L1
_L1:
                parcel.writeInt(1);
                bundle.writeToParcel(parcel, 0);
_L3:
                a.transact(2, parcel, parcel1, 0);
                parcel1.readException();
                if (parcel1.readInt() == 0)
                {
                    break MISSING_BLOCK_LABEL_131;
                }
                s = (Bundle)Bundle.CREATOR.createFromParcel(parcel1);
_L4:
                parcel1.recycle();
                parcel.recycle();
                return s;
_L2:
                parcel.writeInt(0);
                  goto _L3
                s;
                parcel1.recycle();
                parcel.recycle();
                throw s;
                s = null;
                  goto _L4
            }

            public final Bundle a(int i, String s, String s1, String s2)
            {
                Parcel parcel;
                Parcel parcel1;
                parcel = Parcel.obtain();
                parcel1 = Parcel.obtain();
                parcel.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                parcel.writeInt(i);
                parcel.writeString(s);
                parcel.writeString(s1);
                parcel.writeString(s2);
                a.transact(4, parcel, parcel1, 0);
                parcel1.readException();
                if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
                s = (Bundle)Bundle.CREATOR.createFromParcel(parcel1);
_L4:
                parcel1.recycle();
                parcel.recycle();
                return s;
_L2:
                s = null;
                if (true) goto _L4; else goto _L3
_L3:
                s;
                parcel1.recycle();
                parcel.recycle();
                throw s;
            }

            public final Bundle a(int i, String s, String s1, String s2, String s3)
            {
                Parcel parcel;
                Parcel parcel1;
                parcel = Parcel.obtain();
                parcel1 = Parcel.obtain();
                parcel.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                parcel.writeInt(i);
                parcel.writeString(s);
                parcel.writeString(s1);
                parcel.writeString(s2);
                parcel.writeString(s3);
                a.transact(3, parcel, parcel1, 0);
                parcel1.readException();
                if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
                s = (Bundle)Bundle.CREATOR.createFromParcel(parcel1);
_L4:
                parcel1.recycle();
                parcel.recycle();
                return s;
_L2:
                s = null;
                if (true) goto _L4; else goto _L3
_L3:
                s;
                parcel1.recycle();
                parcel.recycle();
                throw s;
            }

            public IBinder asBinder()
            {
                return a;
            }

            public final int b(int i, String s, String s1)
            {
                Parcel parcel;
                Parcel parcel1;
                parcel = Parcel.obtain();
                parcel1 = Parcel.obtain();
                parcel.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                parcel.writeInt(i);
                parcel.writeString(s);
                parcel.writeString(s1);
                a.transact(5, parcel, parcel1, 0);
                parcel1.readException();
                i = parcel1.readInt();
                parcel1.recycle();
                parcel.recycle();
                return i;
                s;
                parcel1.recycle();
                parcel.recycle();
                throw s;
            }

            Proxy(IBinder ibinder)
            {
                a = ibinder;
            }
        }

        if (iinterface != null && (iinterface instanceof IInAppBillingService))
        {
            return (IInAppBillingService)iinterface;
        } else
        {
            return new Proxy(ibinder);
        }
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.android.vending.billing.IInAppBillingService");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
            i = a(parcel.readInt(), parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            parcel1.writeInt(i);
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
            i = parcel.readInt();
            String s = parcel.readString();
            String s1 = parcel.readString();
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.romParcel(parcel);
            } else
            {
                parcel = null;
            }
            parcel = a(i, s, s1, parcel);
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

        case 3: // '\003'
            parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
            parcel = a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
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

        case 4: // '\004'
            parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
            parcel = a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString());
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

        case 5: // '\005'
            parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
            i = b(parcel.readInt(), parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            parcel1.writeInt(i);
            return true;
        }
    }

    public Proxy()
    {
        attachInterface(this, "com.android.vending.billing.IInAppBillingService");
    }
}
