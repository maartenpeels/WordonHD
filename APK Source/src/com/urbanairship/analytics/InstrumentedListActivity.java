// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.analytics;

import android.app.ListActivity;
import android.os.Bundle;
import com.urbanairship.Autopilot;
import com.urbanairship.UAirship;

// Referenced classes of package com.urbanairship.analytics:
//            Analytics

public class InstrumentedListActivity extends ListActivity
{

    public InstrumentedListActivity()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Autopilot.b(getApplication());
    }

    public void onStart()
    {
        super.onStart();
        UAirship.a().k().a(this);
    }

    public void onStop()
    {
        super.onStop();
        UAirship.a().k().b(this);
    }
}
