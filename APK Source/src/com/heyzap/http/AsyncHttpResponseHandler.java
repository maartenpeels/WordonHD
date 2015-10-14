// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.http;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.URI;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;
import org.apache.http.util.ByteArrayBuffer;

// Referenced classes of package com.heyzap.http:
//            ResponseHandlerInterface

public abstract class AsyncHttpResponseHandler
    implements ResponseHandlerInterface
{
    static class ResponderHandler extends Handler
    {

        private final WeakReference mResponder;

        public void handleMessage(Message message)
        {
            AsyncHttpResponseHandler asynchttpresponsehandler = (AsyncHttpResponseHandler)mResponder.get();
            if (asynchttpresponsehandler != null)
            {
                asynchttpresponsehandler.handleMessage(message);
            }
        }

        ResponderHandler(AsyncHttpResponseHandler asynchttpresponsehandler)
        {
            mResponder = new WeakReference(asynchttpresponsehandler);
        }
    }


    protected static final int BUFFER_SIZE = 4096;
    protected static final int CANCEL_MESSAGE = 6;
    public static final String DEFAULT_CHARSET = "UTF-8";
    protected static final int FAILURE_MESSAGE = 1;
    protected static final int FINISH_MESSAGE = 3;
    private static final String LOG_TAG = "AsyncHttpResponseHandler";
    protected static final int PROGRESS_MESSAGE = 4;
    protected static final int RETRY_MESSAGE = 5;
    protected static final int START_MESSAGE = 2;
    protected static final int SUCCESS_MESSAGE = 0;
    private Handler handler;
    private Header requestHeaders[];
    private URI requestURI;
    private String responseCharset;
    private Boolean useSynchronousMode;

    public AsyncHttpResponseHandler()
    {
        responseCharset = "UTF-8";
        useSynchronousMode = Boolean.valueOf(false);
        requestURI = null;
        requestHeaders = null;
        postRunnable(null);
    }

    public String getCharset()
    {
        if (responseCharset == null)
        {
            return "UTF-8";
        } else
        {
            return responseCharset;
        }
    }

    public Header[] getRequestHeaders()
    {
        return requestHeaders;
    }

    public URI getRequestURI()
    {
        return requestURI;
    }

    public byte[] getResponseData(HttpEntity httpentity)
        throws IOException
    {
        byte abyte0[];
        InputStream inputstream;
        Object obj = null;
        abyte0 = obj;
        if (httpentity == null)
        {
            break MISSING_BLOCK_LABEL_168;
        }
        inputstream = httpentity.getContent();
        abyte0 = obj;
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_168;
        }
        long l = httpentity.getContentLength();
        if (l <= 0x7fffffffL)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        try
        {
            throw new IllegalArgumentException("HTTP entity too large to be buffered in memory");
        }
        // Misplaced declaration of an exception variable
        catch (HttpEntity httpentity) { }
        finally
        {
            inputstream.close();
        }
        System.gc();
        throw new IOException("File too large to fit into available memory");
        throw httpentity;
        int i;
        int j;
        if (l < 0L)
        {
            i = 4096;
        } else
        {
            i = (int)l;
        }
        httpentity = new ByteArrayBuffer(i);
        abyte0 = new byte[4096];
        i = 0;
_L1:
        j = inputstream.read(abyte0);
        if (j == -1)
        {
            break MISSING_BLOCK_LABEL_153;
        }
        if (Thread.currentThread().isInterrupted())
        {
            break MISSING_BLOCK_LABEL_153;
        }
        i += j;
        httpentity.append(abyte0, 0, j);
        sendProgressMessage(i, (int)l);
          goto _L1
        inputstream.close();
        abyte0 = httpentity.toByteArray();
        inputstream.close();
        return abyte0;
    }

    public boolean getUseSynchronousMode()
    {
        return useSynchronousMode.booleanValue();
    }

    protected void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 0 6: default 48
    //                   0 49
    //                   1 102
    //                   2 161
    //                   3 166
    //                   4 171
    //                   5 217
    //                   6 252;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L1:
        return;
_L2:
        if ((message = ((Message) ((Object[])(Object[])message.obj))) != null && message.length >= 3)
        {
            onSuccess(((Integer)message[0]).intValue(), (Header[])(Header[])message[1], (byte[])(byte[])message[2]);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        message = ((Message) ((Object[])(Object[])message.obj));
        if (message != null && message.length >= 4)
        {
            onFailure(((Integer)message[0]).intValue(), (Header[])(Header[])message[1], (byte[])(byte[])message[2], (Throwable)message[3]);
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
        onStart();
        return;
_L5:
        onFinish();
        return;
_L6:
        message = ((Message) ((Object[])(Object[])message.obj));
        if (message != null && message.length >= 2)
        {
            try
            {
                onProgress(((Integer)message[0]).intValue(), ((Integer)message[1]).intValue());
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Message message)
            {
                return;
            }
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
_L7:
        message = ((Message) ((Object[])(Object[])message.obj));
        if (message != null && message.length == 1)
        {
            onRetry(((Integer)message[0]).intValue());
            return;
        }
        if (true) goto _L1; else goto _L8
_L8:
        onCancel();
        return;
    }

    protected Message obtainMessage(int i, Object obj)
    {
        Message message;
        if (handler != null)
        {
            message = handler.obtainMessage(i, obj);
        } else
        {
            Message message1 = Message.obtain();
            message = message1;
            if (message1 != null)
            {
                message1.what = i;
                message1.obj = obj;
                return message1;
            }
        }
        return message;
    }

    public void onCancel()
    {
    }

    public abstract void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable);

    public void onFinish()
    {
    }

    public void onProgress(int i, int j)
    {
    }

    public void onRetry(int i)
    {
    }

    public void onStart()
    {
    }

    public abstract void onSuccess(int i, Header aheader[], byte abyte0[]);

    protected void postRunnable(Runnable runnable)
    {
        boolean flag;
        if (Looper.myLooper() == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            if (runnable != null)
            {
                runnable.run();
            }
            return;
        }
        if (handler == null)
        {
            handler = new ResponderHandler(this);
        }
        handler.post(runnable);
    }

    public final void sendCancelMessage()
    {
        sendMessage(obtainMessage(6, null));
    }

    public final void sendFailureMessage(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        sendMessage(obtainMessage(1, ((Object) (new Object[] {
            Integer.valueOf(i), aheader, abyte0, throwable
        }))));
    }

    public final void sendFinishMessage()
    {
        sendMessage(obtainMessage(3, null));
    }

    protected void sendMessage(Message message)
    {
        if (getUseSynchronousMode() || handler == null)
        {
            handleMessage(message);
        } else
        if (!Thread.currentThread().isInterrupted())
        {
            handler.sendMessage(message);
            return;
        }
    }

    public final void sendProgressMessage(int i, int j)
    {
        sendMessage(obtainMessage(4, ((Object) (new Object[] {
            Integer.valueOf(i), Integer.valueOf(j)
        }))));
    }

    public void sendResponseMessage(HttpResponse httpresponse)
        throws IOException
    {
        StatusLine statusline;
        byte abyte0[];
label0:
        {
            if (!Thread.currentThread().isInterrupted())
            {
                statusline = httpresponse.getStatusLine();
                abyte0 = getResponseData(httpresponse.getEntity());
                if (!Thread.currentThread().isInterrupted())
                {
                    if (statusline.getStatusCode() < 300)
                    {
                        break label0;
                    }
                    sendFailureMessage(statusline.getStatusCode(), httpresponse.getAllHeaders(), abyte0, new HttpResponseException(statusline.getStatusCode(), statusline.getReasonPhrase()));
                }
            }
            return;
        }
        sendSuccessMessage(statusline.getStatusCode(), httpresponse.getAllHeaders(), abyte0);
    }

    public final void sendRetryMessage(int i)
    {
        sendMessage(obtainMessage(5, ((Object) (new Object[] {
            Integer.valueOf(i)
        }))));
    }

    public final void sendStartMessage()
    {
        sendMessage(obtainMessage(2, null));
    }

    public final void sendSuccessMessage(int i, Header aheader[], byte abyte0[])
    {
        sendMessage(obtainMessage(0, ((Object) (new Object[] {
            Integer.valueOf(i), aheader, abyte0
        }))));
    }

    public void setCharset(String s)
    {
        responseCharset = s;
    }

    public void setRequestHeaders(Header aheader[])
    {
        requestHeaders = aheader;
    }

    public void setRequestURI(URI uri)
    {
        requestURI = uri;
    }

    public void setUseSynchronousMode(boolean flag)
    {
        useSynchronousMode = Boolean.valueOf(flag);
    }
}
