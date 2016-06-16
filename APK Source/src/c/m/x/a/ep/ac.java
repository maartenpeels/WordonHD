// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.ep;

import android.util.Log;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;

// Referenced classes of package c.m.x.a.ep:
//            p

final class ac
    implements FREFunction
{

    final p a;

    private ac(p p1)
    {
        a = p1;
        super();
    }

    ac(p p1, byte byte0)
    {
        this(p1);
    }

    public final FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        try
        {
            boolean flag = afreobject[1].getAsBool();
            frecontext = afreobject[2].getAsString();
            boolean flag1 = afreobject[3].getAsBool();
            a.a(frecontext, flag, flag1);
            frecontext = FREObject.newObject(true);
        }
        // Misplaced declaration of an exception variable
        catch (FREContext frecontext)
        {
            Log.d("[PushNotifyEx]", "Manual Exception");
            Log.e("[PushNotifyEx]", frecontext.getMessage());
            return null;
        }
        return frecontext;
    }
}
