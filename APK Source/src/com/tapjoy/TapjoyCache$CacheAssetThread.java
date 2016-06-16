// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Vector;
import java.util.concurrent.Callable;

// Referenced classes of package com.tapjoy:
//            TapjoyCache, TapjoyCacheMap, TapjoyCachedAssetData, TapjoyUtil, 
//            TapjoyLog

public class _url
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
        if (!TapjoyCache.access$200(TapjoyCache.this).containsKey(obj)) goto _L2; else goto _L1
_L1:
        if (!(new File(((TapjoyCachedAssetData)TapjoyCache.access$200(TapjoyCache.this).get(obj)).getLocalFilePath())).exists()) goto _L4; else goto _L3
_L3:
        if (_timeToLive != 0L)
        {
            ((TapjoyCachedAssetData)TapjoyCache.access$200(TapjoyCache.this).get(obj)).resetTimeToLive(_timeToLive);
        } else
        {
            ((TapjoyCachedAssetData)TapjoyCache.access$200(TapjoyCache.this).get(obj)).resetTimeToLive(0x15180L);
        }
        TapjoyCache.access$100(TapjoyCache.this).remove(_url.getFile());
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
            file = new File((new StringBuilder()).append(TapjoyCache.access$300(TapjoyCache.this)).append("/").append(TapjoyUtil.SHA256(_url.getFile())).toString());
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            TapjoyCache.access$100(TapjoyCache.this).remove(_url.getFile());
            return Boolean.valueOf(false);
        }
        if (TapjoyCache.access$000(TapjoyCache.this))
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
        TapjoyCache.access$200(TapjoyCache.this).put(_url.getFile(), ((TapjoyCachedAssetData) (obj)));
        if (TapjoyCache.access$000(TapjoyCache.this))
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
        TapjoyCache.access$100(TapjoyCache.this).remove(_url.getFile());
        return Boolean.valueOf(true);
        obj4;
        obj = obj6;
_L10:
        obj1 = obj;
        obj2 = obj3;
        TapjoyLog.e("TapjoyCache", (new StringBuilder()).append("Network timeout during caching: ").append(((SocketTimeoutException) (obj4)).toString()).toString());
        obj1 = obj;
        obj2 = obj3;
        TapjoyCache.access$100(TapjoyCache.this).remove(_url.getFile());
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
        TapjoyCache.access$100(TapjoyCache.this).remove(_url.getFile());
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

    public (URL url, String s, long l)
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
        TapjoyCache.access$100(TapjoyCache.this).add(_url.getFile());
    }
}
