// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.model;

import android.content.Context;
import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.house.model:
//            AdModel

public class NativeModel extends AdModel
    implements Serializable
{

    public static String FORMAT = "native";
    public JSONObject data;

    public NativeModel(JSONObject jsonobject)
        throws Exception, JSONException
    {
        super(jsonobject);
        creativeType = FORMAT;
        if (jsonobject.has("data") && !jsonobject.isNull("data"))
        {
            data = jsonobject.getJSONObject("data");
            return;
        } else
        {
            throw new Exception("no_data");
        }
    }

    public void cleanup(Context context)
        throws Exception
    {
    }

    public void doPostFetchActions(Context context, AdModel.ModelPostFetchCompleteListener modelpostfetchcompletelistener)
    {
        if (modelpostfetchcompletelistener != null)
        {
            modelpostfetchcompletelistener.onComplete(this, null);
        }
    }

}
