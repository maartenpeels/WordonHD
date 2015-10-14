// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.http;

import android.util.Log;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.heyzap.http:
//            TextHttpResponseHandler

public class JsonHttpResponseHandler extends TextHttpResponseHandler
{

    private static final String LOG_TAG = "JsonHttpResponseHandler";

    public JsonHttpResponseHandler()
    {
        super("UTF-8");
    }

    public JsonHttpResponseHandler(String s)
    {
        super(s);
    }

    public void onFailure(int i, Header aheader[], String s, Throwable throwable)
    {
    }

    public void onFailure(int i, Header aheader[], Throwable throwable, JSONArray jsonarray)
    {
    }

    public void onFailure(int i, Header aheader[], Throwable throwable, JSONObject jsonobject)
    {
    }

    public void onFailure(final int statusCode, final Header headers[], final byte responseBytes[], final Throwable throwable)
    {
        if (responseBytes != null)
        {
            (new Thread(new Runnable() {

                final JsonHttpResponseHandler this$0;
                final Header val$headers[];
                final byte val$responseBytes[];
                final int val$statusCode;
                final Throwable val$throwable;

                public void run()
                {
                    try
                    {
                        Object obj = parseResponse(responseBytes);
                        postRunnable(((_cls1) (obj)). new Runnable() {

                            final _cls2 this$1;
                            final Object val$jsonResponse;

                            public void run()
                            {
                                if (jsonResponse instanceof JSONObject)
                                {
                                    onFailure(statusCode, headers, throwable, (JSONObject)jsonResponse);
                                    return;
                                }
                                if (jsonResponse instanceof JSONArray)
                                {
                                    onFailure(statusCode, headers, throwable, (JSONArray)jsonResponse);
                                    return;
                                }
                                if (jsonResponse instanceof String)
                                {
                                    onFailure(statusCode, headers, (String)jsonResponse, throwable);
                                    return;
                                } else
                                {
                                    onFailure(statusCode, headers, new JSONException((new StringBuilder()).append("Unexpected response type ").append(jsonResponse.getClass().getName()).toString()), (JSONObject)null);
                                    return;
                                }
                            }

            
            {
                this$1 = final__pcls2;
                jsonResponse = Object.this;
                super();
            }
                        });
                        return;
                    }
                    catch (JSONException jsonexception)
                    {
                        postRunnable(jsonexception. new Runnable() {

                            final _cls2 this$1;
                            final JSONException val$ex;

                            public void run()
                            {
                                onFailure(statusCode, headers, ex, (JSONObject)null);
                            }

            
            {
                this$1 = final__pcls2;
                ex = JSONException.this;
                super();
            }
                        });
                    }
                }

            
            {
                this$0 = JsonHttpResponseHandler.this;
                responseBytes = abyte0;
                statusCode = i;
                headers = aheader;
                throwable = throwable1;
                super();
            }
            })).start();
            return;
        } else
        {
            Log.v("JsonHttpResponseHandler", "response body is null, calling onFailure(Throwable, JSONObject)");
            onFailure(statusCode, headers, throwable, (JSONObject)null);
            return;
        }
    }

    public void onSuccess(int i, Header aheader[], String s)
    {
    }

    public void onSuccess(int i, Header aheader[], JSONArray jsonarray)
    {
    }

    public void onSuccess(int i, Header aheader[], JSONObject jsonobject)
    {
    }

    public final void onSuccess(final int statusCode, final Header headers[], final byte responseBytes[])
    {
        if (statusCode != 204)
        {
            (new Thread(new Runnable() {

                final JsonHttpResponseHandler this$0;
                final Header val$headers[];
                final byte val$responseBytes[];
                final int val$statusCode;

                public void run()
                {
                    try
                    {
                        Object obj = parseResponse(responseBytes);
                        postRunnable(((_cls1) (obj)). new Runnable() {

                            final _cls1 this$1;
                            final Object val$jsonResponse;

                            public void run()
                            {
                                if (jsonResponse instanceof JSONObject)
                                {
                                    onSuccess(statusCode, headers, (JSONObject)jsonResponse);
                                    return;
                                }
                                if (jsonResponse instanceof JSONArray)
                                {
                                    onSuccess(statusCode, headers, (JSONArray)jsonResponse);
                                    return;
                                } else
                                {
                                    onFailure(statusCode, headers, new JSONException((new StringBuilder()).append("Unexpected response type ").append(jsonResponse.getClass().getName()).toString()), (JSONObject)null);
                                    return;
                                }
                            }

            
            {
                this$1 = final__pcls1;
                jsonResponse = Object.this;
                super();
            }
                        });
                        return;
                    }
                    catch (JSONException jsonexception)
                    {
                        postRunnable(jsonexception. new Runnable() {

                            final _cls1 this$1;
                            final JSONException val$ex;

                            public void run()
                            {
                                onFailure(statusCode, headers, ex, (JSONObject)null);
                            }

            
            {
                this$1 = final__pcls1;
                ex = JSONException.this;
                super();
            }
                        });
                    }
                }

            
            {
                this$0 = JsonHttpResponseHandler.this;
                responseBytes = abyte0;
                statusCode = i;
                headers = aheader;
                super();
            }
            })).start();
            return;
        } else
        {
            onSuccess(statusCode, headers, new JSONObject());
            return;
        }
    }

    protected Object parseResponse(byte abyte0[])
        throws JSONException
    {
        if (abyte0 != null) goto _L2; else goto _L1
_L1:
        abyte0 = null;
_L4:
        return abyte0;
_L2:
        Object obj;
        String s = getResponseString(abyte0, getCharset());
        abyte0 = s;
        if (s == null)
        {
            break; /* Loop/switch isn't completed */
        }
        s = s.trim();
        if (!s.startsWith("{"))
        {
            abyte0 = s;
            if (!s.startsWith("["))
            {
                break; /* Loop/switch isn't completed */
            }
        }
        obj = (new JSONTokener(s)).nextValue();
        abyte0 = s;
_L5:
        if (obj != null)
        {
            return obj;
        }
        if (true) goto _L4; else goto _L3
_L3:
        obj = null;
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
    }
}
