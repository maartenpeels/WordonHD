// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.extensions.air;

import com.heyzap.sdk.extensions.air.functions.FetchVideoAdFunction;
import com.heyzap.sdk.extensions.air.functions.ShowVideoAdFunction;
import com.heyzap.sdk.extensions.air.functions.VideoAdAvailableFunction;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.heyzap.sdk.extensions.air:
//            HeyzapExtensionContext

public class VideoContext extends HeyzapExtensionContext
{

    public static final String TYPE = "video";

    public VideoContext(String s)
    {
        super(s);
    }

    public Map getFunctions()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("show", new ShowVideoAdFunction());
        hashmap.put("fetch", new FetchVideoAdFunction());
        hashmap.put("available", new VideoAdAvailableFunction());
        return hashmap;
    }
}
