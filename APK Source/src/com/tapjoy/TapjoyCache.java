// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Vector;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tapjoy:
//            TapjoyCacheMap, TapjoyLog, TapjoyCachedAssetData, TapjoyUtil, 
//            TapjoyCacheNotifier

public class TapjoyCache
{
    public class CacheAssetThread
        implements Callable
    {

        private String _offerId;
        private long _timeToLive;
        private URL _url;
        final TapjoyCache this$0;

        public Boolean call()
            throws Exception
        {
            Object obj = _url.getFile();
            if (!_cachedAssets.containsKey(obj)) goto _L2; else goto _L1
_L1:
            if (!(new File(((TapjoyCachedAssetData)_cachedAssets.get(obj)).getLocalFilePath())).exists()) goto _L4; else goto _L3
_L3:
            if (_timeToLive != 0L)
            {
                ((TapjoyCachedAssetData)_cachedAssets.get(obj)).resetTimeToLive(_timeToLive);
            } else
            {
                ((TapjoyCachedAssetData)_cachedAssets.get(obj)).resetTimeToLive(0x15180L);
            }
            _currentlyDownloading.remove(_url.getFile());
            obj = Boolean.valueOf(true);
_L5:
            return ((Boolean) (obj));
_L4:
            TapjoyCache.getInstance().removeAssetFromCache(((String) (obj)));
_L2:
            Object obj1;
            Object obj2;
            Object obj3;
            Object obj4;
            Object obj5;
            Object obj6;
            Object obj7;
            File file;
            long l = System.currentTimeMillis() / 1000L;
            obj7 = null;
            obj = null;
            obj6 = null;
            obj5 = null;
            Object obj8 = null;
            obj4 = null;
            obj3 = null;
            URLConnection urlconnection;
            try
            {
                file = new File((new StringBuilder()).append(_tajoyCacheDir).append("/").append(TapjoyUtil.SHA256(_url.getFile())).toString());
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                _currentlyDownloading.remove(_url.getFile());
                return Boolean.valueOf(false);
            }
            if (_verboseDebugging)
            {
                TapjoyLog.i("TapjoyCache", (new StringBuilder()).append("Downloading and caching asset from: ").append(_url).append(" to ").append(file).toString());
            }
            obj1 = obj;
            obj2 = obj8;
            urlconnection = _url.openConnection();
            obj1 = obj;
            obj2 = obj8;
            urlconnection.setConnectTimeout(15000);
            obj1 = obj;
            obj2 = obj8;
            urlconnection.setReadTimeout(30000);
            obj1 = obj;
            obj2 = obj8;
            urlconnection.connect();
            obj1 = obj;
            obj2 = obj8;
            obj = new BufferedInputStream(urlconnection.getInputStream());
            obj1 = new BufferedOutputStream(new FileOutputStream(file));
            TapjoyUtil.writeFileToDevice(((BufferedInputStream) (obj)), ((java.io.OutputStream) (obj1)));
            if (obj != null)
            {
                try
                {
                    ((BufferedInputStream) (obj)).close();
                }
                // Misplaced declaration of an exception variable
                catch (Object obj) { }
            }
            if (obj1 != null)
            {
                try
                {
                    ((BufferedOutputStream) (obj1)).close();
                }
                // Misplaced declaration of an exception variable
                catch (Object obj) { }
            }
            obj = new TapjoyCachedAssetData(_url.toString(), file.getAbsolutePath(), _timeToLive);
            if (_offerId != null)
            {
                ((TapjoyCachedAssetData) (obj)).setOfferID(_offerId);
            }
            _cachedAssets.put(_url.getFile(), ((TapjoyCachedAssetData) (obj)));
            if (_verboseDebugging)
            {
                TapjoyLog.i("TapjoyCache", "------------ Asset Cached ------------");
                TapjoyLog.i("TapjoyCache", (new StringBuilder()).append("URL: ").append(_url).toString());
                TapjoyLog.i("TapjoyCache", (new StringBuilder()).append("File location: ").append(file).toString());
                TapjoyLog.i("TapjoyCache", (new StringBuilder()).append("File size: ").append(file.length()).toString());
                TapjoyLog.i("TapjoyCache", (new StringBuilder()).append("Downloaded from: ").append(((TapjoyCachedAssetData) (obj)).getAssetURL()).toString());
                TapjoyLog.i("TapjoyCache", (new StringBuilder()).append("Cached in: ").append(System.currentTimeMillis() / 1000L - l).append(" seconds").toString());
                TapjoyLog.i("TapjoyCache", (new StringBuilder()).append("Timestamp: ").append(((TapjoyCachedAssetData) (obj)).getTimestampInSeconds()).toString());
                TapjoyLog.i("TapjoyCache", (new StringBuilder()).append("Time of death: ").append(((TapjoyCachedAssetData) (obj)).getTimeOfDeathInSeconds()).toString());
                TapjoyLog.i("TapjoyCache", (new StringBuilder()).append("Time to live: ").append(((TapjoyCachedAssetData) (obj)).getTimeToLiveInSeconds()).append(" seconds").toString());
                TapjoyLog.i("TapjoyCache", "--------------------------------------");
            }
            _currentlyDownloading.remove(_url.getFile());
            return Boolean.valueOf(true);
            obj4;
            obj = obj6;
_L10:
            obj1 = obj;
            obj2 = obj3;
            TapjoyLog.e("TapjoyCache", (new StringBuilder()).append("Network timeout during caching: ").append(((SocketTimeoutException) (obj4)).toString()).toString());
            obj1 = obj;
            obj2 = obj3;
            _currentlyDownloading.remove(_url.getFile());
            obj1 = obj;
            obj2 = obj3;
            TapjoyUtil.deleteFileOrDirectory(file);
            obj1 = Boolean.valueOf(false);
            if (obj != null)
            {
                try
                {
                    ((BufferedInputStream) (obj)).close();
                }
                // Misplaced declaration of an exception variable
                catch (Object obj) { }
            }
            obj = obj1;
            if (obj3 != null)
            {
                try
                {
                    ((BufferedOutputStream) (obj3)).close();
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    return ((Boolean) (obj1));
                }
                return ((Boolean) (obj1));
            }
              goto _L5
            obj4;
            obj3 = obj5;
            obj = obj7;
_L9:
            obj1 = obj;
            obj2 = obj3;
            TapjoyLog.e("TapjoyCache", (new StringBuilder()).append("Error caching asset: ").append(((Exception) (obj4)).toString()).toString());
            obj1 = obj;
            obj2 = obj3;
            _currentlyDownloading.remove(_url.getFile());
            obj1 = obj;
            obj2 = obj3;
            TapjoyUtil.deleteFileOrDirectory(file);
            obj1 = Boolean.valueOf(false);
            if (obj != null)
            {
                try
                {
                    ((BufferedInputStream) (obj)).close();
                }
                // Misplaced declaration of an exception variable
                catch (Object obj) { }
            }
            obj = obj1;
            if (obj3 == null) goto _L5; else goto _L6
_L6:
            try
            {
                ((BufferedOutputStream) (obj3)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                return ((Boolean) (obj1));
            }
            return ((Boolean) (obj1));
            obj;
_L8:
            if (obj1 != null)
            {
                try
                {
                    ((BufferedInputStream) (obj1)).close();
                }
                // Misplaced declaration of an exception variable
                catch (Object obj1) { }
            }
            if (obj2 != null)
            {
                try
                {
                    ((BufferedOutputStream) (obj2)).close();
                }
                // Misplaced declaration of an exception variable
                catch (Object obj1) { }
            }
            throw obj;
            obj3;
            obj1 = obj;
            obj2 = obj4;
            obj = obj3;
            continue; /* Loop/switch isn't completed */
            obj3;
            obj2 = obj1;
            obj1 = obj;
            obj = obj3;
            if (true) goto _L8; else goto _L7
_L7:
            obj4;
            obj3 = obj5;
              goto _L9
            obj4;
            obj3 = obj1;
              goto _L9
            obj4;
              goto _L10
            obj4;
            obj3 = obj1;
              goto _L10
        }

        public volatile Object call()
            throws Exception
        {
            return call();
        }

        public CacheAssetThread(URL url, String s, long l)
        {
            this$0 = TapjoyCache.this;
            super();
            _url = url;
            _offerId = s;
            _timeToLive = l;
            if (_timeToLive <= 0L)
            {
                _timeToLive = 0x15180L;
            }
            _currentlyDownloading.add(_url.getFile());
        }
    }


    private static final int CACHE_CONNECT_TIMEOUT = 15000;
    public static final String CACHE_DIRECTORY_NAME = "Tapjoy/Cache/";
    public static final int CACHE_LIMIT = -1;
    private static final int CACHE_READ_TIMEOUT = 30000;
    private static final long DEFAULT_TIME_TO_LIVE = 0x15180L;
    private static final int NUMBER_OF_THREDS = 5;
    private static final String TAG = "TapjoyCache";
    private static TapjoyCache _instance = null;
    public static boolean unit_test_mode = false;
    private TapjoyCacheMap _cachedAssets;
    private Context _context;
    private Vector _currentlyDownloading;
    private int _eventPreloadCount;
    private int _eventPreloadLimit;
    private File _tajoyCacheDir;
    private boolean _verboseDebugging;
    private ExecutorService executor;

    public TapjoyCache(Context context)
    {
        _eventPreloadCount = 0;
        _eventPreloadLimit = 3;
        if (_instance == null || unit_test_mode)
        {
            _instance = this;
            _context = context;
            _cachedAssets = new TapjoyCacheMap(context, -1);
            _currentlyDownloading = new Vector();
            executor = Executors.newFixedThreadPool(5);
            init();
        }
    }

    private String getHashFromURL(String s)
    {
        String s1 = s;
        if (s.startsWith("//"))
        {
            s1 = (new StringBuilder()).append("http:").append(s).toString();
        }
        try
        {
            s = (new URL(s1)).getFile();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return "";
        }
        return s;
    }

    public static TapjoyCache getInstance()
    {
        return _instance;
    }

    private void init()
    {
        removeOldCacheDataFromDevice();
        _tajoyCacheDir = new File((new StringBuilder()).append(_context.getFilesDir()).append("/").append("Tapjoy/Cache/").toString());
        if (!_tajoyCacheDir.exists() && !_tajoyCacheDir.mkdirs())
        {
            TapjoyLog.e("TapjoyCache", "Error initalizing cache");
            _instance = null;
        }
        loadCachedAssets();
    }

    private void loadCachedAssets()
    {
        Object obj = _context.getSharedPreferences("tapjoyCacheData", 0);
        android.content.SharedPreferences.Editor editor = ((SharedPreferences) (obj)).edit();
        for (obj = ((SharedPreferences) (obj)).getAll().entrySet().iterator(); ((Iterator) (obj)).hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)((Iterator) (obj)).next();
            File file = new File((String)entry.getKey());
            if (file.exists() && file.isFile())
            {
                TapjoyCachedAssetData tapjoycachedassetdata = TapjoyCachedAssetData.fromRawJSONString(entry.getValue().toString());
                if (tapjoycachedassetdata != null)
                {
                    _cachedAssets.put(tapjoycachedassetdata.getAssetURL(), tapjoycachedassetdata);
                } else
                {
                    editor.remove((String)entry.getKey()).commit();
                }
            } else
            {
                editor.remove((String)entry.getKey()).commit();
            }
        }

    }

    private void removeOldCacheDataFromDevice()
    {
        if (Environment.getExternalStorageDirectory() != null)
        {
            TapjoyUtil.deleteFileOrDirectory(new File(Environment.getExternalStorageDirectory(), "tapjoy"));
            TapjoyUtil.deleteFileOrDirectory(new File(Environment.getExternalStorageDirectory(), "tjcache/tmp/"));
        }
    }

    public static void setInstance(TapjoyCache tapjoycache)
    {
        _instance = tapjoycache;
    }

    public Future cacheAssetFromJSONObject(JSONObject jsonobject)
    {
        try
        {
            jsonobject = cacheAssetFromURL(jsonobject.getString("url"), jsonobject.optString("offerId"), Long.valueOf(jsonobject.optLong("timeToLive")).longValue());
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            return null;
        }
        return jsonobject;
    }

    public Future cacheAssetFromURL(String s, String s1, long l)
    {
        String s2;
        try
        {
            s = new URL(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        s2 = s.getFile();
        if (_currentlyDownloading.contains(s2))
        {
            return null;
        } else
        {
            return startCachingThread(s, s1, l);
        }
    }

    public void cacheAssetGroup(final JSONArray assetGroup, final TapjoyCacheNotifier tapjoyCacheNotifier)
    {
        if (assetGroup != null && assetGroup.length() > 0)
        {
            (new Thread() {

                final TapjoyCache this$0;
                final JSONArray val$assetGroup;
                final TapjoyCacheNotifier val$tapjoyCacheNotifier;

                public void run()
                {
                    Object obj;
                    int i;
                    byte byte0;
                    obj = new ArrayList();
                    byte0 = 1;
                    i = 0;
_L3:
                    if (i >= assetGroup.length()) goto _L2; else goto _L1
_L1:
                    Object obj1;
                    obj1 = assetGroup.getJSONObject(i);
                    obj1 = cacheAssetFromJSONObject(((JSONObject) (obj1)));
                    Object obj2;
                    if (obj1 != null)
                    {
                        try
                        {
                            ((List) (obj)).add(obj1);
                        }
                        catch (JSONException jsonexception) { }
                    }
                    i++;
                      goto _L3
_L2:
                    obj = ((List) (obj)).iterator();
                    i = byte0;
_L5:
                    if (!((Iterator) (obj)).hasNext())
                    {
                        break; /* Loop/switch isn't completed */
                    }
                    obj1 = (Future)((Iterator) (obj)).next();
                    byte0 = i;
                    if (!((Boolean)((Future) (obj1)).get()).booleanValue())
                    {
                        byte0 = 2;
                    }
                    i = byte0;
                    if (!_verboseDebugging)
                    {
                        continue; /* Loop/switch isn't completed */
                    }
                    TapjoyLog.i("TapjoyCache", "Caching thread completed");
                    i = byte0;
                    continue; /* Loop/switch isn't completed */
                    obj2;
                    i = 2;
                    continue; /* Loop/switch isn't completed */
                    obj2;
                    i = 2;
                    if (true) goto _L5; else goto _L4
_L4:
                    if (tapjoyCacheNotifier != null)
                    {
                        tapjoyCacheNotifier.cachingComplete(i);
                    }
                    return;
                }

            
            {
                this$0 = TapjoyCache.this;
                assetGroup = jsonarray;
                tapjoyCacheNotifier = tapjoycachenotifier;
                super();
            }
            }).start();
        } else
        if (tapjoyCacheNotifier != null)
        {
            tapjoyCacheNotifier.cachingComplete(1);
            return;
        }
    }

    public String cachedAssetsToJSON()
    {
        Iterator iterator = _cachedAssets.entrySet().iterator();
        JSONObject jsonobject = new JSONObject();
        while (iterator.hasNext()) 
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            try
            {
                jsonobject.put(((String)entry.getKey()).toString(), ((TapjoyCachedAssetData)entry.getValue()).toRawJSONString());
            }
            catch (JSONException jsonexception)
            {
                jsonexception.printStackTrace();
            }
        }
        return jsonobject.toString();
    }

    public void clearTapjoyCache()
    {
        TapjoyUtil.deleteFileOrDirectory(_tajoyCacheDir);
        if (!_tajoyCacheDir.mkdirs());
        _cachedAssets = new TapjoyCacheMap(_context, -1);
    }

    public void decrementEventCacheCount()
    {
        _eventPreloadCount = _eventPreloadCount - 1;
        if (_eventPreloadCount < 0)
        {
            _eventPreloadCount = 0;
        }
        printEventCacheInformation();
    }

    public TapjoyCacheMap getCachedData()
    {
        return _cachedAssets;
    }

    public TapjoyCachedAssetData getCachedDataForURL(String s)
    {
        s = getHashFromURL(s);
        if (s != "")
        {
            return (TapjoyCachedAssetData)_cachedAssets.get(s);
        } else
        {
            return null;
        }
    }

    public String getCachedOfferIDs()
    {
        String s = "";
        Object obj = s;
        if (_cachedAssets != null)
        {
            obj = _cachedAssets.entrySet().iterator();
            do
            {
                if (!((Iterator) (obj)).hasNext())
                {
                    break;
                }
                java.util.Map.Entry entry = (java.util.Map.Entry)((Iterator) (obj)).next();
                if (((TapjoyCachedAssetData)entry.getValue()).getOfferId() != null && ((TapjoyCachedAssetData)entry.getValue()).getOfferId().length() != 0)
                {
                    s = (new StringBuilder()).append(s).append(((TapjoyCachedAssetData)entry.getValue()).getOfferId()).append(",").toString();
                }
            } while (true);
            obj = s;
            if (s.length() > 0)
            {
                obj = s.substring(0, s.length() - 1);
            }
        }
        return ((String) (obj));
    }

    public int getEventPreloadCount()
    {
        return _eventPreloadCount;
    }

    public int getEventPreloadLimit()
    {
        return _eventPreloadLimit;
    }

    public String getPathOfCachedURL(String s)
    {
label0:
        {
            String s1 = getHashFromURL(s);
            Object obj = s;
            if (s1 != "")
            {
                obj = s;
                if (_cachedAssets.containsKey(s1))
                {
                    obj = (TapjoyCachedAssetData)_cachedAssets.get(s1);
                    if (!(new File(((TapjoyCachedAssetData) (obj)).getLocalFilePath())).exists())
                    {
                        break label0;
                    }
                    obj = ((TapjoyCachedAssetData) (obj)).getLocalURL();
                }
            }
            return ((String) (obj));
        }
        getInstance().removeAssetFromCache(s);
        return s;
    }

    public void incrementEventCacheCount()
    {
        _eventPreloadCount = _eventPreloadCount + 1;
        if (_eventPreloadCount > _eventPreloadLimit)
        {
            _eventPreloadCount = _eventPreloadLimit;
        }
        printEventCacheInformation();
    }

    public boolean isURLCached(String s)
    {
        return _cachedAssets.get(s) != null;
    }

    public boolean isURLDownloading(String s)
    {
        if (_currentlyDownloading != null)
        {
            s = getHashFromURL(s);
            return s != "" && _currentlyDownloading.contains(s);
        } else
        {
            return false;
        }
    }

    public void printCacheInformation()
    {
        TapjoyLog.i("TapjoyCache", "------------- Cache Data -------------");
        TapjoyLog.i("TapjoyCache", (new StringBuilder()).append("Number of files in cache: ").append(_cachedAssets.size()).toString());
        TapjoyLog.i("TapjoyCache", (new StringBuilder()).append("Cache Size: ").append(TapjoyUtil.fileOrDirectorySize(_tajoyCacheDir)).toString());
        TapjoyLog.i("TapjoyCache", "--------------------------------------");
    }

    public void printEventCacheInformation()
    {
    }

    public boolean removeAssetFromCache(String s)
    {
        s = getHashFromURL(s);
        return s != "" && _cachedAssets.remove(s) != null;
    }

    public void setEventPreloadLimit(int i)
    {
        _eventPreloadLimit = i;
    }

    public Future startCachingThread(URL url, String s, long l)
    {
        if (url != null)
        {
            return executor.submit(new CacheAssetThread(url, s, l));
        } else
        {
            return null;
        }
    }





}
