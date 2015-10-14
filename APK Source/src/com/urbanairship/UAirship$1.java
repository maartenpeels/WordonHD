// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship;

import com.urbanairship.actions.ActionActivity;
import com.urbanairship.actions.ActionService;
import com.urbanairship.analytics.EventService;
import com.urbanairship.location.LocationService;
import com.urbanairship.push.GCMPushReceiver;
import com.urbanairship.push.PushService;
import com.urbanairship.richpush.RichPushUpdateService;
import com.urbanairship.util.ManifestUtils;
import java.util.HashMap;

// Referenced classes of package com.urbanairship:
//            CoreReceiver, UrbanAirshipProvider, UAirship

class stUtils.b extends HashMap
{

    final UAirship a;

    ionActivity(UAirship uairship)
    {
        a = uairship;
        super();
        put(com/urbanairship/analytics/EventService, ManifestUtils.a(com/urbanairship/analytics/EventService));
        put(com/urbanairship/push/PushService, ManifestUtils.a(com/urbanairship/push/PushService));
        put(com/urbanairship/richpush/RichPushUpdateService, ManifestUtils.a(com/urbanairship/richpush/RichPushUpdateService));
        put(com/urbanairship/location/LocationService, ManifestUtils.a(com/urbanairship/location/LocationService));
        put(com/urbanairship/actions/ActionService, ManifestUtils.a(com/urbanairship/actions/ActionService));
        put(com/urbanairship/CoreReceiver, ManifestUtils.c(com/urbanairship/CoreReceiver));
        put(com/urbanairship/push/GCMPushReceiver, ManifestUtils.c(com/urbanairship/push/GCMPushReceiver));
        put(com/urbanairship/UrbanAirshipProvider, ManifestUtils.b(UrbanAirshipProvider.d()));
        put(com/urbanairship/actions/ActionActivity, ManifestUtils.b(com/urbanairship/actions/ActionActivity));
    }
}
