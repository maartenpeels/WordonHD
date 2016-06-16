// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.request;

import com.heyzap.analytics.Event;
import com.heyzap.analytics.MetricsTracker;
import com.heyzap.house.model.AdModel;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.heyzap.house.request:
//            AdRequest, FetchRequest

class this._cls0
    implements .OnFetchResponse
{

    final AdRequest this$0;

    public void onFetchResponse(List list, FetchRequest fetchrequest, Throwable throwable)
    {
        if (list != null && list.size() > 0)
        {
            list = list.iterator();
            do
            {
                if (!list.hasNext())
                {
                    break;
                }
                fetchrequest = (AdModel)list.next();
                if (AdRequest.access$000(AdRequest.this) == null && !AdRequest.access$100(AdRequest.this))
                {
                    AdRequest.access$200(AdRequest.this, fetchrequest);
                }
            } while (true);
        } else
        {
            if (AdRequest.access$300(AdRequest.this))
            {
                list = MetricsTracker.getEvent(fetchrequest.getAdRequest()).showAd(true);
                if (throwable == null)
                {
                    list.showAdResult("not-cached-and-attempted-fetch-no-fill");
                } else
                {
                    list.showAdResult("not-cached-and-attempted-fetch-failed");
                }
            }
            getOnStatusListener().onFailedToFetch(getTag());
        }
    }

    public void onModelsReceived(List list)
    {
        for (list = list.iterator(); list.hasNext(); ((AdModel)list.next()).setAdRequest(AdRequest.this)) { }
    }

    ()
    {
        this$0 = AdRequest.this;
        super();
    }
}
