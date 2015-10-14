// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.content.IntentSender;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.drive.internal:
//            u, GetMetadataRequest, QueryRequest, UpdateMetadataRequest, 
//            CreateContentsRequest, CreateFileRequest, CreateFolderRequest, OpenContentsRequest, 
//            CloseContentsRequest, OpenFileIntentSenderRequest, CreateFileIntentSenderRequest, AuthorizeAccessRequest, 
//            ListParentsRequest, AddEventListenerRequest, RemoveEventListenerRequest, DisconnectRequest, 
//            TrashResourceRequest, CloseContentsAndUpdateMetadataRequest, w, v

public static abstract class a.kn extends Binder
    implements u
{
    private static class a
        implements u
    {

        private IBinder kn;

        public IntentSender a(CreateFileIntentSenderRequest createfileintentsenderrequest)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (createfileintentsenderrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            createfileintentsenderrequest.writeToParcel(parcel, 0);
_L3:
            kn.transact(11, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            createfileintentsenderrequest = (IntentSender)IntentSender.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return createfileintentsenderrequest;
_L2:
            parcel.writeInt(0);
              goto _L3
            createfileintentsenderrequest;
            parcel1.recycle();
            parcel.recycle();
            throw createfileintentsenderrequest;
            createfileintentsenderrequest = null;
              goto _L4
        }

        public IntentSender a(OpenFileIntentSenderRequest openfileintentsenderrequest)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (openfileintentsenderrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            openfileintentsenderrequest.writeToParcel(parcel, 0);
_L3:
            kn.transact(10, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            openfileintentsenderrequest = (IntentSender)IntentSender.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return openfileintentsenderrequest;
_L2:
            parcel.writeInt(0);
              goto _L3
            openfileintentsenderrequest;
            parcel1.recycle();
            parcel.recycle();
            throw openfileintentsenderrequest;
            openfileintentsenderrequest = null;
              goto _L4
        }

        public void a(AddEventListenerRequest addeventlistenerrequest, w w1, String s, v v1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (addeventlistenerrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            addeventlistenerrequest.writeToParcel(parcel, 0);
_L5:
            if (w1 == null) goto _L4; else goto _L3
_L3:
            addeventlistenerrequest = w1.asBinder();
_L6:
            parcel.writeStrongBinder(addeventlistenerrequest);
            parcel.writeString(s);
            if (v1 == null)
            {
                break MISSING_BLOCK_LABEL_136;
            }
            addeventlistenerrequest = v1.asBinder();
_L7:
            parcel.writeStrongBinder(addeventlistenerrequest);
            kn.transact(14, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L5
            addeventlistenerrequest;
            parcel1.recycle();
            parcel.recycle();
            throw addeventlistenerrequest;
_L4:
            addeventlistenerrequest = null;
              goto _L6
            addeventlistenerrequest = null;
              goto _L7
        }

        public void a(AuthorizeAccessRequest authorizeaccessrequest, v v1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (authorizeaccessrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            authorizeaccessrequest.writeToParcel(parcel, 0);
_L3:
            if (v1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            authorizeaccessrequest = v1.asBinder();
_L4:
            parcel.writeStrongBinder(authorizeaccessrequest);
            kn.transact(12, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            authorizeaccessrequest;
            parcel1.recycle();
            parcel.recycle();
            throw authorizeaccessrequest;
            authorizeaccessrequest = null;
              goto _L4
        }

        public void a(CloseContentsAndUpdateMetadataRequest closecontentsandupdatemetadatarequest, v v1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (closecontentsandupdatemetadatarequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            closecontentsandupdatemetadatarequest.writeToParcel(parcel, 0);
_L3:
            if (v1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            closecontentsandupdatemetadatarequest = v1.asBinder();
_L4:
            parcel.writeStrongBinder(closecontentsandupdatemetadatarequest);
            kn.transact(18, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            closecontentsandupdatemetadatarequest;
            parcel1.recycle();
            parcel.recycle();
            throw closecontentsandupdatemetadatarequest;
            closecontentsandupdatemetadatarequest = null;
              goto _L4
        }

        public void a(CloseContentsRequest closecontentsrequest, v v1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (closecontentsrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            closecontentsrequest.writeToParcel(parcel, 0);
_L3:
            if (v1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            closecontentsrequest = v1.asBinder();
_L4:
            parcel.writeStrongBinder(closecontentsrequest);
            kn.transact(8, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            closecontentsrequest;
            parcel1.recycle();
            parcel.recycle();
            throw closecontentsrequest;
            closecontentsrequest = null;
              goto _L4
        }

        public void a(CreateContentsRequest createcontentsrequest, v v1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (createcontentsrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            createcontentsrequest.writeToParcel(parcel, 0);
_L3:
            if (v1 == null)
            {
                break MISSING_BLOCK_LABEL_96;
            }
            createcontentsrequest = v1.asBinder();
_L4:
            parcel.writeStrongBinder(createcontentsrequest);
            kn.transact(4, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            createcontentsrequest;
            parcel1.recycle();
            parcel.recycle();
            throw createcontentsrequest;
            createcontentsrequest = null;
              goto _L4
        }

        public void a(CreateFileRequest createfilerequest, v v1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (createfilerequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            createfilerequest.writeToParcel(parcel, 0);
_L3:
            if (v1 == null)
            {
                break MISSING_BLOCK_LABEL_96;
            }
            createfilerequest = v1.asBinder();
_L4:
            parcel.writeStrongBinder(createfilerequest);
            kn.transact(5, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            createfilerequest;
            parcel1.recycle();
            parcel.recycle();
            throw createfilerequest;
            createfilerequest = null;
              goto _L4
        }

        public void a(CreateFolderRequest createfolderrequest, v v1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (createfolderrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            createfolderrequest.writeToParcel(parcel, 0);
_L3:
            if (v1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            createfolderrequest = v1.asBinder();
_L4:
            parcel.writeStrongBinder(createfolderrequest);
            kn.transact(6, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            createfolderrequest;
            parcel1.recycle();
            parcel.recycle();
            throw createfolderrequest;
            createfolderrequest = null;
              goto _L4
        }

        public void a(DisconnectRequest disconnectrequest)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (disconnectrequest == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            disconnectrequest.writeToParcel(parcel, 0);
_L1:
            kn.transact(16, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            disconnectrequest;
            parcel1.recycle();
            parcel.recycle();
            throw disconnectrequest;
        }

        public void a(GetMetadataRequest getmetadatarequest, v v1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (getmetadatarequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            getmetadatarequest.writeToParcel(parcel, 0);
_L3:
            if (v1 == null)
            {
                break MISSING_BLOCK_LABEL_96;
            }
            getmetadatarequest = v1.asBinder();
_L4:
            parcel.writeStrongBinder(getmetadatarequest);
            kn.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            getmetadatarequest;
            parcel1.recycle();
            parcel.recycle();
            throw getmetadatarequest;
            getmetadatarequest = null;
              goto _L4
        }

        public void a(ListParentsRequest listparentsrequest, v v1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (listparentsrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            listparentsrequest.writeToParcel(parcel, 0);
_L3:
            if (v1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            listparentsrequest = v1.asBinder();
_L4:
            parcel.writeStrongBinder(listparentsrequest);
            kn.transact(13, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            listparentsrequest;
            parcel1.recycle();
            parcel.recycle();
            throw listparentsrequest;
            listparentsrequest = null;
              goto _L4
        }

        public void a(OpenContentsRequest opencontentsrequest, v v1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (opencontentsrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            opencontentsrequest.writeToParcel(parcel, 0);
_L3:
            if (v1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            opencontentsrequest = v1.asBinder();
_L4:
            parcel.writeStrongBinder(opencontentsrequest);
            kn.transact(7, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            opencontentsrequest;
            parcel1.recycle();
            parcel.recycle();
            throw opencontentsrequest;
            opencontentsrequest = null;
              goto _L4
        }

        public void a(QueryRequest queryrequest, v v1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (queryrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            queryrequest.writeToParcel(parcel, 0);
_L3:
            if (v1 == null)
            {
                break MISSING_BLOCK_LABEL_96;
            }
            queryrequest = v1.asBinder();
_L4:
            parcel.writeStrongBinder(queryrequest);
            kn.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            queryrequest;
            parcel1.recycle();
            parcel.recycle();
            throw queryrequest;
            queryrequest = null;
              goto _L4
        }

        public void a(RemoveEventListenerRequest removeeventlistenerrequest, w w1, String s, v v1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (removeeventlistenerrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            removeeventlistenerrequest.writeToParcel(parcel, 0);
_L5:
            if (w1 == null) goto _L4; else goto _L3
_L3:
            removeeventlistenerrequest = w1.asBinder();
_L6:
            parcel.writeStrongBinder(removeeventlistenerrequest);
            parcel.writeString(s);
            if (v1 == null)
            {
                break MISSING_BLOCK_LABEL_136;
            }
            removeeventlistenerrequest = v1.asBinder();
_L7:
            parcel.writeStrongBinder(removeeventlistenerrequest);
            kn.transact(15, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L5
            removeeventlistenerrequest;
            parcel1.recycle();
            parcel.recycle();
            throw removeeventlistenerrequest;
_L4:
            removeeventlistenerrequest = null;
              goto _L6
            removeeventlistenerrequest = null;
              goto _L7
        }

        public void a(TrashResourceRequest trashresourcerequest, v v1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (trashresourcerequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            trashresourcerequest.writeToParcel(parcel, 0);
_L3:
            if (v1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            trashresourcerequest = v1.asBinder();
_L4:
            parcel.writeStrongBinder(trashresourcerequest);
            kn.transact(17, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            trashresourcerequest;
            parcel1.recycle();
            parcel.recycle();
            throw trashresourcerequest;
            trashresourcerequest = null;
              goto _L4
        }

        public void a(UpdateMetadataRequest updatemetadatarequest, v v1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (updatemetadatarequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            updatemetadatarequest.writeToParcel(parcel, 0);
_L3:
            if (v1 == null)
            {
                break MISSING_BLOCK_LABEL_96;
            }
            updatemetadatarequest = v1.asBinder();
_L4:
            parcel.writeStrongBinder(updatemetadatarequest);
            kn.transact(3, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            updatemetadatarequest;
            parcel1.recycle();
            parcel.recycle();
            throw updatemetadatarequest;
            updatemetadatarequest = null;
              goto _L4
        }

        public void a(v v1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (v1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            v1 = v1.asBinder();
_L1:
            parcel.writeStrongBinder(v1);
            kn.transact(9, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            v1 = null;
              goto _L1
            v1;
            parcel1.recycle();
            parcel.recycle();
            throw v1;
        }

        public IBinder asBinder()
        {
            return kn;
        }

        public void b(QueryRequest queryrequest, v v1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
            if (queryrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            queryrequest.writeToParcel(parcel, 0);
_L3:
            if (v1 == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            queryrequest = v1.asBinder();
_L4:
            parcel.writeStrongBinder(queryrequest);
            kn.transact(19, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            queryrequest;
            parcel1.recycle();
            parcel.recycle();
            throw queryrequest;
            queryrequest = null;
              goto _L4
        }

        a(IBinder ibinder)
        {
            kn = ibinder;
        }
    }


    public static u G(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.drive.internal.IDriveService");
        if (iinterface != null && (iinterface instanceof u))
        {
            return (u)iinterface;
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
            parcel1.writeString("com.google.android.gms.drive.internal.IDriveService");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            GetMetadataRequest getmetadatarequest;
            if (parcel.readInt() != 0)
            {
                getmetadatarequest = (GetMetadataRequest)GetMetadataRequest.CREATOR.createFromParcel(parcel);
            } else
            {
                getmetadatarequest = null;
            }
            a(getmetadatarequest, H(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            QueryRequest queryrequest;
            if (parcel.readInt() != 0)
            {
                queryrequest = (QueryRequest)QueryRequest.CREATOR.createFromParcel(parcel);
            } else
            {
                queryrequest = null;
            }
            a(queryrequest, H(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 3: // '\003'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            UpdateMetadataRequest updatemetadatarequest;
            if (parcel.readInt() != 0)
            {
                updatemetadatarequest = (UpdateMetadataRequest)UpdateMetadataRequest.CREATOR.createFromParcel(parcel);
            } else
            {
                updatemetadatarequest = null;
            }
            a(updatemetadatarequest, H(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 4: // '\004'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            CreateContentsRequest createcontentsrequest;
            if (parcel.readInt() != 0)
            {
                createcontentsrequest = (CreateContentsRequest)CreateContentsRequest.CREATOR.createFromParcel(parcel);
            } else
            {
                createcontentsrequest = null;
            }
            a(createcontentsrequest, H(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 5: // '\005'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            CreateFileRequest createfilerequest;
            if (parcel.readInt() != 0)
            {
                createfilerequest = (CreateFileRequest)CreateFileRequest.CREATOR.createFromParcel(parcel);
            } else
            {
                createfilerequest = null;
            }
            a(createfilerequest, H(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 6: // '\006'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            CreateFolderRequest createfolderrequest;
            if (parcel.readInt() != 0)
            {
                createfolderrequest = (CreateFolderRequest)CreateFolderRequest.CREATOR.createFromParcel(parcel);
            } else
            {
                createfolderrequest = null;
            }
            a(createfolderrequest, H(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 7: // '\007'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            OpenContentsRequest opencontentsrequest;
            if (parcel.readInt() != 0)
            {
                opencontentsrequest = (OpenContentsRequest)OpenContentsRequest.CREATOR.createFromParcel(parcel);
            } else
            {
                opencontentsrequest = null;
            }
            a(opencontentsrequest, H(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 8: // '\b'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            CloseContentsRequest closecontentsrequest;
            if (parcel.readInt() != 0)
            {
                closecontentsrequest = (CloseContentsRequest)CloseContentsRequest.CREATOR.createFromParcel(parcel);
            } else
            {
                closecontentsrequest = null;
            }
            a(closecontentsrequest, H(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 9: // '\t'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            a(H(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 10: // '\n'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            if (parcel.readInt() != 0)
            {
                parcel = (OpenFileIntentSenderRequest)OpenFileIntentSenderRequest.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            parcel = a(parcel);
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
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            if (parcel.readInt() != 0)
            {
                parcel = (CreateFileIntentSenderRequest)CreateFileIntentSenderRequest.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            parcel = a(parcel);
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

        case 12: // '\f'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            AuthorizeAccessRequest authorizeaccessrequest;
            if (parcel.readInt() != 0)
            {
                authorizeaccessrequest = (AuthorizeAccessRequest)AuthorizeAccessRequest.CREATOR.createFromParcel(parcel);
            } else
            {
                authorizeaccessrequest = null;
            }
            a(authorizeaccessrequest, H(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 13: // '\r'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            ListParentsRequest listparentsrequest;
            if (parcel.readInt() != 0)
            {
                listparentsrequest = (ListParentsRequest)ListParentsRequest.CREATOR.createFromParcel(parcel);
            } else
            {
                listparentsrequest = null;
            }
            a(listparentsrequest, H(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 14: // '\016'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            AddEventListenerRequest addeventlistenerrequest;
            if (parcel.readInt() != 0)
            {
                addeventlistenerrequest = (AddEventListenerRequest)AddEventListenerRequest.CREATOR.createFromParcel(parcel);
            } else
            {
                addeventlistenerrequest = null;
            }
            a(addeventlistenerrequest, I(parcel.readStrongBinder()), parcel.readString(), H(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 15: // '\017'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            RemoveEventListenerRequest removeeventlistenerrequest;
            if (parcel.readInt() != 0)
            {
                removeeventlistenerrequest = (RemoveEventListenerRequest)RemoveEventListenerRequest.CREATOR.createFromParcel(parcel);
            } else
            {
                removeeventlistenerrequest = null;
            }
            a(removeeventlistenerrequest, I(parcel.readStrongBinder()), parcel.readString(), H(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 16: // '\020'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            if (parcel.readInt() != 0)
            {
                parcel = (DisconnectRequest)DisconnectRequest.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            a(parcel);
            parcel1.writeNoException();
            return true;

        case 17: // '\021'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            TrashResourceRequest trashresourcerequest;
            if (parcel.readInt() != 0)
            {
                trashresourcerequest = (TrashResourceRequest)TrashResourceRequest.CREATOR.createFromParcel(parcel);
            } else
            {
                trashresourcerequest = null;
            }
            a(trashresourcerequest, H(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 18: // '\022'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            CloseContentsAndUpdateMetadataRequest closecontentsandupdatemetadatarequest;
            if (parcel.readInt() != 0)
            {
                closecontentsandupdatemetadatarequest = (CloseContentsAndUpdateMetadataRequest)CloseContentsAndUpdateMetadataRequest.CREATOR.createFromParcel(parcel);
            } else
            {
                closecontentsandupdatemetadatarequest = null;
            }
            a(closecontentsandupdatemetadatarequest, H(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 19: // '\023'
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
            break;
        }
        QueryRequest queryrequest1;
        if (parcel.readInt() != 0)
        {
            queryrequest1 = (QueryRequest)QueryRequest.CREATOR.createFromParcel(parcel);
        } else
        {
            queryrequest1 = null;
        }
        b(queryrequest1, H(parcel.readStrongBinder()));
        parcel1.writeNoException();
        return true;
    }
}
