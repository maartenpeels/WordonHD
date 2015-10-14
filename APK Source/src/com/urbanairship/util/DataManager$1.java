// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.util;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.urbanairship.Logger;

// Referenced classes of package com.urbanairship.util:
//            DataManager

class ry extends SQLiteOpenHelper
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

    ry(DataManager datamanager, Context context, String s, int i, String s1)
    {
        b = datamanager;
        a = s1;
        super(context, s, null, i);
    }
}
