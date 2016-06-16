// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

// Referenced classes of package com.chartboost.sdk.impl:
//            dc

abstract class db
    implements Serializable, ConcurrentMap
{
    protected static abstract class a
        implements Collection
    {

        abstract Collection a();

        public final boolean add(Object obj)
        {
            throw new UnsupportedOperationException();
        }

        public final boolean addAll(Collection collection)
        {
            throw new UnsupportedOperationException();
        }

        public final boolean contains(Object obj)
        {
            return a().contains(obj);
        }

        public final boolean containsAll(Collection collection)
        {
            return a().containsAll(collection);
        }

        public boolean equals(Object obj)
        {
            return a().equals(obj);
        }

        public int hashCode()
        {
            return a().hashCode();
        }

        public final boolean isEmpty()
        {
            return a().isEmpty();
        }

        public final Iterator iterator()
        {
            return new f(a().iterator());
        }

        public final int size()
        {
            return a().size();
        }

        public final Object[] toArray()
        {
            return a().toArray();
        }

        public final Object[] toArray(Object aobj[])
        {
            return a().toArray(aobj);
        }

        public String toString()
        {
            return a().toString();
        }

        protected a()
        {
        }
    }

    private class b extends a
        implements Set
    {

        final db a;

        Collection a()
        {
            return db.a(a).entrySet();
        }

        public void clear()
        {
            db.b(a).lock();
            Map map = a.a();
            map.entrySet().clear();
            a.b(map);
            db.b(a).unlock();
            return;
            Exception exception;
            exception;
            db.b(a).unlock();
            throw exception;
        }

        public boolean remove(Object obj)
        {
            db.b(a).lock();
            boolean flag = contains(obj);
            if (!flag)
            {
                db.b(a).unlock();
                return false;
            }
            Map map = a.a();
            flag = map.entrySet().remove(obj);
            a.b(map);
            db.b(a).unlock();
            return flag;
            obj;
            a.b(map);
            throw obj;
            obj;
            db.b(a).unlock();
            throw obj;
        }

        public boolean removeAll(Collection collection)
        {
            db.b(a).lock();
            Map map = a.a();
            boolean flag = map.entrySet().removeAll(collection);
            a.b(map);
            db.b(a).unlock();
            return flag;
            collection;
            a.b(map);
            throw collection;
            collection;
            db.b(a).unlock();
            throw collection;
        }

        public boolean retainAll(Collection collection)
        {
            db.b(a).lock();
            Map map = a.a();
            boolean flag = map.entrySet().retainAll(collection);
            a.b(map);
            db.b(a).unlock();
            return flag;
            collection;
            a.b(map);
            throw collection;
            collection;
            db.b(a).unlock();
            throw collection;
        }

        private b()
        {
            a = db.this;
            super();
        }

    }

    final class c extends h
        implements Serializable
    {

        final db a;

        public Set a()
        {
            return Collections.unmodifiableSet(db.a(a).keySet());
        }

        public Set b()
        {
            return Collections.unmodifiableSet(db.a(a).entrySet());
        }

        public Collection c()
        {
            return Collections.unmodifiableCollection(db.a(a).values());
        }

        c()
        {
            a = db.this;
            super();
        }
    }

    private class d extends a
        implements Set
    {

        final db a;

        Collection a()
        {
            return db.a(a).keySet();
        }

        public void clear()
        {
            db.b(a).lock();
            Map map = a.a();
            map.keySet().clear();
            a.b(map);
            db.b(a).unlock();
            return;
            Exception exception;
            exception;
            db.b(a).unlock();
            throw exception;
        }

        public boolean remove(Object obj)
        {
            return a.remove(obj) != null;
        }

        public boolean removeAll(Collection collection)
        {
            db.b(a).lock();
            Map map = a.a();
            boolean flag = map.keySet().removeAll(collection);
            a.b(map);
            db.b(a).unlock();
            return flag;
            collection;
            a.b(map);
            throw collection;
            collection;
            db.b(a).unlock();
            throw collection;
        }

        public boolean retainAll(Collection collection)
        {
            db.b(a).lock();
            Map map = a.a();
            boolean flag = map.keySet().retainAll(collection);
            a.b(map);
            db.b(a).unlock();
            return flag;
            collection;
            a.b(map);
            throw collection;
            collection;
            db.b(a).unlock();
            throw collection;
        }

        private d()
        {
            a = db.this;
            super();
        }

    }

    final class e extends h
        implements Serializable
    {

        final db a;
        private final transient d b;
        private final transient b c;
        private final transient g d;

        public Set a()
        {
            return b;
        }

        public Set b()
        {
            return c;
        }

        public Collection c()
        {
            return d;
        }

        e()
        {
            a = db.this;
            super();
            b = a. new d();
            c = a. new b();
            d = a. new g();
        }
    }

    private static class f
        implements Iterator
    {

        private final Iterator a;

        public boolean hasNext()
        {
            return a.hasNext();
        }

        public Object next()
        {
            return a.next();
        }

        public void remove()
        {
            throw new UnsupportedOperationException();
        }

        public f(Iterator iterator)
        {
            a = iterator;
        }
    }

    private final class g extends a
    {

        final db a;

        Collection a()
        {
            return db.a(a).values();
        }

        public void clear()
        {
            db.b(a).lock();
            Map map = a.a();
            map.values().clear();
            a.b(map);
            db.b(a).unlock();
            return;
            Exception exception;
            exception;
            db.b(a).unlock();
            throw exception;
        }

        public boolean remove(Object obj)
        {
            db.b(a).lock();
            boolean flag = contains(obj);
            if (!flag)
            {
                db.b(a).unlock();
                return false;
            }
            Map map = a.a();
            flag = map.values().remove(obj);
            a.b(map);
            db.b(a).unlock();
            return flag;
            obj;
            a.b(map);
            throw obj;
            obj;
            db.b(a).unlock();
            throw obj;
        }

        public boolean removeAll(Collection collection)
        {
            db.b(a).lock();
            Map map = a.a();
            boolean flag = map.values().removeAll(collection);
            a.b(map);
            db.b(a).unlock();
            return flag;
            collection;
            a.b(map);
            throw collection;
            collection;
            db.b(a).unlock();
            throw collection;
        }

        public boolean retainAll(Collection collection)
        {
            db.b(a).lock();
            Map map = a.a();
            boolean flag = map.values().retainAll(collection);
            a.b(map);
            db.b(a).unlock();
            return flag;
            collection;
            a.b(map);
            throw collection;
            collection;
            db.b(a).unlock();
            throw collection;
        }

        private g()
        {
            a = db.this;
            super();
        }

    }

    public static abstract class h
    {

        abstract Set a();

        abstract Set b();

        abstract Collection c();

        h()
        {
        }
    }

    public static abstract class h.a extends Enum
    {

        public static final h.a a;
        public static final h.a b;
        private static final h.a c[];

        public static h.a valueOf(String s)
        {
            return (h.a)Enum.valueOf(com/chartboost/sdk/impl/db$h$a, s);
        }

        public static h.a[] values()
        {
            return (h.a[])c.clone();
        }

        abstract h a(db db1);

        static 
        {
            a = new h.a("STABLE", 0) {

                h a(db db1)
                {
                    db1.getClass();
                    return db1. new c();
                }

            };
            b = new h.a("LIVE", 1) {

                h a(db db1)
                {
                    db1.getClass();
                    return db1. new e();
                }

            };
            c = (new h.a[] {
                a, b
            });
        }

        private h.a(String s, int i)
        {
            super(s, i);
        }

    }


    private volatile Map a;
    private final transient Lock b = new ReentrantLock();
    private final h c;

    protected db(Map map, h.a a1)
    {
        a = (Map)dc.a("delegate", a((Map)dc.a("map", map)));
        c = ((h.a)dc.a("viewType", a1)).a(this);
    }

    static Map a(db db1)
    {
        return db1.a;
    }

    private boolean a(Object obj, Object obj1)
    {
        if (obj == null)
        {
            return obj1 == null;
        } else
        {
            return obj.equals(obj1);
        }
    }

    static Lock b(db db1)
    {
        return db1.b;
    }

    protected Map a()
    {
        b.lock();
        Map map = a(a);
        b.unlock();
        return map;
        Exception exception;
        exception;
        b.unlock();
        throw exception;
    }

    abstract Map a(Map map);

    protected void b(Map map)
    {
        a = map;
    }

    public final void clear()
    {
        b.lock();
        b(a(Collections.emptyMap()));
        b.unlock();
        return;
        Exception exception;
        exception;
        b.unlock();
        throw exception;
    }

    public final boolean containsKey(Object obj)
    {
        return a.containsKey(obj);
    }

    public final boolean containsValue(Object obj)
    {
        return a.containsValue(obj);
    }

    public final Set entrySet()
    {
        return c.b();
    }

    public final boolean equals(Object obj)
    {
        return a.equals(obj);
    }

    public final Object get(Object obj)
    {
        return a.get(obj);
    }

    public final int hashCode()
    {
        return a.hashCode();
    }

    public final boolean isEmpty()
    {
        return a.isEmpty();
    }

    public final Set keySet()
    {
        return c.a();
    }

    public final Object put(Object obj, Object obj1)
    {
        b.lock();
        Map map = a();
        obj = map.put(obj, obj1);
        b(map);
        b.unlock();
        return obj;
        obj;
        b(map);
        throw obj;
        obj;
        b.unlock();
        throw obj;
    }

    public final void putAll(Map map)
    {
        b.lock();
        Map map1 = a();
        map1.putAll(map);
        b(map1);
        b.unlock();
        return;
        map;
        b.unlock();
        throw map;
    }

    public Object putIfAbsent(Object obj, Object obj1)
    {
        b.lock();
        Map map;
        if (a.containsKey(obj))
        {
            break MISSING_BLOCK_LABEL_72;
        }
        map = a();
        obj = map.put(obj, obj1);
        b(map);
        b.unlock();
        return obj;
        obj;
        b(map);
        throw obj;
        obj;
        b.unlock();
        throw obj;
        obj = a.get(obj);
        b.unlock();
        return obj;
    }

    public final Object remove(Object obj)
    {
        b.lock();
        boolean flag = a.containsKey(obj);
        if (!flag)
        {
            b.unlock();
            return null;
        }
        Map map = a();
        obj = map.remove(obj);
        b(map);
        b.unlock();
        return obj;
        obj;
        b(map);
        throw obj;
        obj;
        b.unlock();
        throw obj;
    }

    public boolean remove(Object obj, Object obj1)
    {
        b.lock();
        if (!a.containsKey(obj) || !a(obj1, a.get(obj)))
        {
            break MISSING_BLOCK_LABEL_69;
        }
        obj1 = a();
        ((Map) (obj1)).remove(obj);
        b(((Map) (obj1)));
        b.unlock();
        return true;
        b.unlock();
        return false;
        obj;
        b.unlock();
        throw obj;
    }

    public Object replace(Object obj, Object obj1)
    {
        b.lock();
        boolean flag = a.containsKey(obj);
        if (!flag)
        {
            b.unlock();
            return null;
        }
        Map map = a();
        obj = map.put(obj, obj1);
        b(map);
        b.unlock();
        return obj;
        obj;
        b(map);
        throw obj;
        obj;
        b.unlock();
        throw obj;
    }

    public boolean replace(Object obj, Object obj1, Object obj2)
    {
        b.lock();
        boolean flag;
        if (!a.containsKey(obj))
        {
            break MISSING_BLOCK_LABEL_44;
        }
        flag = a(obj1, a.get(obj));
        if (flag)
        {
            break MISSING_BLOCK_LABEL_55;
        }
        b.unlock();
        return false;
        obj1 = a();
        ((Map) (obj1)).put(obj, obj2);
        b(((Map) (obj1)));
        b.unlock();
        return true;
        obj;
        b.unlock();
        throw obj;
    }

    public final int size()
    {
        return a.size();
    }

    public String toString()
    {
        return a.toString();
    }

    public final Collection values()
    {
        return c.c();
    }
}
