// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.extensions;


public final class TapjoyEvent extends Enum
{

    private static final TapjoyEvent $VALUES[];
    public static final TapjoyEvent TJ_AWARDED_TAP_POINTS;
    public static final TapjoyEvent TJ_AWARDED_TAP_POINTS_FAILED;
    public static final TapjoyEvent TJ_CONNECT_FAILED;
    public static final TapjoyEvent TJ_CONNECT_SUCCESS;
    public static final TapjoyEvent TJ_CONTENT_DID_DISAPPEAR;
    public static final TapjoyEvent TJ_CONTENT_DID_SHOW;
    public static final TapjoyEvent TJ_DID_REQUEST_ACTION;
    public static final TapjoyEvent TJ_EARNED_TAP_POINTS;
    public static final TapjoyEvent TJ_GET_DISPLAY_AD;
    public static final TapjoyEvent TJ_GET_DISPLAY_AD_FAILED;
    public static final TapjoyEvent TJ_GET_FULLSCREEN_AD;
    public static final TapjoyEvent TJ_GET_FULLSCREEN_AD_FAILED;
    public static final TapjoyEvent TJ_SEND_EVENT_COMPLETE;
    public static final TapjoyEvent TJ_SEND_EVENT_COMPLETE_WITH_CONTENT;
    public static final TapjoyEvent TJ_SEND_EVENT_CONTENT_IS_READY;
    public static final TapjoyEvent TJ_SEND_EVENT_FAIL;
    public static final TapjoyEvent TJ_SPENT_TAP_POINTS;
    public static final TapjoyEvent TJ_SPENT_TAP_POINTS_FAILED;
    public static final TapjoyEvent TJ_TAP_POINTS;
    public static final TapjoyEvent TJ_TAP_POINTS_FAILED;
    public static final TapjoyEvent TJ_VIDEO_COMPLETE;
    public static final TapjoyEvent TJ_VIDEO_ERROR;
    public static final TapjoyEvent TJ_VIDEO_START;
    public static final TapjoyEvent TJ_VIEW_CLOSED;
    public static final TapjoyEvent TJ_VIEW_CLOSING;
    public static final TapjoyEvent TJ_VIEW_OPENED;
    public static final TapjoyEvent TJ_VIEW_OPENING;

    private TapjoyEvent(String s, int i)
    {
        super(s, i);
    }

    public static TapjoyEvent valueOf(String s)
    {
        return (TapjoyEvent)Enum.valueOf(com/tapjoy/extensions/TapjoyEvent, s);
    }

    public static TapjoyEvent[] values()
    {
        return (TapjoyEvent[])$VALUES.clone();
    }

    static 
    {
        TJ_CONNECT_SUCCESS = new TapjoyEvent("TJ_CONNECT_SUCCESS", 0);
        TJ_CONNECT_FAILED = new TapjoyEvent("TJ_CONNECT_FAILED", 1);
        TJ_TAP_POINTS = new TapjoyEvent("TJ_TAP_POINTS", 2);
        TJ_TAP_POINTS_FAILED = new TapjoyEvent("TJ_TAP_POINTS_FAILED", 3);
        TJ_SPENT_TAP_POINTS = new TapjoyEvent("TJ_SPENT_TAP_POINTS", 4);
        TJ_SPENT_TAP_POINTS_FAILED = new TapjoyEvent("TJ_SPENT_TAP_POINTS_FAILED", 5);
        TJ_AWARDED_TAP_POINTS = new TapjoyEvent("TJ_AWARDED_TAP_POINTS", 6);
        TJ_AWARDED_TAP_POINTS_FAILED = new TapjoyEvent("TJ_AWARDED_TAP_POINTS_FAILED", 7);
        TJ_EARNED_TAP_POINTS = new TapjoyEvent("TJ_EARNED_TAP_POINTS", 8);
        TJ_VIEW_OPENING = new TapjoyEvent("TJ_VIEW_OPENING", 9);
        TJ_VIEW_OPENED = new TapjoyEvent("TJ_VIEW_OPENED", 10);
        TJ_VIEW_CLOSING = new TapjoyEvent("TJ_VIEW_CLOSING", 11);
        TJ_VIEW_CLOSED = new TapjoyEvent("TJ_VIEW_CLOSED", 12);
        TJ_VIDEO_START = new TapjoyEvent("TJ_VIDEO_START", 13);
        TJ_VIDEO_ERROR = new TapjoyEvent("TJ_VIDEO_ERROR", 14);
        TJ_VIDEO_COMPLETE = new TapjoyEvent("TJ_VIDEO_COMPLETE", 15);
        TJ_GET_FULLSCREEN_AD = new TapjoyEvent("TJ_GET_FULLSCREEN_AD", 16);
        TJ_GET_FULLSCREEN_AD_FAILED = new TapjoyEvent("TJ_GET_FULLSCREEN_AD_FAILED", 17);
        TJ_GET_DISPLAY_AD = new TapjoyEvent("TJ_GET_DISPLAY_AD", 18);
        TJ_GET_DISPLAY_AD_FAILED = new TapjoyEvent("TJ_GET_DISPLAY_AD_FAILED", 19);
        TJ_SEND_EVENT_COMPLETE = new TapjoyEvent("TJ_SEND_EVENT_COMPLETE", 20);
        TJ_SEND_EVENT_COMPLETE_WITH_CONTENT = new TapjoyEvent("TJ_SEND_EVENT_COMPLETE_WITH_CONTENT", 21);
        TJ_SEND_EVENT_CONTENT_IS_READY = new TapjoyEvent("TJ_SEND_EVENT_CONTENT_IS_READY", 22);
        TJ_SEND_EVENT_FAIL = new TapjoyEvent("TJ_SEND_EVENT_FAIL", 23);
        TJ_CONTENT_DID_SHOW = new TapjoyEvent("TJ_CONTENT_DID_SHOW", 24);
        TJ_CONTENT_DID_DISAPPEAR = new TapjoyEvent("TJ_CONTENT_DID_DISAPPEAR", 25);
        TJ_DID_REQUEST_ACTION = new TapjoyEvent("TJ_DID_REQUEST_ACTION", 26);
        $VALUES = (new TapjoyEvent[] {
            TJ_CONNECT_SUCCESS, TJ_CONNECT_FAILED, TJ_TAP_POINTS, TJ_TAP_POINTS_FAILED, TJ_SPENT_TAP_POINTS, TJ_SPENT_TAP_POINTS_FAILED, TJ_AWARDED_TAP_POINTS, TJ_AWARDED_TAP_POINTS_FAILED, TJ_EARNED_TAP_POINTS, TJ_VIEW_OPENING, 
            TJ_VIEW_OPENED, TJ_VIEW_CLOSING, TJ_VIEW_CLOSED, TJ_VIDEO_START, TJ_VIDEO_ERROR, TJ_VIDEO_COMPLETE, TJ_GET_FULLSCREEN_AD, TJ_GET_FULLSCREEN_AD_FAILED, TJ_GET_DISPLAY_AD, TJ_GET_DISPLAY_AD_FAILED, 
            TJ_SEND_EVENT_COMPLETE, TJ_SEND_EVENT_COMPLETE_WITH_CONTENT, TJ_SEND_EVENT_CONTENT_IS_READY, TJ_SEND_EVENT_FAIL, TJ_CONTENT_DID_SHOW, TJ_CONTENT_DID_DISAPPEAR, TJ_DID_REQUEST_ACTION
        });
    }
}
