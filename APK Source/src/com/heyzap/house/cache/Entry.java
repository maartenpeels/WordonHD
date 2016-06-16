// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.cache;

import android.net.Uri;
import java.io.File;
import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;

public class Entry
    implements Serializable, Comparable
{

    private long createdTime;
    private Boolean dirty;
    private long expiry;
    private String fileName;
    private String identifier;
    private long lastUsedTime;
    private long lengthBytes;

    public Entry()
    {
        expiry = 0L;
        dirty = Boolean.valueOf(true);
        createdTime = System.currentTimeMillis();
        touch();
    }

    public static Entry fromJSONObject(JSONObject jsonobject)
        throws JSONException
    {
        Entry entry = new Entry();
        entry.dirty = Boolean.valueOf(jsonobject.optBoolean("dirty", false));
        entry.expiry = jsonobject.getLong("expiry");
        entry.lastUsedTime = jsonobject.getLong("last_used_time");
        entry.fileName = jsonobject.getString("file_name");
        entry.createdTime = jsonobject.getLong("created_time");
        entry.identifier = jsonobject.getString("identifier");
        return entry;
    }

    public JSONObject asJSONObject()
        throws JSONException
    {
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("file_name", fileName);
        jsonobject.put("length_bytes", lengthBytes);
        jsonobject.put("last_used_time", lastUsedTime);
        jsonobject.put("created_time", createdTime);
        jsonobject.put("expiry", expiry);
        jsonobject.put("identifier", identifier);
        jsonobject.put("dirty", dirty);
        jsonobject.put("klass", com/heyzap/house/cache/Entry.getName());
        return jsonobject;
    }

    public int compareTo(Entry entry)
    {
        return (int)(lastUsedTime - entry.getLastUsedTime() / 20L);
    }

    public volatile int compareTo(Object obj)
    {
        return compareTo((Entry)obj);
    }

    public Boolean deleteHardReference()
    {
        if (getFile().delete())
        {
            dirty = Boolean.valueOf(true);
            return Boolean.valueOf(true);
        } else
        {
            return Boolean.valueOf(false);
        }
    }

    public final Boolean fileExists()
    {
        return Boolean.valueOf(getFile().exists());
    }

    public final File getFile()
    {
        return new File(fileName);
    }

    public final String getFilename()
    {
        return fileName;
    }

    public final String getIdentifier()
    {
        return identifier;
    }

    public final long getLastUsedTime()
    {
        return lastUsedTime;
    }

    public final long getSize()
    {
        return lengthBytes;
    }

    public final Uri getUri()
    {
        return Uri.fromFile(getFile());
    }

    public final Boolean isDirty()
    {
        return dirty;
    }

    public final void setDirty(Boolean boolean1)
    {
        dirty = boolean1;
    }

    public final void setFilename(String s)
    {
        fileName = s;
    }

    public void setIdentifier(String s)
    {
        identifier = s;
    }

    public final void setLastUsed()
    {
        lastUsedTime = System.currentTimeMillis();
    }

    public final void setLastUsed(long l)
    {
        lastUsedTime = l;
    }

    public final void touch()
    {
        lastUsedTime = System.currentTimeMillis();
    }
}
