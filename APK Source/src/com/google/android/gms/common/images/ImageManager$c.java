// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.images;

import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.google.android.gms.internal.fb;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;

// Referenced classes of package com.google.android.gms.common.images:
//            ImageManager

private final class Cj
    implements Runnable
{

    final ImageManager Ci;
    private final ParcelFileDescriptor Cj;
    private final Uri mUri;

    public void run()
    {
        fb.ak("LoadBitmapFromDiskRunnable can't be executed in the main thread");
        if (Cj == null)
        {
            break MISSING_BLOCK_LABEL_155;
        }
        Object obj = BitmapFactory.decodeFileDescriptor(Cj.getFileDescriptor());
        boolean flag = false;
_L1:
        CountDownLatch countdownlatch;
        try
        {
            Cj.close();
        }
        catch (IOException ioexception)
        {
            Log.e("ImageManager", "closed failed", ioexception);
        }
_L2:
        countdownlatch = new CountDownLatch(1);
        ImageManager.f(Ci).post(new <init>(Ci, mUri, ((android.graphics.Bitmap) (obj)), flag, countdownlatch));
        try
        {
            countdownlatch.await();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            Log.w("ImageManager", (new StringBuilder()).append("Latch interrupted while posting ").append(mUri).toString());
        }
        break MISSING_BLOCK_LABEL_154;
        obj;
        Log.e("ImageManager", (new StringBuilder()).append("OOM while loading bitmap for uri: ").append(mUri).toString(), ((Throwable) (obj)));
        obj = null;
        flag = true;
          goto _L1
        return;
        obj = null;
        flag = false;
          goto _L2
    }

    public _cls9(ImageManager imagemanager, Uri uri, ParcelFileDescriptor parcelfiledescriptor)
    {
        Ci = imagemanager;
        super();
        mUri = uri;
        Cj = parcelfiledescriptor;
    }
}
