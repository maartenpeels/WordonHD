// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.goviral;

import android.util.Log;
import com.facebook.FacebookRequestError;
import com.facebook.Response;
import com.facebook.model.GraphObject;
import com.facebook.model.GraphObjectList;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.milkmangames.extensions.android.goviral:
//            b

final class v
    implements com.facebook.Request.Callback
{

    final String a;
    final String b;
    final String c;
    final b d;

    v(b b1, String s, String s1, String s2)
    {
        d = b1;
        a = s;
        b = s1;
        c = s2;
        super();
    }

    public final void onCompleted(Response response)
    {
        Log.d("[GVExtension]", "Complete graph.");
        Object obj = a;
        Object obj1;
        if (response.getConnection() != null)
        {
            try
            {
                obj = response.getConnection().getURL().toString();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                obj = a;
            }
        }
        obj1 = response.getError();
        if (obj1 != null)
        {
            response = d;
            int i = com.milkmangames.extensions.android.goviral.b.a(((FacebookRequestError) (obj1)).getCategory());
            boolean flag = ((FacebookRequestError) (obj1)).shouldNotifyUser();
            String s;
            if (flag)
            {
                response = ((FacebookRequestError) (obj1)).getErrorUserMessage();
            } else
            {
                response = "";
            }
            s = b;
            d.a(((FacebookRequestError) (obj1)).getErrorCode(), ((FacebookRequestError) (obj1)).getErrorMessage(), ((String) (obj)), c, flag, i, response, s);
            return;
        }
        obj1 = response.getGraphObject();
        response = response.getGraphObjectList();
        if (obj1 != null)
        {
            response = ((GraphObject) (obj1)).getInnerJSONObject().toString();
        } else
        if (response != null)
        {
            response = response.getInnerJSONArray().toString();
        } else
        {
            response = "";
        }
        d.a(response, ((String) (obj)), c);
    }
}
