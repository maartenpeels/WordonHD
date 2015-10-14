// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.richpush;

import android.database.Cursor;
import android.os.Bundle;
import com.urbanairship.Logger;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONObject;

public class RichPushMessage
    implements Comparable
{

    static final SimpleDateFormat a;
    boolean b;
    boolean c;
    boolean d;
    Bundle e;
    long f;
    Long g;
    String h;
    String i;
    String j;
    String k;
    String l;
    JSONObject m;

    private RichPushMessage(String s)
    {
        b = false;
        h = s;
    }

    private static Bundle a(JSONObject jsonobject)
    {
        Bundle bundle = new Bundle();
        if (jsonobject != null)
        {
            String s;
            for (Iterator iterator = jsonobject.keys(); iterator.hasNext(); bundle.putString(s, jsonobject.getString(s)))
            {
                s = (String)iterator.next();
            }

        }
        return bundle;
    }

    static RichPushMessage a(Cursor cursor)
    {
        RichPushMessage richpushmessage = new RichPushMessage(cursor.getString(cursor.getColumnIndex("message_id")));
        richpushmessage.i = cursor.getString(cursor.getColumnIndex("message_url"));
        richpushmessage.j = cursor.getString(cursor.getColumnIndex("message_body_url"));
        richpushmessage.k = cursor.getString(cursor.getColumnIndex("message_read_url"));
        Object obj;
        boolean flag;
        if (cursor.getInt(cursor.getColumnIndex("unread")) == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        richpushmessage.c = flag;
        if (cursor.getInt(cursor.getColumnIndex("unread_orig")) == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        richpushmessage.d = flag;
        richpushmessage.e = a(new JSONObject(cursor.getString(cursor.getColumnIndex("extra"))));
        richpushmessage.l = cursor.getString(cursor.getColumnIndex("title"));
        richpushmessage.f = a(cursor.getString(cursor.getColumnIndex("timestamp")), Long.valueOf(System.currentTimeMillis())).longValue();
        if (cursor.getInt(cursor.getColumnIndex("deleted")) == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        richpushmessage.b = flag;
        obj = cursor.getString(cursor.getColumnIndex("raw_message_object"));
        if (obj == null)
        {
            obj = new JSONObject();
        } else
        {
            obj = new JSONObject(((String) (obj)));
        }
        richpushmessage.m = ((JSONObject) (obj));
        richpushmessage.g = a(cursor.getString(cursor.getColumnIndex("expiration_timestamp")), ((Long) (null)));
        return richpushmessage;
    }

    private static Long a(String s, Long long1)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_54;
        }
        long l1 = a.parse(s).getTime();
        return Long.valueOf(l1);
        Exception exception;
        exception;
        Logger.e((new StringBuilder("Couldn't parse message date: ")).append(s).append(", defaulting to:").append(long1).append(".").toString());
        return long1;
    }

    private static boolean a(Object obj, Object obj1)
    {
        if (obj == null && obj1 == null)
        {
            return true;
        }
        if (obj == null || obj1 == null)
        {
            return false;
        } else
        {
            return obj.equals(obj1);
        }
    }

    public final String a()
    {
        return h;
    }

    public final boolean b()
    {
        return !c;
    }

    public final Date c()
    {
        return new Date(f);
    }

    public final volatile int compareTo(Object obj)
    {
        obj = (RichPushMessage)obj;
        return h.compareTo(((RichPushMessage) (obj)).h);
    }

    public final boolean d()
    {
        if (g == null)
        {
            return false;
        }
        return System.currentTimeMillis() >= g.longValue();
    }

    public final boolean e()
    {
        return b;
    }

    public final boolean equals(Object obj)
    {
        if (obj == null || !(obj instanceof RichPushMessage))
        {
            return false;
        }
        obj = (RichPushMessage)obj;
        if (this == obj)
        {
            return true;
        }
        return a(h, ((RichPushMessage) (obj)).h) && a(j, ((RichPushMessage) (obj)).j) && a(k, ((RichPushMessage) (obj)).k) && a(i, ((RichPushMessage) (obj)).i) && a(e, ((RichPushMessage) (obj)).e) && c == ((RichPushMessage) (obj)).c && f == ((RichPushMessage) (obj)).f;
    }

    public final int hashCode()
    {
        int i1;
        int j1;
        if (c)
        {
            i1 = 0;
        } else
        {
            i1 = 1;
        }
        if (b)
        {
            j1 = 0;
        } else
        {
            j1 = 1;
        }
        return ((i1 + 629) * 37 + j1) * 37 + h.hashCode();
    }

    static 
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);
        a = simpledateformat;
        simpledateformat.setTimeZone(TimeZone.getTimeZone("UTC"));
    }
}
