// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.ep;

import android.util.Log;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.adobe.fre.FREWrongThreadException;

// Referenced classes of package c.m.x.a.ep:
//            p

final class ab
    implements FREFunction
{

    final p a;

    private ab(p p1)
    {
        a = p1;
        super();
    }

    ab(p p1, byte byte0)
    {
        this(p1);
    }

    public final FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        String s;
        String s1;
        String s2;
        boolean flag;
        boolean flag1;
        boolean flag2;
        try
        {
            frecontext = afreobject[0].getAsString();
        }
        // Misplaced declaration of an exception variable
        catch (FREContext frecontext)
        {
            Log.d("[PushNotifyEx]", "asKey");
            frecontext.printStackTrace();
            frecontext = null;
        }
        try
        {
            s = afreobject[1].getAsString();
        }
        catch (Exception exception)
        {
            Log.d("[PushNotifyEx]", "asCode");
            exception.printStackTrace();
            exception = null;
        }
        try
        {
            flag = afreobject[2].getAsBool();
        }
        catch (Exception exception1)
        {
            Log.d("[PushNotifyEx]", "devBuild");
            exception1.printStackTrace();
            flag = true;
        }
        try
        {
            s1 = afreobject[4].getAsString();
        }
        catch (Exception exception2)
        {
            Log.d("[PushNotifyEx]", "alias");
            exception2.printStackTrace();
            exception2 = null;
        }
        try
        {
            flag1 = afreobject[5].getAsBool();
        }
        catch (Exception exception3)
        {
            Log.d("[PushNotifyEx]", "alert");
            exception3.printStackTrace();
            flag1 = true;
        }
        try
        {
            s2 = afreobject[6].getAsString();
        }
        catch (Exception exception4)
        {
            Log.d("[PushNotifyEx]", "sender");
            exception4.printStackTrace();
            exception4 = null;
        }
        try
        {
            flag2 = afreobject[7].getAsBool();
        }
        // Misplaced declaration of an exception variable
        catch (FREObject afreobject[])
        {
            flag2 = true;
        }
        flag = a.a(frecontext, s, flag, s1, flag1, s2, flag2);
        try
        {
            frecontext = FREObject.newObject(flag);
        }
        // Misplaced declaration of an exception variable
        catch (FREContext frecontext)
        {
            frecontext.printStackTrace();
            return null;
        }
        return frecontext;
    }
}
