// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;


// Referenced classes of package com.chartboost.sdk.impl:
//            ca, cc

public class bz
{

    public static String a(Object obj)
    {
        StringBuilder stringbuilder = new StringBuilder();
        a(obj, stringbuilder);
        return stringbuilder.toString();
    }

    public static void a(Object obj, StringBuilder stringbuilder)
    {
        ca.a().a(obj, stringbuilder);
    }

    static void a(StringBuilder stringbuilder, String s)
    {
        stringbuilder.append("\"");
        int i = 0;
        while (i < s.length()) 
        {
            char c = s.charAt(i);
            if (c == '\\')
            {
                stringbuilder.append("\\\\");
            } else
            if (c == '"')
            {
                stringbuilder.append("\\\"");
            } else
            if (c == '\n')
            {
                stringbuilder.append("\\n");
            } else
            if (c == '\r')
            {
                stringbuilder.append("\\r");
            } else
            if (c == '\t')
            {
                stringbuilder.append("\\t");
            } else
            if (c == '\b')
            {
                stringbuilder.append("\\b");
            } else
            if (c >= ' ')
            {
                stringbuilder.append(c);
            }
            i++;
        }
        stringbuilder.append("\"");
    }
}
