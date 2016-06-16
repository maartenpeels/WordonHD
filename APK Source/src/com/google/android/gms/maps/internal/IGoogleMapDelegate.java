// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.internal;

import android.location.Location;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CameraPositionCreator;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.CircleOptionsCreator;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.GroundOverlayOptionsCreator;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.MarkerOptionsCreator;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.PolygonOptionsCreator;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.PolylineOptionsCreator;
import com.google.android.gms.maps.model.TileOverlayOptions;
import com.google.android.gms.maps.model.TileOverlayOptionsCreator;
import com.google.android.gms.maps.model.internal.IPolylineDelegate;
import com.google.android.gms.maps.model.internal.b;
import com.google.android.gms.maps.model.internal.c;
import com.google.android.gms.maps.model.internal.f;
import com.google.android.gms.maps.model.internal.g;
import com.google.android.gms.maps.model.internal.h;

// Referenced classes of package com.google.android.gms.maps.internal:
//            b, IProjectionDelegate, IUiSettingsDelegate, d, 
//            ILocationSourceDelegate, e, f, g, 
//            i, j, k, l, 
//            m, n, o, s

public interface IGoogleMapDelegate
    extends IInterface
{
    public static abstract class a extends Binder
        implements IGoogleMapDelegate
    {

        public static IGoogleMapDelegate ac(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (iinterface != null && (iinterface instanceof IGoogleMapDelegate))
            {
                return (IGoogleMapDelegate)iinterface;
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
                parcel1.writeString("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                parcel = getCameraPosition();
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
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                float f1 = getMaxZoomLevel();
                parcel1.writeNoException();
                parcel1.writeFloat(f1);
                return true;

            case 3: // '\003'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                float f2 = getMinZoomLevel();
                parcel1.writeNoException();
                parcel1.writeFloat(f2);
                return true;

            case 4: // '\004'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                moveCamera(com.google.android.gms.dynamic.d.a.K(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 5: // '\005'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                animateCamera(com.google.android.gms.dynamic.d.a.K(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 6: // '\006'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                animateCameraWithCallback(com.google.android.gms.dynamic.d.a.K(parcel.readStrongBinder()), b.a.aa(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 7: // '\007'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                animateCameraWithDurationAndCallback(com.google.android.gms.dynamic.d.a.K(parcel.readStrongBinder()), parcel.readInt(), b.a.aa(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 8: // '\b'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                stopAnimation();
                parcel1.writeNoException();
                return true;

            case 9: // '\t'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                if (parcel.readInt() != 0)
                {
                    parcel = PolylineOptions.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                parcel = addPolyline(parcel);
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

            case 10: // '\n'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                if (parcel.readInt() != 0)
                {
                    parcel = PolygonOptions.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                parcel = addPolygon(parcel);
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

            case 11: // '\013'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                if (parcel.readInt() != 0)
                {
                    parcel = MarkerOptions.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                parcel = addMarker(parcel);
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

            case 12: // '\f'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                if (parcel.readInt() != 0)
                {
                    parcel = GroundOverlayOptions.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                parcel = addGroundOverlay(parcel);
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

            case 13: // '\r'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                if (parcel.readInt() != 0)
                {
                    parcel = TileOverlayOptions.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                parcel = addTileOverlay(parcel);
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

            case 14: // '\016'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                clear();
                parcel1.writeNoException();
                return true;

            case 15: // '\017'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                i = getMapType();
                parcel1.writeNoException();
                parcel1.writeInt(i);
                return true;

            case 16: // '\020'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                setMapType(parcel.readInt());
                parcel1.writeNoException();
                return true;

            case 17: // '\021'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                boolean flag = isTrafficEnabled();
                parcel1.writeNoException();
                if (flag)
                {
                    i = 1;
                } else
                {
                    i = 0;
                }
                parcel1.writeInt(i);
                return true;

            case 18: // '\022'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                boolean flag1;
                if (parcel.readInt() != 0)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                setTrafficEnabled(flag1);
                parcel1.writeNoException();
                return true;

            case 19: // '\023'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                boolean flag2 = isIndoorEnabled();
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
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                boolean flag3;
                if (parcel.readInt() != 0)
                {
                    flag3 = true;
                } else
                {
                    flag3 = false;
                }
                flag3 = setIndoorEnabled(flag3);
                parcel1.writeNoException();
                if (flag3)
                {
                    i = 1;
                } else
                {
                    i = 0;
                }
                parcel1.writeInt(i);
                return true;

            case 21: // '\025'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                boolean flag4 = isMyLocationEnabled();
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

            case 22: // '\026'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                boolean flag5;
                if (parcel.readInt() != 0)
                {
                    flag5 = true;
                } else
                {
                    flag5 = false;
                }
                setMyLocationEnabled(flag5);
                parcel1.writeNoException();
                return true;

            case 23: // '\027'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                parcel = getMyLocation();
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

            case 24: // '\030'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                setLocationSource(ILocationSourceDelegate.a.ae(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 25: // '\031'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                parcel = getUiSettings();
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

            case 26: // '\032'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                parcel = getProjection();
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

            case 27: // '\033'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                setOnCameraChangeListener(e.a.ah(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 28: // '\034'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                setOnMapClickListener(com.google.android.gms.maps.internal.i.a.al(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 29: // '\035'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                setOnMapLongClickListener(k.a.an(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 30: // '\036'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                setOnMarkerClickListener(l.a.ao(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 31: // '\037'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                setOnMarkerDragListener(m.a.ap(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 32: // ' '
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                setOnInfoWindowClickListener(g.a.aj(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 33: // '!'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                setInfoWindowAdapter(d.a.ad(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 34: // '"'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                parcel = getTestingHelper();
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

            case 35: // '#'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                if (parcel.readInt() != 0)
                {
                    parcel = CircleOptions.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                parcel = addCircle(parcel);
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

            case 36: // '$'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                setOnMyLocationChangeListener(o.a.ar(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 37: // '%'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                setOnMyLocationButtonClickListener(n.a.aq(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 38: // '&'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                snapshot(s.a.aw(parcel.readStrongBinder()), com.google.android.gms.dynamic.d.a.K(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 39: // '\''
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                setPadding(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                parcel1.writeNoException();
                return true;

            case 40: // '('
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                boolean flag6 = isBuildingsEnabled();
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

            case 41: // ')'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                boolean flag7;
                if (parcel.readInt() != 0)
                {
                    flag7 = true;
                } else
                {
                    flag7 = false;
                }
                setBuildingsEnabled(flag7);
                parcel1.writeNoException();
                return true;

            case 42: // '*'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                setOnMapLoadedCallback(com.google.android.gms.maps.internal.j.a.am(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 44: // ','
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                parcel = getFocusedBuilding();
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

            case 45: // '-'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                setOnIndoorStateChangeListener(f.a.ai(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 51: // '3'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                break;
            }
            boolean flag8;
            if (parcel.readInt() != 0)
            {
                flag8 = true;
            } else
            {
                flag8 = false;
            }
            setWatermarkEnabled(flag8);
            parcel1.writeNoException();
            return true;
        }
    }

    private static class a.a
        implements IGoogleMapDelegate
    {

        private IBinder kn;

        public b addCircle(CircleOptions circleoptions)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (circleoptions == null)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            parcel.writeInt(1);
            circleoptions.writeToParcel(parcel, 0);
_L1:
            kn.transact(35, parcel, parcel1, 0);
            parcel1.readException();
            circleoptions = com.google.android.gms.maps.model.internal.b.a.aC(parcel1.readStrongBinder());
            parcel1.recycle();
            parcel.recycle();
            return circleoptions;
            parcel.writeInt(0);
              goto _L1
            circleoptions;
            parcel1.recycle();
            parcel.recycle();
            throw circleoptions;
        }

        public c addGroundOverlay(GroundOverlayOptions groundoverlayoptions)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (groundoverlayoptions == null)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            parcel.writeInt(1);
            groundoverlayoptions.writeToParcel(parcel, 0);
_L1:
            kn.transact(12, parcel, parcel1, 0);
            parcel1.readException();
            groundoverlayoptions = com.google.android.gms.maps.model.internal.c.a.aD(parcel1.readStrongBinder());
            parcel1.recycle();
            parcel.recycle();
            return groundoverlayoptions;
            parcel.writeInt(0);
              goto _L1
            groundoverlayoptions;
            parcel1.recycle();
            parcel.recycle();
            throw groundoverlayoptions;
        }

        public f addMarker(MarkerOptions markeroptions)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (markeroptions == null)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            parcel.writeInt(1);
            markeroptions.writeToParcel(parcel, 0);
_L1:
            kn.transact(11, parcel, parcel1, 0);
            parcel1.readException();
            markeroptions = com.google.android.gms.maps.model.internal.f.a.aG(parcel1.readStrongBinder());
            parcel1.recycle();
            parcel.recycle();
            return markeroptions;
            parcel.writeInt(0);
              goto _L1
            markeroptions;
            parcel1.recycle();
            parcel.recycle();
            throw markeroptions;
        }

        public g addPolygon(PolygonOptions polygonoptions)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (polygonoptions == null)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            parcel.writeInt(1);
            polygonoptions.writeToParcel(parcel, 0);
_L1:
            kn.transact(10, parcel, parcel1, 0);
            parcel1.readException();
            polygonoptions = com.google.android.gms.maps.model.internal.g.a.aH(parcel1.readStrongBinder());
            parcel1.recycle();
            parcel.recycle();
            return polygonoptions;
            parcel.writeInt(0);
              goto _L1
            polygonoptions;
            parcel1.recycle();
            parcel.recycle();
            throw polygonoptions;
        }

        public IPolylineDelegate addPolyline(PolylineOptions polylineoptions)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (polylineoptions == null)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            parcel.writeInt(1);
            polylineoptions.writeToParcel(parcel, 0);
_L1:
            kn.transact(9, parcel, parcel1, 0);
            parcel1.readException();
            polylineoptions = com.google.android.gms.maps.model.internal.IPolylineDelegate.a.aI(parcel1.readStrongBinder());
            parcel1.recycle();
            parcel.recycle();
            return polylineoptions;
            parcel.writeInt(0);
              goto _L1
            polylineoptions;
            parcel1.recycle();
            parcel.recycle();
            throw polylineoptions;
        }

        public h addTileOverlay(TileOverlayOptions tileoverlayoptions)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (tileoverlayoptions == null)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            parcel.writeInt(1);
            tileoverlayoptions.writeToParcel(parcel, 0);
_L1:
            kn.transact(13, parcel, parcel1, 0);
            parcel1.readException();
            tileoverlayoptions = com.google.android.gms.maps.model.internal.h.a.aJ(parcel1.readStrongBinder());
            parcel1.recycle();
            parcel.recycle();
            return tileoverlayoptions;
            parcel.writeInt(0);
              goto _L1
            tileoverlayoptions;
            parcel1.recycle();
            parcel.recycle();
            throw tileoverlayoptions;
        }

        public void animateCamera(d d1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (d1 == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            d1 = d1.asBinder();
_L1:
            parcel.writeStrongBinder(d1);
            kn.transact(5, parcel, parcel1, 0);
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

        public void animateCameraWithCallback(d d1, com.google.android.gms.maps.internal.b b1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (d1 == null) goto _L2; else goto _L1
_L1:
            d1 = d1.asBinder();
_L5:
            parcel.writeStrongBinder(d1);
            if (b1 == null) goto _L4; else goto _L3
_L3:
            d1 = b1.asBinder();
_L6:
            parcel.writeStrongBinder(d1);
            kn.transact(6, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
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

        public void animateCameraWithDurationAndCallback(d d1, int i1, com.google.android.gms.maps.internal.b b1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (d1 == null) goto _L2; else goto _L1
_L1:
            d1 = d1.asBinder();
_L5:
            parcel.writeStrongBinder(d1);
            parcel.writeInt(i1);
            if (b1 == null) goto _L4; else goto _L3
_L3:
            d1 = b1.asBinder();
_L6:
            parcel.writeStrongBinder(d1);
            kn.transact(7, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
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

        public IBinder asBinder()
        {
            return kn;
        }

        public void clear()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            kn.transact(14, parcel, parcel1, 0);
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

        public CameraPosition getCameraPosition()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            kn.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            CameraPosition cameraposition = CameraPosition.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return cameraposition;
_L2:
            cameraposition = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public com.google.android.gms.maps.model.internal.d getFocusedBuilding()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            com.google.android.gms.maps.model.internal.d d1;
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            kn.transact(44, parcel, parcel1, 0);
            parcel1.readException();
            d1 = com.google.android.gms.maps.model.internal.d.a.aE(parcel1.readStrongBinder());
            parcel1.recycle();
            parcel.recycle();
            return d1;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public int getMapType()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i1;
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            kn.transact(15, parcel, parcel1, 0);
            parcel1.readException();
            i1 = parcel1.readInt();
            parcel1.recycle();
            parcel.recycle();
            return i1;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public float getMaxZoomLevel()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            float f1;
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            kn.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            f1 = parcel1.readFloat();
            parcel1.recycle();
            parcel.recycle();
            return f1;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public float getMinZoomLevel()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            float f1;
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            kn.transact(3, parcel, parcel1, 0);
            parcel1.readException();
            f1 = parcel1.readFloat();
            parcel1.recycle();
            parcel.recycle();
            return f1;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public Location getMyLocation()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            kn.transact(23, parcel, parcel1, 0);
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

        public IProjectionDelegate getProjection()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            IProjectionDelegate iprojectiondelegate;
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            kn.transact(26, parcel, parcel1, 0);
            parcel1.readException();
            iprojectiondelegate = IProjectionDelegate.a.av(parcel1.readStrongBinder());
            parcel1.recycle();
            parcel.recycle();
            return iprojectiondelegate;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public d getTestingHelper()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            d d1;
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            kn.transact(34, parcel, parcel1, 0);
            parcel1.readException();
            d1 = com.google.android.gms.dynamic.d.a.K(parcel1.readStrongBinder());
            parcel1.recycle();
            parcel.recycle();
            return d1;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public IUiSettingsDelegate getUiSettings()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            IUiSettingsDelegate iuisettingsdelegate;
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            kn.transact(25, parcel, parcel1, 0);
            parcel1.readException();
            iuisettingsdelegate = IUiSettingsDelegate.a.aA(parcel1.readStrongBinder());
            parcel1.recycle();
            parcel.recycle();
            return iuisettingsdelegate;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean isBuildingsEnabled()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i1;
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            kn.transact(40, parcel, parcel1, 0);
            parcel1.readException();
            i1 = parcel1.readInt();
            boolean flag;
            if (i1 != 0)
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

        public boolean isIndoorEnabled()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i1;
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            kn.transact(19, parcel, parcel1, 0);
            parcel1.readException();
            i1 = parcel1.readInt();
            boolean flag;
            if (i1 != 0)
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

        public boolean isMyLocationEnabled()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i1;
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            kn.transact(21, parcel, parcel1, 0);
            parcel1.readException();
            i1 = parcel1.readInt();
            boolean flag;
            if (i1 != 0)
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

        public boolean isTrafficEnabled()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i1;
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            kn.transact(17, parcel, parcel1, 0);
            parcel1.readException();
            i1 = parcel1.readInt();
            boolean flag;
            if (i1 != 0)
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

        public void moveCamera(d d1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (d1 == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            d1 = d1.asBinder();
_L1:
            parcel.writeStrongBinder(d1);
            kn.transact(4, parcel, parcel1, 0);
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

        public void setBuildingsEnabled(boolean flag)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            int i1;
            if (flag)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            parcel.writeInt(i1);
            kn.transact(41, parcel, parcel1, 0);
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

        public boolean setIndoorEnabled(boolean flag)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            int i1;
            if (flag)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            parcel.writeInt(i1);
            kn.transact(20, parcel, parcel1, 0);
            parcel1.readException();
            i1 = parcel1.readInt();
            if (i1 != 0)
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

        public void setInfoWindowAdapter(com.google.android.gms.maps.internal.d d1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (d1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            d1 = d1.asBinder();
_L1:
            parcel.writeStrongBinder(d1);
            kn.transact(33, parcel, parcel1, 0);
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

        public void setLocationSource(ILocationSourceDelegate ilocationsourcedelegate)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (ilocationsourcedelegate == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            ilocationsourcedelegate = ilocationsourcedelegate.asBinder();
_L1:
            parcel.writeStrongBinder(ilocationsourcedelegate);
            kn.transact(24, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            ilocationsourcedelegate = null;
              goto _L1
            ilocationsourcedelegate;
            parcel1.recycle();
            parcel.recycle();
            throw ilocationsourcedelegate;
        }

        public void setMapType(int i1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            parcel.writeInt(i1);
            kn.transact(16, parcel, parcel1, 0);
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

        public void setMyLocationEnabled(boolean flag)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            int i1;
            if (flag)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            parcel.writeInt(i1);
            kn.transact(22, parcel, parcel1, 0);
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

        public void setOnCameraChangeListener(e e1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (e1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            e1 = e1.asBinder();
_L1:
            parcel.writeStrongBinder(e1);
            kn.transact(27, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            e1 = null;
              goto _L1
            e1;
            parcel1.recycle();
            parcel.recycle();
            throw e1;
        }

        public void setOnIndoorStateChangeListener(com.google.android.gms.maps.internal.f f1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (f1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            f1 = f1.asBinder();
_L1:
            parcel.writeStrongBinder(f1);
            kn.transact(45, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            f1 = null;
              goto _L1
            f1;
            parcel1.recycle();
            parcel.recycle();
            throw f1;
        }

        public void setOnInfoWindowClickListener(com.google.android.gms.maps.internal.g g1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (g1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            g1 = g1.asBinder();
_L1:
            parcel.writeStrongBinder(g1);
            kn.transact(32, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            g1 = null;
              goto _L1
            g1;
            parcel1.recycle();
            parcel.recycle();
            throw g1;
        }

        public void setOnMapClickListener(i i1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (i1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            i1 = i1.asBinder();
_L1:
            parcel.writeStrongBinder(i1);
            kn.transact(28, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            i1 = null;
              goto _L1
            i1;
            parcel1.recycle();
            parcel.recycle();
            throw i1;
        }

        public void setOnMapLoadedCallback(j j1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (j1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            j1 = j1.asBinder();
_L1:
            parcel.writeStrongBinder(j1);
            kn.transact(42, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            j1 = null;
              goto _L1
            j1;
            parcel1.recycle();
            parcel.recycle();
            throw j1;
        }

        public void setOnMapLongClickListener(k k1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (k1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            k1 = k1.asBinder();
_L1:
            parcel.writeStrongBinder(k1);
            kn.transact(29, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            k1 = null;
              goto _L1
            k1;
            parcel1.recycle();
            parcel.recycle();
            throw k1;
        }

        public void setOnMarkerClickListener(l l1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (l1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            l1 = l1.asBinder();
_L1:
            parcel.writeStrongBinder(l1);
            kn.transact(30, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            l1 = null;
              goto _L1
            l1;
            parcel1.recycle();
            parcel.recycle();
            throw l1;
        }

        public void setOnMarkerDragListener(m m1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (m1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            m1 = m1.asBinder();
_L1:
            parcel.writeStrongBinder(m1);
            kn.transact(31, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            m1 = null;
              goto _L1
            m1;
            parcel1.recycle();
            parcel.recycle();
            throw m1;
        }

        public void setOnMyLocationButtonClickListener(n n1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (n1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            n1 = n1.asBinder();
_L1:
            parcel.writeStrongBinder(n1);
            kn.transact(37, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            n1 = null;
              goto _L1
            n1;
            parcel1.recycle();
            parcel.recycle();
            throw n1;
        }

        public void setOnMyLocationChangeListener(o o1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (o1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            o1 = o1.asBinder();
_L1:
            parcel.writeStrongBinder(o1);
            kn.transact(36, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            o1 = null;
              goto _L1
            o1;
            parcel1.recycle();
            parcel.recycle();
            throw o1;
        }

        public void setPadding(int i1, int j1, int k1, int l1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            parcel.writeInt(i1);
            parcel.writeInt(j1);
            parcel.writeInt(k1);
            parcel.writeInt(l1);
            kn.transact(39, parcel, parcel1, 0);
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

        public void setTrafficEnabled(boolean flag)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            int i1;
            if (flag)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            parcel.writeInt(i1);
            kn.transact(18, parcel, parcel1, 0);
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

        public void setWatermarkEnabled(boolean flag)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            int i1;
            if (flag)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            parcel.writeInt(i1);
            kn.transact(51, parcel, parcel1, 0);
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

        public void snapshot(s s1, d d1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            if (s1 == null) goto _L2; else goto _L1
_L1:
            s1 = s1.asBinder();
_L5:
            parcel.writeStrongBinder(s1);
            if (d1 == null) goto _L4; else goto _L3
_L3:
            s1 = d1.asBinder();
_L6:
            parcel.writeStrongBinder(s1);
            kn.transact(38, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            s1 = null;
              goto _L5
_L4:
            s1 = null;
              goto _L6
            s1;
            parcel1.recycle();
            parcel.recycle();
            throw s1;
              goto _L5
        }

        public void stopAnimation()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            kn.transact(8, parcel, parcel1, 0);
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


    public abstract b addCircle(CircleOptions circleoptions)
        throws RemoteException;

    public abstract c addGroundOverlay(GroundOverlayOptions groundoverlayoptions)
        throws RemoteException;

    public abstract f addMarker(MarkerOptions markeroptions)
        throws RemoteException;

    public abstract g addPolygon(PolygonOptions polygonoptions)
        throws RemoteException;

    public abstract IPolylineDelegate addPolyline(PolylineOptions polylineoptions)
        throws RemoteException;

    public abstract h addTileOverlay(TileOverlayOptions tileoverlayoptions)
        throws RemoteException;

    public abstract void animateCamera(d d)
        throws RemoteException;

    public abstract void animateCameraWithCallback(d d, com.google.android.gms.maps.internal.b b)
        throws RemoteException;

    public abstract void animateCameraWithDurationAndCallback(d d, int i, com.google.android.gms.maps.internal.b b)
        throws RemoteException;

    public abstract void clear()
        throws RemoteException;

    public abstract CameraPosition getCameraPosition()
        throws RemoteException;

    public abstract com.google.android.gms.maps.model.internal.d getFocusedBuilding()
        throws RemoteException;

    public abstract int getMapType()
        throws RemoteException;

    public abstract float getMaxZoomLevel()
        throws RemoteException;

    public abstract float getMinZoomLevel()
        throws RemoteException;

    public abstract Location getMyLocation()
        throws RemoteException;

    public abstract IProjectionDelegate getProjection()
        throws RemoteException;

    public abstract d getTestingHelper()
        throws RemoteException;

    public abstract IUiSettingsDelegate getUiSettings()
        throws RemoteException;

    public abstract boolean isBuildingsEnabled()
        throws RemoteException;

    public abstract boolean isIndoorEnabled()
        throws RemoteException;

    public abstract boolean isMyLocationEnabled()
        throws RemoteException;

    public abstract boolean isTrafficEnabled()
        throws RemoteException;

    public abstract void moveCamera(d d)
        throws RemoteException;

    public abstract void setBuildingsEnabled(boolean flag)
        throws RemoteException;

    public abstract boolean setIndoorEnabled(boolean flag)
        throws RemoteException;

    public abstract void setInfoWindowAdapter(com.google.android.gms.maps.internal.d d)
        throws RemoteException;

    public abstract void setLocationSource(ILocationSourceDelegate ilocationsourcedelegate)
        throws RemoteException;

    public abstract void setMapType(int i)
        throws RemoteException;

    public abstract void setMyLocationEnabled(boolean flag)
        throws RemoteException;

    public abstract void setOnCameraChangeListener(e e)
        throws RemoteException;

    public abstract void setOnIndoorStateChangeListener(com.google.android.gms.maps.internal.f f)
        throws RemoteException;

    public abstract void setOnInfoWindowClickListener(com.google.android.gms.maps.internal.g g)
        throws RemoteException;

    public abstract void setOnMapClickListener(i i)
        throws RemoteException;

    public abstract void setOnMapLoadedCallback(j j)
        throws RemoteException;

    public abstract void setOnMapLongClickListener(k k)
        throws RemoteException;

    public abstract void setOnMarkerClickListener(l l)
        throws RemoteException;

    public abstract void setOnMarkerDragListener(m m)
        throws RemoteException;

    public abstract void setOnMyLocationButtonClickListener(n n)
        throws RemoteException;

    public abstract void setOnMyLocationChangeListener(o o)
        throws RemoteException;

    public abstract void setPadding(int i, int j, int k, int l)
        throws RemoteException;

    public abstract void setTrafficEnabled(boolean flag)
        throws RemoteException;

    public abstract void setWatermarkEnabled(boolean flag)
        throws RemoteException;

    public abstract void snapshot(s s, d d)
        throws RemoteException;

    public abstract void stopAnimation()
        throws RemoteException;
}
