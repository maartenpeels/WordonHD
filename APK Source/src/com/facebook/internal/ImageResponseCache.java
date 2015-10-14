// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import android.content.Context;
import com.facebook.LoggingBehavior;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

// Referenced classes of package com.facebook.internal:
//            FileLruCache, Logger, Utility

class ImageResponseCache
{
    private static class BufferedHttpInputStream extends BufferedInputStream
    {

        HttpURLConnection connection;

        public void close()
        {
            super.close();
            Utility.disconnectQuietly(connection);
        }

        BufferedHttpInputStream(InputStream inputstream, HttpURLConnection httpurlconnection)
        {
            super(inputstream, 8192);
            connection = httpurlconnection;
        }
    }


    static final String TAG = com/facebook/internal/ImageResponseCache.getSimpleName();
    private static volatile FileLruCache imageCache;

    ImageResponseCache()
    {
    }

    static void clearCache(Context context)
    {
        try
        {
            getCache(context).clearCache();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Logger.log(LoggingBehavior.CACHE, 5, TAG, (new StringBuilder("clearCache failed ")).append(context.getMessage()).toString());
        }
    }

    static FileLruCache getCache(Context context)
    {
        com/facebook/internal/ImageResponseCache;
        JVM INSTR monitorenter ;
        if (imageCache == null)
        {
            imageCache = new FileLruCache(context.getApplicationContext(), TAG, new FileLruCache.Limits());
        }
        context = imageCache;
        com/facebook/internal/ImageResponseCache;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    static InputStream getCachedImageStream(URI uri, Context context)
    {
        Object obj = null;
        InputStream inputstream = obj;
        if (uri != null)
        {
            inputstream = obj;
            if (isCDNURL(uri))
            {
                try
                {
                    inputstream = getCache(context).get(uri.toString());
                }
                // Misplaced declaration of an exception variable
                catch (URI uri)
                {
                    Logger.log(LoggingBehavior.CACHE, 5, TAG, uri.toString());
                    return null;
                }
            }
        }
        return inputstream;
    }

    static InputStream interceptAndCacheImageStream(Context context, HttpURLConnection httpurlconnection)
    {
        Object obj;
        InputStream inputstream;
        obj = null;
        if (httpurlconnection.getResponseCode() != 200)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        obj = httpurlconnection.getURL();
        inputstream = httpurlconnection.getInputStream();
        if (!isCDNURL(((URL) (obj)).toURI()))
        {
            break MISSING_BLOCK_LABEL_59;
        }
        obj = getCache(context).interceptAndPut(((URL) (obj)).toString(), new BufferedHttpInputStream(inputstream, httpurlconnection));
        return ((InputStream) (obj));
        context;
        return inputstream;
        context;
        return inputstream;
    }

    private static boolean isCDNURL(URI uri)
    {
        if (uri != null)
        {
            uri = uri.getHost();
            if (uri.endsWith("fbcdn.net"))
            {
                return true;
            }
            if (uri.startsWith("fbcdn") && uri.endsWith("akamaihd.net"))
            {
                return true;
            }
        }
        return false;
    }

}
