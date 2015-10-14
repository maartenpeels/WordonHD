// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.chartboost.sdk.impl:
//            db

final class <init> extends <init>
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

    (db db1)
    {
        a = db1;
        super();
    }
}
