// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.coremobile;

import android.util.Log;
import android.widget.EditText;
import org.json.JSONObject;

// Referenced classes of package com.milkmangames.extensions.android.coremobile:
//            b

final class y
{

    public final EditText a;
    public final EditText b;
    public final int c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final boolean i;
    final b j;

    public y(b b1, int k, String s, String s1, String s2, String s3, String s4, 
            boolean flag, EditText edittext, EditText edittext1)
    {
        j = b1;
        super();
        if (edittext == null)
        {
            b1 = null;
        } else
        {
            b1 = edittext;
        }
        a = b1;
        if (edittext1 == null)
        {
            b1 = null;
        } else
        {
            b1 = edittext1;
        }
        b = b1;
        c = k;
        d = s;
        e = s1;
        g = s2;
        f = s3;
        h = s4;
        i = flag;
    }

    public final void a(boolean flag)
    {
        JSONObject jsonobject = new JSONObject();
        Object obj;
        String s;
        String s1;
        String s2;
        String s3;
        String s4;
        if (c == 1)
        {
            s4 = a.getText().toString();
            s3 = "";
            s2 = "";
        } else
        if (c == 2)
        {
            s3 = a.getText().toString();
            s2 = b.getText().toString();
            s4 = "";
        } else
        {
            s2 = "";
            s3 = "";
            s4 = "";
        }
        if (flag)
        {
            obj = j;
            if (!com.milkmangames.extensions.android.coremobile.b.a(e))
            {
                s1 = e;
                obj = e;
                s = d;
            } else
            {
                s1 = d;
                s = d;
                obj = "";
            }
        } else
        {
            obj = j;
            if (!com.milkmangames.extensions.android.coremobile.b.a(e))
            {
                s = e;
                s1 = e;
                obj = d;
            } else
            {
                s = e;
                s1 = e;
                obj = "";
            }
        }
        try
        {
            jsonobject.put("title", g);
            jsonobject.put("message", f);
            jsonobject.put("selected", s);
            jsonobject.put("cancelLabel", s1);
            jsonobject.put("otherLabel", obj);
            jsonobject.put("input", s4);
            jsonobject.put("isSecret", i);
            jsonobject.put("user", s3);
            jsonobject.put("pass", s2);
            jsonobject.put("requestID", h);
        }
        catch (Exception exception)
        {
            Log.d(b.a, "JSON Process exception.");
        }
        com.milkmangames.extensions.android.coremobile.b.a(j, "ALERT_DISMISSED", jsonobject.toString());
    }
}
