// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import java.io.Serializable;

public class TJEventData
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    public String baseURL;
    public String guid;
    public String httpResponse;
    public int httpStatusCode;
    public String name;
    public String url;
    public String value;

    public TJEventData()
    {
    }
}
