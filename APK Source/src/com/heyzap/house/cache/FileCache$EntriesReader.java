// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.cache;

import com.heyzap.internal.Logger;
import com.heyzap.internal.SettableFuture;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.house.cache:
//            FileCache, Entry

class entriesFuture
    implements Runnable
{

    FileCache cache;
    SettableFuture entriesFuture;
    final FileCache this$0;

    private JSONArray read()
        throws Exception
    {
        if ((cache.getDirectory() == null || !cache.getDirectory().mkdirs()) && !cache.getDirectory().isDirectory())
        {
            break MISSING_BLOCK_LABEL_133;
        }
        Object obj;
        Object obj1;
        Exception exception;
        StringBuilder stringbuilder;
        String s;
        try
        {
            obj = new FileInputStream(FileCache.access$100(FileCache.this));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return null;
        }
        catch (JSONException jsonexception)
        {
            return null;
        }
        obj1 = new BufferedReader(new InputStreamReader(((InputStream) (obj))));
        stringbuilder = new StringBuilder();
_L1:
        s = ((BufferedReader) (obj1)).readLine();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_106;
        }
        stringbuilder.append(s);
          goto _L1
        exception;
        ((InputStream) (obj)).close();
        throw exception;
        exception = (new JSONObject(stringbuilder.toString())).getJSONArray(FileCache.ROOT_ENTRIES_ELEMENT);
        ((InputStream) (obj)).close();
        return exception;
        return null;
    }

    public void run()
    {
        Object obj;
        int i = 0;
        JSONArray jsonarray;
        Entry entry;
        int j;
        try
        {
            jsonarray = read();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            Logger.trace(((Throwable) (obj)));
            entriesFuture.setException(((Throwable) (obj)));
            return;
        }
        if (jsonarray == null)
        {
            break MISSING_BLOCK_LABEL_222;
        }
        if (jsonarray.length() <= 0)
        {
            break MISSING_BLOCK_LABEL_222;
        }
_L3:
        j = jsonarray.length();
        if (i >= j)
        {
            break MISSING_BLOCK_LABEL_222;
        }
        obj = jsonarray.getJSONObject(i);
_L4:
        if (obj != null) goto _L2; else goto _L1
_L1:
        i++;
          goto _L3
        obj;
        Logger.log(obj);
        obj = null;
          goto _L4
_L2:
        entry = (Entry)Class.forName(((JSONObject) (obj)).getString(FileCache.KLASS_ELEMENT)).getDeclaredMethod("fromJSONObject", new Class[] {
            org/json/JSONObject
        }).invoke(null, new Object[] {
            obj
        });
        if (entry == null) goto _L1; else goto _L5
_L5:
        if (!entry.fileExists().booleanValue() || entry.isDirty().booleanValue()) goto _L1; else goto _L6
_L6:
        cache.put(entry);
          goto _L1
        Exception exception;
        exception;
        Logger.trace(exception);
        obj = Entry.fromJSONObject(((JSONObject) (obj)));
_L9:
        if (obj == null) goto _L1; else goto _L7
_L7:
        if (!((Entry) (obj)).fileExists().booleanValue() || ((Entry) (obj)).isDirty().booleanValue()) goto _L1; else goto _L8
_L8:
        cache.put(((Entry) (obj)));
          goto _L1
        Object obj1;
        obj1;
        Logger.log(exception);
        obj1 = null;
          goto _L9
        obj1;
        if (true)
        {
            break MISSING_BLOCK_LABEL_220;
        }
        throw new NullPointerException();
        throw obj1;
        FileCache.access$200(cache).set(true);
        SettableFuture settablefuture = cache.sync();
        entriesFuture.set(settablefuture.get());
        return;
          goto _L3
    }

    public (FileCache filecache1, SettableFuture settablefuture)
    {
        this$0 = FileCache.this;
        super();
        cache = filecache1;
        entriesFuture = settablefuture;
    }
}
