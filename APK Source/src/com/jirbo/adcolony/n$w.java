// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;

import java.util.ArrayList;
import java.util.HashMap;

// Referenced classes of package com.jirbo.adcolony:
//            n

static class >
{

    ArrayList a;
    ArrayList b;
    ArrayList c;
    HashMap d;

    boolean a(ata.g g)
    {
        if (g == null)
        {
            return false;
        }
        ArrayList arraylist = g.d("update");
        a = arraylist;
        if (arraylist == null)
        {
            return false;
        }
        arraylist = g.d("install");
        b = arraylist;
        if (arraylist == null)
        {
            return false;
        }
        g = g.d("session_start");
        c = g;
        if (g == null)
        {
            return false;
        } else
        {
            d.put("update", a);
            d.put("install", b);
            d.put("session_start", c);
            return true;
        }
    }

    ata.g()
    {
        a = new ArrayList();
        b = new ArrayList();
        c = new ArrayList();
        d = new HashMap();
    }
}
