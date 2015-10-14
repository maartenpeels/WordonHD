// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import java.util.List;
import org.json.JSONArray;

// Referenced classes of package com.chartboost.sdk.Libraries:
//            g

private static class <init> extends <init>
{

    public String a()
    {
        return "object must be an array.";
    }

    public boolean a(Object obj)
    {
        return (obj instanceof List) || (obj instanceof JSONArray);
    }

    private ()
    {
    }

    ( )
    {
        this();
    }
}
