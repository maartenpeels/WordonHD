// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;

// Referenced classes of package com.urbanairship:
//            UrbanAirshipResolver, UrbanAirshipProvider

class PreferencesResolver extends UrbanAirshipResolver
{

    public PreferencesResolver(Context context)
    {
        super(context);
    }

    public final Cursor a(String s)
    {
        return a(UrbanAirshipProvider.c(), new String[] {
            "value"
        }, "_id = ?", new String[] {
            s
        }, null);
    }

    public final Uri a(String s, String s1)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("_id", s);
        contentvalues.put("value", s1);
        return a(UrbanAirshipProvider.c(), contentvalues);
    }

    public final int b(String s)
    {
        return a(UrbanAirshipProvider.c(), "_id = ?", new String[] {
            s
        });
    }
}
