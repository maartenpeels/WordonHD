// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.goviral;

import com.facebook.FacebookRequestError;
import com.facebook.Response;
import com.facebook.model.GraphObject;
import com.facebook.model.GraphObjectList;

// Referenced classes of package com.milkmangames.extensions.android.goviral:
//            b

final class c
    implements com.facebook.Request.Callback
{

    final String a;
    final b b;

    c(b b1, String s)
    {
        b = b1;
        a = s;
        super();
    }

    public final void onCompleted(Response response)
    {
        GraphObject graphobject;
        GraphObjectList graphobjectlist;
        FacebookRequestError facebookrequesterror = response.getError();
        if (facebookrequesterror != null)
        {
            b b1 = b;
            String s = a;
            boolean flag = facebookrequesterror.shouldNotifyUser();
            response = b;
            int i = com.milkmangames.extensions.android.goviral.b.a(facebookrequesterror.getCategory());
            if (facebookrequesterror.shouldNotifyUser())
            {
                response = facebookrequesterror.getErrorUserMessage();
            } else
            {
                response = "";
            }
            b1.a(2, "Could not get write permissions", "me/staging_resources", s, flag, i, response, "");
            return;
        }
        graphobject = response.getGraphObject();
        graphobjectlist = response.getGraphObjectList();
        if (graphobject == null) goto _L2; else goto _L1
_L1:
        graphobject.getInnerJSONObject();
_L4:
        b.a(response.getRawResponse(), "me/staging_resources", a);
        return;
_L2:
        if (graphobjectlist != null)
        {
            graphobjectlist.getInnerJSONArray();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
