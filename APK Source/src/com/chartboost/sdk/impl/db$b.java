// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.Lock;

// Referenced classes of package com.chartboost.sdk.impl:
//            db

private class <init> extends <init>
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

    private ck(db db1)
    {
        a = db1;
        super();
    }

    <init>(db db1, <init> <init>1)
    {
        this(db1);
    }
}
