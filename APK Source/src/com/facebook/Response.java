// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import com.facebook.internal.CacheableRequestBatch;
import com.facebook.internal.FileLruCache;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.facebook.model.GraphObject;
import com.facebook.model.GraphObjectList;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.facebook:
//            Request, FacebookRequestError, Session, FacebookException, 
//            LoggingBehavior, RequestBatch

public class Response
{
    static interface PagedResults
        extends GraphObject
    {

        public abstract GraphObjectList getData();

        public abstract PagingInfo getPaging();
    }

    public static final class PagingDirection extends Enum
    {

        private static final PagingDirection $VALUES[];
        public static final PagingDirection NEXT;
        public static final PagingDirection PREVIOUS;

        public static PagingDirection valueOf(String s)
        {
            return (PagingDirection)Enum.valueOf(com/facebook/Response$PagingDirection, s);
        }

        public static PagingDirection[] values()
        {
            return (PagingDirection[])$VALUES.clone();
        }

        static 
        {
            NEXT = new PagingDirection("NEXT", 0);
            PREVIOUS = new PagingDirection("PREVIOUS", 1);
            $VALUES = (new PagingDirection[] {
                NEXT, PREVIOUS
            });
        }

        private PagingDirection(String s, int i)
        {
            super(s, i);
        }
    }

    static interface PagingInfo
        extends GraphObject
    {

        public abstract String getNext();

        public abstract String getPrevious();
    }


    static final boolean $assertionsDisabled;
    private static final String BODY_KEY = "body";
    private static final String CODE_KEY = "code";
    private static final int INVALID_SESSION_FACEBOOK_ERROR_CODE = 190;
    public static final String NON_JSON_RESPONSE_PROPERTY = "FACEBOOK_NON_JSON_RESULT";
    private static final String RESPONSE_CACHE_TAG = "ResponseCache";
    private static final String RESPONSE_LOG_TAG = "Response";
    public static final String SUCCESS_KEY = "success";
    private static FileLruCache responseCache;
    private final HttpURLConnection connection;
    private final FacebookRequestError error;
    private final GraphObject graphObject;
    private final GraphObjectList graphObjectList;
    private final boolean isFromCache;
    private final String rawResponse;
    private final Request request;

    Response(Request request1, HttpURLConnection httpurlconnection, FacebookRequestError facebookrequesterror)
    {
        this(request1, httpurlconnection, null, null, null, false, facebookrequesterror);
    }

    Response(Request request1, HttpURLConnection httpurlconnection, String s, GraphObject graphobject, GraphObjectList graphobjectlist, boolean flag, FacebookRequestError facebookrequesterror)
    {
        request = request1;
        connection = httpurlconnection;
        rawResponse = s;
        graphObject = graphobject;
        graphObjectList = graphobjectlist;
        isFromCache = flag;
        error = facebookrequesterror;
    }

    Response(Request request1, HttpURLConnection httpurlconnection, String s, GraphObject graphobject, boolean flag)
    {
        this(request1, httpurlconnection, s, graphobject, null, flag, null);
    }

    Response(Request request1, HttpURLConnection httpurlconnection, String s, GraphObjectList graphobjectlist, boolean flag)
    {
        this(request1, httpurlconnection, s, null, graphobjectlist, flag, null);
    }

    static List constructErrorResponses(List list, HttpURLConnection httpurlconnection, FacebookException facebookexception)
    {
        int j = list.size();
        ArrayList arraylist = new ArrayList(j);
        for (int i = 0; i < j; i++)
        {
            arraylist.add(new Response((Request)list.get(i), httpurlconnection, new FacebookRequestError(httpurlconnection, facebookexception)));
        }

        return arraylist;
    }

    private static Response createResponseFromObject(Request request1, HttpURLConnection httpurlconnection, Object obj, boolean flag, Object obj1)
    {
        if (obj instanceof JSONObject)
        {
            obj = (JSONObject)obj;
            obj1 = FacebookRequestError.checkResponseAndCreateError(((JSONObject) (obj)), obj1, httpurlconnection);
            if (obj1 != null)
            {
                if (((FacebookRequestError) (obj1)).getErrorCode() == 190)
                {
                    obj = request1.getSession();
                    if (obj != null)
                    {
                        ((Session) (obj)).closeAndClearTokenInformation();
                    }
                }
                return new Response(request1, httpurlconnection, ((FacebookRequestError) (obj1)));
            }
            obj = Utility.getStringPropertyAsJSON(((JSONObject) (obj)), "body", "FACEBOOK_NON_JSON_RESULT");
            if (obj instanceof JSONObject)
            {
                obj1 = com.facebook.model.GraphObject.Factory.create((JSONObject)obj);
                return new Response(request1, httpurlconnection, obj.toString(), ((GraphObject) (obj1)), flag);
            }
            if (obj instanceof JSONArray)
            {
                obj1 = com.facebook.model.GraphObject.Factory.createList((JSONArray)obj, com/facebook/model/GraphObject);
                return new Response(request1, httpurlconnection, obj.toString(), ((GraphObjectList) (obj1)), flag);
            }
            obj = JSONObject.NULL;
        }
        if (obj == JSONObject.NULL)
        {
            return new Response(request1, httpurlconnection, obj.toString(), ((GraphObject) (null)), flag);
        } else
        {
            throw new FacebookException((new StringBuilder("Got unexpected object type in response, class: ")).append(obj.getClass().getSimpleName()).toString());
        }
    }

    private static List createResponsesFromObject(HttpURLConnection httpurlconnection, List list, Object obj, boolean flag)
    {
        ArrayList arraylist;
        int k;
        if (!$assertionsDisabled && httpurlconnection == null && !flag)
        {
            throw new AssertionError();
        }
        k = list.size();
        arraylist = new ArrayList(k);
        if (k != 1) goto _L2; else goto _L1
_L1:
        Request request1 = (Request)list.get(0);
        JSONObject jsonobject;
        jsonobject = new JSONObject();
        jsonobject.put("body", obj);
        if (httpurlconnection == null) goto _L4; else goto _L3
_L3:
        int i = httpurlconnection.getResponseCode();
_L5:
        Object obj1;
        jsonobject.put("code", i);
        obj1 = new JSONArray();
        ((JSONArray) (obj1)).put(jsonobject);
_L6:
        if (!(obj1 instanceof JSONArray) || ((JSONArray)obj1).length() != k)
        {
            throw new FacebookException("Unexpected number of results");
        }
        break MISSING_BLOCK_LABEL_225;
_L4:
        i = 200;
          goto _L5
        obj1;
        arraylist.add(new Response(request1, httpurlconnection, new FacebookRequestError(httpurlconnection, ((Exception) (obj1)))));
        obj1 = obj;
          goto _L6
        obj1;
        arraylist.add(new Response(request1, httpurlconnection, new FacebookRequestError(httpurlconnection, ((Exception) (obj1)))));
_L2:
        obj1 = obj;
          goto _L6
        obj1 = (JSONArray)obj1;
        int j = 0;
        while (j < ((JSONArray) (obj1)).length()) 
        {
            Request request2 = (Request)list.get(j);
            try
            {
                arraylist.add(createResponseFromObject(request2, httpurlconnection, ((JSONArray) (obj1)).get(j), flag, obj));
            }
            catch (JSONException jsonexception)
            {
                arraylist.add(new Response(request2, httpurlconnection, new FacebookRequestError(httpurlconnection, jsonexception)));
            }
            catch (FacebookException facebookexception)
            {
                arraylist.add(new Response(request2, httpurlconnection, new FacebookRequestError(httpurlconnection, facebookexception)));
            }
            j++;
        }
        return arraylist;
          goto _L5
    }

    static List createResponsesFromStream(InputStream inputstream, HttpURLConnection httpurlconnection, RequestBatch requestbatch, boolean flag)
    {
        inputstream = Utility.readStreamToString(inputstream);
        Logger.log(LoggingBehavior.INCLUDE_RAW_RESPONSES, "Response", "Response (raw)\n  Size: %d\n  Response:\n%s\n", new Object[] {
            Integer.valueOf(inputstream.length()), inputstream
        });
        return createResponsesFromString(inputstream, httpurlconnection, requestbatch, flag);
    }

    static List createResponsesFromString(String s, HttpURLConnection httpurlconnection, RequestBatch requestbatch, boolean flag)
    {
        httpurlconnection = createResponsesFromObject(httpurlconnection, requestbatch, (new JSONTokener(s)).nextValue(), flag);
        Logger.log(LoggingBehavior.REQUESTS, "Response", "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n", new Object[] {
            requestbatch.getId(), Integer.valueOf(s.length()), httpurlconnection
        });
        return httpurlconnection;
    }

    static List fromHttpConnection(HttpURLConnection httpurlconnection, RequestBatch requestbatch)
    {
        if (!(requestbatch instanceof CacheableRequestBatch)) goto _L2; else goto _L1
_L1:
        Object obj;
        Object obj1;
        FileLruCache filelrucache;
        Object obj2 = (CacheableRequestBatch)requestbatch;
        filelrucache = getResponseCache();
        obj1 = ((CacheableRequestBatch) (obj2)).getCacheKeyOverride();
        obj = obj1;
        if (Utility.isNullOrEmpty(((String) (obj1))))
        {
            if (requestbatch.size() == 1)
            {
                obj = requestbatch.get(0).getUrlForSingleRequest();
            } else
            {
                Logger.log(LoggingBehavior.REQUESTS, "ResponseCache", "Not using cache for cacheable request because no key was specified");
                obj = obj1;
            }
        }
        if (((CacheableRequestBatch) (obj2)).getForceRoundTrip() || filelrucache == null || Utility.isNullOrEmpty(((String) (obj)))) goto _L4; else goto _L3
_L3:
        obj1 = filelrucache.get(((String) (obj)));
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_113;
        }
        obj2 = createResponsesFromStream(((InputStream) (obj1)), null, requestbatch, true);
        Utility.closeQuietly(((java.io.Closeable) (obj1)));
        return ((List) (obj2));
        Utility.closeQuietly(((java.io.Closeable) (obj1)));
        Object obj3 = obj1;
        obj1 = obj;
        obj = obj3;
_L25:
        Object obj9;
        Object obj10;
        Object obj11;
        Object obj12;
        Object obj13;
        obj9 = obj;
        obj10 = obj;
        obj11 = obj;
        obj12 = obj;
        obj13 = obj;
        if (httpurlconnection.getResponseCode() < 400) goto _L6; else goto _L5
_L5:
        obj9 = obj;
        obj10 = obj;
        obj11 = obj;
        obj12 = obj;
        obj13 = obj;
        obj = httpurlconnection.getErrorStream();
_L9:
        obj1 = createResponsesFromStream(((InputStream) (obj)), httpurlconnection, requestbatch, false);
        Utility.closeQuietly(((java.io.Closeable) (obj)));
        return ((List) (obj1));
        obj1;
        obj1 = null;
_L23:
        Utility.closeQuietly(((java.io.Closeable) (obj1)));
        Object obj4 = obj1;
        obj1 = obj;
        obj = obj4;
        continue; /* Loop/switch isn't completed */
        obj1;
        obj1 = null;
_L22:
        Utility.closeQuietly(((java.io.Closeable) (obj1)));
        Object obj5 = obj1;
        obj1 = obj;
        obj = obj5;
        continue; /* Loop/switch isn't completed */
        obj1;
        obj1 = null;
_L21:
        Utility.closeQuietly(((java.io.Closeable) (obj1)));
        Object obj6 = obj1;
        obj1 = obj;
        obj = obj6;
        continue; /* Loop/switch isn't completed */
        httpurlconnection;
        obj1 = null;
_L20:
        Utility.closeQuietly(((java.io.Closeable) (obj1)));
        throw httpurlconnection;
_L6:
        obj9 = obj;
        obj10 = obj;
        obj11 = obj;
        obj12 = obj;
        obj13 = obj;
        InputStream inputstream = httpurlconnection.getInputStream();
        if (filelrucache == null || obj1 == null || inputstream == null) goto _L8; else goto _L7
_L7:
        obj9 = inputstream;
        obj10 = inputstream;
        obj11 = inputstream;
        obj12 = inputstream;
        obj13 = inputstream;
        obj1 = filelrucache.interceptAndPut(((String) (obj1)), inputstream);
        obj = obj1;
        if (obj1 != null) goto _L9; else goto _L8
_L8:
        obj = inputstream;
          goto _L9
        Object obj7;
        obj7;
        obj1 = obj9;
_L19:
        obj = obj1;
        Logger.log(LoggingBehavior.REQUESTS, "Response", "Response <Error>: %s", new Object[] {
            obj7
        });
        obj = obj1;
        httpurlconnection = constructErrorResponses(requestbatch, httpurlconnection, ((FacebookException) (obj7)));
        Utility.closeQuietly(((java.io.Closeable) (obj1)));
        return httpurlconnection;
        obj7;
        obj1 = obj10;
_L17:
        obj = obj1;
        Logger.log(LoggingBehavior.REQUESTS, "Response", "Response <Error>: %s", new Object[] {
            obj7
        });
        obj = obj1;
        httpurlconnection = constructErrorResponses(requestbatch, httpurlconnection, new FacebookException(((Throwable) (obj7))));
        Utility.closeQuietly(((java.io.Closeable) (obj1)));
        return httpurlconnection;
        obj7;
        obj1 = obj11;
_L15:
        obj = obj1;
        Logger.log(LoggingBehavior.REQUESTS, "Response", "Response <Error>: %s", new Object[] {
            obj7
        });
        obj = obj1;
        httpurlconnection = constructErrorResponses(requestbatch, httpurlconnection, new FacebookException(((Throwable) (obj7))));
        Utility.closeQuietly(((java.io.Closeable) (obj1)));
        return httpurlconnection;
        obj7;
        obj1 = obj12;
_L13:
        obj = obj1;
        Logger.log(LoggingBehavior.REQUESTS, "Response", "Response <Error>: %s", new Object[] {
            obj7
        });
        obj = obj1;
        httpurlconnection = constructErrorResponses(requestbatch, httpurlconnection, new FacebookException(((Throwable) (obj7))));
        Utility.closeQuietly(((java.io.Closeable) (obj1)));
        return httpurlconnection;
        httpurlconnection;
        obj = obj13;
_L11:
        Utility.closeQuietly(((java.io.Closeable) (obj)));
        throw httpurlconnection;
        httpurlconnection;
        continue; /* Loop/switch isn't completed */
        httpurlconnection;
        if (true) goto _L11; else goto _L10
_L10:
        obj7;
        obj1 = obj;
        if (true) goto _L13; else goto _L12
_L12:
        obj7;
        obj1 = obj;
        if (true) goto _L15; else goto _L14
_L14:
        obj7;
        obj1 = obj;
        if (true) goto _L17; else goto _L16
_L16:
        obj7;
        obj1 = obj;
        if (true) goto _L19; else goto _L18
_L18:
        httpurlconnection;
          goto _L20
        obj7;
          goto _L21
        obj7;
          goto _L22
        obj7;
          goto _L23
_L4:
        Object obj8 = null;
        obj1 = obj;
        obj = obj8;
        continue; /* Loop/switch isn't completed */
_L2:
        obj1 = null;
        filelrucache = null;
        obj = null;
        if (true) goto _L25; else goto _L24
_L24:
    }

    static FileLruCache getResponseCache()
    {
        if (responseCache == null)
        {
            android.content.Context context = Session.getStaticContext();
            if (context != null)
            {
                responseCache = new FileLruCache(context, "ResponseCache", new com.facebook.internal.FileLruCache.Limits());
            }
        }
        return responseCache;
    }

    public final HttpURLConnection getConnection()
    {
        return connection;
    }

    public final FacebookRequestError getError()
    {
        return error;
    }

    public final GraphObject getGraphObject()
    {
        return graphObject;
    }

    public final GraphObject getGraphObjectAs(Class class1)
    {
        if (graphObject == null)
        {
            return null;
        }
        if (class1 == null)
        {
            throw new NullPointerException("Must pass in a valid interface that extends GraphObject");
        } else
        {
            return graphObject.cast(class1);
        }
    }

    public final GraphObjectList getGraphObjectList()
    {
        return graphObjectList;
    }

    public final GraphObjectList getGraphObjectListAs(Class class1)
    {
        if (graphObjectList == null)
        {
            return null;
        } else
        {
            return graphObjectList.castToListOf(class1);
        }
    }

    public final boolean getIsFromCache()
    {
        return isFromCache;
    }

    public String getRawResponse()
    {
        return rawResponse;
    }

    public Request getRequest()
    {
        return request;
    }

    public Request getRequestForPagedResults(PagingDirection pagingdirection)
    {
        if (graphObject == null) goto _L2; else goto _L1
_L1:
        PagingInfo paginginfo = ((PagedResults)graphObject.cast(com/facebook/Response$PagedResults)).getPaging();
        if (paginginfo == null) goto _L2; else goto _L3
_L3:
        if (pagingdirection == PagingDirection.NEXT)
        {
            pagingdirection = paginginfo.getNext();
        } else
        {
            pagingdirection = paginginfo.getPrevious();
        }
_L5:
        if (Utility.isNullOrEmpty(pagingdirection))
        {
            return null;
        }
        if (pagingdirection != null && pagingdirection.equals(request.getUrlForSingleRequest()))
        {
            return null;
        }
        try
        {
            pagingdirection = new Request(request.getSession(), new URL(pagingdirection));
        }
        // Misplaced declaration of an exception variable
        catch (PagingDirection pagingdirection)
        {
            return null;
        }
        return pagingdirection;
_L2:
        pagingdirection = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public final String toString()
    {
        if (connection == null) goto _L2; else goto _L1
_L1:
        int i = connection.getResponseCode();
_L3:
        String s = String.format("%d", new Object[] {
            Integer.valueOf(i)
        });
_L4:
        return (new StringBuilder("{Response:  responseCode: ")).append(s).append(", graphObject: ").append(graphObject).append(", error: ").append(error).append(", isFromCache:").append(isFromCache).append("}").toString();
_L2:
        i = 200;
          goto _L3
        IOException ioexception;
        ioexception;
        ioexception = "unknown";
          goto _L4
    }

    static 
    {
        boolean flag;
        if (!com/facebook/Response.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }
}
