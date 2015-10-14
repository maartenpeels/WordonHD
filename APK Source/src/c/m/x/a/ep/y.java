// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.ep;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;

// Referenced classes of package c.m.x.a.ep:
//            p

final class y
    implements FREFunction
{

    final p a;

    y(p p1)
    {
        a = p1;
        super();
    }

    public final FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        try
        {
            p.a(a);
        }
        // Misplaced declaration of an exception variable
        catch (FREContext frecontext)
        {
            frecontext.printStackTrace();
        }
        return null;
    }
}
