// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import java.io.Serializable;

public class OldTapjoyVideoData
    implements Serializable
{

    private static final long serialVersionUID = 0x1e1c5ffd6f7ad89aL;
    private String clickURL;
    private String currencyAmount;
    private String currencyName;
    private String dataLocation;
    private String iconURL;
    private String offerID;
    private String videoAdName;
    private String videoURL;
    private String webviewURL;

    public OldTapjoyVideoData()
    {
    }

    public void addButton(String s, String s1)
    {
    }

    public String getClickURL()
    {
        return clickURL;
    }

    public String getCurrencyAmount()
    {
        return currencyAmount;
    }

    public String getCurrencyName()
    {
        return currencyName;
    }

    public String getIconURL()
    {
        return iconURL;
    }

    public String getLocalFilePath()
    {
        return dataLocation;
    }

    public String getOfferId()
    {
        return offerID;
    }

    public String getVideoAdName()
    {
        return videoAdName;
    }

    public String getVideoURL()
    {
        return videoURL;
    }

    public String getWebviewURL()
    {
        return webviewURL;
    }

    public void setClickURL(String s)
    {
        clickURL = s;
    }

    public void setCurrencyAmount(String s)
    {
        currencyAmount = s;
    }

    public void setCurrencyName(String s)
    {
        currencyName = s;
    }

    public void setIconURL(String s)
    {
        iconURL = s;
    }

    public void setLocalFilePath(String s)
    {
        dataLocation = s;
    }

    public void setOfferID(String s)
    {
        offerID = s;
    }

    public void setVideoAdName(String s)
    {
        videoAdName = s;
    }

    public void setVideoURL(String s)
    {
        videoURL = s;
    }

    public void setWebviewURL(String s)
    {
        webviewURL = s;
    }
}
