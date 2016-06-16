// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.http;

import android.os.SystemClock;
import com.heyzap.internal.Logger;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.HashSet;
import java.util.Iterator;
import javax.net.ssl.SSLException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;

class RetryHandler
    implements HttpRequestRetryHandler
{

    private static HashSet exceptionBlacklist;
    private static HashSet exceptionWhitelist;
    private final int maxRetries;
    private final int retrySleepTimeMS;

    public RetryHandler(int i, int j)
    {
        maxRetries = i;
        retrySleepTimeMS = j;
    }

    static void addClassToBlacklist(Class class1)
    {
        exceptionBlacklist.add(class1);
    }

    static void addClassToWhitelist(Class class1)
    {
        exceptionWhitelist.add(class1);
    }

    protected boolean isInList(HashSet hashset, Throwable throwable)
    {
        for (hashset = hashset.iterator(); hashset.hasNext();)
        {
            if (((Class)hashset.next()).isInstance(throwable))
            {
                return true;
            }
        }

        return false;
    }

    public boolean retryRequest(IOException ioexception, int i, HttpContext httpcontext)
    {
        Boolean boolean1 = (Boolean)httpcontext.getAttribute("http.request_sent");
        boolean flag;
        boolean flag1;
        if (boolean1 != null && boolean1.booleanValue())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (i > maxRetries)
        {
            flag1 = false;
        } else
        if (isInList(exceptionBlacklist, ioexception))
        {
            flag1 = false;
        } else
        if (isInList(exceptionWhitelist, ioexception))
        {
            flag1 = true;
        } else
        if (!flag)
        {
            flag1 = true;
        } else
        {
            flag1 = true;
        }
        if (flag1 && (HttpUriRequest)httpcontext.getAttribute("http.request") == null)
        {
            return false;
        }
        if (flag1)
        {
            SystemClock.sleep(retrySleepTimeMS);
        } else
        {
            Logger.trace(ioexception);
        }
        return flag1;
    }

    static 
    {
        exceptionWhitelist = new HashSet();
        exceptionBlacklist = new HashSet();
        exceptionWhitelist.add(org/apache/http/NoHttpResponseException);
        exceptionWhitelist.add(java/net/UnknownHostException);
        exceptionWhitelist.add(java/net/SocketException);
        exceptionBlacklist.add(java/io/InterruptedIOException);
        exceptionBlacklist.add(javax/net/ssl/SSLException);
    }
}
