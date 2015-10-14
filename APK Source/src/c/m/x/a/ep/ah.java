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

final class ah
    implements FREFunction
{

    final p a;

    private ah(p p1)
    {
        a = p1;
        super();
    }

    ah(p p1, byte byte0)
    {
        this(p1);
    }

    public final FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        try
        {
            frecontext = afreobject[0].getAsString();
            afreobject = a;
            p.a(frecontext);
            frecontext = FREObject.newObject(true);
        }
        // Misplaced declaration of an exception variable
        catch (FREContext frecontext)
        {
            Log.e("[PushNotifyEx]", frecontext.getMessage());
            return null;
        }
        return frecontext;
    }
}
