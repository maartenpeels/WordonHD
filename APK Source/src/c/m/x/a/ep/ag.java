// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.ep;

import android.util.Log;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import java.util.Arrays;
import java.util.HashSet;

// Referenced classes of package c.m.x.a.ep:
//            p

final class ag
    implements FREFunction
{

    final p a;

    private ag(p p1)
    {
        a = p1;
        super();
    }

    ag(p p1, byte byte0)
    {
        this(p1);
    }

    public final FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        try
        {
            frecontext = new HashSet(Arrays.asList(afreobject[0].getAsString().split(",")));
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
