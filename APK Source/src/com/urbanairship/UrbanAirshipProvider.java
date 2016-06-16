// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import com.urbanairship.util.DataManager;
import java.util.List;

// Referenced classes of package com.urbanairship:
//            UAirship

public class UrbanAirshipProvider extends ContentProvider
{

    private static final UriMatcher a = new UriMatcher(-1);
    private static String d;
    private DatabaseModel b;
    private DatabaseModel c;

    public UrbanAirshipProvider()
    {
    }

    public static void a()
    {
        a.addURI(d(), "richpush", 0);
        a.addURI(d(), "richpush/*", 1);
        a.addURI(d(), "preferences", 2);
        a.addURI(d(), "preferences/*", 3);
    }

    private static String[] a(Uri uri)
    {
        try
        {
            uri = ((String)uri.getPathSegments().get(1)).split("\\|");
        }
        // Misplaced declaration of an exception variable
        catch (Uri uri)
        {
            return new String[0];
        }
        return uri;
    }

    public static Uri b()
    {
        return Uri.parse((new StringBuilder("content://")).append(d()).append("/richpush").toString());
    }

    private DatabaseModel b(Uri uri)
    {
        switch (a.match(uri))
        {
        default:
            throw new IllegalArgumentException((new StringBuilder("Invalid URI: ")).append(uri).toString());

        case 0: // '\0'
        case 1: // '\001'
            return f();

        case 2: // '\002'
        case 3: // '\003'
            return e();
        }
    }

    public static Uri c()
    {
        return Uri.parse((new StringBuilder("content://")).append(d()).append("/preferences").toString());
    }

    public static String d()
    {
        if (d == null)
        {
            String s = UAirship.b();
            d = (new StringBuilder()).append(s).append(".urbanairship.provider").toString();
        }
        return d;
    }

    private DatabaseModel e()
    {
        if (c == null)
        {
            c = DatabaseModel.b(getContext());
        }
        return c;
    }

    private DatabaseModel f()
    {
        if (b == null)
        {
            b = DatabaseModel.a(getContext());
        }
        return b;
    }

    public int bulkInsert(Uri uri, ContentValues acontentvalues[])
    {
        uri = b(uri);
        acontentvalues = ((DatabaseModel) (uri)).a.a(((DatabaseModel) (uri)).b, acontentvalues);
        String as[] = new String[acontentvalues.size()];
        for (int i = 0; i < as.length; i++)
        {
            as[i] = ((ContentValues)acontentvalues.get(i)).getAsString(((DatabaseModel) (uri)).d);
        }

        uri.a(getContext(), as, "insert");
        return acontentvalues.size();
    }

    public int delete(Uri uri, String s, String as[])
    {
        DatabaseModel databasemodel = b(uri);
        int i = databasemodel.a.a(databasemodel.b, s, as);
        databasemodel.a(getContext(), a(uri), "delete");
        return i;
    }

    public String getType(Uri uri)
    {
        switch (a.match(uri))
        {
        default:
            throw new IllegalArgumentException((new StringBuilder("Invalid Uri: ")).append(uri).toString());

        case 0: // '\0'
            return "vnd.urbanairship.cursor.dir/richpush";

        case 1: // '\001'
            return "vnd.urbanairship.cursor.item/richpush";

        case 2: // '\002'
            return "vnd.urbanairship.cursor.dir/preference";

        case 3: // '\003'
            return "vnd.urbanairship.cursor.item/preference";
        }
    }

    public Uri insert(Uri uri, ContentValues contentvalues)
    {
        DatabaseModel databasemodel = b(uri);
        if (databasemodel.a.a(databasemodel.b, contentvalues) != -1L)
        {
            contentvalues = contentvalues.getAsString(databasemodel.d);
            databasemodel.a(getContext(), new String[] {
                contentvalues
            }, "insert");
            return Uri.withAppendedPath(uri, contentvalues);
        } else
        {
            return null;
        }
    }

    public boolean onCreate()
    {
        return true;
    }

    public Cursor query(Uri uri, String as[], String s, String as1[], String s1)
    {
        DatabaseModel databasemodel = b(uri);
        as = databasemodel.a.a(databasemodel.b, as, s, as1, s1);
        if (as != null)
        {
            as.setNotificationUri(getContext().getContentResolver(), uri);
        }
        return as;
    }

    public void shutdown()
    {
        f().a.d();
        e().a.d();
    }

    public int update(Uri uri, ContentValues contentvalues, String s, String as[])
    {
        DatabaseModel databasemodel = b(uri);
        int i = databasemodel.a.a(databasemodel.b, contentvalues, s, as);
        if (i != -1)
        {
            databasemodel.a(getContext(), a(uri), "update");
        }
        return i;
    }


    private class DatabaseModel
    {

        DataManager a;
        String b;
        Uri c;
        String d;

        static DatabaseModel a(Context context)
        {
            return new DatabaseModel(new RichPushDataManager(context), "richpush", UrbanAirshipProvider.b(), "message_id");
        }

        static DatabaseModel b(Context context)
        {
            return new DatabaseModel(new PreferencesDataManager(context), "preferences", UrbanAirshipProvider.c(), "_id");
        }

        final void a(Context context, String as[], String s)
        {
            as = Uri.withAppendedPath(c, (new StringBuilder()).append(UAStringUtil.a(Arrays.asList(as), "|")).append("/").append(s).toString());
            Logger.b((new StringBuilder("Notifying of change to ")).append(as.toString()).toString());
            context.getContentResolver().notifyChange(as, null);
        }

        private DatabaseModel(DataManager datamanager, String s, Uri uri, String s1)
        {
            a = datamanager;
            b = s;
            c = uri;
            d = s1;
        }
    }

}
