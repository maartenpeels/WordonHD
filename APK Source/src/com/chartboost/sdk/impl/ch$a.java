// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.chartboost.sdk.impl:
//            ch

private static final class l extends Enum
{

    public static final k a;
    public static final k b;
    public static final k c;
    public static final k d;
    public static final k e;
    public static final k f;
    public static final k g;
    public static final k h;
    public static final k i;
    private static final Map m;
    private static final k n[];
    public final int j;
    public final char k;
    public final String l;

    public static l valueOf(String s)
    {
        return (l)Enum.valueOf(com/chartboost/sdk/impl/ch$a, s);
    }

    public static l[] values()
    {
        return (l[])n.clone();
    }

    static 
    {
        int i1 = 0;
        a = new <init>("CANON_EQ", 0, 128, 'c', "Pattern.CANON_EQ");
        b = new <init>("UNIX_LINES", 1, 1, 'd', "Pattern.UNIX_LINES");
        c = new <init>("GLOBAL", 2, 256, 'g', null);
        d = new <init>("CASE_INSENSITIVE", 3, 2, 'i', null);
        e = new <init>("MULTILINE", 4, 8, 'm', null);
        f = new <init>("DOTALL", 5, 32, 's', "Pattern.DOTALL");
        g = new <init>("LITERAL", 6, 16, 't', "Pattern.LITERAL");
        h = new <init>("UNICODE_CASE", 7, 64, 'u', "Pattern.UNICODE_CASE");
        i = new <init>("COMMENTS", 8, 4, 'x', null);
        n = (new n[] {
            a, b, c, d, e, f, g, h, i
        });
        m = new HashMap();
        one aone[] = values();
        for (int j1 = aone.length; i1 < j1; i1++)
        {
            one one = aone[i1];
            m.put(Character.valueOf(one.k), one);
        }

    }

    private (String s, int i1, int j1, char c1, String s1)
    {
        super(s, i1);
        j = j1;
        k = c1;
        l = s1;
    }
}