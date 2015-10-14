// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.analytics;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.util.DataManager;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

class EventDataManager extends DataManager
{

    public EventDataManager()
    {
        super(UAirship.a().g(), "ua_analytics.db", 1);
    }

    public final long a(ContentValues contentvalues)
    {
        return a("events", contentvalues);
    }

    protected final SQLiteStatement a(String s, SQLiteDatabase sqlitedatabase)
    {
        return sqlitedatabase.compileStatement(a(s, new String[] {
            "type", "event_id", "data", "time", "session_id", "event_size"
        }));
    }

    public final String a()
    {
        Cursor cursor = a("events", new String[] {
            "session_id"
        }, null, null, "_id ASC", "0, 1");
        if (cursor == null)
        {
            Logger.e("Unable to query database");
            return null;
        }
        String s;
        if (cursor.moveToFirst())
        {
            s = cursor.getString(0);
        } else
        {
            s = null;
        }
        cursor.close();
        return s;
    }

    public final Map a(int i)
    {
        HashMap hashmap = new HashMap(i);
        Object obj = (new StringBuilder("0, ")).append(i).toString();
        obj = a("events", new String[] {
            "event_id", "data"
        }, null, null, "_id ASC", ((String) (obj)));
        if (obj == null)
        {
            return hashmap;
        }
        ((Cursor) (obj)).moveToFirst();
        for (; !((Cursor) (obj)).isAfterLast(); ((Cursor) (obj)).moveToNext())
        {
            hashmap.put(((Cursor) (obj)).getString(0), ((Cursor) (obj)).getString(1));
        }

        ((Cursor) (obj)).close();
        return hashmap;
    }

    protected final void a(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS events (_id INTEGER PRIMARY KEY AUTOINCREMENT,type TEXT,event_id TEXT,time INTEGER,data TEXT,session_id TEXT,event_size INTEGER);");
    }

    protected final void a(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        Logger.d((new StringBuilder("Upgrading analytics database from version ")).append(i).append(" to ").append(j).append(", which will destroy all old data").toString());
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS events");
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS events (_id INTEGER PRIMARY KEY AUTOINCREMENT,type TEXT,event_id TEXT,time INTEGER,data TEXT,session_id TEXT,event_size INTEGER);");
    }

    protected final void a(SQLiteStatement sqlitestatement, ContentValues contentvalues)
    {
        a(sqlitestatement, 1, contentvalues.getAsString("type"));
        a(sqlitestatement, 2, contentvalues.getAsString("event_id"));
        a(sqlitestatement, 3, contentvalues.getAsString("data"));
        sqlitestatement.bindLong(4, contentvalues.getAsInteger("time").intValue());
        a(sqlitestatement, 5, contentvalues.getAsString("session_id"));
        sqlitestatement.bindLong(6, contentvalues.getAsInteger("event_size").intValue());
    }

    public final boolean a(String s)
    {
        return a("events", "type = ?", new String[] {
            s
        }) > 0;
    }

    public final boolean a(Set set)
    {
        if (set == null || set.size() == 0)
        {
            Logger.b("Nothing to delete. Returning.");
            return false;
        }
        int j = set.size();
        Object obj = new StringBuilder();
        for (int i = 0; i < j; i++)
        {
            ((StringBuilder) (obj)).append("?");
            if (i + 1 != j)
            {
                ((StringBuilder) (obj)).append(", ");
            }
        }

        obj = ((StringBuilder) (obj)).toString();
        return a("events", (new StringBuilder("event_id IN ( ")).append(((String) (obj))).append(" )").toString(), (String[])set.toArray(new String[j])) > 0;
    }

    public final int b()
    {
        Cursor cursor = a("events", new String[] {
            "COUNT(*) as _cnt"
        }, null, null, null, null);
        if (cursor == null)
        {
            Logger.e("Unable to query database");
            return -1;
        }
        Integer integer;
        if (cursor.moveToFirst())
        {
            integer = Integer.valueOf(cursor.getInt(0));
        } else
        {
            integer = null;
        }
        cursor.close();
        if (integer == null)
        {
            return -1;
        } else
        {
            return integer.intValue();
        }
    }

    protected final void b(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS events");
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS events (_id INTEGER PRIMARY KEY AUTOINCREMENT,type TEXT,event_id TEXT,time INTEGER,data TEXT,session_id TEXT,event_size INTEGER);");
    }

    public final boolean b(String s)
    {
        int i = a("events", "session_id = ?", new String[] {
            s
        });
        if (i > 0)
        {
            Logger.d((new StringBuilder("Deleted ")).append(i).append(" rows with session id ").append(s).toString());
            return true;
        } else
        {
            return false;
        }
    }

    public final int c()
    {
        Object obj = a("events", new String[] {
            "SUM(event_size) as _size"
        }, null, null, null, null);
        if (obj == null)
        {
            Logger.e("Unable to query database");
            return -1;
        }
        if (((Cursor) (obj)).moveToFirst())
        {
            int i = ((Cursor) (obj)).getInt(0);
            ((Cursor) (obj)).close();
            obj = Integer.valueOf(i);
        } else
        {
            obj = null;
        }
        if (obj == null)
        {
            return -1;
        } else
        {
            return ((Integer) (obj)).intValue();
        }
    }
}
