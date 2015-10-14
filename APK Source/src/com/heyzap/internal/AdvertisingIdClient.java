// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;

// Referenced classes of package com.heyzap.internal:
//            Logger

public final class AdvertisingIdClient
{
    public static final class AdInfo
    {

        private final String advertisingId;
        private final boolean limitAdTrackingEnabled;

        public String getId()
        {
            return advertisingId;
        }

        public boolean isLimitAdTrackingEnabled()
        {
            return limitAdTrackingEnabled;
        }

        AdInfo(String s, boolean flag)
        {
            advertisingId = s;
            limitAdTrackingEnabled = flag;
        }
    }

    private static final class AdvertisingConnection
        implements ServiceConnection
    {

        private final LinkedBlockingQueue queue;
        boolean retrieved;

        public IBinder getBinder()
            throws InterruptedException
        {
            if (retrieved)
            {
                throw new IllegalStateException();
            } else
            {
                retrieved = true;
                return (IBinder)queue.take();
            }
        }

        public void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            try
            {
                queue.put(ibinder);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (ComponentName componentname)
            {
                Logger.trace(componentname);
            }
        }

        public void onServiceDisconnected(ComponentName componentname)
        {
        }

        private AdvertisingConnection()
        {
            retrieved = false;
            queue = new LinkedBlockingQueue(1);
        }

    }

    private static final class AdvertisingInterface
        implements IInterface
    {

        private IBinder binder;

        public IBinder asBinder()
        {
            return binder;
        }

        public String getId()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            String s;
            parcel.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            binder.transact(1, parcel, parcel1, 0);
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

        public boolean isLimitAdTrackingEnabled(boolean flag)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            int i;
            if (flag)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            parcel.writeInt(i);
            binder.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
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

        public AdvertisingInterface(IBinder ibinder)
        {
            binder = ibinder;
        }
    }


    public AdvertisingIdClient()
    {
    }

    public static AdInfo getAdvertisingIdInfo(Context context)
        throws Exception
    {
        AdvertisingConnection advertisingconnection;
        if (Looper.myLooper() == Looper.getMainLooper())
        {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        Object obj;
        try
        {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            throw context;
        }
        advertisingconnection = new AdvertisingConnection();
        obj = new Intent("com.google.android.gms.ads.identifier.service.START");
        ((Intent) (obj)).setPackage("com.google.android.gms");
        if (!context.bindService(((Intent) (obj)), advertisingconnection, 1))
        {
            break MISSING_BLOCK_LABEL_116;
        }
        obj = new AdvertisingInterface(advertisingconnection.getBinder());
        obj = new AdInfo(((AdvertisingInterface) (obj)).getId(), ((AdvertisingInterface) (obj)).isLimitAdTrackingEnabled(true));
        context.unbindService(advertisingconnection);
        return ((AdInfo) (obj));
        Object obj1;
        obj1;
        throw obj1;
        obj1;
        context.unbindService(advertisingconnection);
        throw obj1;
        throw new IOException("Google Play connection failed");
    }
}
