// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.airadc;

import android.util.Log;
import com.adobe.fre.FREContext;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.jirbo.airadc:
//            ADCListener, ConfigureFunction, IsVideoAvailableFunction, IsV4VCAvailableFunction, 
//            GetDeviceIDFunction, GetRewardAmountFunction, GetRewardNameFunction, ShowVideoFunction, 
//            ShowV4VCFunction, OfferV4VCFunction, SetCustomIDFunction, GetCustomIDFunction, 
//            StatusForZoneFunction, CancelVideoFunction

public class AirADCContext extends FREContext
{

    private static final String CTX_NAME = "AirADCContext";
    boolean configured;
    ADCListener listener;
    final String tag = "AdColonyANE";

    public AirADCContext(String s)
    {
        Log.i("AdColonyANE", "Creating ANE context");
        listener = new ADCListener(this);
    }

    public void dispose()
    {
        Log.i("AdColonyANE", "Disposing ANE context");
    }

    public Map getFunctions()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("configure", new ConfigureFunction());
        hashmap.put("is_video_available_function", new IsVideoAvailableFunction());
        hashmap.put("is_v4vc_available_function", new IsV4VCAvailableFunction());
        hashmap.put("get_device_id_function", new GetDeviceIDFunction());
        hashmap.put("get_v4vc_amount_function", new GetRewardAmountFunction());
        hashmap.put("get_v4vc_name_function", new GetRewardNameFunction());
        hashmap.put("show_video_function", new ShowVideoFunction());
        hashmap.put("show_v4vc_function", new ShowV4VCFunction());
        hashmap.put("offer_v4vc_function", new OfferV4VCFunction());
        hashmap.put("set_custom_id_function", new SetCustomIDFunction());
        hashmap.put("get_custom_id_function", new GetCustomIDFunction());
        hashmap.put("status_for_zone_function", new StatusForZoneFunction());
        hashmap.put("cancel_videofunction", new CancelVideoFunction());
        return hashmap;
    }

    public String getIdentifier()
    {
        return "AdColonyANE";
    }
}
