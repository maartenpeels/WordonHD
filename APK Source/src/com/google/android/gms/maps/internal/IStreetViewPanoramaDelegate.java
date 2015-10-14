// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngCreator;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewPanoramaCameraCreator;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;
import com.google.android.gms.maps.model.StreetViewPanoramaLocationCreator;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientationCreator;

// Referenced classes of package com.google.android.gms.maps.internal:
//            p, q, r

public interface IStreetViewPanoramaDelegate
    extends IInterface
{
    public static abstract class a extends Binder
        implements IStreetViewPanoramaDelegate
    {

        public static IStreetViewPanoramaDelegate ax(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
            if (iinterface != null && (iinterface instanceof IStreetViewPanoramaDelegate))
            {
                return (IStreetViewPanoramaDelegate)iinterface;
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
                parcel1.writeString("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                boolean flag;
                if (parcel.readInt() != 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                enableZoom(flag);
                parcel1.writeNoException();
                return true;

            case 2: // '\002'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                boolean flag1;
                if (parcel.readInt() != 0)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                enablePanning(flag1);
                parcel1.writeNoException();
                return true;

            case 3: // '\003'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                boolean flag2;
                if (parcel.readInt() != 0)
                {
                    flag2 = true;
                } else
                {
                    flag2 = false;
                }
                enableUserNavigation(flag2);
                parcel1.writeNoException();
                return true;

            case 4: // '\004'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                boolean flag3;
                if (parcel.readInt() != 0)
                {
                    flag3 = true;
                } else
                {
                    flag3 = false;
                }
                enableStreetNames(flag3);
                parcel1.writeNoException();
                return true;

            case 5: // '\005'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                boolean flag4 = isZoomGesturesEnabled();
                parcel1.writeNoException();
                if (flag4)
                {
                    i = 1;
                } else
                {
                    i = 0;
                }
                parcel1.writeInt(i);
                return true;

            case 6: // '\006'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                boolean flag5 = isPanningGesturesEnabled();
                parcel1.writeNoException();
                if (flag5)
                {
                    i = 1;
                } else
                {
                    i = 0;
                }
                parcel1.writeInt(i);
                return true;

            case 7: // '\007'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                boolean flag6 = isUserNavigationEnabled();
                parcel1.writeNoException();
                if (flag6)
                {
                    i = 1;
                } else
                {
                    i = 0;
                }
                parcel1.writeInt(i);
                return true;

            case 8: // '\b'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                boolean flag7 = isStreetNamesEnabled();
                parcel1.writeNoException();
                if (flag7)
                {
                    i = 1;
                } else
                {
                    i = 0;
                }
                parcel1.writeInt(i);
                return true;

            case 9: // '\t'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                StreetViewPanoramaCamera streetviewpanoramacamera;
                if (parcel.readInt() != 0)
                {
                    streetviewpanoramacamera = StreetViewPanoramaCamera.CREATOR.createFromParcel(parcel);
                } else
                {
                    streetviewpanoramacamera = null;
                }
                animateTo(streetviewpanoramacamera, parcel.readLong());
                parcel1.writeNoException();
                return true;

            case 10: // '\n'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                parcel = getPanoramaCamera();
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
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                setPositionWithID(parcel.readString());
                parcel1.writeNoException();
                return true;

            case 12: // '\f'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
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

            case 13: // '\r'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                LatLng latlng;
                if (parcel.readInt() != 0)
                {
                    latlng = LatLng.CREATOR.createFromParcel(parcel);
                } else
                {
                    latlng = null;
                }
                setPositionWithRadius(latlng, parcel.readInt());
                parcel1.writeNoException();
                return true;

            case 14: // '\016'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                parcel = getStreetViewPanoramaLocation();
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

            case 15: // '\017'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                setOnStreetViewPanoramaChangeListener(q.a.at(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 16: // '\020'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                setOnStreetViewPanoramaCameraChangeListener(p.a.as(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 17: // '\021'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                setOnStreetViewPanoramaClickListener(r.a.au(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 18: // '\022'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                parcel = pointToOrientation(com.google.android.gms.dynamic.d.a.K(parcel.readStrongBinder()));
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

            case 19: // '\023'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                break;
            }
            if (parcel.readInt() != 0)
            {
                parcel = StreetViewPanoramaOrientation.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            parcel = orientationToPoint(parcel);
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
        }
    }

    private static class a.a
        implements IStreetViewPanoramaDelegate
    {

        private IBinder kn;

        public void animateTo(StreetViewPanoramaCamera streetviewpanoramacamera, long l)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
            if (streetviewpanoramacamera == null)
            {
                break MISSING_BLOCK_LABEL_73;
            }
            parcel.writeInt(1);
            streetviewpanoramacamera.writeToParcel(parcel, 0);
_L1:
            parcel.writeLong(l);
            kn.transact(9, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            streetviewpanoramacamera;
            parcel1.recycle();
            parcel.recycle();
            throw streetviewpanoramacamera;
        }

        public IBinder asBinder()
        {
            return kn;
        }

        public void enablePanning(boolean flag)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
            int i;
            if (flag)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            parcel.writeInt(i);
            kn.transact(2, parcel, parcel1, 0);
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

        public void enableStreetNames(boolean flag)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
            int i;
            if (flag)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            parcel.writeInt(i);
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

        public void enableUserNavigation(boolean flag)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
            int i;
            if (flag)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            parcel.writeInt(i);
            kn.transact(3, parcel, parcel1, 0);
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

        public void enableZoom(boolean flag)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
            int i;
            if (flag)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            parcel.writeInt(i);
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

        public StreetViewPanoramaCamera getPanoramaCamera()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
            kn.transact(10, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            StreetViewPanoramaCamera streetviewpanoramacamera = StreetViewPanoramaCamera.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return streetviewpanoramacamera;
_L2:
            streetviewpanoramacamera = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public StreetViewPanoramaLocation getStreetViewPanoramaLocation()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
            kn.transact(14, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            StreetViewPanoramaLocation streetviewpanoramalocation = StreetViewPanoramaLocation.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return streetviewpanoramalocation;
_L2:
            streetviewpanoramalocation = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean isPanningGesturesEnabled()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
            kn.transact(6, parcel, parcel1, 0);
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

        public boolean isStreetNamesEnabled()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
            kn.transact(8, parcel, parcel1, 0);
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

        public boolean isUserNavigationEnabled()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
            kn.transact(7, parcel, parcel1, 0);
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

        public boolean isZoomGesturesEnabled()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
            kn.transact(5, parcel, parcel1, 0);
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

        public d orientationToPoint(StreetViewPanoramaOrientation streetviewpanoramaorientation)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
            if (streetviewpanoramaorientation == null)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            parcel.writeInt(1);
            streetviewpanoramaorientation.writeToParcel(parcel, 0);
_L1:
            kn.transact(19, parcel, parcel1, 0);
            parcel1.readException();
            streetviewpanoramaorientation = com.google.android.gms.dynamic.d.a.K(parcel1.readStrongBinder());
            parcel1.recycle();
            parcel.recycle();
            return streetviewpanoramaorientation;
            parcel.writeInt(0);
              goto _L1
            streetviewpanoramaorientation;
            parcel1.recycle();
            parcel.recycle();
            throw streetviewpanoramaorientation;
        }

        public StreetViewPanoramaOrientation pointToOrientation(d d1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
            if (d1 == null) goto _L2; else goto _L1
_L1:
            d1 = d1.asBinder();
_L5:
            parcel.writeStrongBinder(d1);
            kn.transact(18, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L4; else goto _L3
_L3:
            d1 = StreetViewPanoramaOrientation.CREATOR.createFromParcel(parcel1);
_L6:
            parcel1.recycle();
            parcel.recycle();
            return d1;
_L2:
            d1 = null;
              goto _L5
_L4:
            d1 = null;
              goto _L6
            d1;
            parcel1.recycle();
            parcel.recycle();
            throw d1;
              goto _L5
        }

        public void setOnStreetViewPanoramaCameraChangeListener(p p1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
            if (p1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            p1 = p1.asBinder();
_L1:
            parcel.writeStrongBinder(p1);
            kn.transact(16, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            p1 = null;
              goto _L1
            p1;
            parcel1.recycle();
            parcel.recycle();
            throw p1;
        }

        public void setOnStreetViewPanoramaChangeListener(q q1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
            if (q1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            q1 = q1.asBinder();
_L1:
            parcel.writeStrongBinder(q1);
            kn.transact(15, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            q1 = null;
              goto _L1
            q1;
            parcel1.recycle();
            parcel.recycle();
            throw q1;
        }

        public void setOnStreetViewPanoramaClickListener(r r1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
            if (r1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            r1 = r1.asBinder();
_L1:
            parcel.writeStrongBinder(r1);
            kn.transact(17, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            r1 = null;
              goto _L1
            r1;
            parcel1.recycle();
            parcel.recycle();
            throw r1;
        }

        public void setPosition(LatLng latlng)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
            if (latlng == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            latlng.writeToParcel(parcel, 0);
_L1:
            kn.transact(12, parcel, parcel1, 0);
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

        public void setPositionWithID(String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
            parcel.writeString(s);
            kn.transact(11, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            s;
            parcel1.recycle();
            parcel.recycle();
            throw s;
        }

        public void setPositionWithRadius(LatLng latlng, int i)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
            if (latlng == null)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            parcel.writeInt(1);
            latlng.writeToParcel(parcel, 0);
_L1:
            parcel.writeInt(i);
            kn.transact(13, parcel, parcel1, 0);
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

        a.a(IBinder ibinder)
        {
            kn = ibinder;
        }
    }


    public abstract void animateTo(StreetViewPanoramaCamera streetviewpanoramacamera, long l)
        throws RemoteException;

    public abstract void enablePanning(boolean flag)
        throws RemoteException;

    public abstract void enableStreetNames(boolean flag)
        throws RemoteException;

    public abstract void enableUserNavigation(boolean flag)
        throws RemoteException;

    public abstract void enableZoom(boolean flag)
        throws RemoteException;

    public abstract StreetViewPanoramaCamera getPanoramaCamera()
        throws RemoteException;

    public abstract StreetViewPanoramaLocation getStreetViewPanoramaLocation()
        throws RemoteException;

    public abstract boolean isPanningGesturesEnabled()
        throws RemoteException;

    public abstract boolean isStreetNamesEnabled()
        throws RemoteException;

    public abstract boolean isUserNavigationEnabled()
        throws RemoteException;

    public abstract boolean isZoomGesturesEnabled()
        throws RemoteException;

    public abstract d orientationToPoint(StreetViewPanoramaOrientation streetviewpanoramaorientation)
        throws RemoteException;

    public abstract StreetViewPanoramaOrientation pointToOrientation(d d)
        throws RemoteException;

    public abstract void setOnStreetViewPanoramaCameraChangeListener(p p)
        throws RemoteException;

    public abstract void setOnStreetViewPanoramaChangeListener(q q)
        throws RemoteException;

    public abstract void setOnStreetViewPanoramaClickListener(r r)
        throws RemoteException;

    public abstract void setPosition(LatLng latlng)
        throws RemoteException;

    public abstract void setPositionWithID(String s)
        throws RemoteException;

    public abstract void setPositionWithRadius(LatLng latlng, int i)
        throws RemoteException;
}
