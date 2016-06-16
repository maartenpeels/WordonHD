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

final class af
    implements FREFunction
{

    final p a;

    private af(p p1)
    {
        a = p1;
        super();
    }

    af(p p1, byte byte0)
    {
        this(p1);
    }

    public final FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        try
        {
            long l = (long)afreobject[0].getAsDouble();
            long l1 = (long)afreobject[1].getAsDouble();
            frecontext = a;
            p.a(l, l1);
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
