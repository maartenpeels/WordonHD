// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.location;

import android.location.Criteria;
import android.location.Location;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package com.urbanairship.location:
//            ILocationService

public abstract class attachInterface extends Binder
    implements ILocationService
{

    public static ILocationService a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.urbanairship.location.ILocationService");
        class Proxy
            implements ILocationService
        {

            private IBinder a;

            public final Location a()
            {
                Parcel parcel;
                Parcel parcel1;
                parcel = Parcel.obtain();
                parcel1 = Parcel.obtain();
                parcel.writeInterfaceToken("com.urbanairship.location.ILocationService");
                a.transact(1, parcel, parcel1, 0);
                parcel1.readException();
                if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
                Location location = (Location)Location.CREATOR.createFromParcel(parcel1);
_L4:
                parcel1.recycle();
                parcel.recycle();
                return location;
_L2:
                location = null;
                if (true) goto _L4; else goto _L3
_L3:
                Exception exception;
                exception;
                parcel1.recycle();
                parcel.recycle();
                throw exception;
            }

            public final void a(Criteria criteria)
            {
                Parcel parcel;
                Parcel parcel1;
                parcel = Parcel.obtain();
                parcel1 = Parcel.obtain();
                parcel.writeInterfaceToken("com.urbanairship.location.ILocationService");
                if (criteria == null)
                {
                    break MISSING_BLOCK_LABEL_56;
                }
                parcel.writeInt(1);
                criteria.writeToParcel(parcel, 0);
_L1:
                a.transact(4, parcel, parcel1, 0);
                parcel1.readException();
                parcel1.recycle();
                parcel.recycle();
                return;
                parcel.writeInt(0);
                  goto _L1
                criteria;
                parcel1.recycle();
                parcel.recycle();
                throw criteria;
            }

            public final void a(Location location, int i, int j)
            {
                Parcel parcel;
                Parcel parcel1;
                parcel = Parcel.obtain();
                parcel1 = Parcel.obtain();
                parcel.writeInterfaceToken("com.urbanairship.location.ILocationService");
                if (location == null)
                {
                    break MISSING_BLOCK_LABEL_78;
                }
                parcel.writeInt(1);
                location.writeToParcel(parcel, 0);
_L1:
                parcel.writeInt(i);
                parcel.writeInt(j);
                a.transact(2, parcel, parcel1, 0);
                parcel1.readException();
                parcel1.recycle();
                parcel.recycle();
                return;
                parcel.writeInt(0);
                  goto _L1
                location;
                parcel1.recycle();
                parcel.recycle();
                throw location;
            }

            public IBinder asBinder()
            {
                return a;
            }

            public final Criteria b()
            {
                Parcel parcel;
                Parcel parcel1;
                parcel = Parcel.obtain();
                parcel1 = Parcel.obtain();
                parcel.writeInterfaceToken("com.urbanairship.location.ILocationService");
                a.transact(3, parcel, parcel1, 0);
                parcel1.readException();
                if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
                Criteria criteria = (Criteria)Criteria.CREATOR.createFromParcel(parcel1);
_L4:
                parcel1.recycle();
                parcel.recycle();
                return criteria;
_L2:
                criteria = null;
                if (true) goto _L4; else goto _L3
_L3:
                Exception exception;
                exception;
                parcel1.recycle();
                parcel.recycle();
                throw exception;
            }

            public final void b(Criteria criteria)
            {
                Parcel parcel;
                Parcel parcel1;
                parcel = Parcel.obtain();
                parcel1 = Parcel.obtain();
                parcel.writeInterfaceToken("com.urbanairship.location.ILocationService");
                if (criteria == null)
                {
                    break MISSING_BLOCK_LABEL_57;
                }
                parcel.writeInt(1);
                criteria.writeToParcel(parcel, 0);
_L1:
                a.transact(8, parcel, parcel1, 0);
                parcel1.readException();
                parcel1.recycle();
                parcel.recycle();
                return;
                parcel.writeInt(0);
                  goto _L1
                criteria;
                parcel1.recycle();
                parcel.recycle();
                throw criteria;
            }

            public final void c()
            {
                Parcel parcel;
                Parcel parcel1;
                parcel = Parcel.obtain();
                parcel1 = Parcel.obtain();
                parcel.writeInterfaceToken("com.urbanairship.location.ILocationService");
                a.transact(5, parcel, parcel1, 0);
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

            public final String d()
            {
                Parcel parcel;
                Parcel parcel1;
                parcel = Parcel.obtain();
                parcel1 = Parcel.obtain();
                String s;
                parcel.writeInterfaceToken("com.urbanairship.location.ILocationService");
                a.transact(6, parcel, parcel1, 0);
                parcel1.readException();
                s = parcel1.readString();
                parcel1.recycle();
                parcel.recycle();
                return s;
                Exception exception;
                exception;
                parcel1.recycle();
                parcel.recycle();
                throw exception;
            }

            public final String e()
            {
                Parcel parcel;
                Parcel parcel1;
                parcel = Parcel.obtain();
                parcel1 = Parcel.obtain();
                String s;
                parcel.writeInterfaceToken("com.urbanairship.location.ILocationService");
                a.transact(7, parcel, parcel1, 0);
                parcel1.readException();
                s = parcel1.readString();
                parcel1.recycle();
                parcel.recycle();
                return s;
                Exception exception;
                exception;
                parcel1.recycle();
                parcel.recycle();
                throw exception;
            }

            Proxy(IBinder ibinder)
            {
                a = ibinder;
            }
        }

        if (iinterface != null && (iinterface instanceof ILocationService))
        {
            return (ILocationService)iinterface;
        } else
        {
            return new Proxy(ibinder);
        }
    }

    public IBinder asBinder()
    {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.urbanairship.location.ILocationService");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.urbanairship.location.ILocationService");
            parcel = a();
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

        case 2: // '\002'
            parcel.enforceInterface("com.urbanairship.location.ILocationService");
            Location location;
            if (parcel.readInt() != 0)
            {
                location = (Location)Location.CREATOR.ateFromParcel(parcel);
            } else
            {
                location = null;
            }
            a(location, parcel.readInt(), parcel.readInt());
            parcel1.writeNoException();
            return true;

        case 3: // '\003'
            parcel.enforceInterface("com.urbanairship.location.ILocationService");
            parcel = b();
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
            parcel.enforceInterface("com.urbanairship.location.ILocationService");
            if (parcel.readInt() != 0)
            {
                parcel = (Criteria)Criteria.CREATOR.ateFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            a(parcel);
            parcel1.writeNoException();
            return true;

        case 5: // '\005'
            parcel.enforceInterface("com.urbanairship.location.ILocationService");
            c();
            parcel1.writeNoException();
            return true;

        case 6: // '\006'
            parcel.enforceInterface("com.urbanairship.location.ILocationService");
            parcel = d();
            parcel1.writeNoException();
            parcel1.writeString(parcel);
            return true;

        case 7: // '\007'
            parcel.enforceInterface("com.urbanairship.location.ILocationService");
            parcel = e();
            parcel1.writeNoException();
            parcel1.writeString(parcel);
            return true;

        case 8: // '\b'
            parcel.enforceInterface("com.urbanairship.location.ILocationService");
            break;
        }
        if (parcel.readInt() != 0)
        {
            parcel = (Criteria)Criteria.CREATOR.ateFromParcel(parcel);
        } else
        {
            parcel = null;
        }
        b(parcel);
        parcel1.writeNoException();
        return true;
    }

    public Proxy()
    {
        attachInterface(this, "com.urbanairship.location.ILocationService");
    }
}
