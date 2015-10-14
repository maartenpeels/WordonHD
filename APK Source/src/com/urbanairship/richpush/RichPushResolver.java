// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.richpush;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.urbanairship.UrbanAirshipProvider;
import com.urbanairship.UrbanAirshipResolver;
import com.urbanairship.util.UAStringUtil;
import java.util.Collection;
import java.util.Set;

class RichPushResolver extends UrbanAirshipResolver
{

    public RichPushResolver(Context context)
    {
        super(context);
    }

    private static Uri a(Collection collection)
    {
        return Uri.withAppendedPath(UrbanAirshipProvider.b(), UAStringUtil.a(collection, "|"));
    }

    final int a(String s, ContentValues contentvalues)
    {
        return a(Uri.withAppendedPath(UrbanAirshipProvider.b(), s), contentvalues, "message_id = ?", new String[] {
            s
        });
    }

    final int a(Set set)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("unread", Boolean.valueOf(false));
        return a(set, contentvalues);
    }

    final int a(Set set, ContentValues contentvalues)
    {
        int i = set.size();
        return a(a(((Collection) (set))), contentvalues, (new StringBuilder("message_id IN ( ")).append(UAStringUtil.a("?", i, ", ")).append(" )").toString(), (String[])set.toArray(new String[i]));
    }

    final int a(ContentValues acontentvalues[])
    {
        return a(UrbanAirshipProvider.b(), acontentvalues);
    }

    final Cursor a()
    {
        return a(UrbanAirshipProvider.b(), null, null, null, "timestamp DESC");
    }

    final int b(Set set)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("unread", Boolean.valueOf(true));
        return a(set, contentvalues);
    }

    final Cursor b()
    {
        return a(UrbanAirshipProvider.b(), null, "unread = ? AND unread <> unread_orig", new String[] {
            "0"
        }, null);
    }

    final int c(Set set)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("deleted", Boolean.valueOf(true));
        return a(set, contentvalues);
    }

    final Cursor c()
    {
        return a(UrbanAirshipProvider.b(), null, "deleted = ?", new String[] {
            "1"
        }, null);
    }

    final int d(Set set)
    {
        int i = set.size();
        return a(a(set), (new StringBuilder("message_id IN ( ")).append(UAStringUtil.a("?", i, ", ")).append(" )").toString(), (String[])set.toArray(new String[i]));
    }
}
