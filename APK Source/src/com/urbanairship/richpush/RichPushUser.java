// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.richpush;

import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.util.UAStringUtil;
import org.json.JSONObject;

// Referenced classes of package com.urbanairship.richpush:
//            RichPushUserPreferences, RichPushManager, RichPushInbox

public class RichPushUser
{

    RichPushUserPreferences a;

    RichPushUser()
    {
        a = new RichPushUserPreferences(UAirship.a().g());
    }

    static void a(String s)
    {
        Object obj = new JSONObject(s);
        s = ((JSONObject) (obj)).optString("user_id");
        obj = ((JSONObject) (obj)).optString("password");
        if (!UAStringUtil.a(s) && !UAStringUtil.a(((String) (obj))))
        {
            Logger.d((new StringBuilder("Updating user attributes for id: ")).append(s).toString());
            RichPushManager.a().b().a.b(s, ((String) (obj)));
            return;
        } else
        {
            Logger.e("Unable to update user. Missing user ID or user token.");
            return;
        }
    }

    public static boolean a()
    {
        String s = RichPushManager.a().b().a.a();
        String s1 = RichPushManager.a().b().a.b();
        return !UAStringUtil.a(s) && !UAStringUtil.a(s1);
    }

    static String b()
    {
        return (new StringBuilder()).append(UAirship.a().h().e).append("api/user/").toString();
    }

    final void a(long l)
    {
        a.a(l);
    }

    final String c()
    {
        return String.format((new StringBuilder()).append(UAirship.a().h().e).append("api/user/%s/").toString(), new Object[] {
            a.a()
        });
    }

    public final RichPushInbox d()
    {
        this;
        JVM INSTR monitorenter ;
        RichPushInbox richpushinbox = RichPushInbox.a();
        this;
        JVM INSTR monitorexit ;
        return richpushinbox;
        Exception exception;
        exception;
        throw exception;
    }

    public final String e()
    {
        return a.a();
    }

    public final String f()
    {
        return a.b();
    }

    final long g()
    {
        return a.c();
    }
}
