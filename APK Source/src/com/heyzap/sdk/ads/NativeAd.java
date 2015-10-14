// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.ads;

import android.content.Context;
import com.heyzap.house.Manager;
import com.heyzap.house.handler.ClickHandler;
import com.heyzap.house.model.AdModel;
import com.heyzap.house.model.NativeModel;
import com.heyzap.house.request.FetchRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class NativeAd
{
    public static class Ad
        implements Serializable
    {

        private static final long serialVersionUID = 0x30661315258145bdL;
        private NativeModel model;

        private NativeModel getModel()
        {
            return model;
        }

        public void doClick(Context context)
        {
            (new ClickHandler(model)).doClick(context);
        }

        public void doImpression()
        {
            model.onImpression(Manager.applicationContext);
        }

        public Boolean getBoolean(String s)
            throws AdException
        {
            boolean flag;
            try
            {
                flag = model.data.getBoolean(s);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                throw new AdException();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                throw new AdException();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                throw new AdException();
            }
            return Boolean.valueOf(flag);
        }

        public JSONObject getData()
        {
            return model.data;
        }

        public String getDeveloperName()
        {
            return model.data.optString("developer_name");
        }

        public String getDisplayName()
        {
            return model.data.optString("display_name");
        }

        public Double getDouble(String s)
            throws AdException
        {
            double d;
            try
            {
                d = model.data.getDouble(s);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                throw new AdException();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                throw new AdException();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                throw new AdException();
            }
            return Double.valueOf(d);
        }

        public double getGameRating()
        {
            return Double.parseDouble(model.data.optString("rating", "0.0"));
        }

        public String getIconUri()
        {
            return model.data.optString("icon_uri");
        }

        protected String getImpressionId()
        {
            return model.getImpressionId();
        }

        public Integer getInt(String s)
            throws AdException
        {
            int i;
            try
            {
                i = model.data.getInt(s);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                throw new AdException();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                throw new AdException();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                throw new AdException();
            }
            return Integer.valueOf(i);
        }

        public long getLong(String s)
            throws AdException
        {
            long l;
            try
            {
                l = model.data.getLong(s);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                throw new AdException();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                throw new AdException();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                throw new AdException();
            }
            return l;
        }

        public String getString(String s)
            throws AdException
        {
            try
            {
                s = model.data.getString(s);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                throw new AdException();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                throw new AdException();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                throw new AdException();
            }
            return s;
        }

        public Boolean has(String s)
        {
            return Boolean.valueOf(model.data.has(s));
        }

        public Boolean isNull(String s)
        {
            return Boolean.valueOf(model.data.isNull(s));
        }

        public Boolean optBoolean(String s)
        {
            return optBoolean(s, Boolean.valueOf(false));
        }

        public Boolean optBoolean(String s, Boolean boolean1)
        {
            try
            {
                s = getBoolean(s);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                return boolean1;
            }
            return s;
        }

        public Double optDouble(String s)
        {
            return optDouble(s, Double.valueOf((0.0D / 0.0D)));
        }

        public Double optDouble(String s, Double double1)
        {
            try
            {
                s = getDouble(s);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                return double1;
            }
            return s;
        }

        public Integer optInt(String s)
        {
            return optInt(s, Integer.valueOf(0));
        }

        public Integer optInt(String s, Integer integer)
        {
            try
            {
                s = getInt(s);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                return integer;
            }
            return s;
        }

        public long optLong(String s)
        {
            return optLong(s, Long.valueOf(0L));
        }

        public long optLong(String s, Long long1)
        {
            long l;
            try
            {
                l = getLong(s);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                return long1.longValue();
            }
            return l;
        }

        public String optString(String s)
        {
            return optString(s, "");
        }

        public String optString(String s, String s1)
        {
            try
            {
                s = getString(s);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                return s1;
            }
            return s;
        }


        private Ad(NativeModel nativemodel)
        {
            model = nativemodel;
        }

    }

    public static class Ad.AdException extends Exception
    {

        private static final long serialVersionUID = 1L;

        public Ad.AdException()
        {
        }
    }

    public static class FetchResponse
    {

        private List ads;
        private String tag;

        public void doImpressionOnAll()
        {
            if (ads != null)
            {
                ArrayList arraylist = new ArrayList();
                for (Iterator iterator = ads.iterator(); iterator.hasNext(); arraylist.add(((Ad)iterator.next()).getModel())) { }
                AdModel.onManyImpressions(Manager.applicationContext, arraylist);
            }
        }

        public List getAds()
        {
            return ads;
        }

        public Integer getCount()
        {
            if (ads != null)
            {
                return Integer.valueOf(ads.size());
            } else
            {
                return Integer.valueOf(0);
            }
        }

        public String getTag()
        {
            return tag;
        }

        private FetchResponse(List list, String s)
        {
            ads = null;
            tag = AdModel.DEFAULT_TAG_NAME;
            if (s != null)
            {
                s = AdModel.DEFAULT_TAG_NAME;
            }
            if (list != null)
            {
                ads = list;
                return;
            } else
            {
                ads = new ArrayList();
                return;
            }
        }

    }

    public static interface OnFetchListener
    {

        public abstract void onResponse(FetchResponse fetchresponse, String s, Throwable throwable);
    }


    private static com.heyzap.internal.Constants.AdUnit AD_UNIT;
    private static final ArrayList CREATIVE_TYPES = new ArrayList(Arrays.asList(new String[] {
        "native"
    }));
    private static Integer campaignId = Integer.valueOf(0);
    private static Integer creativeId = Integer.valueOf(0);
    private static Boolean debugEnabled = Boolean.valueOf(false);
    private static FetchResponse lastResponse = null;

    private NativeAd()
    {
    }

    private static FetchRequest createRequest(String s)
    {
        s = new FetchRequest(com.heyzap.internal.Constants.CreativeType.NATIVE, s, Boolean.valueOf(true), null);
        if (debugEnabled.booleanValue())
        {
            s.setDebugEnabled(debugEnabled);
            s.setRandomStrategyEnabled(Boolean.valueOf(true));
        }
        s.setCreativeId(creativeId);
        s.setCampaignId(campaignId);
        return s;
    }

    public static void fetch(int i, OnFetchListener onfetchlistener)
    {
        fetch(AdModel.DEFAULT_TAG_NAME, i, onfetchlistener);
    }

    public static void fetch(String s, int i, OnFetchListener onfetchlistener)
    {
        s = createRequest(s);
        s.setMaxCount(i);
        s.setResponseHandler(new com.heyzap.house.request.FetchRequest.OnFetchResponse(onfetchlistener) {

            final OnFetchListener val$listener;

            public void onFetchResponse(List list, FetchRequest fetchrequest, Throwable throwable)
            {
                if (throwable == null)
                {
                    ArrayList arraylist = new ArrayList();
                    for (int j = 0; j < list.size(); j++)
                    {
                        NativeModel nativemodel = (NativeModel)list.get(j);
                        if (nativemodel != null)
                        {
                            arraylist.add(new Ad(nativemodel));
                        }
                    }

                    list = arraylist;
                } else
                {
                    list = null;
                }
                if (list != null)
                {
                    list = new FetchResponse(list, fetchrequest.getTag());
                } else
                {
                    list = null;
                }
                NativeAd.lastResponse = list;
                if (listener != null)
                {
                    listener.onResponse(list, fetchrequest.getTag(), throwable);
                }
            }

            public void onModelsReceived(List list)
            {
            }

            
            {
                listener = onfetchlistener;
                super();
            }
        });
        s.execute(Manager.applicationContext);
    }

    public static FetchResponse getLastResponse()
    {
        return lastResponse;
    }

    static 
    {
        AD_UNIT = com.heyzap.internal.Constants.AdUnit.NATIVE;
    }


/*
    static FetchResponse access$202(FetchResponse fetchresponse)
    {
        lastResponse = fetchresponse;
        return fetchresponse;
    }

*/
}
