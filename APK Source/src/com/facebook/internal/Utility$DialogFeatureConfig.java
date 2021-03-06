// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import android.net.Uri;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.facebook.internal:
//            Utility

public static class featureVersionSpec
{

    private String dialogName;
    private Uri fallbackUrl;
    private String featureName;
    private int featureVersionSpec[];

    private static featureVersionSpec parseDialogConfig(JSONObject jsonobject)
    {
        Object obj = jsonobject.optString("name");
        if (Utility.isNullOrEmpty(((String) (obj))))
        {
            return null;
        }
        String as[] = ((String) (obj)).split("\\|");
        if (as.length != 2)
        {
            return null;
        }
        String s = as[0];
        String s1 = as[1];
        if (Utility.isNullOrEmpty(s) || Utility.isNullOrEmpty(s1))
        {
            return null;
        }
        as = jsonobject.optString("url");
        if (!Utility.isNullOrEmpty(as))
        {
            as = Uri.parse(as);
        } else
        {
            as = null;
        }
        return new <init>(s, s1, as, parseVersionSpec(jsonobject.optJSONArray("versions")));
    }

    private static int[] parseVersionSpec(JSONArray jsonarray)
    {
        int ai[] = null;
        if (jsonarray != null)
        {
            int l = jsonarray.length();
            ai = new int[l];
            int j = 0;
            do
            {
                if (j >= l)
                {
                    break;
                }
                int k = jsonarray.optInt(j, -1);
                int i = k;
                if (k == -1)
                {
                    String s = jsonarray.optString(j);
                    i = k;
                    if (!Utility.isNullOrEmpty(s))
                    {
                        try
                        {
                            i = Integer.parseInt(s);
                        }
                        catch (NumberFormatException numberformatexception)
                        {
                            Utility.logd("FacebookSDK", numberformatexception);
                            i = -1;
                        }
                    }
                }
                ai[j] = i;
                j++;
            } while (true);
        }
        return ai;
    }

    public String getDialogName()
    {
        return dialogName;
    }

    public Uri getFallbackUrl()
    {
        return fallbackUrl;
    }

    public String getFeatureName()
    {
        return featureName;
    }

    public int[] getVersionSpec()
    {
        return featureVersionSpec;
    }


    private (String s, String s1, Uri uri, int ai[])
    {
        dialogName = s;
        featureName = s1;
        fallbackUrl = uri;
        featureVersionSpec = ai;
    }
}
