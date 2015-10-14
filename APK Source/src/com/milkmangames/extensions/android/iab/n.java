// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.iab;

import android.util.Log;
import c.m.x.a.iab.r;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.milkmangames.extensions.android.iab:
//            i

public final class n
{

    public static JSONObject a(r r1)
    {
        JSONObject jsonobject = new JSONObject();
        a(jsonobject, "itemType", r1.a());
        a(jsonobject, "orderId", r1.b());
        a(jsonobject, "packageName", r1.c());
        a(jsonobject, "sku", r1.d());
        a(jsonobject, "purchaseTime", Long.valueOf(r1.e()));
        a(jsonobject, "purchaseState", Integer.valueOf(r1.f()));
        a(jsonobject, "developerPayload", r1.g());
        a(jsonobject, "token", r1.h());
        a(jsonobject, "signature", r1.j());
        a(jsonobject, "json", r1.i().toString());
        return jsonobject;
    }

    public static void a(JSONObject jsonobject, String s, Object obj)
    {
        try
        {
            jsonobject.putOpt(s, obj);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            Log.e(i.j, (new StringBuilder("Parse error encoding data '")).append(s).append("':").toString());
        }
        jsonobject.printStackTrace();
    }

    public static void a(JSONObject jsonobject, String s, String s1)
    {
        String s2 = "";
        if (s1 == null)
        {
            s1 = s2;
        }
        try
        {
            jsonobject.put(s, s1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            Log.e(i.j, (new StringBuilder("Parse error encoding data '")).append(s).append("':").toString());
        }
        jsonobject.printStackTrace();
    }
}
