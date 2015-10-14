// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.actions;

import com.urbanairship.Logger;
import com.urbanairship.actions.tags.AddTagsAction;
import com.urbanairship.actions.tags.RemoveTagsAction;
import com.urbanairship.util.UAStringUtil;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.urbanairship.actions:
//            OpenExternalUrlAction, DeepLinkAction, LandingPageAction, Action

public final class ActionRegistry
{

    private static ActionRegistry b = new ActionRegistry();
    private Map a;

    ActionRegistry()
    {
        a = new HashMap();
    }

    private transient Entry a(Action action, String as[])
    {
        boolean flag;
        flag = false;
        if (action == null)
        {
            Logger.e("Unable to register null action");
            return null;
        }
        if (as == null || as.length == 0)
        {
            Logger.e("A name is required to register an action");
            return null;
        }
        int k = as.length;
        for (int i = 0; i < k; i++)
        {
            if (UAStringUtil.a(as[i]))
            {
                Logger.e("Unable to register action because one or more of the names was null or empty.");
                return null;
            }
        }

        Map map = a;
        map;
        JVM INSTR monitorenter ;
        int l;
        action = new Entry(action, as, (byte)0);
        l = as.length;
        int j = ((flag) ? 1 : 0);
_L2:
        String s;
        if (j >= l)
        {
            break MISSING_BLOCK_LABEL_161;
        }
        s = as[j];
        Entry entry;
        if (UAStringUtil.a(s))
        {
            break MISSING_BLOCK_LABEL_170;
        }
        entry = (Entry)a.remove(s);
        if (entry == null)
        {
            break MISSING_BLOCK_LABEL_145;
        }
        Entry.a(entry, s);
        a.put(s, action);
        break MISSING_BLOCK_LABEL_170;
        map;
        JVM INSTR monitorexit ;
        return action;
        action;
        throw action;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static ActionRegistry a()
    {
        return b;
    }

    public final Entry a(String s)
    {
        if (UAStringUtil.a(s))
        {
            return null;
        }
        synchronized (a)
        {
            s = (Entry)a.get(s);
        }
        return s;
    }

    public final void b()
    {
        a(new OpenExternalUrlAction(), new String[] {
            "open_external_url_action", "^u"
        });
        a(new DeepLinkAction(), new String[] {
            "deep_link_action", "^d"
        });
        a(new LandingPageAction(), new String[] {
            "landing_page_action", "^p"
        }).a(new _cls1());
        _cls2 _lcls2 = new _cls2();
        a(new AddTagsAction(), new String[] {
            "add_tags_action", "^+t"
        }).a(_lcls2);
        a(new RemoveTagsAction(), new String[] {
            "remove_tags_action", "^-t"
        }).a(_lcls2);
    }


    private class Entry
    {

        private List a;
        private Action b;
        private Predicate c;
        private Map d;

        static void a(Entry entry, String s)
        {
            synchronized (entry.a)
            {
                entry.a.remove(s);
            }
        }

        public final Predicate a()
        {
            return c;
        }

        public final Action a(Situation situation)
        {
            if (situation == null)
            {
                situation = b;
            } else
            {
                Action action = (Action)d.get(situation);
                situation = action;
                if (action == null)
                {
                    return b;
                }
            }
            return situation;
        }

        public final void a(Predicate predicate)
        {
            c = predicate;
        }

        public final String toString()
        {
            return (new StringBuilder("Action Entry: ")).append(a).toString();
        }

        private Entry(Action action, String as[])
        {
            d = new ConcurrentHashMap();
            b = action;
            a = new ArrayList(Arrays.asList(as));
        }

        Entry(Action action, String as[], byte byte0)
        {
            this(action, as);
        }
    }


    private class _cls1
        implements Predicate
    {

        final ActionRegistry a;

        public boolean apply(Object obj)
        {
            obj = (ActionArguments)obj;
            if (Situation.b.equals(((ActionArguments) (obj)).b()))
            {
                long l = UAirship.a().l().a();
                if (System.currentTimeMillis() - l > 0x240c8400L)
                {
                    return false;
                }
            }
            return true;
        }

        _cls1()
        {
            a = ActionRegistry.this;
            super();
        }
    }


    private class _cls2
        implements Predicate
    {

        final ActionRegistry a;

        public boolean apply(Object obj)
        {
            obj = (ActionArguments)obj;
            return !Situation.b.equals(((ActionArguments) (obj)).b());
        }

        _cls2()
        {
            a = ActionRegistry.this;
            super();
        }
    }

}
