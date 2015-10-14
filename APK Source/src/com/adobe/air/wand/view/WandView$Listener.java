// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.view;

import android.content.res.Configuration;

// Referenced classes of package com.adobe.air.wand.view:
//            WandView

public static interface 
{

    public abstract String getConnectionToken();

    public abstract void onLoadCompanion(Configuration configuration)
        throws Exception;
}
