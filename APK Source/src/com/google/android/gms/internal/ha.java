// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationRequestCreator;
import com.google.android.gms.location.a;
import com.google.android.gms.location.b;
import com.google.android.gms.location.c;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.LatLngBoundsCreator;
import com.google.android.gms.maps.model.LatLngCreator;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            gz, hg, hs, hq, 
//            hi, hk, ho, hd, 
//            hh, ht, hl, hj

public interface ha
    extends IInterface
{
    public static abstract class a extends Binder
        implements ha
    {

        public static ha W(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (iinterface != null && (iinterface instanceof ha))
            {
                return (ha)iinterface;
            } else
            {
                return new a(ibinder);
            }
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
            throws RemoteException
        {
            boolean flag = false;
            hs hs7 = null;
            switch (i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, j);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                java.util.ArrayList arraylist = parcel.createTypedArrayList(hd.CREATOR);
                PendingIntent pendingintent;
                if (parcel.readInt() != 0)
                {
                    pendingintent = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
                } else
                {
                    pendingintent = null;
                }
                a(arraylist, pendingintent, gz.a.V(parcel.readStrongBinder()), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 2: // '\002'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                PendingIntent pendingintent1;
                if (parcel.readInt() != 0)
                {
                    pendingintent1 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
                } else
                {
                    pendingintent1 = null;
                }
                a(pendingintent1, gz.a.V(parcel.readStrongBinder()), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 3: // '\003'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                a(parcel.createStringArray(), gz.a.V(parcel.readStrongBinder()), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 4: // '\004'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                a(gz.a.V(parcel.readStrongBinder()), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 5: // '\005'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                long l = parcel.readLong();
                if (parcel.readInt() != 0)
                {
                    flag = true;
                }
                if (parcel.readInt() != 0)
                {
                    parcel = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                a(l, flag, parcel);
                parcel1.writeNoException();
                return true;

            case 6: // '\006'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0)
                {
                    parcel = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                removeActivityUpdates(parcel);
                parcel1.writeNoException();
                return true;

            case 7: // '\007'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                parcel = hP();
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

            case 8: // '\b'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                LocationRequest locationrequest;
                if (parcel.readInt() != 0)
                {
                    locationrequest = LocationRequest.CREATOR.createFromParcel(parcel);
                } else
                {
                    locationrequest = null;
                }
                a(locationrequest, com.google.android.gms.location.a.a.U(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 9: // '\t'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                LocationRequest locationrequest1;
                if (parcel.readInt() != 0)
                {
                    locationrequest1 = LocationRequest.CREATOR.createFromParcel(parcel);
                } else
                {
                    locationrequest1 = null;
                }
                if (parcel.readInt() != 0)
                {
                    parcel = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                a(locationrequest1, parcel);
                parcel1.writeNoException();
                return true;

            case 10: // '\n'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                a(com.google.android.gms.location.a.a.U(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 11: // '\013'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0)
                {
                    parcel = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                a(parcel);
                parcel1.writeNoException();
                return true;

            case 12: // '\f'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                boolean flag1;
                if (parcel.readInt() != 0)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                setMockMode(flag1);
                parcel1.writeNoException();
                return true;

            case 13: // '\r'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0)
                {
                    parcel = (Location)Location.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                setMockLocation(parcel);
                parcel1.writeNoException();
                return true;

            case 14: // '\016'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                LatLngBounds latlngbounds;
                hg hg2;
                if (parcel.readInt() != 0)
                {
                    latlngbounds = LatLngBounds.CREATOR.createFromParcel(parcel);
                } else
                {
                    latlngbounds = null;
                }
                i = parcel.readInt();
                if (parcel.readInt() != 0)
                {
                    hg2 = hg.CREATOR.aD(parcel);
                } else
                {
                    hg2 = null;
                }
                if (parcel.readInt() != 0)
                {
                    hs7 = hs.CREATOR.aI(parcel);
                } else
                {
                    hs7 = null;
                }
                a(latlngbounds, i, hg2, hs7, hq.a.Y(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 47: // '/'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                LatLngBounds latlngbounds1;
                hg hg3;
                String s2;
                if (parcel.readInt() != 0)
                {
                    latlngbounds1 = LatLngBounds.CREATOR.createFromParcel(parcel);
                } else
                {
                    latlngbounds1 = null;
                }
                i = parcel.readInt();
                s2 = parcel.readString();
                if (parcel.readInt() != 0)
                {
                    hg3 = hg.CREATOR.aD(parcel);
                } else
                {
                    hg3 = null;
                }
                if (parcel.readInt() != 0)
                {
                    hs7 = hs.CREATOR.aI(parcel);
                }
                a(latlngbounds1, i, s2, hg3, hs7, hq.a.Y(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 15: // '\017'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                String s = parcel.readString();
                hs hs1;
                if (parcel.readInt() != 0)
                {
                    hs1 = hs.CREATOR.aI(parcel);
                } else
                {
                    hs1 = null;
                }
                a(s, hs1, hq.a.Y(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 16: // '\020'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                LatLng latlng;
                hg hg4;
                hs hs8;
                if (parcel.readInt() != 0)
                {
                    latlng = LatLng.CREATOR.createFromParcel(parcel);
                } else
                {
                    latlng = null;
                }
                if (parcel.readInt() != 0)
                {
                    hg4 = hg.CREATOR.aD(parcel);
                } else
                {
                    hg4 = null;
                }
                if (parcel.readInt() != 0)
                {
                    hs8 = hs.CREATOR.aI(parcel);
                } else
                {
                    hs8 = null;
                }
                a(latlng, hg4, hs8, hq.a.Y(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 17: // '\021'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                hg hg1;
                hs hs4;
                if (parcel.readInt() != 0)
                {
                    hg1 = hg.CREATOR.aD(parcel);
                } else
                {
                    hg1 = null;
                }
                if (parcel.readInt() != 0)
                {
                    hs4 = hs.CREATOR.aI(parcel);
                } else
                {
                    hs4 = null;
                }
                a(hg1, hs4, hq.a.Y(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 42: // '*'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                String s1 = parcel.readString();
                hs hs2;
                if (parcel.readInt() != 0)
                {
                    hs2 = hs.CREATOR.aI(parcel);
                } else
                {
                    hs2 = null;
                }
                b(s1, hs2, hq.a.Y(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 18: // '\022'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                hk hk1;
                hs hs5;
                if (parcel.readInt() != 0)
                {
                    hk1 = hk.CREATOR.aF(parcel);
                } else
                {
                    hk1 = null;
                }
                if (parcel.readInt() != 0)
                {
                    hs5 = hs.CREATOR.aI(parcel);
                } else
                {
                    hs5 = null;
                }
                if (parcel.readInt() != 0)
                {
                    parcel = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                a(hk1, hs5, parcel);
                parcel1.writeNoException();
                return true;

            case 19: // '\023'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                hs hs3;
                if (parcel.readInt() != 0)
                {
                    hs3 = hs.CREATOR.aI(parcel);
                } else
                {
                    hs3 = null;
                }
                if (parcel.readInt() != 0)
                {
                    parcel = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                a(hs3, parcel);
                parcel1.writeNoException();
                return true;

            case 45: // '-'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                String s3 = parcel.readString();
                LatLngBounds latlngbounds2;
                hg hg5;
                hs hs9;
                if (parcel.readInt() != 0)
                {
                    latlngbounds2 = LatLngBounds.CREATOR.createFromParcel(parcel);
                } else
                {
                    latlngbounds2 = null;
                }
                if (parcel.readInt() != 0)
                {
                    hg5 = hg.CREATOR.aD(parcel);
                } else
                {
                    hg5 = null;
                }
                if (parcel.readInt() != 0)
                {
                    hs9 = hs.CREATOR.aI(parcel);
                } else
                {
                    hs9 = null;
                }
                a(s3, latlngbounds2, hg5, hs9, hq.a.Y(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 46: // '.'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                ho ho1;
                hs hs6;
                if (parcel.readInt() != 0)
                {
                    ho1 = (ho)ho.CREATOR.createFromParcel(parcel);
                } else
                {
                    ho1 = null;
                }
                if (parcel.readInt() != 0)
                {
                    hs6 = hs.CREATOR.aI(parcel);
                } else
                {
                    hs6 = null;
                }
                a(ho1, hs6, hq.a.Y(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 20: // '\024'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                LocationRequest locationrequest2;
                if (parcel.readInt() != 0)
                {
                    locationrequest2 = LocationRequest.CREATOR.createFromParcel(parcel);
                } else
                {
                    locationrequest2 = null;
                }
                a(locationrequest2, com.google.android.gms.location.a.a.U(parcel.readStrongBinder()), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 21: // '\025'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                parcel = aW(parcel.readString());
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

            case 25: // '\031'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0)
                {
                    parcel1 = hi.CREATOR.aE(parcel);
                } else
                {
                    parcel1 = null;
                }
                if (parcel.readInt() != 0)
                {
                    parcel = hs.CREATOR.aI(parcel);
                } else
                {
                    parcel = null;
                }
                a(parcel1, parcel);
                return true;

            case 26: // '\032'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                Location location;
                if (parcel.readInt() != 0)
                {
                    location = (Location)Location.CREATOR.createFromParcel(parcel);
                } else
                {
                    location = null;
                }
                a(location, parcel.readInt());
                parcel1.writeNoException();
                return true;

            case 34: // '"'
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                parcel = aX(parcel.readString());
                parcel1.writeNoException();
                break;
            }
            if (parcel != null)
            {
                parcel1.writeInt(1);
                parcel.writeToParcel(parcel1, 1);
            } else
            {
                parcel1.writeInt(0);
            }
            return true;
        }
    }

    private static class a.a
        implements ha
    {

        private IBinder kn;

        public void a(long l, boolean flag, PendingIntent pendingintent)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeLong(l);
            int i;
            if (flag)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            parcel.writeInt(i);
            if (pendingintent == null)
            {
                break MISSING_BLOCK_LABEL_94;
            }
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L1:
            kn.transact(5, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            pendingintent;
            parcel1.recycle();
            parcel.recycle();
            throw pendingintent;
        }

        public void a(PendingIntent pendingintent)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (pendingintent == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L1:
            kn.transact(11, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            pendingintent;
            parcel1.recycle();
            parcel.recycle();
            throw pendingintent;
        }

        public void a(PendingIntent pendingintent, gz gz1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (pendingintent == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L3:
            if (gz1 == null)
            {
                break MISSING_BLOCK_LABEL_111;
            }
            pendingintent = gz1.asBinder();
_L4:
            parcel.writeStrongBinder(pendingintent);
            parcel.writeString(s);
            kn.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            pendingintent;
            parcel1.recycle();
            parcel.recycle();
            throw pendingintent;
            pendingintent = null;
              goto _L4
        }

        public void a(Location location, int i)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (location == null)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            parcel.writeInt(1);
            location.writeToParcel(parcel, 0);
_L1:
            parcel.writeInt(i);
            kn.transact(26, parcel, parcel1, 0);
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

        public void a(gz gz1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (gz1 == null)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            gz1 = gz1.asBinder();
_L1:
            parcel.writeStrongBinder(gz1);
            parcel.writeString(s);
            kn.transact(4, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            gz1 = null;
              goto _L1
            gz1;
            parcel1.recycle();
            parcel.recycle();
            throw gz1;
        }

        public void a(hg hg1, hs hs1, hq hq1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (hg1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            hg1.writeToParcel(parcel, 0);
_L5:
            if (hs1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            hs1.writeToParcel(parcel, 0);
_L6:
            if (hq1 == null)
            {
                break MISSING_BLOCK_LABEL_132;
            }
            hg1 = hq1.asBinder();
_L7:
            parcel.writeStrongBinder(hg1);
            kn.transact(17, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L5
            hg1;
            parcel1.recycle();
            parcel.recycle();
            throw hg1;
_L4:
            parcel.writeInt(0);
              goto _L6
            hg1 = null;
              goto _L7
        }

        public void a(hi hi1, hs hs1)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (hi1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            hi1.writeToParcel(parcel, 0);
_L3:
            if (hs1 == null)
            {
                break MISSING_BLOCK_LABEL_75;
            }
            parcel.writeInt(1);
            hs1.writeToParcel(parcel, 0);
_L4:
            kn.transact(25, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            hi1;
            parcel.recycle();
            throw hi1;
            parcel.writeInt(0);
              goto _L4
        }

        public void a(hk hk1, hs hs1, PendingIntent pendingintent)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (hk1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            hk1.writeToParcel(parcel, 0);
_L5:
            if (hs1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            hs1.writeToParcel(parcel, 0);
_L6:
            if (pendingintent == null)
            {
                break MISSING_BLOCK_LABEL_132;
            }
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L7:
            kn.transact(18, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L5
            hk1;
            parcel1.recycle();
            parcel.recycle();
            throw hk1;
_L4:
            parcel.writeInt(0);
              goto _L6
            parcel.writeInt(0);
              goto _L7
        }

        public void a(ho ho1, hs hs1, hq hq1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (ho1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            ho1.writeToParcel(parcel, 0);
_L5:
            if (hs1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            hs1.writeToParcel(parcel, 0);
_L6:
            if (hq1 == null)
            {
                break MISSING_BLOCK_LABEL_132;
            }
            ho1 = hq1.asBinder();
_L7:
            parcel.writeStrongBinder(ho1);
            kn.transact(46, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L5
            ho1;
            parcel1.recycle();
            parcel.recycle();
            throw ho1;
_L4:
            parcel.writeInt(0);
              goto _L6
            ho1 = null;
              goto _L7
        }

        public void a(hs hs1, PendingIntent pendingintent)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (hs1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            hs1.writeToParcel(parcel, 0);
_L3:
            if (pendingintent == null)
            {
                break MISSING_BLOCK_LABEL_96;
            }
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L4:
            kn.transact(19, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            hs1;
            parcel1.recycle();
            parcel.recycle();
            throw hs1;
            parcel.writeInt(0);
              goto _L4
        }

        public void a(LocationRequest locationrequest, PendingIntent pendingintent)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (locationrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            locationrequest.writeToParcel(parcel, 0);
_L3:
            if (pendingintent == null)
            {
                break MISSING_BLOCK_LABEL_96;
            }
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L4:
            kn.transact(9, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            locationrequest;
            parcel1.recycle();
            parcel.recycle();
            throw locationrequest;
            parcel.writeInt(0);
              goto _L4
        }

        public void a(LocationRequest locationrequest, com.google.android.gms.location.a a1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (locationrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            locationrequest.writeToParcel(parcel, 0);
_L3:
            if (a1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            locationrequest = a1.asBinder();
_L4:
            parcel.writeStrongBinder(locationrequest);
            kn.transact(8, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            locationrequest;
            parcel1.recycle();
            parcel.recycle();
            throw locationrequest;
            locationrequest = null;
              goto _L4
        }

        public void a(LocationRequest locationrequest, com.google.android.gms.location.a a1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (locationrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            locationrequest.writeToParcel(parcel, 0);
_L3:
            if (a1 == null)
            {
                break MISSING_BLOCK_LABEL_112;
            }
            locationrequest = a1.asBinder();
_L4:
            parcel.writeStrongBinder(locationrequest);
            parcel.writeString(s);
            kn.transact(20, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            locationrequest;
            parcel1.recycle();
            parcel.recycle();
            throw locationrequest;
            locationrequest = null;
              goto _L4
        }

        public void a(com.google.android.gms.location.a a1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (a1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            a1 = a1.asBinder();
_L1:
            parcel.writeStrongBinder(a1);
            kn.transact(10, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            a1 = null;
              goto _L1
            a1;
            parcel1.recycle();
            parcel.recycle();
            throw a1;
        }

        public void a(LatLng latlng, hg hg1, hs hs1, hq hq1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (latlng == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            latlng.writeToParcel(parcel, 0);
_L7:
            if (hg1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            hg1.writeToParcel(parcel, 0);
_L8:
            if (hs1 == null) goto _L6; else goto _L5
_L5:
            parcel.writeInt(1);
            hs1.writeToParcel(parcel, 0);
_L9:
            if (hq1 == null)
            {
                break MISSING_BLOCK_LABEL_160;
            }
            latlng = hq1.asBinder();
_L10:
            parcel.writeStrongBinder(latlng);
            kn.transact(16, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L7
            latlng;
            parcel1.recycle();
            parcel.recycle();
            throw latlng;
_L4:
            parcel.writeInt(0);
              goto _L8
_L6:
            parcel.writeInt(0);
              goto _L9
            latlng = null;
              goto _L10
        }

        public void a(LatLngBounds latlngbounds, int i, hg hg1, hs hs1, hq hq1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (latlngbounds == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            latlngbounds.writeToParcel(parcel, 0);
_L7:
            parcel.writeInt(i);
            if (hg1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            hg1.writeToParcel(parcel, 0);
_L8:
            if (hs1 == null) goto _L6; else goto _L5
_L5:
            parcel.writeInt(1);
            hs1.writeToParcel(parcel, 0);
_L9:
            if (hq1 == null)
            {
                break MISSING_BLOCK_LABEL_168;
            }
            latlngbounds = hq1.asBinder();
_L10:
            parcel.writeStrongBinder(latlngbounds);
            kn.transact(14, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L7
            latlngbounds;
            parcel1.recycle();
            parcel.recycle();
            throw latlngbounds;
_L4:
            parcel.writeInt(0);
              goto _L8
_L6:
            parcel.writeInt(0);
              goto _L9
            latlngbounds = null;
              goto _L10
        }

        public void a(LatLngBounds latlngbounds, int i, String s, hg hg1, hs hs1, hq hq1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (latlngbounds == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            latlngbounds.writeToParcel(parcel, 0);
_L7:
            parcel.writeInt(i);
            parcel.writeString(s);
            if (hg1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            hg1.writeToParcel(parcel, 0);
_L8:
            if (hs1 == null) goto _L6; else goto _L5
_L5:
            parcel.writeInt(1);
            hs1.writeToParcel(parcel, 0);
_L9:
            if (hq1 == null)
            {
                break MISSING_BLOCK_LABEL_176;
            }
            latlngbounds = hq1.asBinder();
_L10:
            parcel.writeStrongBinder(latlngbounds);
            kn.transact(47, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L7
            latlngbounds;
            parcel1.recycle();
            parcel.recycle();
            throw latlngbounds;
_L4:
            parcel.writeInt(0);
              goto _L8
_L6:
            parcel.writeInt(0);
              goto _L9
            latlngbounds = null;
              goto _L10
        }

        public void a(String s, hs hs1, hq hq1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeString(s);
            if (hs1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            hs1.writeToParcel(parcel, 0);
_L3:
            if (hq1 == null)
            {
                break MISSING_BLOCK_LABEL_112;
            }
            s = hq1.asBinder();
_L4:
            parcel.writeStrongBinder(s);
            kn.transact(15, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
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

        public void a(String s, LatLngBounds latlngbounds, hg hg1, hs hs1, hq hq1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeString(s);
            if (latlngbounds == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            latlngbounds.writeToParcel(parcel, 0);
_L7:
            if (hg1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            hg1.writeToParcel(parcel, 0);
_L8:
            if (hs1 == null) goto _L6; else goto _L5
_L5:
            parcel.writeInt(1);
            hs1.writeToParcel(parcel, 0);
_L9:
            if (hq1 == null)
            {
                break MISSING_BLOCK_LABEL_168;
            }
            s = hq1.asBinder();
_L10:
            parcel.writeStrongBinder(s);
            kn.transact(45, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L7
            s;
            parcel1.recycle();
            parcel.recycle();
            throw s;
_L4:
            parcel.writeInt(0);
              goto _L8
_L6:
            parcel.writeInt(0);
              goto _L9
            s = null;
              goto _L10
        }

        public void a(List list, PendingIntent pendingintent, gz gz1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeTypedList(list);
            if (pendingintent == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L3:
            if (gz1 == null)
            {
                break MISSING_BLOCK_LABEL_118;
            }
            list = gz1.asBinder();
_L4:
            parcel.writeStrongBinder(list);
            parcel.writeString(s);
            kn.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            list;
            parcel1.recycle();
            parcel.recycle();
            throw list;
            list = null;
              goto _L4
        }

        public void a(String as[], gz gz1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeStringArray(as);
            if (gz1 == null)
            {
                break MISSING_BLOCK_LABEL_78;
            }
            as = gz1.asBinder();
_L1:
            parcel.writeStrongBinder(as);
            parcel.writeString(s);
            kn.transact(3, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            as = null;
              goto _L1
            as;
            parcel1.recycle();
            parcel.recycle();
            throw as;
        }

        public Location aW(String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeString(s);
            kn.transact(21, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            s = (Location)Location.CREATOR.createFromParcel(parcel1);
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

        public b aX(String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeString(s);
            kn.transact(34, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            s = b.CREATOR.aB(parcel1);
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
            return kn;
        }

        public void b(String s, hs hs1, hq hq1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeString(s);
            if (hs1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            hs1.writeToParcel(parcel, 0);
_L3:
            if (hq1 == null)
            {
                break MISSING_BLOCK_LABEL_112;
            }
            s = hq1.asBinder();
_L4:
            parcel.writeStrongBinder(s);
            kn.transact(42, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
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

        public Location hP()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            kn.transact(7, parcel, parcel1, 0);
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

        public void removeActivityUpdates(PendingIntent pendingintent)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (pendingintent == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L1:
            kn.transact(6, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            pendingintent;
            parcel1.recycle();
            parcel.recycle();
            throw pendingintent;
        }

        public void setMockLocation(Location location)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (location == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            location.writeToParcel(parcel, 0);
_L1:
            kn.transact(13, parcel, parcel1, 0);
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

        public void setMockMode(boolean flag)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            int i;
            if (flag)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            parcel.writeInt(i);
            kn.transact(12, parcel, parcel1, 0);
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


    public abstract void a(long l, boolean flag, PendingIntent pendingintent)
        throws RemoteException;

    public abstract void a(PendingIntent pendingintent)
        throws RemoteException;

    public abstract void a(PendingIntent pendingintent, gz gz, String s)
        throws RemoteException;

    public abstract void a(Location location, int i)
        throws RemoteException;

    public abstract void a(gz gz, String s)
        throws RemoteException;

    public abstract void a(hg hg, hs hs, hq hq)
        throws RemoteException;

    public abstract void a(hi hi, hs hs)
        throws RemoteException;

    public abstract void a(hk hk, hs hs, PendingIntent pendingintent)
        throws RemoteException;

    public abstract void a(ho ho, hs hs, hq hq)
        throws RemoteException;

    public abstract void a(hs hs, PendingIntent pendingintent)
        throws RemoteException;

    public abstract void a(LocationRequest locationrequest, PendingIntent pendingintent)
        throws RemoteException;

    public abstract void a(LocationRequest locationrequest, com.google.android.gms.location.a a1)
        throws RemoteException;

    public abstract void a(LocationRequest locationrequest, com.google.android.gms.location.a a1, String s)
        throws RemoteException;

    public abstract void a(com.google.android.gms.location.a a1)
        throws RemoteException;

    public abstract void a(LatLng latlng, hg hg, hs hs, hq hq)
        throws RemoteException;

    public abstract void a(LatLngBounds latlngbounds, int i, hg hg, hs hs, hq hq)
        throws RemoteException;

    public abstract void a(LatLngBounds latlngbounds, int i, String s, hg hg, hs hs, hq hq)
        throws RemoteException;

    public abstract void a(String s, hs hs, hq hq)
        throws RemoteException;

    public abstract void a(String s, LatLngBounds latlngbounds, hg hg, hs hs, hq hq)
        throws RemoteException;

    public abstract void a(List list, PendingIntent pendingintent, gz gz, String s)
        throws RemoteException;

    public abstract void a(String as[], gz gz, String s)
        throws RemoteException;

    public abstract Location aW(String s)
        throws RemoteException;

    public abstract b aX(String s)
        throws RemoteException;

    public abstract void b(String s, hs hs, hq hq)
        throws RemoteException;

    public abstract Location hP()
        throws RemoteException;

    public abstract void removeActivityUpdates(PendingIntent pendingintent)
        throws RemoteException;

    public abstract void setMockLocation(Location location)
        throws RemoteException;

    public abstract void setMockMode(boolean flag)
        throws RemoteException;
}
