// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tapjoy:
//            TapjoyLog, TapjoyUtil

public class TapjoyCachedAssetData
    implements Serializable
{

    private static final String TAG = "TapjoyCachedAssetData";
    private static final long serialVersionUID = 1L;
    private String assetURL;
    private String localFilePath;
    private String localURL;
    private String mimeType;
    private String offerId;
    private long timeOfDeathInSeconds;
    private long timeToLiveInSeconds;
    private long timestampInSeconds;

    public TapjoyCachedAssetData(String s, String s1, long l)
    {
        this(s, s1, l, System.currentTimeMillis() / 1000L);
    }

    public TapjoyCachedAssetData(String s, String s1, long l, long l1)
    {
        setAssetURL(s);
        setLocalFilePath(s1);
        timeToLiveInSeconds = l;
        timestampInSeconds = l1;
        timeOfDeathInSeconds = l1 + l;
    }

    public static TapjoyCachedAssetData fromJSONObject(JSONObject jsonobject)
    {
        Object obj;
        obj = jsonobject.getString("assetURL");
        String s = jsonobject.getString("localFilePath");
        long l = jsonobject.getLong("timestamp");
        obj = new TapjoyCachedAssetData(((String) (obj)), s, jsonobject.getLong("timeToLive"), l);
        ((TapjoyCachedAssetData) (obj)).setOfferID(jsonobject.optString("offerID"));
        return ((TapjoyCachedAssetData) (obj));
        jsonobject;
        jsonobject = null;
_L2:
        TapjoyLog.i("TapjoyCachedAssetData", "Can not build TapjoyVideoObject -- not enough data.");
        return jsonobject;
        jsonobject;
        jsonobject = ((JSONObject) (obj));
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static TapjoyCachedAssetData fromRawJSONString(String s)
    {
        s = new JSONObject(s);
        s = fromJSONObject(s);
        return s;
        s;
_L2:
        TapjoyLog.i("TapjoyCachedAssetData", "Can not build TapjoyVideoObject -- error reading json string");
        return null;
        s;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public String getAssetURL()
    {
        return assetURL;
    }

    public String getLocalFilePath()
    {
        return localFilePath;
    }

    public String getLocalURL()
    {
        return localURL;
    }

    public String getMimeType()
    {
        return mimeType;
    }

    public String getOfferId()
    {
        return offerId;
    }

    public long getTimeOfDeathInSeconds()
    {
        return timeOfDeathInSeconds;
    }

    public long getTimeToLiveInSeconds()
    {
        return timeToLiveInSeconds;
    }

    public long getTimestampInSeconds()
    {
        return timestampInSeconds;
    }

    public void resetTimeToLive(long l)
    {
        timeToLiveInSeconds = l;
        timeOfDeathInSeconds = System.currentTimeMillis() / 1000L + l;
    }

    public void setAssetURL(String s)
    {
        assetURL = s;
        mimeType = TapjoyUtil.determineMimeType(s);
    }

    public void setLocalFilePath(String s)
    {
        localFilePath = s;
        localURL = (new StringBuilder()).append("file://").append(s).toString();
    }

    public void setOfferID(String s)
    {
        offerId = s;
    }

    public JSONObject toJSON()
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("timestamp", getTimestampInSeconds());
            jsonobject.put("timeToLive", getTimeToLiveInSeconds());
            jsonobject.put("assetURL", getAssetURL());
            jsonobject.put("localFilePath", getLocalFilePath());
            jsonobject.put("offerID", getOfferId());
        }
        catch (JSONException jsonexception)
        {
            return jsonobject;
        }
        return jsonobject;
    }

    public String toRawJSONString()
    {
        return toJSON().toString();
    }
}
