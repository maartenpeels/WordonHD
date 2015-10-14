// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.util;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteStatement;
import android.os.SystemClock;
import com.urbanairship.Logger;
import java.util.ArrayList;
import java.util.List;

public abstract class DataManager
{

    private SQLiteOpenHelper a;

    public DataManager(Context context, String s, int i)
    {
        a = new _cls1(context, s, i, s);
    }

    private SQLiteDatabase a()
    {
        int i = 0;
_L2:
        if (i >= 3)
        {
            break; /* Loop/switch isn't completed */
        }
        SQLiteDatabase sqlitedatabase = a.getWritableDatabase();
        return sqlitedatabase;
        SQLiteException sqliteexception;
        sqliteexception;
        SystemClock.sleep(100L);
        Logger.e("Error opening writable database. Retrying...");
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return null;
    }

    protected static transient String a(String s, String as[])
    {
        StringBuilder stringbuilder = new StringBuilder(128);
        stringbuilder.append("INSERT INTO ");
        stringbuilder.append(s);
        stringbuilder.append(" (");
        StringBuilder stringbuilder1 = new StringBuilder(128);
        stringbuilder1.append("VALUES (");
        int i = 0;
        while (i < as.length) 
        {
            stringbuilder.append("'");
            stringbuilder.append(as[i]);
            stringbuilder.append("'");
            stringbuilder1.append("?");
            if (i == as.length - 1)
            {
                s = ") ";
            } else
            {
                s = ", ";
            }
            stringbuilder.append(s);
            if (i == as.length - 1)
            {
                s = ");";
            } else
            {
                s = ", ";
            }
            stringbuilder1.append(s);
            i++;
        }
        stringbuilder.append(stringbuilder1);
        return stringbuilder.toString();
    }

    private static void a(SQLiteStatement sqlitestatement, int i, Boolean boolean1)
    {
        if (boolean1 == null)
        {
            sqlitestatement.bindNull(i);
            return;
        }
        long l;
        if (boolean1.booleanValue())
        {
            l = 1L;
        } else
        {
            l = 0L;
        }
        sqlitestatement.bindLong(i, l);
    }

    protected static void a(SQLiteStatement sqlitestatement, int i, Boolean boolean1, Boolean boolean2)
    {
        if (boolean1 == null)
        {
            a(sqlitestatement, i, boolean2);
            return;
        } else
        {
            a(sqlitestatement, i, boolean1);
            return;
        }
    }

    protected static void a(SQLiteStatement sqlitestatement, int i, String s)
    {
        if (s == null)
        {
            sqlitestatement.bindNull(i);
            return;
        } else
        {
            sqlitestatement.bindString(i, s);
            return;
        }
    }

    private SQLiteDatabase b()
    {
        int i = 0;
_L2:
        if (i >= 3)
        {
            break; /* Loop/switch isn't completed */
        }
        SQLiteDatabase sqlitedatabase = a.getReadableDatabase();
        return sqlitedatabase;
        SQLiteException sqliteexception;
        sqliteexception;
        SystemClock.sleep(100L);
        Logger.e("Error opening readable database. Retrying...");
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return null;
    }

    private boolean b(SQLiteStatement sqlitestatement, ContentValues contentvalues)
    {
        int i = 0;
_L2:
        if (i >= 3)
        {
            break; /* Loop/switch isn't completed */
        }
        sqlitestatement.clearBindings();
        a(sqlitestatement, contentvalues);
        sqlitestatement.execute();
        return true;
        Exception exception;
        exception;
        Logger.c("Unable to insert into database", exception);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return false;
    }

    public final int a(String s, ContentValues contentvalues, String s1, String as[])
    {
        SQLiteDatabase sqlitedatabase;
        int i;
        sqlitedatabase = a();
        if (sqlitedatabase == null)
        {
            return -1;
        }
        i = 0;
_L2:
        if (i >= 3)
        {
            break; /* Loop/switch isn't completed */
        }
        int j = sqlitedatabase.update(s, contentvalues, s1, as);
        return j;
        SQLException sqlexception;
        sqlexception;
        Logger.c("Update Failed", sqlexception);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return -1;
    }

    public final int a(String s, String s1, String as[])
    {
        SQLiteDatabase sqlitedatabase;
        int i;
        if (s1 == null)
        {
            s1 = "1";
        }
        sqlitedatabase = a();
        if (sqlitedatabase == null)
        {
            return -1;
        }
        i = 0;
_L2:
        if (i >= 3)
        {
            break; /* Loop/switch isn't completed */
        }
        int j = sqlitedatabase.delete(s, s1, as);
        return j;
        Exception exception;
        exception;
        Logger.c("Unable to delete item from a database", exception);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return -1;
    }

    public final long a(String s, ContentValues contentvalues)
    {
        int i = 0;
_L2:
        if (i >= 3)
        {
            break; /* Loop/switch isn't completed */
        }
        long l = a().replaceOrThrow(s, null, contentvalues);
        return l;
        Exception exception;
        exception;
        Logger.c("Unable to insert into database", exception);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return -1L;
    }

    public final Cursor a(String s, String as[], String s1, String as1[], String s2)
    {
        return a(s, as, s1, as1, s2, null);
    }

    public final Cursor a(String s, String as[], String s1, String as1[], String s2, String s3)
    {
        SQLiteDatabase sqlitedatabase;
        int i;
        sqlitedatabase = b();
        if (sqlitedatabase == null)
        {
            return null;
        }
        i = 0;
_L2:
        if (i >= 3)
        {
            break; /* Loop/switch isn't completed */
        }
        Cursor cursor = sqlitedatabase.query(s, as, s1, as1, null, null, s2, s3);
        return cursor;
        SQLException sqlexception;
        sqlexception;
        Logger.c("Query Failed", sqlexception);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return null;
    }

    protected abstract SQLiteStatement a(String s, SQLiteDatabase sqlitedatabase);

    public final List a(String s, ContentValues acontentvalues[])
    {
        SQLiteDatabase sqlitedatabase;
        ArrayList arraylist;
        int i;
        sqlitedatabase = a();
        arraylist = new ArrayList();
        if (sqlitedatabase == null)
        {
            return arraylist;
        }
        sqlitedatabase.beginTransaction();
        s = a(s, sqlitedatabase);
        i = 0;
_L2:
        if (i < acontentvalues.length)
        {
            if (b(s, acontentvalues[i]))
            {
                arraylist.add(acontentvalues[i]);
            }
            break MISSING_BLOCK_LABEL_111;
        }
        if (!arraylist.isEmpty())
        {
            sqlitedatabase.setTransactionSuccessful();
        }
        sqlitedatabase.endTransaction();
        return arraylist;
        s;
        Logger.c("Unable to insert into database", s);
        sqlitedatabase.endTransaction();
        return arraylist;
        s;
        sqlitedatabase.endTransaction();
        throw s;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected abstract void a(SQLiteDatabase sqlitedatabase);

    protected void a(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        Logger.b("onUpgrade not implemented yet.");
    }

    protected abstract void a(SQLiteStatement sqlitestatement, ContentValues contentvalues);

    protected void b(SQLiteDatabase sqlitedatabase)
    {
        throw new SQLiteException("Unable to downgrade database");
    }

    public final void d()
    {
        try
        {
            a.close();
            return;
        }
        catch (Exception exception)
        {
            Logger.c("Failed to close the database.", exception);
        }
    }

    private class _cls1 extends SQLiteOpenHelper
    {

        final String a;
        final DataManager b;

        public void onCreate(SQLiteDatabase sqlitedatabase)
        {
            b.a(sqlitedatabase);
        }

        public void onDowngrade(SQLiteDatabase sqlitedatabase, int i, int j)
        {
            Logger.d((new StringBuilder("Downgrading database ")).append(a).append(" from version ").append(i).append(" to ").append(j).toString());
            b.b(sqlitedatabase);
        }

        public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
        {
            Logger.d((new StringBuilder("Upgrading database ")).append(a).append(" from version ").append(i).append(" to ").append(j).toString());
            b.a(sqlitedatabase, i, j);
        }

        _cls1(Context context, String s, int i, String s1)
        {
            b = DataManager.this;
            a = s1;
            super(context, s, null, i);
        }
    }

}
