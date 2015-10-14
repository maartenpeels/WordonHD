// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.iab;

import org.json.JSONObject;

public final class t
{

    String a;
    String b;
    String c;
    String d;
    String e;
    String f;
    String g;

    public t(String s, String s1)
    {
        a = s;
        g = s1;
        s = new JSONObject(g);
        b = s.optString("productId");
        c = s.optString("type");
        d = s.optString("price");
        e = s.optString("title");
        f = s.optString("description");
    }

    public final String a()
    {
        return b;
    }

    public final String b()
    {
        return c;
    }

    public final String c()
    {
        return d;
    }

    public final String d()
    {
        return e;
    }

    public final String e()
    {
        return f;
    }

    public final String f()
    {
        return a;
    }

    public final String toString()
    {
        return (new StringBuilder("SkuDetails:")).append(g).toString();
    }
}
