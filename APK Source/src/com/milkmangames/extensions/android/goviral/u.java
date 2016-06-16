// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.goviral;

import com.facebook.Response;
import com.facebook.model.GraphObject;

// Referenced classes of package com.milkmangames.extensions.android.goviral:
//            b

final class u
    implements com.facebook.Request.Callback
{

    final String a;
    final b b;

    u(b b1, String s)
    {
        b = b1;
        a = s;
        super();
    }

    public final void onCompleted(Response response)
    {
        String s = "";
        GraphObject graphobject = response.getGraphObject();
        response = s;
        if (graphobject != null)
        {
            response = (String)graphobject.getProperty("custom_audience_third_party_id");
        }
        b.dispatchStatusEventAsync((new StringBuilder()).append(a).append("[[[GVRiD]]]420").toString(), response);
    }
}
