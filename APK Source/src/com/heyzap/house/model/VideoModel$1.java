// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.model;

import com.heyzap.http.JsonHttpResponseHandler;
import com.heyzap.internal.Logger;
import org.apache.http.Header;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.house.model:
//            VideoModel

class ler extends JsonHttpResponseHandler
{

    final VideoModel this$0;

    public void onSuccess(int i, Header aheader[], JSONObject jsonobject)
    {
        try
        {
            if (jsonobject.getInt("status") == 200)
            {
                Logger.format("(COMPLETE) %s", new Object[] {
                    VideoModel.this
                });
                VideoModel.access$002(VideoModel.this, Boolean.valueOf(true));
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Header aheader[])
        {
            Logger.trace(aheader);
        }
    }

    ler()
    {
        this$0 = VideoModel.this;
        super();
    }
}
