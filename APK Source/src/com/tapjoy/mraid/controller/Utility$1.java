// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.controller;

import android.content.DialogInterface;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.tapjoy.mraid.controller:
//            Utility

class val.body
    implements android.content.rface.OnClickListener
{

    final Utility this$0;
    final String val$body;
    final String val$date;
    final List val$entries;
    final String val$title;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        Map map = (Map)val$entries.get(i);
        Utility.access$000(Utility.this, Integer.parseInt((String)map.get("ID")), val$date, val$title, val$body);
        dialoginterface.cancel();
    }

    kListener()
    {
        this$0 = final_utility;
        val$entries = list;
        val$date = s;
        val$title = s1;
        val$body = String.this;
        super();
    }
}
