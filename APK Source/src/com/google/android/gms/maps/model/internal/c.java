// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.LatLngBoundsCreator;
import com.google.android.gms.maps.model.LatLngCreator;

public interface c
    extends IInterface
{
    public static abstract class a extends Binder
        implements c
    {

        public static c aD(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
            if (iinterface != null && (iinterface instanceof c))
            {
                return (c)iinterface;
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
                parcel1.writeString("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                remove();
                parcel1.writeNoException();
                return true;

            case 2: // '\002'
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                parcel = getId();
                parcel1.writeNoException();
                parcel1.writeString(parcel);
                return true;

            case 3: // '\003'
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                if (parcel.readInt() != 0)
                {
                    parcel = LatLng.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                setPosition(parcel);
                parcel1.writeNoException();
                return true;

            case 4: // '\004'
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                parcel = getPosition();
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
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                setDimensions(parcel.readFloat());
                parcel1.writeNoException();
                return true;

            case 6: // '\006'
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                a(parcel.readFloat(), parcel.readFloat());
                parcel1.writeNoException();
                return true;

            case 7: // '\007'
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                float f = getWidth();
                parcel1.writeNoException();
                parcel1.writeFloat(f);
                return true;

            case 8: // '\b'
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                float f1 = getHeight();
                parcel1.writeNoException();
                parcel1.writeFloat(f1);
                return true;

            case 9: // '\t'
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                if (parcel.readInt() != 0)
                {
                    parcel = LatLngBounds.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                setPositionFromBounds(parcel);
                parcel1.writeNoException();
                return true;

            case 10: // '\n'
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                parcel = getBounds();
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
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                setBearing(parcel.readFloat());
                parcel1.writeNoException();
                return true;

            case 12: // '\f'
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                float f2 = getBearing();
                parcel1.writeNoException();
                parcel1.writeFloat(f2);
                return true;

            case 13: // '\r'
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                setZIndex(parcel.readFloat());
                parcel1.writeNoException();
                return true;

            case 14: // '\016'
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                float f3 = getZIndex();
                parcel1.writeNoException();
                parcel1.writeFloat(f3);
                return true;

            case 15: // '\017'
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                boolean flag;
                if (parcel.readInt() != 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                setVisible(flag);
                parcel1.writeNoException();
                return true;

            case 16: // '\020'
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                boolean flag1 = isVisible();
                parcel1.writeNoException();
                if (flag1)
                {
                    i = 1;
                } else
                {
                    i = 0;
                }
                parcel1.writeInt(i);
                return true;

            case 17: // '\021'
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                setTransparency(parcel.readFloat());
                parcel1.writeNoException();
                return true;

            case 18: // '\022'
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                float f4 = getTransparency();
                parcel1.writeNoException();
                parcel1.writeFloat(f4);
                return true;

            case 19: // '\023'
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                boolean flag2 = a(aD(parcel.readStrongBinder()));
                parcel1.writeNoException();
                if (flag2)
                {
                    i = 1;
                } else
                {
                    i = 0;
                }
                parcel1.writeInt(i);
                return true;

            case 20: // '\024'
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                i = hashCodeRemote();
                parcel1.writeNoException();
                parcel1.writeInt(i);
                return true;

            case 21: // '\025'
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                k(com.google.android.gms.dynamic.d.a.K(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;
            }
        }
    }

    private static class a.a
        implements c
    {

        private IBinder kn;

        public void a(float f, float f1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
            parcel.writeFloat(f);
            parcel.writeFloat(f1);
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

        public boolean a(c c1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
            if (c1 == null)
            {
                break MISSING_BLOCK_LABEL_74;
            }
            c1 = c1.asBinder();
_L1:
            int i;
            parcel.writeStrongBinder(c1);
            kn.transact(19, parcel, parcel1, 0);
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
            c1 = null;
              goto _L1
            c1;
            parcel1.recycle();
            parcel.recycle();
            throw c1;
        }

        public IBinder asBinder()
        {
            return kn;
        }

        public float getBearing()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            float f;
            parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
            kn.transact(12, parcel, parcel1, 0);
            parcel1.readException();
            f = parcel1.readFloat();
            parcel1.recycle();
            parcel.recycle();
            return f;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public LatLngBounds getBounds()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
            kn.transact(10, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            LatLngBounds latlngbounds = LatLngBounds.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return latlngbounds;
_L2:
            latlngbounds = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public float getHeight()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            float f;
            parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
            kn.transact(8, parcel, parcel1, 0);
            parcel1.readException();
            f = parcel1.readFloat();
            parcel1.recycle();
            parcel.recycle();
            return f;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public String getId()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            String s;
            parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
            kn.transact(2, parcel, parcel1, 0);
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

        public LatLng getPosition()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
            kn.transact(4, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            LatLng latlng = LatLng.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return latlng;
_L2:
            latlng = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public float getTransparency()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            float f;
            parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
            kn.transact(18, parcel, parcel1, 0);
            parcel1.readException();
            f = parcel1.readFloat();
            parcel1.recycle();
            parcel.recycle();
            return f;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public float getWidth()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            float f;
            parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
            kn.transact(7, parcel, parcel1, 0);
            parcel1.readException();
            f = parcel1.readFloat();
            parcel1.recycle();
            parcel.recycle();
            return f;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public float getZIndex()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            float f;
            parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
            kn.transact(14, parcel, parcel1, 0);
            parcel1.readException();
            f = parcel1.readFloat();
            parcel1.recycle();
            parcel.recycle();
            return f;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public int hashCodeRemote()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
            kn.transact(20, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            parcel1.recycle();
            parcel.recycle();
            return i;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean isVisible()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
            kn.transact(16, parcel, parcel1, 0);
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

        public void k(d d1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
            if (d1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            d1 = d1.asBinder();
_L1:
            parcel.writeStrongBinder(d1);
            kn.transact(21, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            d1 = null;
              goto _L1
            d1;
            parcel1.recycle();
            parcel.recycle();
            throw d1;
        }

        public void remove()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
            kn.transact(1, parcel, parcel1, 0);
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

        public void setBearing(float f)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
            parcel.writeFloat(f);
            kn.transact(11, parcel, parcel1, 0);
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

        public void setDimensions(float f)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
            parcel.writeFloat(f);
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

        public void setPosition(LatLng latlng)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
            if (latlng == null)
            {
                break MISSING_BLOCK_LABEL_56;
            }
            parcel.writeInt(1);
            latlng.writeToParcel(parcel, 0);
_L1:
            kn.transact(3, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            latlng;
            parcel1.recycle();
            parcel.recycle();
            throw latlng;
        }

        public void setPositionFromBounds(LatLngBounds latlngbounds)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
            if (latlngbounds == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            latlngbounds.writeToParcel(parcel, 0);
_L1:
            kn.transact(9, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            latlngbounds;
            parcel1.recycle();
            parcel.recycle();
            throw latlngbounds;
        }

        public void setTransparency(float f)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
            parcel.writeFloat(f);
            kn.transact(17, parcel, parcel1, 0);
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

        public void setVisible(boolean flag)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
            int i;
            if (flag)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            parcel.writeInt(i);
            kn.transact(15, parcel, parcel1, 0);
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

        public void setZIndex(float f)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
            parcel.writeFloat(f);
            kn.transact(13, parcel, parcel1, 0);
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


    public abstract void a(float f, float f1)
        throws RemoteException;

    public abstract boolean a(c c1)
        throws RemoteException;

    public abstract float getBearing()
        throws RemoteException;

    public abstract LatLngBounds getBounds()
        throws RemoteException;

    public abstract float getHeight()
        throws RemoteException;

    public abstract String getId()
        throws RemoteException;

    public abstract LatLng getPosition()
        throws RemoteException;

    public abstract float getTransparency()
        throws RemoteException;

    public abstract float getWidth()
        throws RemoteException;

    public abstract float getZIndex()
        throws RemoteException;

    public abstract int hashCodeRemote()
        throws RemoteException;

    public abstract boolean isVisible()
        throws RemoteException;

    public abstract void k(d d)
        throws RemoteException;

    public abstract void remove()
        throws RemoteException;

    public abstract void setBearing(float f)
        throws RemoteException;

    public abstract void setDimensions(float f)
        throws RemoteException;

    public abstract void setPosition(LatLng latlng)
        throws RemoteException;

    public abstract void setPositionFromBounds(LatLngBounds latlngbounds)
        throws RemoteException;

    public abstract void setTransparency(float f)
        throws RemoteException;

    public abstract void setVisible(boolean flag)
        throws RemoteException;

    public abstract void setZIndex(float f)
        throws RemoteException;
}
