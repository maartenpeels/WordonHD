// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.handler;

import android.content.Context;
import com.heyzap.house.abstr.AbstractFetchHandler;
import com.heyzap.house.model.AdModel;
import com.heyzap.house.model.InterstitialModel;
import com.heyzap.house.model.VideoModel;
import com.heyzap.house.request.FetchRequest;
import com.heyzap.internal.Utils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public class InterstitialFetchHandler extends AbstractFetchHandler
{

    public InterstitialFetchHandler(Context context, FetchRequest fetchrequest)
    {
        super(context, fetchrequest);
    }

    public List onFetchSuccess(JSONObject jsonobject)
        throws Exception
    {
        if (!jsonobject.has("impression_id") || jsonobject.isNull("impression_id"))
        {
            throw new Exception("no_fill");
        }
        if (!jsonobject.has("promoted_game_package") || jsonobject.isNull("promoted_game_package") || jsonobject.getString("promoted_game_package").equals(""))
        {
            throw new Exception("no promoted_game_package");
        }
        if (Utils.packageIsInstalled(jsonobject.getString("promoted_game_package"), getContext()))
        {
            throw new com.heyzap.house.abstr.AbstractFetchHandler.AlreadyInstalledException(this, jsonobject.optString("impression_id"));
        }
        ArrayList arraylist;
        if (jsonobject.optString("creative_type", InterstitialModel.FORMAT).equals(VideoModel.FORMAT))
        {
            jsonobject = new VideoModel(jsonobject);
        } else
        {
            jsonobject = new InterstitialModel(jsonobject);
        }
        jsonobject.setTag(getFetchRequest().getTag());
        jsonobject.doPostFetchActions(getContext(), new com.heyzap.house.model.AdModel.ModelPostFetchCompleteListener() {

            final InterstitialFetchHandler this$0;

            public void onComplete(AdModel admodel, Throwable throwable)
            {
                if (throwable != null)
                {
                    onFailure(throwable);
                    return;
                } else
                {
                    throwable = new ArrayList();
                    throwable.add(admodel);
                    onSuccess(throwable);
                    return;
                }
            }

            
            {
                this$0 = InterstitialFetchHandler.this;
                super();
            }
        });
        arraylist = new ArrayList();
        arraylist.add(jsonobject);
        return arraylist;
    }

    public Boolean shouldFireCallbackOnSuccess(List list)
    {
        if (list == null || list.size() < 1)
        {
            return Boolean.valueOf(true);
        }
        list = (AdModel)list.get(0);
        if (list.showOnlyAfterContentLoaded())
        {
            return Boolean.valueOf(false);
        }
        if (list.shouldRefetchIfNotReady())
        {
            return Boolean.valueOf(false);
        } else
        {
            return Boolean.valueOf(true);
        }
    }


}
