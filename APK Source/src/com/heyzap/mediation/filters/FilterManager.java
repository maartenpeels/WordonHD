// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.filters;

import android.content.Context;
import com.heyzap.internal.ContextReference;
import com.heyzap.internal.Logger;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;

// Referenced classes of package com.heyzap.mediation.filters:
//            Filter, Matcher, FilterPolicy, TagMatcher, 
//            RejectFilterPolicy, AdUnitMatcher, IncentivizedRateLimitFilterPolicy, SharedPreferenceStore, 
//            AnyMatcher, RateLimitFilterPolicy, FilterContext

public class FilterManager
{

    private final ContextReference contextRef;
    private final ExecutorService executorService;
    private final List filters = new ArrayList();

    public FilterManager(ContextReference contextreference, ExecutorService executorservice)
    {
        contextRef = contextreference;
        executorService = executorservice;
    }

    public boolean accept(FilterContext filtercontext)
    {
        for (Iterator iterator = filters.iterator(); iterator.hasNext();)
        {
            Filter filter = (Filter)iterator.next();
            if (filter.matcher.match(filtercontext) && !filter.policy.accept())
            {
                return false;
            }
        }

        return true;
    }

    public void addDisabledTagsFilter(JSONArray jsonarray)
    {
        if (jsonarray != null)
        {
            HashSet hashset = new HashSet();
            int i = 0;
            while (i < jsonarray.length()) 
            {
                try
                {
                    hashset.add(jsonarray.getString(i));
                }
                catch (JSONException jsonexception)
                {
                    Logger.log(new Object[] {
                        "Failed to get disabled tag at index", Integer.valueOf(i)
                    });
                }
                i++;
            }
            addFilter(new Filter(new TagMatcher(hashset), new RejectFilterPolicy()));
        }
    }

    public void addDisplay(FilterContext filtercontext, com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay addisplay)
    {
        Iterator iterator = filters.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Filter filter = (Filter)iterator.next();
            if (filter.matcher.match(filtercontext))
            {
                filter.policy.addDisplay(addisplay);
            }
        } while (true);
    }

    public void addFilter(Filter filter)
    {
        filters.add(filter);
    }

    public void addIncentiveDailyLimitFilter(int i)
    {
        if (i >= 0)
        {
            addFilter(new Filter(new AdUnitMatcher(com.heyzap.internal.Constants.AdUnit.INCENTIVIZED), new IncentivizedRateLimitFilterPolicy(executorService, i, 1, TimeUnit.DAYS, new SharedPreferenceStore(contextRef.getApp().getSharedPreferences("heyzap.filter", 0), "incentive_history", ""))));
        }
    }

    public void addRateLimitIntervalFilter(int i)
    {
        if (i >= 0)
        {
            addFilter(new Filter(new AnyMatcher(), new RateLimitFilterPolicy(executorService, 1, i, TimeUnit.SECONDS, new SharedPreferenceStore(contextRef.getApp().getSharedPreferences("heyzap.filter", 0), "ad_display_history", ""))));
        }
    }

    public void configure(JSONArray jsonarray)
    {
    }
}
