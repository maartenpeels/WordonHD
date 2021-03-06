// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.app.Application;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.MediaScannerConnection;
import android.net.Uri;
import java.io.OutputStream;
import java.util.Date;

// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper

public class AndroidMediaManager
{

    public static final int ERROR_ACTIVITY_DESTROYED = 2;
    public static final int ERROR_IMAGE_PICKER_NOT_FOUND = 1;
    private static long MediaManagerObjectPointer = 0L;
    private static final String PHONE_STORAGE = "phoneStorage";
    private AndroidActivityWrapper.ActivityResultCallback mActivityResultCB;
    private boolean mCallbacksRegistered;

    public AndroidMediaManager()
    {
        mCallbacksRegistered = false;
        mActivityResultCB = null;
        MediaManagerObjectPointer = 0L;
    }

    public static boolean AddImage(Application application, Bitmap bitmap, boolean flag)
    {
        if (application == null)
        {
            break MISSING_BLOCK_LABEL_122;
        }
        ContentResolver contentresolver = application.getContentResolver();
        Object obj;
        int i;
        try
        {
            application = android.provider.MediaStore.Images.Media.insertImage(contentresolver, bitmap, null, null);
        }
        // Misplaced declaration of an exception variable
        catch (Application application)
        {
            application = null;
        }
        obj = application;
        if (application == null)
        {
            obj = SaveImage("phoneStorage", contentresolver, bitmap, flag);
        }
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_122;
        }
        application = contentresolver.query(Uri.parse(((String) (obj))), new String[] {
            "_data"
        }, null, null, null);
        if (application != null)
        {
            try
            {
                i = application.getColumnIndexOrThrow("_data");
                application.moveToFirst();
                application = application.getString(i);
                MediaScannerConnection.scanFile(AndroidActivityWrapper.GetAndroidActivityWrapper().getDefaultContext(), new String[] {
                    application
                }, null, null);
            }
            // Misplaced declaration of an exception variable
            catch (Application application) { }
        }
        return true;
        return false;
    }

    private static String SaveImage(String s, ContentResolver contentresolver, Bitmap bitmap, boolean flag)
    {
        Object obj = new ContentValues();
        if (!flag) goto _L2; else goto _L1
_L1:
        ((ContentValues) (obj)).put("mime_type", "image/jpeg");
_L3:
        Date date = new Date();
        ((ContentValues) (obj)).put("datetaken", Long.valueOf(date.getTime()));
        ((ContentValues) (obj)).put("date_added", Long.valueOf(date.getTime() / 1000L));
        obj = contentresolver.insert(android.provider.MediaStore.Images.Media.getContentUri(s), ((ContentValues) (obj)));
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_240;
        }
        OutputStream outputstream = contentresolver.openOutputStream(((Uri) (obj)));
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 90, outputstream);
        long l = ContentUris.parseId(((Uri) (obj)));
        SaveThumbnail(s, contentresolver, SaveThumbnail(s, contentresolver, bitmap, l, 320F, 240F, 1), l, 50F, 50F, 3);
        outputstream.close();
        s = ((String) (obj));
_L4:
        if (s != null)
        {
            return s.toString();
        } else
        {
            return null;
        }
_L2:
        ((ContentValues) (obj)).put("mime_type", "image/png");
          goto _L3
        s;
        bitmap = null;
_L5:
        s = bitmap;
        if (bitmap != null)
        {
            contentresolver.delete(bitmap, null, null);
            s = null;
        }
          goto _L4
        s;
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_234;
        }
        contentresolver.delete(((Uri) (obj)), null, null);
        s = null;
_L6:
        outputstream.close();
          goto _L4
        bitmap;
        bitmap = s;
          goto _L5
        s;
        try
        {
            outputstream.close();
            throw s;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            bitmap = ((Bitmap) (obj));
        }
          goto _L5
        s = ((String) (obj));
          goto _L6
        s = ((String) (obj));
          goto _L4
    }

    private static final Bitmap SaveThumbnail(String s, ContentResolver contentresolver, Bitmap bitmap, long l, float f, float f1, int i)
    {
        if (bitmap != null) goto _L2; else goto _L1
_L1:
        Object obj = null;
_L4:
        return ((Bitmap) (obj));
_L2:
        obj = new Matrix();
        try
        {
            ((Matrix) (obj)).setScale(f / (float)bitmap.getWidth(), f1 / (float)bitmap.getHeight());
            obj = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), ((Matrix) (obj)), true);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        bitmap = new ContentValues(4);
        bitmap.put("kind", Integer.valueOf(i));
        bitmap.put("image_id", Integer.valueOf((int)l));
        bitmap.put("height", Integer.valueOf(((Bitmap) (obj)).getHeight()));
        bitmap.put("width", Integer.valueOf(((Bitmap) (obj)).getWidth()));
        s = contentresolver.insert(android.provider.MediaStore.Images.Thumbnails.getContentUri(s), bitmap);
        bitmap = s;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_158;
        }
        bitmap = contentresolver.openOutputStream(s);
        ((Bitmap) (obj)).compress(android.graphics.Bitmap.CompressFormat.JPEG, 100, bitmap);
        bitmap.close();
        bitmap = s;
_L5:
        if (bitmap == null)
        {
            return null;
        }
        if (true) goto _L4; else goto _L3
_L3:
        s;
        s = null;
_L6:
        bitmap = s;
        if (s != null)
        {
            contentresolver.delete(s, null, null);
            bitmap = null;
        }
          goto _L5
        bitmap;
          goto _L6
    }

    private void doCallbackRegistration(boolean flag)
    {
        mCallbacksRegistered = flag;
        if (flag)
        {
            if (mActivityResultCB == null)
            {
                mActivityResultCB = new AndroidActivityWrapper.ActivityResultCallback() {

                    final AndroidMediaManager this$0;

                    public void onActivityResult(int i, int j, Intent intent)
                    {
                        while (i != 2 || AndroidMediaManager.MediaManagerObjectPointer == 0L || !mCallbacksRegistered) 
                        {
                            return;
                        }
                        onBrowseImageResult(j, intent, AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity());
                        unregisterCallbacks();
                    }

            
            {
                this$0 = AndroidMediaManager.this;
                super();
            }
                };
            }
            AndroidActivityWrapper.GetAndroidActivityWrapper().addActivityResultListener(mActivityResultCB);
        } else
        if (mActivityResultCB != null)
        {
            AndroidActivityWrapper.GetAndroidActivityWrapper().removeActivityResultListener(mActivityResultCB);
            mActivityResultCB = null;
            return;
        }
    }

    public int BrowseImage(long l)
    {
        int i = 0;
        AndroidActivityWrapper androidactivitywrapper;
        Intent intent;
        androidactivitywrapper = AndroidActivityWrapper.GetAndroidActivityWrapper();
        intent = new Intent();
        intent.setType("image/*");
        intent.setAction("android.intent.action.PICK");
        if (androidactivitywrapper.getActivity() == null) goto _L2; else goto _L1
_L1:
        androidactivitywrapper.getActivity().startActivityForResult(Intent.createChooser(intent, ""), 2);
_L4:
        if (i == 0)
        {
            registerCallbacks();
            MediaManagerObjectPointer = l;
        }
        return i;
_L2:
        i = 2;
        continue; /* Loop/switch isn't completed */
        ActivityNotFoundException activitynotfoundexception;
        activitynotfoundexception;
        i = 1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onBrowseImageResult(int i, Intent intent, Activity activity)
    {
        if (i != 0) goto _L2; else goto _L1
_L1:
        useImagePickerData(MediaManagerObjectPointer, false, true, "", "", "");
_L4:
        return;
_L2:
        if (i != -1) goto _L4; else goto _L3
_L3:
        activity = activity.managedQuery(intent.getData(), new String[] {
            "_data", "mime_type", "_display_name"
        }, null, null, null);
        if (activity == null)
        {
            int j;
            try
            {
                useImagePickerData(MediaManagerObjectPointer, false, false, "", "", "");
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Intent intent)
            {
                useImagePickerData(MediaManagerObjectPointer, false, false, "", "", "");
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Intent intent)
            {
                useImagePickerData(MediaManagerObjectPointer, false, false, "", "", "");
            }
            break MISSING_BLOCK_LABEL_181;
        }
        i = activity.getColumnIndexOrThrow("_data");
        j = activity.getColumnIndexOrThrow("_display_name");
        activity.moveToFirst();
        intent = activity.getString(i);
        activity = activity.getString(j);
        useImagePickerData(MediaManagerObjectPointer, true, true, intent, "image", activity);
        return;
    }

    public void registerCallbacks()
    {
        doCallbackRegistration(true);
    }

    public void unregisterCallbacks()
    {
        doCallbackRegistration(false);
    }

    public native void useImagePickerData(long l, boolean flag, boolean flag1, String s, String s1, String s2);


}
