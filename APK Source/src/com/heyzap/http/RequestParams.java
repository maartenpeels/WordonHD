// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.http;

import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.HttpEntity;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

// Referenced classes of package com.heyzap.http:
//            JsonStreamerEntity, SimpleMultipartEntity, ResponseHandlerInterface

public class RequestParams
{
    public static class FileWrapper
    {

        public String contentType;
        public File file;

        public FileWrapper(File file1, String s)
        {
            file = file1;
            contentType = s;
        }
    }

    public static class StreamWrapper
    {

        public String contentType;
        public InputStream inputStream;
        public String name;

        public StreamWrapper(InputStream inputstream, String s, String s1)
        {
            inputStream = inputstream;
            name = s;
            contentType = s1;
        }
    }


    protected static final String LOG_TAG = "RequestParams";
    protected String contentEncoding;
    protected ConcurrentHashMap fileParams;
    protected boolean isRepeatable;
    protected ConcurrentHashMap streamParams;
    protected ConcurrentHashMap urlParams;
    protected ConcurrentHashMap urlParamsWithObjects;
    protected boolean useJsonStreamer;

    public RequestParams()
    {
        this((Map)null);
    }

    public RequestParams(final String key, final String value)
    {
        this(((Map) (new HashMap() {

            final String val$key;
            final String val$value;

            
            {
                key = s;
                value = s1;
                super();
                put(key, value);
            }
        })));
    }

    public RequestParams(Map map)
    {
        contentEncoding = "UTF-8";
        init();
        if (map != null)
        {
            java.util.Map.Entry entry;
            for (map = map.entrySet().iterator(); map.hasNext(); put((String)entry.getKey(), (String)entry.getValue()))
            {
                entry = (java.util.Map.Entry)map.next();
            }

        }
    }

    public transient RequestParams(Object aobj[])
    {
        contentEncoding = "UTF-8";
        init();
        int j = aobj.length;
        if (j % 2 != 0)
        {
            throw new IllegalArgumentException("Supplied arguments must be even");
        }
        for (int i = 0; i < j; i += 2)
        {
            put(String.valueOf(aobj[i]), String.valueOf(aobj[i + 1]));
        }

    }

    private HttpEntity createFormEntity()
    {
        UrlEncodedFormEntity urlencodedformentity;
        try
        {
            urlencodedformentity = new UrlEncodedFormEntity(getParamsList(), contentEncoding);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            Log.e("RequestParams", "createFormEntity failed", unsupportedencodingexception);
            return null;
        }
        return urlencodedformentity;
    }

    private HttpEntity createJsonStreamerEntity()
        throws IOException
    {
        JsonStreamerEntity jsonstreamerentity;
        boolean flag;
        if (!fileParams.isEmpty() || !streamParams.isEmpty())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        jsonstreamerentity = new JsonStreamerEntity(flag);
        java.util.Map.Entry entry;
        for (Iterator iterator = urlParams.entrySet().iterator(); iterator.hasNext(); jsonstreamerentity.addPart((String)entry.getKey(), entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        java.util.Map.Entry entry1;
        for (Iterator iterator1 = urlParamsWithObjects.entrySet().iterator(); iterator1.hasNext(); jsonstreamerentity.addPart((String)entry1.getKey(), entry1.getValue()))
        {
            entry1 = (java.util.Map.Entry)iterator1.next();
        }

        java.util.Map.Entry entry2;
        FileWrapper filewrapper;
        for (Iterator iterator2 = fileParams.entrySet().iterator(); iterator2.hasNext(); jsonstreamerentity.addPart((String)entry2.getKey(), new FileInputStream(filewrapper.file), filewrapper.file.getName(), filewrapper.contentType))
        {
            entry2 = (java.util.Map.Entry)iterator2.next();
            filewrapper = (FileWrapper)entry2.getValue();
        }

        Iterator iterator3 = streamParams.entrySet().iterator();
        do
        {
            if (!iterator3.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry3 = (java.util.Map.Entry)iterator3.next();
            StreamWrapper streamwrapper = (StreamWrapper)entry3.getValue();
            if (streamwrapper.inputStream != null)
            {
                jsonstreamerentity.addPart((String)entry3.getKey(), streamwrapper.inputStream, streamwrapper.name, streamwrapper.contentType);
            }
        } while (true);
        return jsonstreamerentity;
    }

    private HttpEntity createMultipartEntity(ResponseHandlerInterface responsehandlerinterface)
        throws IOException
    {
        responsehandlerinterface = new SimpleMultipartEntity(responsehandlerinterface);
        responsehandlerinterface.setIsRepeatable(isRepeatable);
        java.util.Map.Entry entry;
        for (Iterator iterator = urlParams.entrySet().iterator(); iterator.hasNext(); responsehandlerinterface.addPart((String)entry.getKey(), (String)entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        BasicNameValuePair basicnamevaluepair;
        for (Iterator iterator1 = getParamsList(null, urlParamsWithObjects).iterator(); iterator1.hasNext(); responsehandlerinterface.addPart(basicnamevaluepair.getName(), basicnamevaluepair.getValue()))
        {
            basicnamevaluepair = (BasicNameValuePair)iterator1.next();
        }

        Iterator iterator2 = streamParams.entrySet().iterator();
        do
        {
            if (!iterator2.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry1 = (java.util.Map.Entry)iterator2.next();
            StreamWrapper streamwrapper = (StreamWrapper)entry1.getValue();
            if (streamwrapper.inputStream != null)
            {
                responsehandlerinterface.addPart((String)entry1.getKey(), streamwrapper.name, streamwrapper.inputStream, streamwrapper.contentType);
            }
        } while (true);
        java.util.Map.Entry entry2;
        FileWrapper filewrapper;
        for (Iterator iterator3 = fileParams.entrySet().iterator(); iterator3.hasNext(); responsehandlerinterface.addPart((String)entry2.getKey(), filewrapper.file, filewrapper.contentType))
        {
            entry2 = (java.util.Map.Entry)iterator3.next();
            filewrapper = (FileWrapper)entry2.getValue();
        }

        return responsehandlerinterface;
    }

    private List getParamsList(String s, Object obj)
    {
        LinkedList linkedlist = new LinkedList();
        if (obj instanceof Map)
        {
            Map map = (Map)obj;
            obj = new ArrayList(map.keySet());
            Collections.sort(((List) (obj)));
            Iterator iterator = ((List) (obj)).iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                obj = (String)iterator.next();
                Object obj3 = map.get(obj);
                if (obj3 != null)
                {
                    if (s != null)
                    {
                        obj = String.format("%s[%s]", new Object[] {
                            s, obj
                        });
                    }
                    linkedlist.addAll(getParamsList(((String) (obj)), obj3));
                }
            } while (true);
        } else
        if (obj instanceof List)
        {
            Object obj1;
            for (obj = ((List)obj).iterator(); ((Iterator) (obj)).hasNext(); linkedlist.addAll(getParamsList(String.format("%s[]", new Object[] {
    s
}), obj1)))
            {
                obj1 = ((Iterator) (obj)).next();
            }

        } else
        if (obj instanceof Object[])
        {
            obj = ((Object) ((Object[])(Object[])obj));
            int j = obj.length;
            for (int i = 0; i < j; i++)
            {
                Object obj2 = obj[i];
                linkedlist.addAll(getParamsList(String.format("%s[]", new Object[] {
                    s
                }), obj2));
            }

        } else
        if (obj instanceof Set)
        {
            for (obj = ((Set)obj).iterator(); ((Iterator) (obj)).hasNext(); linkedlist.addAll(getParamsList(s, ((Iterator) (obj)).next()))) { }
        } else
        if (obj instanceof String)
        {
            linkedlist.add(new BasicNameValuePair(s, (String)obj));
        }
        return linkedlist;
    }

    private void init()
    {
        urlParams = new ConcurrentHashMap();
        streamParams = new ConcurrentHashMap();
        fileParams = new ConcurrentHashMap();
        urlParamsWithObjects = new ConcurrentHashMap();
    }

    public void add(String s, String s1)
    {
        if (s != null && s1 != null)
        {
            Object obj = urlParamsWithObjects.get(s);
            if (obj == null)
            {
                obj = new HashSet();
                put(s, obj);
                s = ((String) (obj));
            } else
            {
                s = ((String) (obj));
            }
            if (s instanceof List)
            {
                ((List)s).add(s1);
            } else
            if (s instanceof Set)
            {
                ((Set)s).add(s1);
                return;
            }
        }
    }

    public Boolean containsKey(String s)
    {
        if (s != null)
        {
            boolean flag;
            if (urlParams.containsKey(s) || urlParamsWithObjects.containsKey(s))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            return Boolean.valueOf(flag);
        } else
        {
            return Boolean.valueOf(false);
        }
    }

    public String get(String s)
    {
        if (s != null)
        {
            try
            {
                s = (String)urlParams.get(s);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                return null;
            }
            return s;
        } else
        {
            return null;
        }
    }

    public HttpEntity getEntity(ResponseHandlerInterface responsehandlerinterface)
        throws IOException
    {
        if (useJsonStreamer)
        {
            return createJsonStreamerEntity();
        }
        if (streamParams.isEmpty() && fileParams.isEmpty())
        {
            return createFormEntity();
        } else
        {
            return createMultipartEntity(responsehandlerinterface);
        }
    }

    protected String getParamString()
    {
        return URLEncodedUtils.format(getParamsList(), contentEncoding);
    }

    protected List getParamsList()
    {
        LinkedList linkedlist = new LinkedList();
        java.util.Map.Entry entry;
        for (Iterator iterator = urlParams.entrySet().iterator(); iterator.hasNext(); linkedlist.add(new BasicNameValuePair((String)entry.getKey(), (String)entry.getValue())))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        linkedlist.addAll(getParamsList(null, urlParamsWithObjects));
        return linkedlist;
    }

    public void put(String s, File file)
        throws FileNotFoundException
    {
        put(s, file, null);
    }

    public void put(String s, File file, String s1)
        throws FileNotFoundException
    {
        if (file == null || !file.exists())
        {
            throw new FileNotFoundException();
        }
        if (s != null)
        {
            fileParams.put(s, new FileWrapper(file, s1));
        }
    }

    public void put(String s, InputStream inputstream)
    {
        put(s, inputstream, null);
    }

    public void put(String s, InputStream inputstream, String s1)
    {
        put(s, inputstream, s1, null);
    }

    public void put(String s, InputStream inputstream, String s1, String s2)
    {
        if (s != null && inputstream != null)
        {
            streamParams.put(s, new StreamWrapper(inputstream, s1, s2));
        }
    }

    public void put(String s, Integer integer)
    {
        if (s != null && integer != null)
        {
            urlParamsWithObjects.put(s, String.valueOf(integer));
        }
    }

    public void put(String s, Object obj)
    {
        if (s != null && obj != null)
        {
            urlParamsWithObjects.put(s, obj);
        }
    }

    public void put(String s, String s1)
    {
        if (s != null && s1 != null)
        {
            urlParams.put(s, s1);
        }
    }

    public void remove(String s)
    {
        urlParams.remove(s);
        streamParams.remove(s);
        fileParams.remove(s);
        urlParamsWithObjects.remove(s);
    }

    public void setContentEncoding(String s)
    {
        if (s != null)
        {
            contentEncoding = s;
        }
    }

    public void setHttpEntityIsRepeatable(boolean flag)
    {
        isRepeatable = flag;
    }

    public void setUseJsonStreamer(boolean flag)
    {
        useJsonStreamer = flag;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        java.util.Map.Entry entry;
        for (Iterator iterator = urlParams.entrySet().iterator(); iterator.hasNext(); stringbuilder.append((String)entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append("&");
            }
            stringbuilder.append((String)entry.getKey());
            stringbuilder.append("=");
        }

        for (Iterator iterator1 = streamParams.entrySet().iterator(); iterator1.hasNext(); stringbuilder.append("STREAM"))
        {
            java.util.Map.Entry entry1 = (java.util.Map.Entry)iterator1.next();
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append("&");
            }
            stringbuilder.append((String)entry1.getKey());
            stringbuilder.append("=");
        }

        for (Iterator iterator2 = fileParams.entrySet().iterator(); iterator2.hasNext(); stringbuilder.append("FILE"))
        {
            java.util.Map.Entry entry2 = (java.util.Map.Entry)iterator2.next();
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append("&");
            }
            stringbuilder.append((String)entry2.getKey());
            stringbuilder.append("=");
        }

        BasicNameValuePair basicnamevaluepair;
        for (Iterator iterator3 = getParamsList(null, urlParamsWithObjects).iterator(); iterator3.hasNext(); stringbuilder.append(basicnamevaluepair.getValue()))
        {
            basicnamevaluepair = (BasicNameValuePair)iterator3.next();
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append("&");
            }
            stringbuilder.append(basicnamevaluepair.getName());
            stringbuilder.append("=");
        }

        return stringbuilder.toString();
    }
}
