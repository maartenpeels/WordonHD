// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Model;


// Referenced classes of package com.chartboost.sdk.Model:
//            CBError

public static final class  extends Enum
{

    public static final ERROR_DISPLAYING_VIEW ASSETS_DOWNLOAD_FAILURE;
    public static final ERROR_DISPLAYING_VIEW ERROR_CREATING_VIEW;
    public static final ERROR_DISPLAYING_VIEW ERROR_DISPLAYING_VIEW;
    public static final ERROR_DISPLAYING_VIEW ERROR_PLAYING_VIDEO;
    public static final ERROR_DISPLAYING_VIEW FIRST_SESSION_INTERSTITIALS_DISABLED;
    public static final ERROR_DISPLAYING_VIEW IMPRESSION_ALREADY_VISIBLE;
    public static final ERROR_DISPLAYING_VIEW INTERNAL;
    public static final ERROR_DISPLAYING_VIEW INTERNET_UNAVAILABLE;
    public static final ERROR_DISPLAYING_VIEW INVALID_LOCATION;
    public static final ERROR_DISPLAYING_VIEW INVALID_RESPONSE;
    public static final ERROR_DISPLAYING_VIEW NETWORK_FAILURE;
    public static final ERROR_DISPLAYING_VIEW NO_AD_FOUND;
    public static final ERROR_DISPLAYING_VIEW NO_HOST_ACTIVITY;
    public static final ERROR_DISPLAYING_VIEW SESSION_NOT_STARTED;
    public static final ERROR_DISPLAYING_VIEW TOO_MANY_CONNECTIONS;
    public static final ERROR_DISPLAYING_VIEW USER_CANCELLATION;
    public static final ERROR_DISPLAYING_VIEW VIDEO_ID_MISSING;
    public static final ERROR_DISPLAYING_VIEW VIDEO_UNAVAILABLE;
    public static final ERROR_DISPLAYING_VIEW WRONG_ORIENTATION;
    private static final ERROR_DISPLAYING_VIEW a[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/chartboost/sdk/Model/CBError$CBImpressionError, s);
    }

    public static [] values()
    {
        return ([])a.clone();
    }

    static 
    {
        INTERNAL = new <init>("INTERNAL", 0);
        INTERNET_UNAVAILABLE = new <init>("INTERNET_UNAVAILABLE", 1);
        TOO_MANY_CONNECTIONS = new <init>("TOO_MANY_CONNECTIONS", 2);
        WRONG_ORIENTATION = new <init>("WRONG_ORIENTATION", 3);
        FIRST_SESSION_INTERSTITIALS_DISABLED = new <init>("FIRST_SESSION_INTERSTITIALS_DISABLED", 4);
        NETWORK_FAILURE = new <init>("NETWORK_FAILURE", 5);
        NO_AD_FOUND = new <init>("NO_AD_FOUND", 6);
        SESSION_NOT_STARTED = new <init>("SESSION_NOT_STARTED", 7);
        IMPRESSION_ALREADY_VISIBLE = new <init>("IMPRESSION_ALREADY_VISIBLE", 8);
        NO_HOST_ACTIVITY = new <init>("NO_HOST_ACTIVITY", 9);
        USER_CANCELLATION = new <init>("USER_CANCELLATION", 10);
        INVALID_LOCATION = new <init>("INVALID_LOCATION", 11);
        VIDEO_UNAVAILABLE = new <init>("VIDEO_UNAVAILABLE", 12);
        VIDEO_ID_MISSING = new <init>("VIDEO_ID_MISSING", 13);
        ERROR_PLAYING_VIDEO = new <init>("ERROR_PLAYING_VIDEO", 14);
        INVALID_RESPONSE = new <init>("INVALID_RESPONSE", 15);
        ASSETS_DOWNLOAD_FAILURE = new <init>("ASSETS_DOWNLOAD_FAILURE", 16);
        ERROR_CREATING_VIEW = new <init>("ERROR_CREATING_VIEW", 17);
        ERROR_DISPLAYING_VIEW = new <init>("ERROR_DISPLAYING_VIEW", 18);
        a = (new a[] {
            INTERNAL, INTERNET_UNAVAILABLE, TOO_MANY_CONNECTIONS, WRONG_ORIENTATION, FIRST_SESSION_INTERSTITIALS_DISABLED, NETWORK_FAILURE, NO_AD_FOUND, SESSION_NOT_STARTED, IMPRESSION_ALREADY_VISIBLE, NO_HOST_ACTIVITY, 
            USER_CANCELLATION, INVALID_LOCATION, VIDEO_UNAVAILABLE, VIDEO_ID_MISSING, ERROR_PLAYING_VIDEO, INVALID_RESPONSE, ASSETS_DOWNLOAD_FAILURE, ERROR_CREATING_VIEW, ERROR_DISPLAYING_VIEW
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
