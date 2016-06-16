// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONException;

// Referenced classes of package com.tapjoy:
//            TapjoyCache, TapjoyLog, TapjoyCacheNotifier

class ifier extends Thread
{

    final TapjoyCache this$0;
    final JSONArray val$assetGroup;
    final TapjoyCacheNotifier val$tapjoyCacheNotifier;

    public void run()
    {
        Object obj;
        int i;
        byte byte0;
        obj = new ArrayList();
        byte0 = 1;
        i = 0;
_L3:
        if (i >= val$assetGroup.length()) goto _L2; else goto _L1
_L1:
        Object obj1;
        obj1 = val$assetGroup.getJSONObject(i);
        obj1 = cacheAssetFromJSONObject(((org.json.JSONObject) (obj1)));
        Object obj2;
        if (obj1 != null)
        {
            try
            {
                ((List) (obj)).add(obj1);
            }
            catch (JSONException jsonexception) { }
        }
        i++;
          goto _L3
_L2:
        obj = ((List) (obj)).iterator();
        i = byte0;
_L5:
        if (!((Iterator) (obj)).hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = (Future)((Iterator) (obj)).next();
        byte0 = i;
        if (!((Boolean)((Future) (obj1)).get()).booleanValue())
        {
            byte0 = 2;
        }
        i = byte0;
        if (!TapjoyCache.access$000(TapjoyCache.this))
        {
            continue; /* Loop/switch isn't completed */
        }
        TapjoyLog.i("TapjoyCache", "Caching thread completed");
        i = byte0;
        continue; /* Loop/switch isn't completed */
        obj2;
        i = 2;
        continue; /* Loop/switch isn't completed */
        obj2;
        i = 2;
        if (true) goto _L5; else goto _L4
_L4:
        if (val$tapjoyCacheNotifier != null)
        {
            val$tapjoyCacheNotifier.cachingComplete(i);
        }
        return;
    }

    ifier()
    {
        this$0 = final_tapjoycache;
        val$assetGroup = jsonarray;
        val$tapjoyCacheNotifier = TapjoyCacheNotifier.this;
        super();
    }
}
