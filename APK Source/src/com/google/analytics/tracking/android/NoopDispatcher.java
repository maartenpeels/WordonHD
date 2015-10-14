// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.analytics.tracking.android;

import android.text.TextUtils;
import java.util.List;

// Referenced classes of package com.google.analytics.tracking.android:
//            Dispatcher, Log, Hit, HitBuilder

class NoopDispatcher
    implements Dispatcher
{

    NoopDispatcher()
    {
    }

    public int dispatchHits(List list)
    {
        if (list == null)
        {
            return 0;
        }
        Log.iDebug("Hits not actually being sent as dispatch is false...");
        int j = Math.min(list.size(), 40);
        int i = 0;
        do
        {
            while (i < j) 
            {
                if (Log.isDebugEnabled())
                {
                    String s;
                    String s1;
                    if (TextUtils.isEmpty(((Hit)list.get(i)).getHitParams()))
                    {
                        s1 = "";
                    } else
                    {
                        s1 = HitBuilder.postProcessHit((Hit)list.get(i), System.currentTimeMillis());
                    }
                    if (TextUtils.isEmpty(s1))
                    {
                        s = "Hit couldn't be read, wouldn't be sent:";
                    } else
                    if (s1.length() <= 2036)
                    {
                        s = "GET would be sent:";
                    } else
                    if (s1.length() > 8192)
                    {
                        s = "Would be too big:";
                    } else
                    {
                        s = "POST would be sent:";
                    }
                    Log.iDebug((new StringBuilder()).append(s).append(s1).toString());
                }
                i++;
            }
            return j;
        } while (true);
    }

    public boolean okToDispatch()
    {
        return true;
    }
}
