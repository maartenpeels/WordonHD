// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.cache;

import com.heyzap.internal.Logger;
import com.heyzap.internal.SettableFuture;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
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

    private void clean()
    {
        ArrayList arraylist = new ArrayList();
        for (Iterator iterator = cache.all().iterator(); iterator.hasNext(); arraylist.add(((Entry)iterator.next()).getFile().getAbsolutePath())) { }
        arraylist.add(FileCache.access$100(cache).getAbsolutePath());
        File afile[] = cache.getDirectory().listFiles();
        int j = afile.length;
        for (int i = 0; i < j; i++)
        {
            File file = afile[i];
            if (!arraylist.contains(file.getAbsolutePath()))
            {
                file.delete();
            }
        }

    }

    private void writeEntriesFile()
        throws Exception
    {
        JSONObject jsonobject = new JSONObject();
        Object obj = new JSONArray();
        Iterator iterator = FileCache.access$000(FileCache.this).values().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Entry entry = (Entry)iterator.next();
            if (!entry.isDirty().booleanValue())
            {
                try
                {
                    ((JSONArray) (obj)).put(entry.asJSONObject());
                }
                catch (JSONException jsonexception)
                {
                    Logger.trace(jsonexception);
                }
            }
        } while (true);
        jsonobject.put(FileCache.ROOT_ENTRIES_ELEMENT, obj);
        jsonobject.put(FileCache.ROOT_VERSION_ELEMENT, FileCache.VERSION_UID);
        obj = new FileWriter(FileCache.access$100(cache));
        ((FileWriter) (obj)).write(jsonobject.toString());
        ((FileWriter) (obj)).flush();
        ((FileWriter) (obj)).close();
    }

    public void run()
    {
        long l = System.currentTimeMillis();
        writeEntriesFile();
        clean();
        Logger.format("(CACHE) Sync took %dms", new Object[] {
            Long.valueOf(System.currentTimeMillis() - Long.valueOf(l).longValue())
        });
        entriesFuture.set(Boolean.valueOf(true));
        return;
        Object obj;
        obj;
        Logger.trace(((Throwable) (obj)));
        entriesFuture.setException(((Throwable) (obj)));
        return;
        obj;
        throw obj;
    }

    public (FileCache filecache1, SettableFuture settablefuture)
    {
        this$0 = FileCache.this;
        super();
        cache = filecache1;
        entriesFuture = settablefuture;
    }
}
