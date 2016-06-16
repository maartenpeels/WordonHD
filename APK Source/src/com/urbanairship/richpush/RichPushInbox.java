// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.richpush;

import android.content.Context;
import android.database.Cursor;
import android.os.Handler;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;

// Referenced classes of package com.urbanairship.richpush:
//            RichPushMessageCache, RichPushMessage, RichPushManager, RichPushResolver

public class RichPushInbox
{

    private static RichPushInbox b;
    private static final SentAtRichPushMessageComparator c = new SentAtRichPushMessageComparator();
    ExecutorService a;
    private final List d = new ArrayList();
    private List e;
    private RichPushMessageCache f;

    RichPushInbox()
    {
        e = new ArrayList();
        f = new RichPushMessageCache();
        a = Executors.newSingleThreadExecutor();
        c();
    }

    public static RichPushInbox a()
    {
        com/urbanairship/richpush/RichPushInbox;
        JVM INSTR monitorenter ;
        RichPushInbox richpushinbox;
        if (b == null)
        {
            b = new RichPushInbox();
        }
        richpushinbox = b;
        com/urbanairship/richpush/RichPushInbox;
        JVM INSTR monitorexit ;
        return richpushinbox;
        Exception exception;
        exception;
        throw exception;
    }

    private static RichPushMessage a(Cursor cursor)
    {
        try
        {
            cursor = RichPushMessage.a(cursor);
        }
        // Misplaced declaration of an exception variable
        catch (Cursor cursor)
        {
            Logger.a(cursor);
            return null;
        }
        return cursor;
    }

    static List a(RichPushInbox richpushinbox)
    {
        return richpushinbox.d;
    }

    static List b(RichPushInbox richpushinbox)
    {
        return richpushinbox.e;
    }

    private void c()
    {
        Cursor cursor;
        obj = new ArrayList(d);
        cursor = RichPushManager.a.a();
        if (cursor == null)
        {
            return;
        }
_L2:
        RichPushMessage richpushmessage;
        if (!cursor.moveToNext())
        {
            break; /* Loop/switch isn't completed */
        }
        richpushmessage = a(cursor);
        if (richpushmessage == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        synchronized (f)
        {
            if (!richpushmessage.e() && !richpushmessage.d())
            {
                break MISSING_BLOCK_LABEL_86;
            }
            f.b(richpushmessage);
        }
        continue; /* Loop/switch isn't completed */
        obj;
        throw obj;
        if (!((List) (obj)).contains(richpushmessage.a()))
        {
            break MISSING_BLOCK_LABEL_105;
        }
        richpushmessagecache;
        JVM INSTR monitorexit ;
        continue; /* Loop/switch isn't completed */
        RichPushMessage richpushmessage1 = f.a(richpushmessage.a());
        if (richpushmessage1 != null)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        f.a(richpushmessage);
        richpushmessagecache;
        JVM INSTR monitorexit ;
        continue; /* Loop/switch isn't completed */
        f.b(richpushmessage1);
        richpushmessage.c = richpushmessage1.c;
        f.a(richpushmessage);
        richpushmessagecache;
        JVM INSTR monitorexit ;
        if (true) goto _L2; else goto _L1
_L1:
        cursor.close();
        return;
    }

    private void d()
    {
        (new Handler(UAirship.a().g().getMainLooper())).post(new _cls4());
    }

    public final void a(Set set)
    {
        d.addAll(set);
        a.execute(new _cls3(set));
        RichPushMessageCache richpushmessagecache = f;
        richpushmessagecache;
        JVM INSTR monitorenter ;
        set = set.iterator();
_L2:
        Object obj;
        do
        {
            if (!set.hasNext())
            {
                break MISSING_BLOCK_LABEL_96;
            }
            obj = (String)set.next();
            obj = f.a(((String) (obj)));
        } while (obj == null);
        obj.b = true;
        f.b(((RichPushMessage) (obj)));
        if (true) goto _L2; else goto _L1
_L1:
        set;
        throw set;
        richpushmessagecache;
        JVM INSTR monitorexit ;
        d();
        return;
    }

    final void b()
    {
        c();
        d();
    }


    private class _cls4
        implements Runnable
    {

        final RichPushInbox a;

        public void run()
        {
            List list = RichPushInbox.b(a);
            list;
            JVM INSTR monitorenter ;
            for (Iterator iterator = RichPushInbox.b(a).iterator(); iterator.hasNext(); ((Listener)iterator.next()).a()) { }
            break MISSING_BLOCK_LABEL_54;
            Exception exception;
            exception;
            throw exception;
            list;
            JVM INSTR monitorexit ;
        }

        _cls4()
        {
            a = RichPushInbox.this;
            super();
        }

        private class Listener
        {

            public abstract void a();
        }

    }


    private class _cls3
        implements Runnable
    {

        final Set a;
        final RichPushInbox b;

        public void run()
        {
            RichPushManager.a.c(a);
            RichPushInbox.a(b).removeAll(a);
        }

        _cls3(Set set)
        {
            b = RichPushInbox.this;
            a = set;
            super();
        }
    }


    private class SentAtRichPushMessageComparator
        implements Comparator
    {

        public int compare(Object obj, Object obj1)
        {
            obj = (RichPushMessage)obj;
            return ((RichPushMessage)obj1).c().compareTo(((RichPushMessage) (obj)).c());
        }

        SentAtRichPushMessageComparator()
        {
        }
    }

}
