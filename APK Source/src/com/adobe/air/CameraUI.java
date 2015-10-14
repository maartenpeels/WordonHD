// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Environment;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper

public final class CameraUI
    implements AndroidActivityWrapper.ActivityResultCallback
{

    public static final int ERROR_ACTIVITY_DESTROYED = 4;
    public static final int ERROR_CAMERA_BUSY = 1;
    public static final int ERROR_CAMERA_ERROR = 2;
    public static final int ERROR_CAMERA_UNAVAILABLE = 3;
    private static final String LOG_TAG = "CameraUI";
    private static final String PHONE_STORAGE = "phoneStorage";
    public static final int REQUESTED_MEDIA_TYPE_IMAGE = 1;
    public static final int REQUESTED_MEDIA_TYPE_INVALID = 0;
    public static final int REQUESTED_MEDIA_TYPE_VIDEO = 2;
    private static String sCameraRollPath = null;
    private static CameraUI sCameraUI = null;
    private boolean mCameraBusy;
    private String mImagePath;
    private long mLastClientId;

    private CameraUI()
    {
        mLastClientId = 0L;
        mCameraBusy = false;
        mImagePath = null;
    }

    private String getCameraRollDirectory(Activity activity)
    {
        if (sCameraRollPath != null)
        {
            return sCameraRollPath;
        }
        Object obj;
        Object obj1;
        try
        {
            obj = activity.getContentResolver().insert(android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new ContentValues());
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            obj = null;
        }
        obj1 = obj;
        if (obj == null)
        {
            try
            {
                obj1 = activity.getContentResolver().insert(android.provider.MediaStore.Images.Media.getContentUri("phoneStorage"), new ContentValues());
            }
            catch (Exception exception)
            {
                exception = ((Exception) (obj));
            }
        }
        if (obj1 == null) goto _L2; else goto _L1
_L1:
        try
        {
            sCameraRollPath = getFileFromUri(((Uri) (obj1)), activity).getParent();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            activity.getContentResolver().delete(((Uri) (obj1)), null, null);
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            activity.getContentResolver().delete(((Uri) (obj1)), null, null);
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            activity.getContentResolver().delete(((Uri) (obj1)), null, null);
            throw obj;
        }
        activity.getContentResolver().delete(((Uri) (obj1)), null, null);
_L4:
        return sCameraRollPath;
_L2:
        activity = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
        if (activity.exists())
        {
            sCameraRollPath = activity.toString();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static CameraUI getCameraUI()
    {
        com/adobe/air/CameraUI;
        JVM INSTR monitorenter ;
        CameraUI cameraui;
        if (sCameraUI == null)
        {
            sCameraUI = new CameraUI();
            AndroidActivityWrapper.GetAndroidActivityWrapper().addActivityResultListener(sCameraUI);
        }
        cameraui = sCameraUI;
        com/adobe/air/CameraUI;
        JVM INSTR monitorexit ;
        return cameraui;
        Exception exception;
        exception;
        throw exception;
    }

    private Cursor getCursorFromUri(Uri uri, Activity activity, String as[])
    {
        uri = activity.getContentResolver().query(uri, as, null, null, null);
        boolean flag6 = uri.moveToFirst();
        if (flag6)
        {
            boolean flag;
            boolean flag3;
            if (uri != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (!uri.moveToFirst())
            {
                flag3 = true;
            } else
            {
                flag3 = false;
            }
            if (flag & flag3)
            {
                uri.close();
            }
            return uri;
        }
        uri.close();
        boolean flag1;
        boolean flag4;
        if (uri != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (!uri.moveToFirst())
        {
            flag4 = true;
        } else
        {
            flag4 = false;
        }
        if (flag1 & flag4)
        {
            uri.close();
        }
        return null;
        activity;
        uri = null;
_L2:
        boolean flag2;
        boolean flag5;
        if (uri != null)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (!uri.moveToFirst())
        {
            flag5 = true;
        } else
        {
            flag5 = false;
        }
        if (flag2 & flag5)
        {
            uri.close();
        }
        throw activity;
        activity;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private File getFileFromUri(Uri uri, Activity activity)
    {
        Object obj = null;
        activity = getCursorFromUri(uri, activity, new String[] {
            "_data"
        });
        uri = obj;
        if (activity != null)
        {
            try
            {
                uri = new File(activity.getString(activity.getColumnIndexOrThrow("_data")));
            }
            // Misplaced declaration of an exception variable
            catch (Uri uri)
            {
                activity.close();
                return null;
            }
            finally
            {
                activity.close();
            }
            activity.close();
        }
        return uri;
        throw uri;
    }

    private native void nativeOnCameraCancel(long l);

    private native void nativeOnCameraError(long l, int i);

    private native void nativeOnCameraResult(long l, String s, String s1, String s2);

    private void onCameraCancel()
    {
        if (mLastClientId != 0L)
        {
            nativeOnCameraCancel(mLastClientId);
            mLastClientId = 0L;
        }
    }

    private void onCameraError(int i)
    {
        if (mLastClientId != 0L)
        {
            nativeOnCameraError(mLastClientId, i);
            mLastClientId = 0L;
        }
    }

    private void onCameraResult(String s, String s1, String s2)
    {
        if (mLastClientId != 0L)
        {
            nativeOnCameraResult(mLastClientId, s, s1, s2);
            mLastClientId = 0L;
        }
    }

    private void processImageSuccessResult()
    {
        String s = new String("image");
        String s1 = (new File(mImagePath)).getName();
        String s2 = mImagePath;
        MediaScannerConnection.scanFile(AndroidActivityWrapper.GetAndroidActivityWrapper().getDefaultContext(), new String[] {
            s2
        }, null, null);
        onCameraResult(mImagePath, s, s1);
    }

    private void processVideoSuccessResult(Intent intent)
    {
        Cursor cursor;
        cursor = getCursorFromUri(intent.getData(), AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity(), new String[] {
            "_data", "mime_type", "_display_name"
        });
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_282;
        }
        int j;
        int k;
        int i = cursor.getColumnIndexOrThrow("_data");
        j = cursor.getColumnIndexOrThrow("mime_type");
        k = cursor.getColumnIndexOrThrow("_display_name");
        intent = cursor.getString(i);
        if (intent == null) goto _L2; else goto _L1
_L1:
        Object obj1 = toMediaType(cursor.getString(j));
        Object obj;
        obj = obj1;
        if (obj1 != null)
        {
            break MISSING_BLOCK_LABEL_117;
        }
        obj = new String("video");
        Object obj2 = cursor.getString(k);
        Object obj3;
        obj3 = obj;
        obj1 = obj2;
        if (obj2 != null)
        {
            break MISSING_BLOCK_LABEL_152;
        }
        obj1 = new String("");
        obj3 = obj;
_L5:
        cursor.close();
        obj = obj1;
        obj1 = intent;
        intent = ((Intent) (obj3));
_L3:
        if (intent != null && intent.equals("image") || intent.equals("video"))
        {
            onCameraResult(((String) (obj1)), intent, ((String) (obj)));
            return;
        } else
        {
            onCameraError(2);
            return;
        }
        intent;
        intent = null;
        obj = null;
        obj1 = null;
_L4:
        cursor.close();
          goto _L3
        intent;
        cursor.close();
        throw intent;
        obj;
        obj = null;
        obj1 = intent;
        intent = null;
          goto _L4
        obj;
        obj2 = intent;
        intent = ((Intent) (obj1));
        obj = null;
        obj1 = obj2;
          goto _L4
        obj1;
        obj1 = intent;
        intent = ((Intent) (obj));
        obj = null;
          goto _L4
        obj1;
        obj1 = intent;
        intent = ((Intent) (obj));
        obj = obj2;
          goto _L4
_L2:
        obj3 = null;
        obj1 = null;
          goto _L5
        intent = null;
        obj = null;
        obj1 = null;
          goto _L3
    }

    private int stillPictureWork()
    {
        String s;
        Activity activity;
        File file;
        activity = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity();
        if (activity == null)
        {
            return 4;
        }
        if (getCameraRollDirectory(activity) == null)
        {
            return 2;
        }
        s = (new SimpleDateFormat("'IMG'_yyyyMMdd_HHmmss")).format(new Date(System.currentTimeMillis()));
        s = (new StringBuilder()).append(getCameraRollDirectory(activity)).append("/").append(s).append(".jpg").toString();
        file = new File(s);
        if (file.exists())
        {
            return 2;
        }
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        intent.putExtra("output", Uri.fromFile(file));
        activity.startActivityForResult(intent, 3);
        int i = 0;
_L2:
        mImagePath = s;
        return i;
        Object obj;
        obj;
        obj = null;
        i = 3;
        continue; /* Loop/switch isn't completed */
        obj;
        obj = null;
        i = 2;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private String toMediaType(String s)
    {
        Object obj = null;
        String s1 = obj;
        if (s != null)
        {
            if (s.startsWith("image/"))
            {
                s1 = new String("image");
            } else
            {
                s1 = obj;
                if (s.startsWith("video/"))
                {
                    return new String("video");
                }
            }
        }
        return s1;
    }

    private int videoCaptureWork()
    {
        Activity activity;
        Intent intent;
        try
        {
            activity = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity();
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            return 3;
        }
        if (activity == null)
        {
            return 4;
        }
        intent = new Intent("android.media.action.VIDEO_CAPTURE");
        intent.putExtra("android.intent.extra.videoQuality", 0);
        activity.startActivityForResult(intent, 4);
        return 0;
    }

    public Object clone()
        throws CloneNotSupportedException
    {
        throw new CloneNotSupportedException();
    }

    public void launch(long l, int i)
    {
        if (l != 0L) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (mCameraBusy)
        {
            nativeOnCameraError(l, 1);
            return;
        }
        if (mLastClientId != 0L)
        {
            onCameraError(1);
        }
        mLastClientId = l;
        mCameraBusy = true;
        switch (i)
        {
        default:
            i = 3;
            break;

        case 1: // '\001'
            break; /* Loop/switch isn't completed */

        case 2: // '\002'
            break MISSING_BLOCK_LABEL_93;
        }
_L4:
        if (i != 0)
        {
            mCameraBusy = false;
            onCameraError(i);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        i = stillPictureWork();
          goto _L4
        i = videoCaptureWork();
          goto _L4
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        if (i == 3 || i == 4) goto _L2; else goto _L1
_L1:
        return;
_L2:
        mCameraBusy = false;
        if (mLastClientId == 0L) goto _L1; else goto _L3
_L3:
        switch (j)
        {
        default:
            if (mImagePath != null)
            {
                mImagePath = null;
            }
            onCameraError(2);
            return;

        case -1: 
            if (i == 3)
            {
                if (mImagePath != null)
                {
                    processImageSuccessResult();
                    mImagePath = null;
                    return;
                } else
                {
                    onCameraCancel();
                    return;
                }
            }
            if (i == 4)
            {
                processVideoSuccessResult(intent);
                return;
            }
            break;

        case 0: // '\0'
            if (mImagePath != null)
            {
                mImagePath = null;
            }
            onCameraCancel();
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void unregisterCallbacks(long l)
    {
        if (mLastClientId == l)
        {
            mLastClientId = 0L;
        }
    }

}
