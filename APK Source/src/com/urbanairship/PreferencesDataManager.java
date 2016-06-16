// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.urbanairship.util.DataManager;

class PreferencesDataManager extends DataManager
{

    public PreferencesDataManager(Context context)
    {
        super(context, "ua_preferences.db", 1);
    }

    protected final SQLiteStatement a(String s, SQLiteDatabase sqlitedatabase)
    {
        return sqlitedatabase.compileStatement(a(s, new String[] {
            "_id", "value"
        }));
    }

    protected final void a(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS preferences (_id TEXT PRIMARY KEY, value TEXT);");
    }

    protected final void a(SQLiteStatement sqlitestatement, ContentValues contentvalues)
    {
        a(sqlitestatement, 1, contentvalues.getAsString("_id"));
        a(sqlitestatement, 2, contentvalues.getAsString("value"));
    }

    protected final void b(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS preferences");
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS preferences (_id TEXT PRIMARY KEY, value TEXT);");
    }
}
