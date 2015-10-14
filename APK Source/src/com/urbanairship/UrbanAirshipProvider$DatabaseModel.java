// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import com.urbanairship.util.DataManager;
import com.urbanairship.util.UAStringUtil;
import java.util.Arrays;

// Referenced classes of package com.urbanairship:
//            RichPushDataManager, UrbanAirshipProvider, PreferencesDataManager, Logger

class d
{

    DataManager a;
    String b;
    Uri c;
    String d;

    static d a(Context context)
    {
        return new <init>(new RichPushDataManager(context), "richpush", UrbanAirshipProvider.b(), "message_id");
    }

    static <init> b(Context context)
    {
        return new <init>(new PreferencesDataManager(context), "preferences", UrbanAirshipProvider.c(), "_id");
    }

    final void a(Context context, String as[], String s)
    {
        as = Uri.withAppendedPath(c, (new StringBuilder()).append(UAStringUtil.a(Arrays.asList(as), "|")).append("/").append(s).toString());
        Logger.b((new StringBuilder("Notifying of change to ")).append(as.toString()).toString());
        context.getContentResolver().notifyChange(as, null);
    }

    private _cls9(DataManager datamanager, String s, Uri uri, String s1)
    {
        a = datamanager;
        b = s;
        c = uri;
        d = s1;
    }
}
