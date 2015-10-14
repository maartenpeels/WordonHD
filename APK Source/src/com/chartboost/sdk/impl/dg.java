// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.chartboost.sdk.impl:
//            db

abstract class dg extends db
{
    public static class a
    {

        private db.h.a a;
        private final Map b = new HashMap();

        public dg a()
        {
            return new b(b, a);
        }

        a()
        {
            a = db.h.a.a;
        }
    }

    static class b extends dg
    {

        public Map a(Map map)
        {
            return new HashMap(map);
        }

        b(Map map, db.h.a a1)
        {
            super(map, a1);
        }
    }


    protected dg(Map map, db.h.a a1)
    {
        super(map, a1);
    }

    public static a b()
    {
        return new a();
    }

    public static dg c()
    {
        return b().a();
    }
}
