// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import java.util.Hashtable;

public class TapjoyConnectFlag
{

    public static final Hashtable CONNECT_FLAG_DEFAULTS = new Hashtable() {

            
            {
                put("TJC_SERVICE_URL", "https://ws.tapjoyads.com/");
                put("TJC_EVENT_SERVICE_URL", "https://events.tapjoy.com/");
            }
    };
    public static final String DEBUG_DEVICE_ID = "debug_device_id";
    public static final String DEBUG_HOST_URL = "debug_host_url";
    public static final String DISABLE_ADVERTISING_ID_CHECK = "disable_advertising_id_check";
    public static final String DISABLE_PERSISTENT_IDS = "disable_persistent_ids";
    public static final String DISABLE_VIDEOS = "disable_videos";
    public static final String ENABLE_LOGGING = "enable_logging";
    public static final String EVENT_URL = "TJC_EVENT_SERVICE_URL";
    public static final String FLAG_ARRAY[] = {
        "debug_device_id", "debug_host_url", "sha_2_udid", "store_name", "disable_videos", "video_cache_count", "enable_logging", "user_id", "skip_integrations", "TJC_SERVICE_URL", 
        "TJC_EVENT_SERVICE_URL"
    };
    public static final String HOST_URL = "TJC_SERVICE_URL";
    public static final String SEGMENTATION_PARAMS = "segmentation_params";
    public static final String SHA_2_UDID = "sha_2_udid";
    public static final String SKIP_INTEGRATIONS_CHECK = "skip_integrations";
    public static final String STORE_ARRAY[] = {
        "gfan", "skt"
    };
    public static final String STORE_GFAN = "gfan";
    public static final String STORE_NAME = "store_name";
    public static final String STORE_SKT = "skt";
    public static final String USER_ID = "user_id";
    public static final String VIDEO_CACHE_COUNT = "video_cache_count";

    public TapjoyConnectFlag()
    {
    }

}
