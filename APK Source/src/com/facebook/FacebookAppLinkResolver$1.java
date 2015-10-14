// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.net.Uri;
import c.m.x.a.gv.ag;
import c.m.x.a.gv.ah;
import c.m.x.a.gv.aj;
import java.util.Map;

// Referenced classes of package com.facebook:
//            FacebookAppLinkResolver

class val.uri
    implements ah
{

    final FacebookAppLinkResolver this$0;
    final Uri val$uri;

    public ag then(aj aj1)
    {
        return (ag)((Map)aj1.d()).get(val$uri);
    }

    public volatile Object then(aj aj1)
    {
        return then(aj1);
    }

    ()
    {
        this$0 = final_facebookapplinkresolver;
        val$uri = Uri.this;
        super();
    }
}
