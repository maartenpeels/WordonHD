// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.handler;

import android.content.Context;
import com.heyzap.house.abstr.AbstractFetchHandler;
import com.heyzap.house.model.NativeModel;
import com.heyzap.house.request.FetchRequest;
import com.heyzap.internal.Logger;
import com.heyzap.internal.Utils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.house.handler:
//            AttributionHandler

public class NativeFetchHandler extends AbstractFetchHandler
{

    public NativeFetchHandler(Context context, FetchRequest fetchrequest)
    {
        super(context, fetchrequest);
    }

    public List onFetchSuccess(JSONObject jsonobject)
        throws Exception
    {
        JSONArray jsonarray;
        ArrayList arraylist;
        ArrayList arraylist1;
        int i;
        int j;
        i = 0;
        if (!jsonobject.has("ads"))
        {
            throw new Exception("no ads");
        }
        jsonarray = jsonobject.getJSONArray("ads");
        arraylist = new ArrayList();
        arraylist1 = new ArrayList();
        j = 0;
_L2:
        Object obj;
        if (i >= jsonarray.length())
        {
            break MISSING_BLOCK_LABEL_232;
        }
        try
        {
            obj = jsonarray.getJSONObject(i);
            if (!((JSONObject) (obj)).has("promoted_game_package") || ((JSONObject) (obj)).isNull("promoted_game_package") || ((JSONObject) (obj)).getString("promoted_game_package").equals(""))
            {
                throw new Exception("no promoted_game_package");
            }
            break; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            arraylist1.add(((com.heyzap.house.abstr.AbstractFetchHandler.AlreadyInstalledException) (obj)).getMessage());
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            Logger.trace(((Throwable) (obj)));
        }
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (Utils.packageIsInstalled(((JSONObject) (obj)).getString("promoted_game_package"), getContext()))
        {
            throw new com.heyzap.house.abstr.AbstractFetchHandler.AlreadyInstalledException(this, jsonobject.optString("impression_id"));
        }
        obj = new NativeModel(((JSONObject) (obj)));
        ((NativeModel) (obj)).setTag(getFetchRequest().getTag());
        ((NativeModel) (obj)).doPostFetchActions(getContext(), null);
        ((NativeModel) (obj)).setAdUnit(com.heyzap.internal.Constants.AdUnit.NATIVE);
        arraylist.add(obj);
        j++;
          goto _L3
        if (arraylist1.size() > 0)
        {
            AttributionHandler.getInstance().didInstall(getContext(), arraylist1, Boolean.valueOf(true));
        }
        if (j == 0)
        {
            throw new Exception("no_fill");
        } else
        {
            return arraylist;
        }
    }
}
