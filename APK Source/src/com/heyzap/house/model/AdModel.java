// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.model;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import com.heyzap.analytics.Event;
import com.heyzap.house.Manager;
import com.heyzap.house.cache.Entry;
import com.heyzap.house.cache.FileCache;
import com.heyzap.house.handler.AttributionHandler;
import com.heyzap.house.request.AdRequest;
import com.heyzap.http.JsonHttpResponseHandler;
import com.heyzap.http.RequestParams;
import com.heyzap.internal.APIClient;
import com.heyzap.internal.ExecutorPool;
import com.heyzap.internal.GenericCallback;
import com.heyzap.internal.Logger;
import com.heyzap.internal.Utils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class AdModel
    implements Serializable
{
    public static class HtmlAssetFetcher
    {

        public static void fetch(AdModel admodel, GenericCallback genericcallback)
        {
            Object obj = admodel.getHtmlData();
            if (obj == null)
            {
                return;
            }
            ArrayList arraylist = new ArrayList();
            ArrayList arraylist1 = new ArrayList();
            String s;
            for (Matcher matcher = Pattern.compile("url\\((\"[^\"]+\")\\)").matcher(((CharSequence) (obj))); matcher.find(); arraylist.add(s.substring(1, s.length() - 1)))
            {
                s = matcher.group(1);
            }

            for (obj = Pattern.compile("img.*src=\"([^\"]+)\"").matcher(((CharSequence) (obj))); ((Matcher) (obj)).find(); arraylist.add(((Matcher) (obj)).group(1))) { }
            admodel = new Runnable(arraylist, admodel, arraylist1, genericcallback) {

                final GenericCallback val$callback;
                final List val$cssUrls;
                final List val$imgUrls;
                final AdModel val$model;

                public void run()
                {
                    boolean flag1 = false;
                    Iterator iterator = imgUrls.iterator();
                    boolean flag = false;
_L14:
                    if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
                    String s = (String)iterator.next();
                    Object obj = HtmlAssetFetcher.saveUrlAsFile(s, model);
_L3:
                    if (obj == null)
                    {
                        continue; /* Loop/switch isn't completed */
                    }
                    model.setHtmlData(model.getHtmlData().replace(s, ((Uri) (obj)).toString()));
                    flag = true;
                    continue; /* Loop/switch isn't completed */
                    obj;
                    Logger.trace(((Throwable) (obj)));
                    obj = null;
                    flag1 = true;
                      goto _L3
_L2:
                    iterator = cssUrls.iterator();
_L12:
                    if (!iterator.hasNext()) goto _L5; else goto _L4
_L4:
                    obj = (String)iterator.next();
                    throw new NullPointerException();
_L8:
                    if (true)
                    {
                        break; /* Loop/switch isn't completed */
                    }
                    model.setHtmlData(model.getHtmlData().replace(String.format("\"%s\"", new Object[] {
                        obj
                    }), null.toString()));
                    flag = true;
                    break; /* Loop/switch isn't completed */
                    Object obj1;
                    obj1;
                      goto _L6
                    obj1;
                    Logger.trace(((Throwable) (obj1)));
                    if (true) goto _L8; else goto _L7
_L5:
                    if (!flag)
                    {
                        break MISSING_BLOCK_LABEL_250;
                    }
                    if (!flag1) goto _L10; else goto _L9
_L9:
                    model.creativeSuccess = 1;
_L11:
                    if (callback != null)
                    {
                        callback.onCallback(model, null);
                        return;
                    }
                    break MISSING_BLOCK_LABEL_283;
_L10:
                    model.creativeSuccess = 2;
                      goto _L11
_L6:
                    HtmlAssetFetcherInterruptException htmlassetfetcherinterruptexception;
                    try
                    {
                        Logger.trace(((Throwable) (obj1)));
                        continue; /* Loop/switch isn't completed */
                    }
                    // Misplaced declaration of an exception variable
                    catch (HtmlAssetFetcherInterruptException htmlassetfetcherinterruptexception)
                    {
                        Logger.log("HtmlAssetFetcher interrupted");
                    }
                    Logger.trace(htmlassetfetcherinterruptexception);
                    return;
                    model.creativeSuccess = 0;
                      goto _L11
                    MalformedURLException malformedurlexception;
                    malformedurlexception;
                    malformedurlexception = null;
                    flag1 = true;
                      goto _L3
_L7:
                    flag1 = true;
                      goto _L12
                    return;
                    if (true) goto _L14; else goto _L13
_L13:
                }

            
            {
                imgUrls = list;
                model = admodel;
                cssUrls = list1;
                callback = genericcallback;
                super();
            }
            };
            ExecutorPool.getInstance().execute(admodel);
        }

        private static Uri saveUrlAsFile(String s, AdModel admodel)
            throws IOException, MalformedURLException, HtmlAssetFetcherInterruptException
        {
            File file;
            Object obj;
            if (admodel.hasBeenShown())
            {
                throw new HtmlAssetFetcherInterruptException();
            }
            s = new URL(s);
            byte abyte0[];
            InputStream inputstream;
            int i;
            try
            {
                admodel = String.format("%032x", new Object[] {
                    new BigInteger(1, MessageDigest.getInstance("MD5").digest(s.getPath().getBytes()))
                });
                file = new File(Manager.getInstance().getFileCache().getDirectory(), admodel);
                obj = Manager.getInstance().getFileCache().get(admodel);
            }
            // Misplaced declaration of an exception variable
            catch (AdModel admodel)
            {
                return Uri.parse(s.toString());
            }
            if (obj == null)
            {
                break MISSING_BLOCK_LABEL_98;
            }
            return ((Entry) (obj)).getUri();
            obj = new FileOutputStream(file);
            abyte0 = new byte[0x10000];
            inputstream = s.openStream();
_L1:
            i = inputstream.read(abyte0);
            if (i <= 0)
            {
                break MISSING_BLOCK_LABEL_154;
            }
            ((OutputStream) (obj)).write(abyte0, 0, i);
              goto _L1
            ((OutputStream) (obj)).close();
            obj = new Entry();
            ((Entry) (obj)).setFilename(file.getAbsolutePath());
            ((Entry) (obj)).setIdentifier(admodel);
            ((Entry) (obj)).setDirty(Boolean.valueOf(false));
            Manager.getInstance().getFileCache().put(((Entry) (obj)));
            admodel = ((Entry) (obj)).getUri();
            return admodel;
        }


        public HtmlAssetFetcher()
        {
        }
    }

    public static class HtmlAssetFetcherInterruptException extends Exception
    {

        public HtmlAssetFetcherInterruptException()
        {
        }
    }

    public static interface ModelPostFetchCompleteListener
    {

        public abstract void onComplete(AdModel admodel, Throwable throwable);
    }


    public static String DEFAULT_TAG_NAME = "default";
    public static String FORMAT = null;
    private static final long serialVersionUID = 0x50f2e1f3421e722bL;
    public String actionUrl;
    private transient AdRequest adRequest;
    private com.heyzap.internal.Constants.AdUnit adUnit;
    private Map additionalEventParams;
    private Integer creativeId;
    private int creativeSuccess;
    protected String creativeType;
    private int displayTtl;
    public Event event;
    private boolean fetchOnDisplay;
    private long fetchTime;
    private String gamePackage;
    private transient boolean hasBeenShown;
    private AtomicReference htmlData;
    private transient String htmlPath;
    protected String impressionId;
    private transient boolean isFullyCached;
    private boolean isReady;
    private transient Runnable nextFetchCallback;
    public String preCacheHtmlData;
    protected int requiredOrientation;
    private Boolean sentClick;
    private Boolean sentImpression;
    private Boolean sentIncentiveComplete;
    private boolean shouldRefetchIfNotReady;
    private boolean showOnlyAfterContentLoaded;
    private String strategy;
    private String tag;
    private long ttl;
    public String userIdentifier;

    public AdModel(JSONObject jsonobject)
        throws Exception, JSONException
    {
        sentImpression = Boolean.valueOf(false);
        sentIncentiveComplete = Boolean.valueOf(false);
        sentClick = Boolean.valueOf(false);
        ttl = 0L;
        fetchTime = System.currentTimeMillis();
        requiredOrientation = 0;
        additionalEventParams = new HashMap();
        isReady = false;
        shouldRefetchIfNotReady = false;
        htmlData = new AtomicReference("");
        displayTtl = 0;
        fetchOnDisplay = false;
        showOnlyAfterContentLoaded = false;
        hasBeenShown = false;
        isFullyCached = false;
        strategy = jsonobject.optString("ad_strategy", strategy);
        gamePackage = jsonobject.optString("promoted_game_package", "");
        impressionId = jsonobject.getString("impression_id");
        actionUrl = jsonobject.optString("click_url", null);
        ttl = jsonobject.optLong("refresh_time", 0L) * 1000L;
        creativeId = Integer.valueOf(jsonobject.optInt("creative_id", 0));
        if (jsonobject.has("display_ttl"))
        {
            displayTtl = jsonobject.optInt("display_ttl");
        }
        showOnlyAfterContentLoaded = jsonobject.optBoolean("show_only_after_content_loaded", true);
    }

    public static String normalizeTag(String s)
    {
        if (s == null || s.trim().equals(""))
        {
            s = DEFAULT_TAG_NAME;
        }
        return s.trim();
    }

    public static void onManyImpressions(Context context, List list)
    {
        if (list.size() == 0)
        {
            return;
        }
        ArrayList arraylist = new ArrayList();
        Object obj = list.iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            AdModel admodel = (AdModel)((Iterator) (obj)).next();
            if (!admodel.sentImpression.booleanValue())
            {
                arraylist.add(admodel.getImpressionId());
            }
        } while (true);
        try
        {
            obj = ((AdModel)list.get(0)).getAdUnit();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            obj = com.heyzap.internal.Constants.AdUnit.UNKNOWN;
        }
        obj = ((com.heyzap.internal.Constants.AdUnit) (obj)).toString().toLowerCase(Locale.US);
        if (arraylist.size() == 0)
        {
            Logger.log("Already sent impression(s)");
            return;
        } else
        {
            RequestParams requestparams = new RequestParams();
            requestparams.put("impression_ids", TextUtils.join(",", arraylist));
            requestparams.put("ad_unit", ((String) (obj)));
            APIClient.post(context, (new StringBuilder()).append(Manager.AD_SERVER).append("/register_impression").toString(), requestparams, new JsonHttpResponseHandler(list) {

                final List val$models;

                public void onFailure(int i, Header aheader[], Throwable throwable, JSONArray jsonarray)
                {
                }

                public void onFailure(int i, Header aheader[], Throwable throwable, JSONObject jsonobject)
                {
                }

                public void onFailure(Throwable throwable)
                {
                }

                public void onSuccess(int i, Header aheader[], JSONArray jsonarray)
                {
                }

                public void onSuccess(int i, Header aheader[], JSONObject jsonobject)
                {
                    if (jsonobject.getInt("status") == 200)
                    {
                        aheader = models.iterator();
                        do
                        {
                            if (!aheader.hasNext())
                            {
                                break;
                            }
                            jsonobject = (AdModel)aheader.next();
                            if (!((AdModel) (jsonobject)).sentImpression.booleanValue())
                            {
                                Logger.format("(IMPRESSION) %s", new Object[] {
                                    jsonobject
                                });
                                jsonobject.setSentImpression(Boolean.valueOf(true));
                            }
                        } while (true);
                    } else
                    {
                        try
                        {
                            aheader = models.iterator();
                            while (aheader.hasNext()) 
                            {
                                Logger.log(new Object[] {
                                    "(IMPRESSION ERROR) Bad Response: %s", (AdModel)aheader.next()
                                });
                            }
                        }
                        // Misplaced declaration of an exception variable
                        catch (Header aheader[])
                        {
                            Logger.trace(aheader);
                        }
                    }
                }

            
            {
                models = list;
                super();
            }
            });
            return;
        }
    }

    public abstract void cleanup(Context context)
        throws Exception;

    public abstract void doPostFetchActions(Context context, ModelPostFetchCompleteListener modelpostfetchcompletelistener);

    public AdRequest getAdRequest()
    {
        return adRequest;
    }

    public com.heyzap.internal.Constants.AdUnit getAdUnit()
    {
        return adUnit;
    }

    public Map getAdditionalEventParams()
    {
        return additionalEventParams;
    }

    public int getCreativeId()
    {
        return creativeId.intValue();
    }

    public String getCreativeSuccess()
    {
        if (creativeSuccess == 0)
        {
            return "all";
        }
        if (creativeSuccess == 1)
        {
            return "some";
        }
        if (creativeSuccess == 2)
        {
            return "none";
        } else
        {
            return null;
        }
    }

    public String getCreativeType()
    {
        return creativeType;
    }

    public int getDisplayTtl()
    {
        return displayTtl;
    }

    protected RequestParams getEventRequestParams()
    {
        RequestParams requestparams;
        if (additionalEventParams != null)
        {
            requestparams = new RequestParams(additionalEventParams);
        } else
        {
            requestparams = new RequestParams();
        }
        requestparams.put("ad_unit", getAdUnit().toString().toLowerCase(Locale.US));
        requestparams.put("impression_id", getImpressionId());
        requestparams.put("promoted_game_package", getGamePackage());
        if (tag != null)
        {
            requestparams.put("tag", normalizeTag(tag));
        }
        return requestparams;
    }

    public String getFormat()
    {
        return creativeType;
    }

    public String getGamePackage()
    {
        return gamePackage;
    }

    public String getHtmlData()
    {
        return (String)htmlData.get();
    }

    public String getImpressionId()
    {
        return impressionId;
    }

    public int getRequiredOrientation()
    {
        return requiredOrientation;
    }

    public String getTag()
    {
        return tag;
    }

    public boolean hasBeenShown()
    {
        return hasBeenShown;
    }

    public Boolean hasSentImpression()
    {
        return sentImpression;
    }

    public Boolean isExpired()
    {
        if (ttl > 0L)
        {
            boolean flag;
            if (System.currentTimeMillis() > fetchTime + ttl)
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

    public boolean isFullyCached()
    {
        return isFullyCached;
    }

    public Boolean isInstalled(Context context)
    {
        return Boolean.valueOf(Utils.packageIsInstalled(gamePackage, context.getApplicationContext()));
    }

    public boolean isReady()
    {
        return isReady;
    }

    public Boolean onClick(Context context, String s)
    {
        if (sentClick.booleanValue())
        {
            Logger.log("Already sent click successfully.");
            return Boolean.valueOf(true);
        }
        if (System.currentTimeMillis() - Manager.getInstance().lastClickedTime < Manager.maxClickDifference)
        {
            return Boolean.valueOf(false);
        }
        RequestParams requestparams = getEventRequestParams();
        if (s != null)
        {
            requestparams.put("custom_game_package", s);
        }
        APIClient.post(context.getApplicationContext(), (new StringBuilder()).append(Manager.AD_SERVER).append("/register_click").toString(), requestparams, new JsonHttpResponseHandler() {

            final AdModel this$0;

            public void onSuccess(int i, Header aheader[], JSONObject jsonobject)
            {
                try
                {
                    if (jsonobject.getInt("status") == 200)
                    {
                        Logger.format("(CLICK) %s", new Object[] {
                            AdModel.this
                        });
                        sentClick = Boolean.valueOf(true);
                    }
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (Header aheader[])
                {
                    return;
                }
            }

            
            {
                this$0 = AdModel.this;
                super();
            }
        });
        return Boolean.valueOf(true);
    }

    public void onClick(Context context)
    {
        onClick(context, null);
    }

    public void onImpression(Context context)
    {
        if (sentImpression.booleanValue())
        {
            Logger.log("Already sent impression successfully.");
            return;
        } else
        {
            AttributionHandler.getInstance().didImpression(context, this);
            RequestParams requestparams = getEventRequestParams();
            APIClient.post(context.getApplicationContext(), (new StringBuilder()).append(Manager.AD_SERVER).append("/register_impression").toString(), requestparams, new JsonHttpResponseHandler() {

                final AdModel this$0;

                public void onSuccess(int i, Header aheader[], JSONObject jsonobject)
                {
                    if (adRequest != null)
                    {
                        aheader = adRequest.getOnStatusListener();
                        if (aheader instanceof com.heyzap.sdk.mediation.adapter.HeyzapAdapter.AdListener)
                        {
                            ((com.heyzap.sdk.mediation.adapter.HeyzapAdapter.AdListener)aheader).onImpressed();
                        }
                    }
                    try
                    {
                        if (jsonobject.getInt("status") == 200)
                        {
                            Logger.format("(IMPRESSION) %s", new Object[] {
                                AdModel.this
                            });
                            sentImpression = Boolean.valueOf(true);
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
                this$0 = AdModel.this;
                super();
            }
            });
            return;
        }
    }

    public Boolean sentImpression()
    {
        return sentImpression;
    }

    public void setAdRequest(AdRequest adrequest)
    {
        adRequest = adrequest;
    }

    public void setAdUnit(com.heyzap.internal.Constants.AdUnit adunit)
    {
        adUnit = adunit;
    }

    public void setAdditionalEventParams(Map map)
    {
        additionalEventParams = map;
    }

    public void setHasBeenShown(boolean flag)
    {
        hasBeenShown = flag;
    }

    public void setHtmlData(String s)
    {
        htmlData.set(s);
    }

    public void setImpressionId(String s)
        throws IllegalArgumentException
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Invalid impression ID");
        } else
        {
            impressionId = s;
            return;
        }
    }

    public void setIsFullyCached(boolean flag)
    {
        isFullyCached = flag;
    }

    public void setIsReady(boolean flag)
    {
        isReady = flag;
    }

    public void setNextFetchCallback(Runnable runnable)
    {
        nextFetchCallback = runnable;
    }

    public void setSentImpression(Boolean boolean1)
    {
        sentImpression = boolean1;
    }

    public void setShouldRefetchIfNotReady(boolean flag)
    {
        shouldRefetchIfNotReady = flag;
    }

    public void setTag(String s)
    {
        tag = s;
    }

    public boolean shouldRefetchIfNotReady()
    {
        return shouldRefetchIfNotReady;
    }

    public boolean showOnlyAfterContentLoaded()
    {
        return showOnlyAfterContentLoaded;
    }

    public Boolean supportsCurrentOrientation(Context context)
    {
        int i = context.getResources().getConfiguration().orientation;
        boolean flag;
        if (requiredOrientation == 0 || i == requiredOrientation)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return Boolean.valueOf(flag);
    }

    public String toString()
    {
        return String.format("<%s T:%s I:%s CID: %s>", new Object[] {
            getClass().getName(), getCreativeType(), getImpressionId(), String.valueOf(creativeId)
        });
    }



/*
    static Boolean access$002(AdModel admodel, Boolean boolean1)
    {
        admodel.sentClick = boolean1;
        return boolean1;
    }

*/




/*
    static Boolean access$202(AdModel admodel, Boolean boolean1)
    {
        admodel.sentImpression = boolean1;
        return boolean1;
    }

*/


/*
    static int access$402(AdModel admodel, int i)
    {
        admodel.creativeSuccess = i;
        return i;
    }

*/
}
