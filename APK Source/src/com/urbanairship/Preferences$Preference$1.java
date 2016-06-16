// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship;

import android.database.ContentObserver;

// Referenced classes of package com.urbanairship:
//            Logger

class a extends ContentObserver
{

    final a a;

    public void onChange(boolean flag)
    {
        super.onChange(flag);
        Logger.b((new StringBuilder("Preference updated:")).append(a(a)).toString());
        a(a);
    }

    ( )
    {
        a = ;
        super(null);
    }
}
