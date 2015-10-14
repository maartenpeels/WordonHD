// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;

// Referenced classes of package com.urbanairship:
//            Logger

public abstract class UrbanAirshipResolver
{

    private Context a;

    public UrbanAirshipResolver(Context context)
    {
        a = context;
    }

    protected final int a(Uri uri, ContentValues contentvalues, String s, String as[])
    {
        int i;
        try
        {
            i = a.getContentResolver().update(uri, contentvalues, s, as);
        }
        // Misplaced declaration of an exception variable
        catch (Uri uri)
        {
            Logger.c("Failed to perform an update in UrbanAirshipProvider.", uri);
            return 0;
        }
        return i;
    }

    protected final int a(Uri uri, String s, String as[])
    {
        int i;
        try
        {
            i = a.getContentResolver().delete(uri, s, as);
        }
        // Misplaced declaration of an exception variable
        catch (Uri uri)
        {
            Logger.c("Failed to perform a delete in UrbanAirshipProvider.", uri);
            return -1;
        }
        return i;
    }

    protected final int a(Uri uri, ContentValues acontentvalues[])
    {
        int i;
        try
        {
            i = a.getContentResolver().bulkInsert(uri, acontentvalues);
        }
        // Misplaced declaration of an exception variable
        catch (Uri uri)
        {
            Logger.c("Failed to bulk insert in UrbanAirshipProvider.", uri);
            return 0;
        }
        return i;
    }

    protected final Cursor a(Uri uri, String as[], String s, String as1[], String s1)
    {
        try
        {
            uri = a.getContentResolver().query(uri, as, s, as1, s1);
        }
        // Misplaced declaration of an exception variable
        catch (Uri uri)
        {
            Logger.c("Failed to query the UrbanAirshipProvider.", uri);
            return null;
        }
        return uri;
    }

    protected final Uri a(Uri uri, ContentValues contentvalues)
    {
        try
        {
            uri = a.getContentResolver().insert(uri, contentvalues);
        }
        // Misplaced declaration of an exception variable
        catch (Uri uri)
        {
            Logger.c("Failed to insert in UrbanAirshipProvider.", uri);
            return null;
        }
        return uri;
    }

    public final void a(Uri uri, ContentObserver contentobserver)
    {
        a.getContentResolver().registerContentObserver(uri, true, contentobserver);
    }
}
