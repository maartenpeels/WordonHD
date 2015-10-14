// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.http;

import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;

// Referenced classes of package com.heyzap.http:
//            AsyncHttpClient

private static class  extends HttpEntityWrapper
{

    private GZIPInputStream stream;

    public void finalize()
        throws Throwable
    {
        super.finalize();
        if (stream == null)
        {
            break MISSING_BLOCK_LABEL_18;
        }
        stream.close();
        return;
        Exception exception;
        exception;
    }

    public InputStream getContent()
        throws IOException
    {
        stream = new GZIPInputStream(wrappedEntity.getContent());
        return stream;
    }

    public long getContentLength()
    {
        return -1L;
    }

    public (HttpEntity httpentity)
    {
        super(httpentity);
    }
}
