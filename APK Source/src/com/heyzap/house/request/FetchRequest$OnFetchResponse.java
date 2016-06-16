// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.request;

import java.util.List;

// Referenced classes of package com.heyzap.house.request:
//            FetchRequest

public static interface 
{

    public abstract void onFetchResponse(List list, FetchRequest fetchrequest, Throwable throwable);

    public abstract void onModelsReceived(List list);
}
