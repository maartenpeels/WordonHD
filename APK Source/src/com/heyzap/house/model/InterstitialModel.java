// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.model;

import android.content.Context;
import com.heyzap.analytics.Event;
import com.heyzap.analytics.MetricsTracker;
import com.heyzap.internal.GenericCallback;
import com.heyzap.internal.Logger;
import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.house.model:
//            AdModel

public class InterstitialModel extends AdModel
    implements Serializable
{

    public static String FORMAT = "interstitial";
    private Integer backgroundOverlay;
    private Boolean disableGlobalTouch;
    private int height;
    private Boolean manualSize;
    private int width;

    public InterstitialModel(JSONObject jsonobject)
        throws JSONException, Exception
    {
        super(jsonobject);
        creativeType = FORMAT;
        setHtmlData(jsonobject.getString("ad_html"));
        height = jsonobject.optInt("ad_height");
        width = jsonobject.optInt("ad_width");
        if (height == 0 && jsonobject.optString("ad_height").equals("fill_parent"))
        {
            height = -1;
        }
        if (width == 0 && jsonobject.optString("ad_width").equals("fill_parent"))
        {
            width = -1;
        }
        String s;
        boolean flag;
        if (height != 0 && width != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        manualSize = Boolean.valueOf(flag);
        s = jsonobject.optString("required_orientation", "portrait");
        if (Boolean.valueOf(jsonobject.optBoolean("hide_on_orientation_change", true)).booleanValue())
        {
            if (s.equals("landscape"))
            {
                requiredOrientation = 2;
            } else
            if (s.equals("portrait"))
            {
                requiredOrientation = 1;
            } else
            {
                requiredOrientation = 0;
            }
        }
        disableGlobalTouch = Boolean.valueOf(jsonobject.optBoolean("disable_global_touch", false));
        backgroundOverlay = Integer.valueOf(jsonobject.optInt("background_overlay", -1));
        setShouldRefetchIfNotReady(jsonobject.optBoolean("should_refetch_if_not_ready", false));
    }

    public void cleanup(Context context)
        throws Exception
    {
    }

    public void doPostFetchActions(Context context, final AdModel.ModelPostFetchCompleteListener listener)
    {
        MetricsTracker.getEvent(this).creativeDownloadStartTime(System.currentTimeMillis());
        AdModel.HtmlAssetFetcher.fetch(this, new GenericCallback() {

            final InterstitialModel this$0;
            final AdModel.ModelPostFetchCompleteListener val$listener;

            public void onCallback(Object obj, Throwable throwable)
            {
                Logger.format("(HTML ASSETS CACHED) %s", new Object[] {
                    InterstitialModel.this
                });
                setIsFullyCached(true);
                setIsReady(true);
                if (listener != null)
                {
                    listener.onComplete(InterstitialModel.this, null);
                }
                MetricsTracker.getEvent(InterstitialModel.this).creativeDownloadEndTime(System.currentTimeMillis()).impressionId(impressionId).creativeDownloadFailedAmount(getCreativeSuccess()).commit();
            }

            
            {
                this$0 = InterstitialModel.this;
                listener = modelpostfetchcompletelistener;
                super();
            }
        });
    }

    public Integer getBackgroundOverlayColor()
    {
        if (backgroundOverlay.intValue() == -1)
        {
            return Integer.valueOf(0);
        } else
        {
            return backgroundOverlay;
        }
    }

    public int getHeight()
    {
        return height;
    }

    public int getWidth()
    {
        return width;
    }

}
