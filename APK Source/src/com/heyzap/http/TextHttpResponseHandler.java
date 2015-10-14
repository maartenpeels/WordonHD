// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.http;

import android.util.Log;
import java.io.UnsupportedEncodingException;
import org.apache.http.Header;

// Referenced classes of package com.heyzap.http:
//            AsyncHttpResponseHandler

public abstract class TextHttpResponseHandler extends AsyncHttpResponseHandler
{

    private static final String LOG_TAG = "TextHttpResponseHandler";

    public TextHttpResponseHandler()
    {
        this("UTF-8");
    }

    public TextHttpResponseHandler(String s)
    {
        setCharset(s);
    }

    public static String getResponseString(byte abyte0[], String s)
    {
        if (abyte0 == null)
        {
            return null;
        }
        try
        {
            abyte0 = new String(abyte0, s);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            Log.e("TextHttpResponseHandler", "Encoding response into string failed", abyte0);
            return null;
        }
        return abyte0;
    }

    public abstract void onFailure(int i, Header aheader[], String s, Throwable throwable);

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        onFailure(i, aheader, getResponseString(abyte0, getCharset()), throwable);
    }

    public abstract void onSuccess(int i, Header aheader[], String s);

    public void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        onSuccess(i, aheader, getResponseString(abyte0, getCharset()));
    }
}
