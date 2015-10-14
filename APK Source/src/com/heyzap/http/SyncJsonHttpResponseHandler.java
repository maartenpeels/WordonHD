// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.http;

import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.http:
//            JsonHttpResponseHandler

public class SyncJsonHttpResponseHandler extends JsonHttpResponseHandler
{

    public Throwable error;
    public Boolean finished;
    public JSONObject responseObj;

    public SyncJsonHttpResponseHandler()
    {
        responseObj = null;
        error = null;
        finished = Boolean.valueOf(false);
        setUseSynchronousMode(true);
    }

    public Throwable getError()
    {
        return error;
    }

    public JSONObject getResponse()
    {
        return responseObj;
    }

    public Boolean hasError()
    {
        boolean flag;
        if (error != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return Boolean.valueOf(flag);
    }

    public Boolean isFinished()
    {
        return finished;
    }

    public void onFailure(int i, Header aheader[], String s, Throwable throwable)
    {
        error = throwable;
        finished = Boolean.valueOf(true);
        this;
        JVM INSTR monitorenter ;
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        return;
        aheader;
        this;
        JVM INSTR monitorexit ;
        throw aheader;
    }

    public void onFailure(int i, Header aheader[], Throwable throwable, JSONArray jsonarray)
    {
        error = throwable;
        finished = Boolean.valueOf(true);
        this;
        JVM INSTR monitorenter ;
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        return;
        aheader;
        this;
        JVM INSTR monitorexit ;
        throw aheader;
    }

    public void onFailure(int i, Header aheader[], Throwable throwable, JSONObject jsonobject)
    {
        error = throwable;
        finished = Boolean.valueOf(true);
        this;
        JVM INSTR monitorenter ;
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        return;
        aheader;
        this;
        JVM INSTR monitorexit ;
        throw aheader;
    }

    public void onSuccess(int i, Header aheader[], JSONArray jsonarray)
    {
        finished = Boolean.valueOf(true);
        error = new Throwable("Wrong response type");
        this;
        JVM INSTR monitorenter ;
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        return;
        aheader;
        this;
        JVM INSTR monitorexit ;
        throw aheader;
    }

    public void onSuccess(int i, Header aheader[], JSONObject jsonobject)
    {
        responseObj = jsonobject;
        finished = Boolean.valueOf(true);
        this;
        JVM INSTR monitorenter ;
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        return;
        aheader;
        this;
        JVM INSTR monitorexit ;
        throw aheader;
    }
}
