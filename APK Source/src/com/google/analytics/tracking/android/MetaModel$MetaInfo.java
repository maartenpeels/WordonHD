// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.analytics.tracking.android;


// Referenced classes of package com.google.analytics.tracking.android:
//            MetaModel, Log

public static class mFormatter
{

    private final String mDefaultValue;
    private final  mFormatter;
    private final String mUrlParam;

    public String getDefaultValue()
    {
        return mDefaultValue;
    }

    public  getFormatter()
    {
        return mFormatter;
    }

    String getUrlParam()
    {
        return mUrlParam;
    }

    public String getUrlParam(String s)
    {
        if (s.contains("*"))
        {
            String s1 = mUrlParam;
            s = s.split("\\*");
            if (s.length > 1)
            {
                int i;
                try
                {
                    i = Integer.parseInt(s[1]);
                }
                // Misplaced declaration of an exception variable
                catch (String s)
                {
                    Log.w((new StringBuilder()).append("Unable to parse slot for url parameter ").append(s1).toString());
                    return null;
                }
                return (new StringBuilder()).append(s1).append(i).toString();
            } else
            {
                return null;
            }
        } else
        {
            return mUrlParam;
        }
    }

    public (String s, String s1,  )
    {
        mUrlParam = s;
        mDefaultValue = s1;
        mFormatter = ;
    }
}
