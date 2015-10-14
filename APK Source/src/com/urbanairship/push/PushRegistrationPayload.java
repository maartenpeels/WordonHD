// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.push;

import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class PushRegistrationPayload
{

    private String a;
    private String b;
    private Set c;

    public PushRegistrationPayload(String s, String s1, Set set)
    {
        a = s;
        c = set;
        b = s1;
    }

    public final JSONObject a()
    {
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("alias", a);
        if (c != null)
        {
            jsonobject.put("tags", new JSONArray(c));
        }
        jsonobject.put("gcm_registration_id", b);
        return jsonobject;
    }
}
