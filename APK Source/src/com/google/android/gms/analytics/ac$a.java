// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.analytics;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.File;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.google.android.gms.analytics:
//            ac, aa, i, p

class vG extends SQLiteOpenHelper
{

    final ac vE;
    private boolean vF;
    private long vG;

    private void a(SQLiteDatabase sqlitedatabase)
    {
        Cursor cursor;
        HashSet hashset;
        cursor = sqlitedatabase.rawQuery("SELECT * FROM hits2 WHERE 0", null);
        hashset = new HashSet();
        String as[] = cursor.getColumnNames();
        int j = 0;
_L2:
        if (j >= as.length)
        {
            break; /* Loop/switch isn't completed */
        }
        hashset.add(as[j]);
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        cursor.close();
        if (!hashset.remove("hit_id") || !hashset.remove("hit_url") || !hashset.remove("hit_string") || !hashset.remove("hit_time"))
        {
            throw new SQLiteException("Database column missing");
        }
        break MISSING_BLOCK_LABEL_125;
        sqlitedatabase;
        cursor.close();
        throw sqlitedatabase;
        boolean flag;
        if (!hashset.remove("hit_app_id"))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!hashset.isEmpty())
        {
            throw new SQLiteException("Database has extra columns");
        }
        if (flag)
        {
            sqlitedatabase.execSQL("ALTER TABLE hits2 ADD COLUMN hit_app_id");
        }
        return;
    }

    private boolean a(String s, SQLiteDatabase sqlitedatabase)
    {
        Cursor cursor = sqlitedatabase.query("SQLITE_MASTER", new String[] {
            "name"
        }, "name=?", new String[] {
            s
        }, null, null, null);
        sqlitedatabase = cursor;
        boolean flag = cursor.moveToFirst();
        if (cursor != null)
        {
            cursor.close();
        }
        return flag;
        sqlitedatabase;
        cursor = null;
_L4:
        sqlitedatabase = cursor;
        aa.z((new StringBuilder()).append("Error querying for table ").append(s).toString());
        if (cursor != null)
        {
            cursor.close();
        }
        return false;
        s;
        sqlitedatabase = null;
_L2:
        if (sqlitedatabase != null)
        {
            sqlitedatabase.close();
        }
        throw s;
        s;
        if (true) goto _L2; else goto _L1
_L1:
        sqlitedatabase;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public SQLiteDatabase getWritableDatabase()
    {
        SQLiteDatabase sqlitedatabase;
        if (vF && vG + 0x36ee80L > ac.a(vE).currentTimeMillis())
        {
            throw new SQLiteException("Database creation failed");
        }
        sqlitedatabase = null;
        vF = true;
        vG = ac.a(vE).currentTimeMillis();
        SQLiteDatabase sqlitedatabase1 = super.getWritableDatabase();
        sqlitedatabase = sqlitedatabase1;
_L2:
        SQLiteDatabase sqlitedatabase2 = sqlitedatabase;
        if (sqlitedatabase == null)
        {
            sqlitedatabase2 = super.getWritableDatabase();
        }
        vF = false;
        return sqlitedatabase2;
        SQLiteException sqliteexception;
        sqliteexception;
        ac.c(vE).getDatabasePath(ac.b(vE)).delete();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        p.G(sqlitedatabase.getPath());
    }

    public void onOpen(SQLiteDatabase sqlitedatabase)
    {
        Cursor cursor;
        if (android.os..VERSION.SDK_INT >= 15)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        cursor = sqlitedatabase.rawQuery("PRAGMA journal_mode=memory", null);
        cursor.moveToFirst();
        cursor.close();
        if (!a("hits2", sqlitedatabase))
        {
            sqlitedatabase.execSQL(ac.cY());
            return;
        } else
        {
            a(sqlitedatabase);
            return;
        }
        sqlitedatabase;
        cursor.close();
        throw sqlitedatabase;
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int j, int k)
    {
    }

    orFactory(ac ac1, Context context, String s)
    {
        vE = ac1;
        super(context, s, null, 1);
        vG = 0L;
    }
}
