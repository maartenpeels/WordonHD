// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.coremobile;

import android.content.DialogInterface;
import android.util.Log;
import org.json.JSONObject;

// Referenced classes of package com.milkmangames.extensions.android.coremobile:
//            b

final class n
    implements android.content.DialogInterface.OnCancelListener
{

    final String a;
    final String b;
    final String c;
    final String d;
    final boolean e;
    final String f;
    final b g;

    n(b b1, String s, String s1, String s2, String s3, boolean flag, String s4)
    {
        g = b1;
        a = s;
        b = s1;
        c = s2;
        d = s3;
        e = flag;
        f = s4;
        super();
    }

    public final void onCancel(DialogInterface dialoginterface)
    {
        Log.d(b.a, "On Cancel");
        JSONObject jsonobject = new JSONObject();
        dialoginterface = g;
        String s;
        if (!com.milkmangames.extensions.android.coremobile.b.a(a))
        {
            dialoginterface = a;
            s = b;
        } else
        {
            dialoginterface = b;
            s = "";
        }
        try
        {
            jsonobject.put("title", c);
            jsonobject.put("message", d);
            jsonobject.put("selected", dialoginterface);
            jsonobject.put("cancelLabel", "");
            jsonobject.put("otherLabel", s);
            jsonobject.put("input", "");
            jsonobject.put("isSecret", e);
            jsonobject.put("user", "");
            jsonobject.put("pass", "");
            jsonobject.put("requestID", f);
        }
        // Misplaced declaration of an exception variable
        catch (DialogInterface dialoginterface)
        {
            Log.d(b.a, "JSON Process exception.");
        }
        com.milkmangames.extensions.android.coremobile.b.a(g, "ALERT_DISMISSED", jsonobject.toString());
    }
}
