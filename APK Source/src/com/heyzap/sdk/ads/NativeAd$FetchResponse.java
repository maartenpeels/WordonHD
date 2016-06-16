// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.ads;

import com.heyzap.house.Manager;
import com.heyzap.house.model.AdModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.heyzap.sdk.ads:
//            NativeAd

public static class <init>
{

    private List ads;
    private String tag;

    public void doImpressionOnAll()
    {
        if (ads != null)
        {
            ArrayList arraylist = new ArrayList();
            for (Iterator iterator = ads.iterator(); iterator.hasNext(); arraylist.add(ads((ads)iterator.next()))) { }
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

    private (List list, String s)
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

    ads(List list, String s, ads ads1)
    {
        this(list, s);
    }
}
