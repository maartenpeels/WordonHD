// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;


// Referenced classes of package com.chartboost.sdk.impl:
//            db

public static abstract class <init> extends Enum
{

    public static final b a;
    public static final b b;
    private static final b c[];

    public static <init> valueOf(String s)
    {
        return (<init>)Enum.valueOf(com/chartboost/sdk/impl/db$h$a, s);
    }

    public static <init>[] values()
    {
        return (<init>[])c.clone();
    }

    abstract e a(db db1);

    static 
    {
        a = new db.h.a("STABLE", 0) {

            db.h a(db db1)
            {
                db1.getClass();
                return new db.c(db1);
            }

        };
        b = new db.h.a("LIVE", 1) {

            db.h a(db db1)
            {
                db1.getClass();
                return new db.e(db1);
            }

        };
        c = (new c[] {
            a, b
        });
    }

    private _cls2(String s, int i)
    {
        super(s, i);
    }

    _cls2(String s, int i, _cls2 _pcls2)
    {
        this(s, i);
    }
}
