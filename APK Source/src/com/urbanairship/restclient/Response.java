// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.restclient;

import com.urbanairship.Logger;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.util.EntityUtils;

public class Response
{

    HttpResponse a;
    String b;

    public Response(HttpResponse httpresponse)
    {
        a = httpresponse;
    }

    public final int a()
    {
        if (a.getStatusLine() != null)
        {
            return a.getStatusLine().getStatusCode();
        } else
        {
            return -1;
        }
    }

    public final Header a(String s)
    {
        return a.getFirstHeader(s);
    }

    public final long b()
    {
        if (a.getEntity() != null)
        {
            return a.getEntity().getContentLength();
        } else
        {
            return 0L;
        }
    }

    public final InputStream c()
    {
        if (a.getEntity() != null)
        {
            return a.getEntity().getContent();
        } else
        {
            return null;
        }
    }

    public final String d()
    {
        if (b == null)
        {
            b = "";
            if (a.getEntity() != null)
            {
                try
                {
                    b = EntityUtils.toString(a.getEntity());
                }
                catch (IOException ioexception)
                {
                    Logger.e("Error fetching HTTP entity: IO Exception");
                }
            }
        }
        return b;
    }
}
