// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;


public class Analytics
{

    private static final String HEYZAP_ANALYTICS_ID_PREF = "heyzap_button_analytics_id";
    private static final String HEYZAP_ENDPOINT = "sdk_event";
    static final String HEYZAP_SDK_PLATFORM = "android";
    public static final String HEYZAP_SDK_VERSION = "8.0.7";
    public static final String LOG_TAG = "HeyzapSDK";
    private static boolean loaded = false;
    private static String trackHash = "";

    public Analytics()
    {
    }

}
