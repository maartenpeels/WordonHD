// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand;

import android.content.res.Configuration;
import com.adobe.air.wand.connection.Connection;

// Referenced classes of package com.adobe.air.wand:
//            WandManager

private class <init>
    implements com.adobe.air.wand.view.>
{

    final WandManager this$0;

    public String getConnectionToken()
    {
        String s;
        try
        {
            s = WandManager.access$300(WandManager.this).getConnectionToken();
        }
        catch (Exception exception)
        {
            return "";
        }
        return s;
    }

    public void onLoadCompanion(Configuration configuration)
        throws Exception
    {
        if (configuration.orientation == 2)
        {
            WandManager.access$300(WandManager.this).onReadyForConnection();
            return;
        } else
        {
            WandManager.access$402(WandManager.this, true);
            return;
        }
    }

    private ()
    {
        this$0 = WandManager.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
