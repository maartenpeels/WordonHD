// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.http;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.conn.EofSensorInputStream;

// Referenced classes of package com.heyzap.http:
//            AsyncHttpResponseHandler

public abstract class FileAsyncHttpResponseHandler extends AsyncHttpResponseHandler
{

    static final boolean $assertionsDisabled;
    private static final String LOG_TAG = "FileAsyncHttpResponseHandler";
    private File mFile;

    public FileAsyncHttpResponseHandler(Context context)
    {
        mFile = getTemporaryFile(context);
    }

    public FileAsyncHttpResponseHandler(File file)
    {
        if (!$assertionsDisabled && file == null)
        {
            throw new AssertionError();
        } else
        {
            mFile = file;
            return;
        }
    }

    public boolean deleteTargetFile()
    {
        return getTargetFile() != null && getTargetFile().delete();
    }

    public byte[] getResponseData(HttpEntity httpentity)
        throws IOException
    {
        InputStream inputstream;
        int i;
        long l;
        i = 0;
        if (httpentity == null)
        {
            break MISSING_BLOCK_LABEL_140;
        }
        inputstream = httpentity.getContent();
        l = httpentity.getContentLength();
        httpentity = new FileOutputStream(getTargetFile());
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_140;
        }
        byte abyte0[] = new byte[4096];
_L1:
        int j = inputstream.read(abyte0);
        if (j == -1)
        {
            break MISSING_BLOCK_LABEL_118;
        }
        if (Thread.currentThread().isInterrupted())
        {
            break MISSING_BLOCK_LABEL_118;
        }
        i += j;
        httpentity.write(abyte0, 0, j);
        sendProgressMessage(i, (int)l);
          goto _L1
        Exception exception;
        exception;
        if (inputstream instanceof EofSensorInputStream)
        {
            ((EofSensorInputStream)inputstream).abortConnection();
        } else
        {
            inputstream.close();
        }
        httpentity.flush();
        httpentity.close();
        throw exception;
        if (inputstream instanceof EofSensorInputStream)
        {
            ((EofSensorInputStream)inputstream).abortConnection();
        } else
        {
            inputstream.close();
        }
        httpentity.flush();
        httpentity.close();
        return null;
    }

    protected File getTargetFile()
    {
        if (!$assertionsDisabled && mFile == null)
        {
            throw new AssertionError();
        } else
        {
            return mFile;
        }
    }

    protected File getTemporaryFile(Context context)
    {
        if (!$assertionsDisabled && context == null)
        {
            throw new AssertionError();
        }
        try
        {
            context = File.createTempFile("temp_", "_handled", context.getCacheDir());
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.e("FileAsyncHttpResponseHandler", "Cannot create temporary file", context);
            return null;
        }
        return context;
    }

    public abstract void onFailure(int i, Header aheader[], Throwable throwable, File file);

    public final void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        onFailure(i, aheader, throwable, getTargetFile());
    }

    public abstract void onSuccess(int i, Header aheader[], File file);

    public final void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        onSuccess(i, aheader, getTargetFile());
    }

    static 
    {
        boolean flag;
        if (!com/heyzap/http/FileAsyncHttpResponseHandler.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }
}
