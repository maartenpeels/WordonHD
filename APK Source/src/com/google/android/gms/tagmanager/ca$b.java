// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.android.gms.internal.gl;
import java.io.File;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.google.android.gms.tagmanager:
//            ca, bh, ak

class vG extends SQLiteOpenHelper
{

    final ca YL;
    private boolean vF;
    private long vG;

    private void a(SQLiteDatabase sqlitedatabase)
    {
        Object obj;
        sqlitedatabase = sqlitedatabase.rawQuery("SELECT * FROM gtm_hits WHERE 0", null);
        obj = new HashSet();
        String as[] = sqlitedatabase.getColumnNames();
        int i = 0;
_L2:
        if (i >= as.length)
        {
            break; /* Loop/switch isn't completed */
        }
        ((Set) (obj)).add(as[i]);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        sqlitedatabase.close();
        if (!((Set) (obj)).remove("hit_id") || !((Set) (obj)).remove("hit_url") || !((Set) (obj)).remove("hit_time") || !((Set) (obj)).remove("hit_first_send_time"))
        {
            throw new SQLiteException("Database column missing");
        }
        break MISSING_BLOCK_LABEL_122;
        obj;
        sqlitedatabase.close();
        throw obj;
        if (!((Set) (obj)).isEmpty())
        {
            throw new SQLiteException("Database has extra columns");
        } else
        {
            return;
        }
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
        bh.z((new StringBuilder()).append("Error querying for table ").append(s).toString());
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
        if (vF && vG + 0x36ee80L > ca.a(YL).currentTimeMillis())
        {
            throw new SQLiteException("Database creation failed");
        }
        sqlitedatabase = null;
        vF = true;
        vG = ca.a(YL).currentTimeMillis();
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
        ca.c(YL).getDatabasePath(ca.b(YL)).delete();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        ak.G(sqlitedatabase.getPath());
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
        if (!a("gtm_hits", sqlitedatabase))
        {
            sqlitedatabase.execSQL(ca.kS());
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

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
    }

    rFactory(ca ca1, Context context, String s)
    {
        YL = ca1;
        super(context, s, null, 1);
        vG = 0L;
    }
}
