// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.iab;

import android.app.Activity;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package c.m.x.a.iab:
//            z

public class x
{

    public Activity m;
    z n;

    public x(Activity activity, z z1)
    {
        m = activity;
        n = z1;
    }

    public final void a(String s, String s1)
    {
        n.a(s, s1);
    }

    public final void a(String s, String s1, int i)
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("errorId", i);
            jsonobject.put("message", s1);
            s1 = jsonobject.toString();
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            s1.printStackTrace();
            s1 = "{'errorId':-1000,'message':'parse failed'}";
        }
        a(s, s1);
    }
}
