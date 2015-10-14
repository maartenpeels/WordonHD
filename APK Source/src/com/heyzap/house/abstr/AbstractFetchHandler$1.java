// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.abstr;

import com.heyzap.house.request.FetchRequest;
import com.heyzap.internal.Logger;
import java.util.List;

// Referenced classes of package com.heyzap.house.abstr:
//            AbstractFetchHandler

static final class esponse
    implements com.heyzap.house.request.ponse
{

    public void onFetchResponse(List list, FetchRequest fetchrequest, Throwable throwable)
    {
        Logger.log("(WARNING) No fetch callback handler registered.");
    }

    public void onModelsReceived(List list)
    {
    }

    esponse()
    {
    }
}
