// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import java.util.List;
import java.util.Map;

public class TapjoyHttpURLResponse
{

    public int contentLength;
    public Map headerFields;
    public String redirectURL;
    public String response;
    public int statusCode;

    public TapjoyHttpURLResponse()
    {
    }

    public String getHeaderFieldAsString(String s)
    {
        String s2 = "";
        String s1 = s2;
        if (headerFields != null)
        {
            s = (List)headerFields.get(s);
            s1 = s2;
            if (s != null)
            {
                s1 = s2;
                if (s.get(0) != null)
                {
                    s1 = (String)s.get(0);
                }
            }
        }
        return s1;
    }
}
