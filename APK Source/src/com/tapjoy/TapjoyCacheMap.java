// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.tapjoy:
//            TapjoyCachedAssetData, TapjoyUtil

public class TapjoyCacheMap extends ConcurrentHashMap
{

    private static final String TAG = "TapjoyCacheMap";
    private static final long serialVersionUID = 0xcb0b22284de0473L;
    private int _cacheLimit;
    private Context _context;

    public TapjoyCacheMap(Context context, int i)
    {
        _cacheLimit = -1;
        _context = context;
        _cacheLimit = i;
    }

    private String findOldestAsset()
    {
        long l = -1L;
        String s = "";
        Iterator iterator = entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            long l1 = ((TapjoyCachedAssetData)entry.getValue()).getTimestampInSeconds();
            if (l == 0L || l1 < l)
            {
                l = l1;
                s = (String)entry.getKey();
            }
        } while (true);
        return s;
    }

    public void clear()
    {
        throw new UnsupportedOperationException();
    }

    public TapjoyCachedAssetData put(String s, TapjoyCachedAssetData tapjoycachedassetdata)
    {
        if (tapjoycachedassetdata == null)
        {
            return null;
        }
        if (tapjoycachedassetdata.getTimeOfDeathInSeconds() < System.currentTimeMillis() / 1000L)
        {
            return null;
        }
        if (size() == _cacheLimit)
        {
            remove(findOldestAsset());
        }
        android.content.SharedPreferences.Editor editor = _context.getSharedPreferences("tapjoyCacheData", 0).edit();
        editor.putString(tapjoycachedassetdata.getLocalFilePath(), tapjoycachedassetdata.toRawJSONString());
        editor.commit();
        return (TapjoyCachedAssetData)super.put(s, tapjoycachedassetdata);
    }

    public volatile Object put(Object obj, Object obj1)
    {
        return put((String)obj, (TapjoyCachedAssetData)obj1);
    }

    public TapjoyCachedAssetData remove(Object obj)
    {
        if (containsKey(obj))
        {
            android.content.SharedPreferences.Editor editor = _context.getSharedPreferences("tapjoyCacheData", 0).edit();
            editor.remove(((TapjoyCachedAssetData)get(obj)).getLocalFilePath());
            editor.commit();
            TapjoyUtil.deleteFileOrDirectory(new File(((TapjoyCachedAssetData)get(obj)).getLocalFilePath()));
            return (TapjoyCachedAssetData)super.remove(obj);
        } else
        {
            return null;
        }
    }

    public volatile Object remove(Object obj)
    {
        return remove(obj);
    }

    public TapjoyCachedAssetData replace(String s, TapjoyCachedAssetData tapjoycachedassetdata)
    {
        throw new UnsupportedOperationException();
    }

    public volatile Object replace(Object obj, Object obj1)
    {
        return replace((String)obj, (TapjoyCachedAssetData)obj1);
    }

    public volatile boolean replace(Object obj, Object obj1, Object obj2)
    {
        return replace((String)obj, (TapjoyCachedAssetData)obj1, (TapjoyCachedAssetData)obj2);
    }

    public boolean replace(String s, TapjoyCachedAssetData tapjoycachedassetdata, TapjoyCachedAssetData tapjoycachedassetdata1)
    {
        throw new UnsupportedOperationException();
    }
}
