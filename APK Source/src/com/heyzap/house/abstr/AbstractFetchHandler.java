// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.abstr;

import android.content.Context;
import com.heyzap.analytics.Event;
import com.heyzap.analytics.MetricsTracker;
import com.heyzap.house.model.AdModel;
import com.heyzap.house.request.FetchRequest;
import com.heyzap.http.JsonHttpResponseHandler;
import com.heyzap.internal.Logger;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class AbstractFetchHandler extends JsonHttpResponseHandler
{
    public class AlreadyInstalledException extends Exception
    {

        private static final long serialVersionUID = 0xa04fef7fb114afd7L;
        final AbstractFetchHandler this$0;

        public AlreadyInstalledException(String s)
        {
            this$0 = AbstractFetchHandler.this;
            super(s);
        }
    }


    private static final com.heyzap.house.request.FetchRequest.OnFetchResponse DEFAULT_CALLBACK = new com.heyzap.house.request.FetchRequest.OnFetchResponse() {

        public void onFetchResponse(List list, FetchRequest fetchrequest, Throwable throwable)
        {
            Logger.log("(WARNING) No fetch callback handler registered.");
        }

        public void onModelsReceived(List list)
        {
        }

    };
    private com.heyzap.house.request.FetchRequest.OnFetchResponse callback;
    private Context context;
    private FetchRequest request;
    private AtomicBoolean sentResponse;

    public AbstractFetchHandler(Context context1, FetchRequest fetchrequest)
    {
        request = fetchrequest;
        context = context1;
        sentResponse = new AtomicBoolean(false);
    }

    public com.heyzap.house.request.FetchRequest.OnFetchResponse getCallback()
    {
        if (callback == null)
        {
            return DEFAULT_CALLBACK;
        } else
        {
            return callback;
        }
    }

    public Context getContext()
    {
        return context;
    }

    public FetchRequest getFetchRequest()
    {
        return request;
    }

    public void onFailure(int i, Header aheader[], Throwable throwable, JSONArray jsonarray)
    {
        onFetchReceived(new Throwable(String.format("HTTP Status: %d", new Object[] {
            Integer.valueOf(i)
        })));
    }

    public void onFailure(int i, Header aheader[], Throwable throwable, JSONObject jsonobject)
    {
        onFetchReceived(new Throwable(String.format("HTTP Status: %d", new Object[] {
            Integer.valueOf(i)
        })));
    }

    protected void onFailure(Throwable throwable)
    {
        if (!sentResponse.get())
        {
            Logger.format("(FETCH FAILED) Error: %s", new Object[] {
                throwable
            });
            Logger.trace(throwable);
            MetricsTracker.getEvent(request.getAdRequest()).fetchFailReason(throwable.getMessage()).commit();
            sentResponse.set(true);
            getCallback().onFetchResponse(null, getFetchRequest(), throwable);
        }
    }

    public void onFetchReceived(Throwable throwable)
    {
        onFailure(throwable);
    }

    public final void onFetchReceived(JSONObject jsonobject)
    {
        try
        {
            if (!jsonobject.has("status") || jsonobject.isNull("status") || jsonobject.getInt("status") > 200)
            {
                throw new Exception("no status");
            }
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            onFetchReceived(new Throwable("JSONException"));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            FetchRequest fetchrequest = getFetchRequest();
            fetchrequest.setRejectedImpressionId(jsonobject.getMessage());
            fetchrequest.execute(getContext());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            onFetchReceived(((Throwable) (jsonobject)));
            return;
        }
        jsonobject = onFetchSuccess(jsonobject);
        if (jsonobject == null)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        if (jsonobject.size() != 0)
        {
            break MISSING_BLOCK_LABEL_107;
        }
        throw new Exception("no_fill");
        MetricsTracker.getEvent(request.getAdRequest()).impressionId(((AdModel)jsonobject.get(0)).getImpressionId()).fetchFinishedTime(System.currentTimeMillis()).commit();
        if (shouldFireCallbackOnSuccess(jsonobject).booleanValue())
        {
            onSuccess(jsonobject);
            return;
        }
        getCallback().onModelsReceived(jsonobject);
        return;
    }

    protected abstract List onFetchSuccess(JSONObject jsonobject)
        throws Exception;

    public void onSuccess(int i, Header aheader[], JSONArray jsonarray)
    {
        onFetchReceived(new Throwable("default onSuccess"));
    }

    public void onSuccess(int i, Header aheader[], JSONObject jsonobject)
    {
        onFetchReceived(jsonobject);
    }

    protected void onSuccess(List list)
    {
        if (!sentResponse.get())
        {
            Logger.format("(FETCH) %s", new Object[] {
                list
            });
            sentResponse.set(true);
            for (Iterator iterator = list.iterator(); iterator.hasNext(); ((AdModel)iterator.next()).setIsReady(true)) { }
            getCallback().onFetchResponse(list, getFetchRequest(), null);
        }
    }

    public void setCallback(com.heyzap.house.request.FetchRequest.OnFetchResponse onfetchresponse)
    {
        callback = onfetchresponse;
    }

    public Boolean shouldFireCallbackOnSuccess(List list)
    {
        return Boolean.valueOf(true);
    }

}
