// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.b;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.tagmanager:
//            m, dh

class ba
{

    public static cq.c bG(String s)
        throws JSONException
    {
        s = k(new JSONObject(s));
        cq.d d = cq.c.lh();
        for (int i = 0; i < ((com.google.android.gms.internal.d.a) (s)).fP.length; i++)
        {
            d.a(cq.a.ld().b(b.cI.toString(), ((com.google.android.gms.internal.d.a) (s)).fP[i]).b(b.cx.toString(), dh.bX(m.ka())).b(m.kb(), ((com.google.android.gms.internal.d.a) (s)).fQ[i]).lg());
        }

        return d.lk();
    }

    private static com.google.android.gms.internal.d.a k(Object obj)
        throws JSONException
    {
        return dh.r(l(obj));
    }

    static Object l(Object obj)
        throws JSONException
    {
        if (obj instanceof JSONArray)
        {
            throw new RuntimeException("JSONArrays are not supported");
        }
        if (JSONObject.NULL.equals(obj))
        {
            throw new RuntimeException("JSON nulls are not supported");
        }
        if (obj instanceof JSONObject)
        {
            obj = (JSONObject)obj;
            HashMap hashmap = new HashMap();
            String s;
            for (Iterator iterator = ((JSONObject) (obj)).keys(); iterator.hasNext(); hashmap.put(s, l(((JSONObject) (obj)).get(s))))
            {
                s = (String)iterator.next();
            }

            return hashmap;
        } else
        {
            return obj;
        }
    }
}
