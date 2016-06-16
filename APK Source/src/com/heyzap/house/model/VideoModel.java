// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.model;

import android.content.Context;
import android.net.Uri;
import com.heyzap.analytics.Event;
import com.heyzap.analytics.MetricsTracker;
import com.heyzap.house.Manager;
import com.heyzap.house.cache.Entry;
import com.heyzap.house.cache.FileCache;
import com.heyzap.http.FileAsyncHttpResponseHandler;
import com.heyzap.http.JsonHttpResponseHandler;
import com.heyzap.http.RequestHandle;
import com.heyzap.http.RequestParams;
import com.heyzap.internal.APIClient;
import com.heyzap.internal.FileFetchClient;
import com.heyzap.internal.GenericCallback;
import com.heyzap.internal.Logger;
import com.heyzap.internal.Utils;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.house.model:
//            AdModel

public class VideoModel extends AdModel
    implements Serializable
{
    public static class Cacher
    {

        public static void start(Context context1, VideoModel videomodel, AdModel.ModelPostFetchCompleteListener modelpostfetchcompletelistener)
        {
            Object obj;
            Object obj1;
            Utils.createCacheDir(context1);
            obj1 = videomodel.getStaticUri();
            obj = videomodel.getStreamingUri();
            if (obj1 != null || obj == null) goto _L2; else goto _L1
_L1:
            Entry entry;
            obj1 = new File(Utils.getCachePath(context1, String.format("video-%s.mp4", new Object[] {
                Integer.valueOf(videomodel.getCreativeId())
            })));
            entry = Manager.getInstance().getFileCache().get(((File) (obj1)).getPath());
            if (entry == null) goto _L4; else goto _L3
_L3:
            entry.setLastUsed();
            videomodel.setCachePath(entry.getFilename());
            videomodel.setFileCached(Boolean.valueOf(true));
            videomodel.setIsReady(true);
            videomodel.percentDownloaded = 100;
            MetricsTracker.putEvent(videomodel, true).videoCached(true).commit();
            Logger.format("(VIDEO PRE-CACHED) %s", new Object[] {
                videomodel
            });
            modelpostfetchcompletelistener.onComplete(videomodel, null);
_L7:
            return;
_L2:
            obj = obj1;
            if (obj1 != null) goto _L1; else goto _L5
_L5:
            Logger.log("Cacher.start null uri!");
            context1 = new Throwable("No video to download.");
            if (modelpostfetchcompletelistener == null) goto _L7; else goto _L6
_L6:
            modelpostfetchcompletelistener.onComplete(null, context1);
            return;
_L4:
            boolean flag = ((File) (obj1)).createNewFile();
            if (flag);
            MetricsTracker.getEvent(videomodel).creativeHost(((Uri) (obj)).getAuthority()).creativePath(((Uri) (obj)).getPath()).videoDownloadStartTime(System.currentTimeMillis());
            modelpostfetchcompletelistener = new FileAsyncHttpResponseHandler(((File) (obj1)), videomodel, ((File) (obj1)), modelpostfetchcompletelistener) {

                private boolean firedFinished;
                final File val$file;
                final AdModel.ModelPostFetchCompleteListener val$listener;
                final VideoModel val$model;

                public void onCancel()
                {
                    Logger.format("(DOWNLOAD CANCELLED) %s", new Object[] {
                        model
                    });
                    Throwable throwable = new Throwable("cancelled");
                    if (listener != null)
                    {
                        listener.onComplete(model, throwable);
                    }
                }

                public void onFailure(int i, Header aheader[], Throwable throwable, File file1)
                {
                    if (throwable.getMessage().equals("No space left on device"))
                    {
                        Logger.log("Dumping caches.");
                        try
                        {
                            Manager.getInstance().clearAndCreateFileCache();
                        }
                        // Misplaced declaration of an exception variable
                        catch (Header aheader[])
                        {
                            Logger.trace(aheader);
                        }
                    }
                    if (file1.exists())
                    {
                        file1.delete();
                    }
                    MetricsTracker.getEvent(model).videoDownloadFailed(true).impressionId(model.impressionId).commit();
                    Logger.format("(DOWNLOAD ERROR) Error: %s %s", new Object[] {
                        throwable.toString(), model
                    });
                    if (listener != null)
                    {
                        listener.onComplete(null, throwable);
                    }
                }

                public void onProgress(int i, int j)
                {
                    i = (i * 100) / j;
                    model.size = j;
                    model.percentDownloaded = i;
                    if (model.requiredDownloadPercent != null && model.requiredDownloadPercent.doubleValue() < (double)i)
                    {
                        model.setIsReady(true);
                        File file1 = file;
                        onSuccess(200, new Header[0], file1);
                    }
                }

                public void onStart()
                {
                    Logger.format("(DOWNLOADING) %s", new Object[] {
                        model
                    });
                }

                public void onSuccess(int i, Header aheader[], File file1)
                {
                    if (!firedFinished)
                    {
                        firedFinished = true;
                        if (!file1.exists())
                        {
                            onFailure(i, aheader, new Throwable("Downloaded video does not exist on filesystem."), file1);
                            return;
                        }
                        aheader = new Entry();
                        aheader.setFilename(file1.getAbsolutePath());
                        aheader.setDirty(Boolean.valueOf(false));
                        aheader.setIdentifier(file1.getAbsolutePath());
                        Manager.getInstance().getFileCache().put(aheader);
                        Manager.getInstance().getFileCache().sync();
                        Logger.format("(CACHED) %s", new Object[] {
                            model
                        });
                        model.setCachePath(file1.getAbsolutePath());
                        model.setFileCached(Boolean.valueOf(true));
                        model.setIsReady(true);
                        MetricsTracker.getEvent(model).videoDownloadEndTime(System.currentTimeMillis()).impressionId(model.impressionId).commit();
                        if (listener != null)
                        {
                            listener.onComplete(model, null);
                            return;
                        }
                    }
                }

            
            {
                model = videomodel;
                file = file2;
                listener = modelpostfetchcompletelistener;
                super(file1);
                firedFinished = false;
            }
            };
            modelpostfetchcompletelistener.setUseSynchronousMode(false);
            videomodel.setCacheRequestHandle(FileFetchClient.fetch(context1, ((Uri) (obj)).toString(), modelpostfetchcompletelistener));
            return;
            context1;
            Logger.log("Cache.start IOException");
            Logger.trace(context1);
            if (modelpostfetchcompletelistener != null)
            {
                Logger.log("Cache.start IOException listener is null");
                modelpostfetchcompletelistener.onComplete(null, context1);
                return;
            }
              goto _L7
        }

        public Cacher()
        {
        }
    }

    public class VideoDisplayOptions
        implements Cloneable, Serializable
    {

        public Boolean allowClick;
        public Boolean allowHide;
        public Boolean allowSkip;
        public Boolean allowStreamingFallback;
        public Boolean forceStreaming;
        public Integer lockoutTime;
        public Boolean postRollInterstitial;
        public Double requiredDownloadPercent;
        public Boolean showCountdown;
        final VideoModel this$0;

        public Object clone()
            throws CloneNotSupportedException
        {
            return super.clone();
        }

        public void setOptions(JSONObject jsonobject)
        {
            lockoutTime = Integer.valueOf(jsonobject.optInt("lockout_time", lockoutTime.intValue()));
            allowSkip = Boolean.valueOf(jsonobject.optBoolean("allow_skip", allowSkip.booleanValue()));
            allowHide = Boolean.valueOf(jsonobject.optBoolean("allow_hide", allowHide.booleanValue()));
            allowClick = Boolean.valueOf(jsonobject.optBoolean("allow_click", allowClick.booleanValue()));
            postRollInterstitial = Boolean.valueOf(jsonobject.optBoolean("post_roll_interstitial", postRollInterstitial.booleanValue()));
            allowStreamingFallback = Boolean.valueOf(jsonobject.optBoolean("allow_streaming_fallback", allowStreamingFallback.booleanValue()));
            forceStreaming = Boolean.valueOf(jsonobject.optBoolean("force_streaming", forceStreaming.booleanValue()));
            showCountdown = Boolean.valueOf(jsonobject.optBoolean("show_countdown", showCountdown.booleanValue()));
            requiredDownloadPercent = Double.valueOf(jsonobject.optDouble("required_download_percent", requiredDownloadPercent.doubleValue()));
        }

        public VideoDisplayOptions()
        {
            this$0 = VideoModel.this;
            super();
            lockoutTime = Integer.valueOf(0);
            allowSkip = Boolean.valueOf(true);
            allowHide = Boolean.valueOf(false);
            allowClick = Boolean.valueOf(true);
            allowStreamingFallback = Boolean.valueOf(false);
            forceStreaming = Boolean.valueOf(false);
            postRollInterstitial = Boolean.valueOf(false);
            showCountdown = Boolean.valueOf(true);
            requiredDownloadPercent = Double.valueOf(100D);
        }
    }


    public static String FORMAT = "video";
    private static final long serialVersionUID = 0x8f58374316f58d7dL;
    private Boolean allowStreamingFallback;
    private transient RequestHandle cacheRequestHandle;
    private String cachedVideoPath;
    private Context context;
    private Boolean disableGlobalTouch;
    private HashMap displayOptions;
    private Boolean fileCached;
    private Boolean forceStreaming;
    private Integer interstitialBackgroundOverlayColor;
    private int interstitialHeight;
    private int interstitialWidth;
    private Boolean manualSize;
    public int percentDownloaded;
    Double requiredDownloadPercent;
    private Boolean sentVideoComplete;
    private Boolean showCountdown;
    public int size;
    private ArrayList staticUrls;
    private ArrayList streamingUrls;
    private Integer videoHeight;
    private Integer videoLength;
    private Integer videoWidth;

    public VideoModel(JSONObject jsonobject)
        throws Exception, JSONException
    {
        super(jsonobject);
        sentVideoComplete = Boolean.valueOf(false);
        interstitialBackgroundOverlayColor = Integer.valueOf(0);
        interstitialHeight = -1;
        interstitialWidth = -1;
        staticUrls = new ArrayList();
        streamingUrls = new ArrayList();
        videoWidth = Integer.valueOf(0);
        videoHeight = Integer.valueOf(0);
        videoLength = Integer.valueOf(0);
        allowStreamingFallback = Boolean.valueOf(false);
        forceStreaming = Boolean.valueOf(false);
        cachedVideoPath = null;
        cacheRequestHandle = null;
        fileCached = Boolean.valueOf(false);
        showCountdown = Boolean.valueOf(true);
        displayOptions = new HashMap();
        creativeType = FORMAT;
        if (jsonobject.has("interstitial"))
        {
            JSONObject jsonobject1 = jsonobject.getJSONObject("interstitial");
            if (jsonobject1.has("meta"))
            {
                JSONObject jsonobject2 = jsonobject1.getJSONObject("meta");
                interstitialHeight = jsonobject2.optInt("height", interstitialHeight);
                interstitialWidth = jsonobject2.optInt("width", interstitialWidth);
            }
            setHtmlData(jsonobject1.getString("html_data"));
            interstitialBackgroundOverlayColor = Integer.valueOf(jsonobject1.optInt("background_color", interstitialBackgroundOverlayColor.intValue()));
        }
        if (jsonobject.has("video"))
        {
            Object obj = jsonobject.getJSONObject("video");
            if (((JSONObject) (obj)).has("meta"))
            {
                JSONObject jsonobject3 = ((JSONObject) (obj)).getJSONObject("meta");
                videoWidth = Integer.valueOf(jsonobject3.optInt("width", videoWidth.intValue()));
                videoHeight = Integer.valueOf(jsonobject3.optInt("height", videoHeight.intValue()));
                videoLength = Integer.valueOf(jsonobject3.optInt("length", videoLength.intValue()));
            }
            VideoDisplayOptions videodisplayoptions = new VideoDisplayOptions();
            videodisplayoptions.setOptions(((JSONObject) (obj)));
            if (((JSONObject) (obj)).has("ad_unit"))
            {
                JSONObject jsonobject4 = ((JSONObject) (obj)).getJSONObject("ad_unit");
                com.heyzap.internal.Constants.AdUnit aadunit[] = com.heyzap.internal.Constants.AdUnit.values();
                int l = aadunit.length;
                for (int i = 0; i < l; i++)
                {
                    com.heyzap.internal.Constants.AdUnit adunit = aadunit[i];
                    VideoDisplayOptions videodisplayoptions1 = (VideoDisplayOptions)videodisplayoptions.clone();
                    String s2 = adunit.toString().toLowerCase(Locale.US);
                    if (jsonobject4.has(s2))
                    {
                        videodisplayoptions1.setOptions(jsonobject4.getJSONObject(s2));
                    }
                    displayOptions.put(adunit, videodisplayoptions1);
                }

            }
            if (((JSONObject) (obj)).has("static_url"))
            {
                JSONArray jsonarray = ((JSONObject) (obj)).getJSONArray("static_url");
                for (int j = 0; j < jsonarray.length(); j++)
                {
                    String s1 = jsonarray.getString(j);
                    staticUrls.add(s1);
                }

            }
            if (((JSONObject) (obj)).has("streaming_url"))
            {
                obj = ((JSONObject) (obj)).getJSONArray("streaming_url");
                for (int k = 0; k < ((JSONArray) (obj)).length(); k++)
                {
                    String s = ((JSONArray) (obj)).getString(k);
                    streamingUrls.add(s);
                }

            }
            if (staticUrls.size() == 0 && streamingUrls.size() == 0)
            {
                throw new Exception("No video URLs.");
            }
        }
        setShouldRefetchIfNotReady(jsonobject.optBoolean("should_refetch_if_not_ready", true));
    }

    public void cancelDownload()
    {
        if (cacheRequestHandle != null && !cacheRequestHandle.isFinished() && !cacheRequestHandle.isCancelled())
        {
            cacheRequestHandle.cancel(true);
        }
    }

    public void cleanup(Context context1)
        throws Exception
    {
        Logger.log((new StringBuilder()).append("(CLEANUP) ").append(getImpressionId()).toString());
        cancelDownload();
    }

    public void doPostFetchActions(Context context1, AdModel.ModelPostFetchCompleteListener modelpostfetchcompletelistener)
    {
        MetricsTracker.getEvent(this).creativeDownloadStartTime(System.currentTimeMillis());
        AdModel.HtmlAssetFetcher.fetch(this, new GenericCallback() {

            final VideoModel this$0;

            public void onCallback(Object obj, Throwable throwable)
            {
                Logger.format("(HTML ASSETS CACHED) %s", new Object[] {
                    VideoModel.this
                });
                MetricsTracker.getEvent(VideoModel.this).creativeDownloadEndTime(System.currentTimeMillis()).impressionId(impressionId).creativeDownloadFailedAmount(getCreativeSuccess()).commit();
            }

            
            {
                this$0 = VideoModel.this;
                super();
            }
        });
        if (!shouldForceStreaming().booleanValue())
        {
            Cacher.start(context1, this, modelpostfetchcompletelistener);
            return;
        }
        if (modelpostfetchcompletelistener != null)
        {
            try
            {
                modelpostfetchcompletelistener.onComplete(this, null);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Context context1)
            {
                Logger.trace(context1);
            }
            if (modelpostfetchcompletelistener != null)
            {
                modelpostfetchcompletelistener.onComplete(null, context1);
            }
        }
        return;
    }

    public String getCachedPath()
    {
        return cachedVideoPath;
    }

    public int getInterstitialBackgroundOverlayColor()
    {
        return interstitialBackgroundOverlayColor.intValue();
    }

    public int getInterstitialHeight()
    {
        return interstitialHeight;
    }

    public int getInterstitialWidth()
    {
        return interstitialWidth;
    }

    public Uri getStaticUri()
    {
        if (staticUrls.size() > 0)
        {
            return Uri.parse((String)staticUrls.get(0));
        } else
        {
            return null;
        }
    }

    public Uri getStreamingUri()
    {
        if (streamingUrls.size() > 0)
        {
            return Uri.parse((String)streamingUrls.get(0));
        } else
        {
            return null;
        }
    }

    public VideoDisplayOptions getVideoDisplayOptions()
    {
        if (getAdUnit() == null)
        {
            return (VideoDisplayOptions)displayOptions.get(com.heyzap.internal.Constants.AdUnit.UNKNOWN);
        }
        if (displayOptions.containsKey(getAdUnit()))
        {
            return (VideoDisplayOptions)displayOptions.get(getAdUnit());
        } else
        {
            return (VideoDisplayOptions)displayOptions.get(com.heyzap.internal.Constants.AdUnit.UNKNOWN);
        }
    }

    public Boolean isFileCached()
    {
        return fileCached;
    }

    public Boolean onComplete(Context context1, int i, int j, Boolean boolean1)
    {
        if (sentVideoComplete.booleanValue())
        {
            Logger.log("Already sent video complete successfully");
            return Boolean.valueOf(false);
        }
        RequestParams requestparams = super.getEventRequestParams();
        requestparams.put("video_duration_ms", Integer.valueOf(j));
        if (!boolean1.booleanValue())
        {
            j = i;
        }
        requestparams.put("watched_duration_ms", Integer.valueOf(j));
        if (boolean1.booleanValue())
        {
            boolean1 = "true";
        } else
        {
            boolean1 = "false";
        }
        requestparams.put("video_finished", boolean1);
        requestparams.put("lockout_time_seconds", Integer.valueOf((int)((double)getVideoDisplayOptions().lockoutTime.intValue() / 1000D)));
        if (getAdUnit() == com.heyzap.internal.Constants.AdUnit.INCENTIVIZED)
        {
            requestparams.put("incentivized", "true");
        }
        APIClient.post(context1.getApplicationContext(), (new StringBuilder()).append(Manager.AD_SERVER).append("/event/video_impression_complete").toString(), requestparams, new JsonHttpResponseHandler() {

            final VideoModel this$0;

            public void onSuccess(int k, Header aheader[], JSONObject jsonobject)
            {
                try
                {
                    if (jsonobject.getInt("status") == 200)
                    {
                        Logger.format("(COMPLETE) %s", new Object[] {
                            VideoModel.this
                        });
                        sentVideoComplete = Boolean.valueOf(true);
                    }
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (Header aheader[])
                {
                    Logger.trace(aheader);
                }
            }

            
            {
                this$0 = VideoModel.this;
                super();
            }
        });
        return Boolean.valueOf(true);
    }

    public void onInterstitialFallback()
    {
        cancelDownload();
        HashMap hashmap = new HashMap();
        hashmap.put("interstitial_fallback", "1");
        super.setAdditionalEventParams(hashmap);
    }

    public void setCachePath(String s)
    {
        cachedVideoPath = s;
    }

    public void setCacheRequestHandle(RequestHandle requesthandle)
    {
        cacheRequestHandle = requesthandle;
    }

    public void setFileCached(Boolean boolean1)
    {
        fileCached = boolean1;
    }

    public Boolean shouldAllowFallbackToStreaming()
    {
        return allowStreamingFallback;
    }

    public Boolean shouldForceStreaming()
    {
        return forceStreaming;
    }

    public Boolean showCountdown()
    {
        return showCountdown;
    }



/*
    static Boolean access$002(VideoModel videomodel, Boolean boolean1)
    {
        videomodel.sentVideoComplete = boolean1;
        return boolean1;
    }

*/
}
