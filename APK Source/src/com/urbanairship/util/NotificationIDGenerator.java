// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;

public class NotificationIDGenerator
{

    private static int a = 1000;
    private static int b = 40;

    public NotificationIDGenerator()
    {
    }

    public static int a()
    {
        int i = a;
        i = b().getInt("count", i) + 1;
        if (i < a + b)
        {
            Logger.b("Incrementing notification id count");
            a("count", i);
        } else
        {
            Logger.b("Resetting notification id count");
            a("count", a);
        }
        Logger.b((new StringBuilder("Notification id: ")).append(i).toString());
        return i;
    }

    private static void a(String s, int i)
    {
        android.content.SharedPreferences.Editor editor = b().edit();
        editor.putInt(s, i);
        editor.commit();
    }

    private static SharedPreferences b()
    {
        return UAirship.a().g().getSharedPreferences("com.urbanairship.notificationidgenerator", 0);
    }

}
