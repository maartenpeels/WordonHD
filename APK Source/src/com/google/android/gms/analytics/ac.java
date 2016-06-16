// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.analytics;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.CursorWindow;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.google.android.gms.internal.ef;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.http.impl.client.DefaultHttpClient;

// Referenced classes of package com.google.android.gms.analytics:
//            d, ah, aa, e, 
//            y, x, n, ab, 
//            GoogleAnalytics, i, p

class ac
    implements d
{
    class a extends SQLiteOpenHelper
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
            int k = 0;
_L2:
            if (k >= as.length)
            {
                break; /* Loop/switch isn't completed */
            }
            hashset.add(as[k]);
            k++;
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

        private boolean a(String s1, SQLiteDatabase sqlitedatabase)
        {
            Cursor cursor = sqlitedatabase.query("SQLITE_MASTER", new String[] {
                "name"
            }, "name=?", new String[] {
                s1
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
            aa.z((new StringBuilder()).append("Error querying for table ").append(s1).toString());
            if (cursor != null)
            {
                cursor.close();
            }
            return false;
            s1;
            sqlitedatabase = null;
_L2:
            if (sqlitedatabase != null)
            {
                sqlitedatabase.close();
            }
            throw s1;
            s1;
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
            if (android.os.Build.VERSION.SDK_INT >= 15)
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

        public void onUpgrade(SQLiteDatabase sqlitedatabase, int k, int l)
        {
        }

        a(Context context, String s1)
        {
            vE = ac.this;
            super(context, s1, null, 1);
            vG = 0L;
        }
    }


    private static final String vx = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", new Object[] {
        "hits2", "hit_id", "hit_time", "hit_url", "hit_string", "hit_app_id"
    });
    private final Context mContext;
    private final e sO;
    private i tg = new i() {

        final ac vE;

        public long currentTimeMillis()
        {
            return System.currentTimeMillis();
        }

            
            {
                vE = ac.this;
                super();
            }
    };
    private final String vA;
    private ab vB;
    private long vC;
    private final int vD;
    private final a vy;
    private volatile n vz;

    ac(e e1, Context context)
    {
        this(e1, context, "google_analytics_v4.db", 2000);
    }

    ac(e e1, Context context, String s1, int k)
    {
        mContext = context.getApplicationContext();
        vA = s1;
        sO = e1;
        vy = new a(mContext, vA);
        vz = new ah(new DefaultHttpClient(), mContext);
        vC = 0L;
        vD = k;
    }

    private SQLiteDatabase L(String s1)
    {
        SQLiteDatabase sqlitedatabase;
        try
        {
            sqlitedatabase = vy.getWritableDatabase();
        }
        catch (SQLiteException sqliteexception)
        {
            aa.z(s1);
            return null;
        }
        return sqlitedatabase;
    }

    static i a(ac ac1)
    {
        return ac1.tg;
    }

    private void a(Map map, long l, String s1)
    {
        SQLiteDatabase sqlitedatabase = L("Error opening database for putHit");
        if (sqlitedatabase == null)
        {
            return;
        }
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("hit_string", w(map));
        contentvalues.put("hit_time", Long.valueOf(l));
        long l1 = 0L;
        l = l1;
        if (map.containsKey("AppUID"))
        {
            try
            {
                l = Long.parseLong((String)map.get("AppUID"));
            }
            // Misplaced declaration of an exception variable
            catch (Map map)
            {
                l = l1;
            }
        }
        contentvalues.put("hit_app_id", Long.valueOf(l));
        if (s1 == null)
        {
            map = "http://www.google-analytics.com/collect";
        } else
        {
            map = s1;
        }
        if (map.length() == 0)
        {
            aa.z("Empty path: not sending hit");
            return;
        }
        contentvalues.put("hit_url", map);
        try
        {
            sqlitedatabase.insert("hits2", null, contentvalues);
            sO.r(false);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Map map)
        {
            aa.z("Error storing hit");
        }
    }

    private void a(Map map, Collection collection)
    {
label0:
        {
            String s1 = "&_v".substring(1);
            if (collection == null)
            {
                break label0;
            }
            collection = collection.iterator();
            ef ef1;
            do
            {
                if (!collection.hasNext())
                {
                    break label0;
                }
                ef1 = (ef)collection.next();
            } while (!"appendVersion".equals(ef1.getId()));
            map.put(s1, ef1.getValue());
        }
    }

    static String b(ac ac1)
    {
        return ac1.vA;
    }

    static Context c(ac ac1)
    {
        return ac1.mContext;
    }

    private void cV()
    {
        int k = (cX() - vD) + 1;
        if (k > 0)
        {
            List list = s(k);
            aa.y((new StringBuilder()).append("Store full, deleting ").append(list.size()).append(" hits to make room.").toString());
            a((String[])list.toArray(new String[0]));
        }
    }

    static String cY()
    {
        return vx;
    }

    static String w(Map map)
    {
        ArrayList arraylist = new ArrayList(map.size());
        java.util.Map.Entry entry;
        for (map = map.entrySet().iterator(); map.hasNext(); arraylist.add((new StringBuilder()).append(y.encode((String)entry.getKey())).append("=").append(y.encode((String)entry.getValue())).toString()))
        {
            entry = (java.util.Map.Entry)map.next();
        }

        return TextUtils.join("&", arraylist);
    }

    public void a(Map map, long l, String s1, Collection collection)
    {
        cW();
        cV();
        a(map, collection);
        a(map, l, s1);
    }

    void a(String as[])
    {
        if (as != null && as.length != 0) goto _L2; else goto _L1
_L1:
        aa.z("Empty hitIds passed to deleteHits.");
_L4:
        return;
_L2:
        Object obj = L("Error opening database for deleteHits.");
        if (obj == null) goto _L4; else goto _L3
_L3:
        String s1 = String.format("HIT_ID in (%s)", new Object[] {
            TextUtils.join(",", Collections.nCopies(as.length, "?"))
        });
        ((SQLiteDatabase) (obj)).delete("hits2", s1, as);
        obj = sO;
        boolean flag;
        if (cX() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        try
        {
            ((e) (obj)).r(flag);
            return;
        }
        catch (SQLiteException sqliteexception)
        {
            aa.z((new StringBuilder()).append("Error deleting hits ").append(as).toString());
        }
        return;
    }

    void b(Collection collection)
    {
        if (collection == null || collection.isEmpty())
        {
            aa.z("Empty/Null collection passed to deleteHits.");
            return;
        }
        String as[] = new String[collection.size()];
        collection = collection.iterator();
        for (int k = 0; collection.hasNext(); k++)
        {
            as[k] = String.valueOf(((x)collection.next()).cP());
        }

        a(as);
    }

    public void bW()
    {
        aa.y("Dispatch running...");
        if (!vz.ch())
        {
            return;
        }
        List list = t(40);
        if (list.isEmpty())
        {
            aa.y("...nothing to dispatch");
            sO.r(true);
            return;
        }
        if (vB == null)
        {
            vB = new ab("_t=dispatch&_v=ma4.0.1", true);
        }
        int k;
        boolean flag;
        if (cX() <= list.size())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        k = vz.a(list, vB, flag);
        aa.y((new StringBuilder()).append("sent ").append(k).append(" of ").append(list.size()).append(" hits").toString());
        b(list.subList(0, Math.min(k, list.size())));
        if (k == list.size() && cX() > 0)
        {
            GoogleAnalytics.getInstance(mContext).dispatchLocalHits();
            return;
        } else
        {
            vB = null;
            return;
        }
    }

    public n bX()
    {
        return vz;
    }

    int cW()
    {
        long l = tg.currentTimeMillis();
        if (l <= vC + 0x5265c00L)
        {
            return 0;
        }
        vC = l;
        Object obj = L("Error opening database for deleteStaleHits.");
        if (obj == null)
        {
            return 0;
        }
        int k = ((SQLiteDatabase) (obj)).delete("hits2", "HIT_TIME < ?", new String[] {
            Long.toString(tg.currentTimeMillis() - 0x9a7ec800L)
        });
        obj = sO;
        boolean flag;
        if (cX() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ((e) (obj)).r(flag);
        return k;
    }

    int cX()
    {
        Object obj;
        obj = L("Error opening database for getNumStoredHits.");
        if (obj == null)
        {
            return 0;
        }
        Cursor cursor = ((SQLiteDatabase) (obj)).rawQuery("SELECT COUNT(*) from hits2", null);
        obj = cursor;
        if (!cursor.moveToFirst()) goto _L2; else goto _L1
_L1:
        obj = cursor;
        long l = cursor.getLong(0);
        int k = (int)l;
_L7:
        SQLiteException sqliteexception;
        Exception exception;
        if (cursor != null)
        {
            cursor.close();
            return k;
        } else
        {
            return k;
        }
        obj;
        cursor = null;
_L5:
        obj = cursor;
        aa.z("Error getting numStoredHits");
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
        k = 0;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void j(long l)
    {
        Object obj = L("Error opening database for clearHits");
        if (obj != null)
        {
            boolean flag;
            if (l == 0L)
            {
                ((SQLiteDatabase) (obj)).delete("hits2", null, null);
            } else
            {
                ((SQLiteDatabase) (obj)).delete("hits2", "hit_app_id = ?", new String[] {
                    Long.valueOf(l).toString()
                });
            }
            obj = sO;
            if (cX() == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            ((e) (obj)).r(flag);
        }
    }

    List s(int k)
    {
        Object obj;
        ArrayList arraylist;
        arraylist = new ArrayList();
        if (k <= 0)
        {
            aa.z("Invalid maxHits specified. Skipping");
            return arraylist;
        }
        obj = L("Error opening database for peekHitIds.");
        if (obj == null)
        {
            return arraylist;
        }
        String s1 = String.format("%s ASC", new Object[] {
            "hit_id"
        });
        String s2 = Integer.toString(k);
        obj = ((SQLiteDatabase) (obj)).query("hits2", new String[] {
            "hit_id"
        }, null, null, null, null, s1, s2);
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
        aa.z((new StringBuilder()).append("Error in peekHits fetching hitIds: ").append(((SQLiteException) (obj1)).getMessage()).toString());
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

    public List t(int k)
    {
        Object obj1;
        Object obj3;
        obj1 = new ArrayList();
        obj3 = L("Error opening database for peekHits");
        if (obj3 != null) goto _L2; else goto _L1
_L1:
        return ((List) (obj1));
_L2:
        Object obj;
        obj = String.format("%s ASC", new Object[] {
            "hit_id"
        });
        String s1 = Integer.toString(k);
        obj = ((SQLiteDatabase) (obj3)).query("hits2", new String[] {
            "hit_id", "hit_time"
        }, null, null, null, null, ((String) (obj)), s1);
        Object obj2 = new ArrayList();
        boolean flag;
        if (((Cursor) (obj)).moveToFirst())
        {
            do
            {
                ((List) (obj2)).add(new x(null, ((Cursor) (obj)).getLong(0), ((Cursor) (obj)).getLong(1)));
                flag = ((Cursor) (obj)).moveToNext();
            } while (flag);
        }
        if (obj != null)
        {
            ((Cursor) (obj)).close();
        }
        obj1 = String.format("%s ASC", new Object[] {
            "hit_id"
        });
        String s2 = Integer.toString(k);
        obj1 = ((SQLiteDatabase) (obj3)).query("hits2", new String[] {
            "hit_id", "hit_string", "hit_url"
        }, null, null, null, null, ((String) (obj1)), s2);
        if (!((Cursor) (obj1)).moveToFirst()) goto _L4; else goto _L3
_L3:
        k = 0;
_L7:
        if (((SQLiteCursor)obj1).getWindow().getNumRows() <= 0) goto _L6; else goto _L5
_L5:
        ((x)((List) (obj2)).get(k)).J(((Cursor) (obj1)).getString(1));
        ((x)((List) (obj2)).get(k)).K(((Cursor) (obj1)).getString(2));
_L8:
        k++;
        boolean flag1 = ((Cursor) (obj1)).moveToNext();
        if (flag1) goto _L7; else goto _L4
_L4:
        if (obj1 != null)
        {
            ((Cursor) (obj1)).close();
        }
        return ((List) (obj2));
        SQLiteException sqliteexception;
        sqliteexception;
        obj = null;
        obj2 = obj1;
        obj1 = sqliteexception;
_L19:
        aa.z((new StringBuilder()).append("Error in peekHits fetching hitIds: ").append(((SQLiteException) (obj1)).getMessage()).toString());
        if (obj != null)
        {
            ((Cursor) (obj)).close();
        }
        return ((List) (obj2));
        obj1;
        obj = null;
_L18:
        if (obj != null)
        {
            ((Cursor) (obj)).close();
        }
        throw obj1;
_L6:
        aa.z(String.format("HitString for hitId %d too large.  Hit will be deleted.", new Object[] {
            Long.valueOf(((x)((List) (obj2)).get(k)).cP())
        }));
          goto _L8
        sqliteexception;
        obj = obj1;
        obj1 = sqliteexception;
_L17:
        aa.z((new StringBuilder()).append("Error in peekHits fetching hitString: ").append(((SQLiteException) (obj1)).getMessage()).toString());
        sqliteexception = new ArrayList();
        k = 0;
        obj1 = ((List) (obj2)).iterator();
_L14:
        if (!((Iterator) (obj1)).hasNext()) goto _L10; else goto _L9
_L9:
        obj2 = (x)((Iterator) (obj1)).next();
        flag1 = TextUtils.isEmpty(((x) (obj2)).cO());
        int l = k;
        if (!flag1) goto _L12; else goto _L11
_L11:
        if (k == 0) goto _L13; else goto _L10
_L10:
        obj1 = sqliteexception;
        if (obj != null)
        {
            ((Cursor) (obj)).close();
            return sqliteexception;
        }
          goto _L1
_L13:
        l = 1;
_L12:
        sqliteexception.add(obj2);
        k = l;
          goto _L14
        obj2;
        obj1 = obj;
        obj = obj2;
_L16:
        if (obj1 != null)
        {
            ((Cursor) (obj1)).close();
        }
        throw obj;
        obj2;
        obj1 = obj;
        obj = obj2;
        continue; /* Loop/switch isn't completed */
        obj;
        if (true) goto _L16; else goto _L15
_L15:
        obj1;
          goto _L17
        obj1;
          goto _L18
        obj1;
          goto _L18
        sqliteexception;
        obj2 = obj1;
        obj1 = sqliteexception;
          goto _L19
        obj1;
          goto _L19
    }

}
