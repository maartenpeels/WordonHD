// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.google.android.gms.internal.gl;
import com.google.android.gms.internal.gn;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

// Referenced classes of package com.google.android.gms.tagmanager:
//            bh, ak

class v
    implements DataLayer.c
{
    class a extends SQLiteOpenHelper
    {

        final v XH;

        private void a(SQLiteDatabase sqlitedatabase)
        {
            Object obj;
            sqlitedatabase = sqlitedatabase.rawQuery("SELECT * FROM datalayer WHERE 0", null);
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
            if (!((Set) (obj)).remove("key") || !((Set) (obj)).remove("value") || !((Set) (obj)).remove("ID") || !((Set) (obj)).remove("expires"))
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
            SQLiteDatabase sqlitedatabase = null;
            SQLiteDatabase sqlitedatabase1 = super.getWritableDatabase();
            sqlitedatabase = sqlitedatabase1;
_L2:
            SQLiteDatabase sqlitedatabase2 = sqlitedatabase;
            if (sqlitedatabase == null)
            {
                sqlitedatabase2 = super.getWritableDatabase();
            }
            return sqlitedatabase2;
            SQLiteException sqliteexception;
            sqliteexception;
            v.b(XH).getDatabasePath("google_tagmanager.db").delete();
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
            if (android.os.Build.VERSION.SDK_INT >= 15)
            {
                break MISSING_BLOCK_LABEL_29;
            }
            cursor = sqlitedatabase.rawQuery("PRAGMA journal_mode=memory", null);
            cursor.moveToFirst();
            cursor.close();
            if (!a("datalayer", sqlitedatabase))
            {
                sqlitedatabase.execSQL(v.kw());
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

        public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int k)
        {
        }

        a(Context context, String s)
        {
            XH = v.this;
            super(context, s, null, 1);
        }
    }

    private static class b
    {

        final byte XK[];
        final String Xy;

        public String toString()
        {
            return (new StringBuilder()).append("KeyAndSerialized: key = ").append(Xy).append(" serialized hash = ").append(Arrays.hashCode(XK)).toString();
        }

        b(String s, byte abyte0[])
        {
            Xy = s;
            XK = abyte0;
        }
    }


    private static final String XB = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' STRING NOT NULL, '%s' BLOB NOT NULL, '%s' INTEGER NOT NULL);", new Object[] {
        "datalayer", "ID", "key", "value", "expires"
    });
    private gl Wv;
    private final Executor XC;
    private a XD;
    private int XE;
    private final Context mContext;

    public v(Context context)
    {
        this(context, gn.ft(), "google_tagmanager.db", 2000, ((Executor) (Executors.newSingleThreadExecutor())));
    }

    v(Context context, gl gl1, String s, int i, Executor executor)
    {
        mContext = context;
        Wv = gl1;
        XE = i;
        XC = executor;
        XD = new a(mContext, s);
    }

    private SQLiteDatabase L(String s)
    {
        SQLiteDatabase sqlitedatabase;
        try
        {
            sqlitedatabase = XD.getWritableDatabase();
        }
        catch (SQLiteException sqliteexception)
        {
            bh.z(s);
            return null;
        }
        return sqlitedatabase;
    }

    static List a(v v1)
    {
        return v1.ks();
    }

    static void a(v v1, String s)
    {
        v1.by(s);
    }

    static void a(v v1, List list, long l)
    {
        v1.b(list, l);
    }

    static Context b(v v1)
    {
        return v1.mContext;
    }

    private List b(List list)
    {
        ArrayList arraylist = new ArrayList();
        b b1;
        for (list = list.iterator(); list.hasNext(); arraylist.add(new DataLayer.a(b1.Xy, j(b1.XK))))
        {
            b1 = (b)list.next();
        }

        return arraylist;
    }

    private void b(List list, long l)
    {
        this;
        JVM INSTR monitorenter ;
        long l1 = Wv.currentTimeMillis();
        u(l1);
        cb(list.size());
        c(list, l1 + l);
        kv();
        this;
        JVM INSTR monitorexit ;
        return;
        list;
        kv();
        throw list;
        list;
        this;
        JVM INSTR monitorexit ;
        throw list;
    }

    private void by(String s)
    {
        SQLiteDatabase sqlitedatabase;
        sqlitedatabase = L("Error opening database for clearKeysWithPrefix.");
        if (sqlitedatabase == null)
        {
            return;
        }
        int i = sqlitedatabase.delete("datalayer", "key = ? OR key LIKE ?", new String[] {
            s, (new StringBuilder()).append(s).append(".%").toString()
        });
        bh.y((new StringBuilder()).append("Cleared ").append(i).append(" items").toString());
        kv();
        return;
        SQLiteException sqliteexception;
        sqliteexception;
        bh.z((new StringBuilder()).append("Error deleting entries with key prefix: ").append(s).append(" (").append(sqliteexception).append(").").toString());
        kv();
        return;
        s;
        kv();
        throw s;
    }

    private List c(List list)
    {
        ArrayList arraylist = new ArrayList();
        DataLayer.a a1;
        for (list = list.iterator(); list.hasNext(); arraylist.add(new b(a1.Xy, j(a1.Xz))))
        {
            a1 = (DataLayer.a)list.next();
        }

        return arraylist;
    }

    private void c(List list, long l)
    {
        SQLiteDatabase sqlitedatabase = L("Error opening database for writeEntryToDatabase.");
        if (sqlitedatabase != null)
        {
            list = list.iterator();
            while (list.hasNext()) 
            {
                b b1 = (b)list.next();
                ContentValues contentvalues = new ContentValues();
                contentvalues.put("expires", Long.valueOf(l));
                contentvalues.put("key", b1.Xy);
                contentvalues.put("value", b1.XK);
                sqlitedatabase.insert("datalayer", null, contentvalues);
            }
        }
    }

    private void cb(int i)
    {
        i = (ku() - XE) + i;
        if (i > 0)
        {
            List list = cc(i);
            bh.x((new StringBuilder()).append("DataLayer store full, deleting ").append(list.size()).append(" entries to make room.").toString());
            g((String[])list.toArray(new String[0]));
        }
    }

    private List cc(int i)
    {
        Object obj;
        ArrayList arraylist;
        arraylist = new ArrayList();
        if (i <= 0)
        {
            bh.z("Invalid maxEntries specified. Skipping.");
            return arraylist;
        }
        obj = L("Error opening database for peekEntryIds.");
        if (obj == null)
        {
            return arraylist;
        }
        String s = String.format("%s ASC", new Object[] {
            "ID"
        });
        String s1 = Integer.toString(i);
        obj = ((SQLiteDatabase) (obj)).query("datalayer", new String[] {
            "ID"
        }, null, null, null, null, s, s1);
        boolean flag;
        if (((Cursor) (obj)).moveToFirst())
        {
            do
            {
                arraylist.add(String.valueOf(((Cursor) (obj)).getLong(0)));
                flag = ((Cursor) (obj)).moveToNext();
            } while (flag);
        }
        if (obj != null)
        {
            ((Cursor) (obj)).close();
        }
_L1:
        return arraylist;
        Object obj1;
        obj1;
        obj = null;
_L4:
        bh.z((new StringBuilder()).append("Error in peekEntries fetching entryIds: ").append(((SQLiteException) (obj1)).getMessage()).toString());
        if (obj != null)
        {
            ((Cursor) (obj)).close();
        }
          goto _L1
        obj1;
        obj = null;
_L3:
        if (obj != null)
        {
            ((Cursor) (obj)).close();
        }
        throw obj1;
        obj1;
        continue; /* Loop/switch isn't completed */
        obj1;
        if (true) goto _L3; else goto _L2
_L2:
        obj1;
          goto _L4
    }

    private void g(String as[])
    {
        SQLiteDatabase sqlitedatabase;
        if (as != null && as.length != 0)
        {
            if ((sqlitedatabase = L("Error opening database for deleteEntries.")) != null)
            {
                String s = String.format("%s in (%s)", new Object[] {
                    "ID", TextUtils.join(",", Collections.nCopies(as.length, "?"))
                });
                try
                {
                    sqlitedatabase.delete("datalayer", s, as);
                    return;
                }
                catch (SQLiteException sqliteexception)
                {
                    bh.z((new StringBuilder()).append("Error deleting entries ").append(Arrays.toString(as)).toString());
                }
                return;
            }
        }
    }

    private Object j(byte abyte0[])
    {
        ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream(abyte0);
        abyte0 = new ObjectInputStream(bytearrayinputstream);
        Object obj = abyte0.readObject();
        if (abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_33;
        }
        abyte0.close();
        bytearrayinputstream.close();
_L14:
        return obj;
        abyte0;
        abyte0 = null;
_L12:
        if (abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        abyte0.close();
        bytearrayinputstream.close();
_L10:
        return null;
        abyte0;
        abyte0 = null;
_L8:
        if (abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        abyte0.close();
        bytearrayinputstream.close();
_L6:
        return null;
        abyte0;
        obj = null;
_L4:
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        ((ObjectInputStream) (obj)).close();
        bytearrayinputstream.close();
_L2:
        throw abyte0;
        obj;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        obj = abyte0;
        abyte0 = exception;
        if (true) goto _L4; else goto _L3
_L3:
        abyte0;
        if (true) goto _L6; else goto _L5
_L5:
        Object obj1;
        obj1;
        if (true) goto _L8; else goto _L7
_L7:
        abyte0;
        if (true) goto _L10; else goto _L9
_L9:
        obj1;
        if (true) goto _L12; else goto _L11
_L11:
        abyte0;
        if (true) goto _L14; else goto _L13
_L13:
    }

    private byte[] j(Object obj)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        ObjectOutputStream objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
        objectoutputstream.writeObject(obj);
        obj = bytearrayoutputstream.toByteArray();
        if (objectoutputstream == null)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        objectoutputstream.close();
        bytearrayoutputstream.close();
_L10:
        return ((byte []) (obj));
        obj;
        objectoutputstream = null;
_L8:
        if (objectoutputstream == null)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        objectoutputstream.close();
        bytearrayoutputstream.close();
_L6:
        return null;
        obj;
        objectoutputstream = null;
_L4:
        if (objectoutputstream == null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        objectoutputstream.close();
        bytearrayoutputstream.close();
_L2:
        throw obj;
        IOException ioexception;
        ioexception;
        if (true) goto _L2; else goto _L1
_L1:
        obj;
        if (true) goto _L4; else goto _L3
_L3:
        obj;
        if (true) goto _L6; else goto _L5
_L5:
        obj;
        if (true) goto _L8; else goto _L7
_L7:
        ioexception;
        if (true) goto _L10; else goto _L9
_L9:
    }

    private List ks()
    {
        List list;
        u(Wv.currentTimeMillis());
        list = b(kt());
        kv();
        return list;
        Exception exception;
        exception;
        kv();
        throw exception;
    }

    private List kt()
    {
        Object obj;
        Object obj1;
        obj1 = L("Error opening database for loadSerialized.");
        obj = new ArrayList();
        if (obj1 == null)
        {
            return ((List) (obj));
        }
        obj1 = ((SQLiteDatabase) (obj1)).query("datalayer", new String[] {
            "key", "value"
        }, null, null, null, null, "ID", null);
        while (((Cursor) (obj1)).moveToNext()) 
        {
            ((List) (obj)).add(new b(((Cursor) (obj1)).getString(0), ((Cursor) (obj1)).getBlob(1)));
        }
        break MISSING_BLOCK_LABEL_99;
        obj;
        ((Cursor) (obj1)).close();
        throw obj;
        ((Cursor) (obj1)).close();
        return ((List) (obj));
    }

    private int ku()
    {
        Object obj;
        obj = L("Error opening database for getNumStoredEntries.");
        if (obj == null)
        {
            return 0;
        }
        Cursor cursor = ((SQLiteDatabase) (obj)).rawQuery("SELECT COUNT(*) from datalayer", null);
        obj = cursor;
        if (!cursor.moveToFirst()) goto _L2; else goto _L1
_L1:
        obj = cursor;
        long l = cursor.getLong(0);
        int i = (int)l;
_L7:
        SQLiteException sqliteexception;
        Exception exception;
        if (cursor != null)
        {
            cursor.close();
            return i;
        } else
        {
            return i;
        }
        obj;
        cursor = null;
_L5:
        obj = cursor;
        bh.z("Error getting numStoredEntries");
        if (cursor != null)
        {
            cursor.close();
            return 0;
        } else
        {
            return 0;
        }
        exception;
        obj = null;
_L4:
        if (obj != null)
        {
            ((Cursor) (obj)).close();
        }
        throw exception;
        exception;
        if (true) goto _L4; else goto _L3
_L3:
        sqliteexception;
        if (true) goto _L5; else goto _L2
_L2:
        i = 0;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private void kv()
    {
        try
        {
            XD.close();
            return;
        }
        catch (SQLiteException sqliteexception)
        {
            return;
        }
    }

    static String kw()
    {
        return XB;
    }

    private void u(long l)
    {
        SQLiteDatabase sqlitedatabase = L("Error opening database for deleteOlderThan.");
        if (sqlitedatabase == null)
        {
            return;
        }
        try
        {
            int i = sqlitedatabase.delete("datalayer", "expires <= ?", new String[] {
                Long.toString(l)
            });
            bh.y((new StringBuilder()).append("Deleted ").append(i).append(" expired items").toString());
            return;
        }
        catch (SQLiteException sqliteexception)
        {
            bh.z("Error deleting old entries.");
        }
    }

    public void a(DataLayer.c.a a1)
    {
        XC.execute(new Runnable(a1) {

            final v XH;
            final DataLayer.c.a XI;

            public void run()
            {
                XI.a(v.a(XH));
            }

            
            {
                XH = v.this;
                XI = a1;
                super();
            }
        });
    }

    public void a(List list, long l)
    {
        list = c(list);
        XC.execute(new Runnable(list, l) {

            final List XF;
            final long XG;
            final v XH;

            public void run()
            {
                v.a(XH, XF, XG);
            }

            
            {
                XH = v.this;
                XF = list;
                XG = l;
                super();
            }
        });
    }

    public void bx(String s)
    {
        XC.execute(new Runnable(s) {

            final v XH;
            final String XJ;

            public void run()
            {
                v.a(XH, XJ);
            }

            
            {
                XH = v.this;
                XJ = s;
                super();
            }
        });
    }

}
