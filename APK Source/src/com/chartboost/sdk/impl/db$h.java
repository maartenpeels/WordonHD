// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Collection;
import java.util.Set;

// Referenced classes of package com.chartboost.sdk.impl:
//            db

public static abstract class a
{
    public static abstract class a extends Enum
    {

        public static final a a;
        public static final a b;
        private static final a c[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(com/chartboost/sdk/impl/db$h$a, s);
        }

        public static a[] values()
        {
            return (a[])c.clone();
        }

        abstract db.h a(db db1);

        static 
        {
            a = new a("STABLE", 0) {

                db.h a(db db1)
                {
                    db1.getClass();
                    return new db.c(db1);
                }

            };
            b = new a("LIVE", 1) {

                db.h a(db db1)
                {
                    db1.getClass();
                    return new db.e(db1);
                }

            };
            c = (new a[] {
                a, b
            });
        }

        private a(String s, int i)
        {
            super(s, i);
        }

        a(String s, int i, db._cls1 _pcls1)
        {
            this(s, i);
        }
    }


    abstract Set a();

    abstract Set b();

    abstract Collection c();

    a()
    {
    }
}
