// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package so.cuo.platform.chartboost.fun;

import android.util.Log;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREInvalidObjectException;
import com.adobe.fre.FREObject;
import com.adobe.fre.FRETypeMismatchException;
import com.adobe.fre.FREWrongThreadException;
import so.cuo.platform.chartboost.ChartboostContext;

public abstract class AneFun
    implements FREFunction
{

    public AneFun()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        try
        {
            frecontext = doCall((ChartboostContext)frecontext, afreobject);
        }
        // Misplaced declaration of an exception variable
        catch (FREContext frecontext)
        {
            frecontext.printStackTrace();
            return null;
        }
        return frecontext;
    }

    protected FREObject doCall(ChartboostContext chartboostcontext, FREObject afreobject[])
    {
        return null;
    }

    protected boolean getBoolean(FREObject afreobject[], int i)
    {
        if (i < 0 || i > afreobject.length - 1)
        {
            return false;
        }
        if (afreobject[i] == null)
        {
            return false;
        }
        boolean flag = afreobject[i].getAsBool();
        return flag;
        afreobject;
        afreobject.printStackTrace();
_L2:
        Log.d("ane", "error getBoolean");
        return false;
        afreobject;
        afreobject.printStackTrace();
        continue; /* Loop/switch isn't completed */
        afreobject;
        afreobject.printStackTrace();
        continue; /* Loop/switch isn't completed */
        afreobject;
        afreobject.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected int getInt(FREObject afreobject[], int i)
    {
        if (i < 0 || i > afreobject.length - 1)
        {
            return 0;
        }
        if (afreobject[i] == null)
        {
            return 0;
        }
        i = afreobject[i].getAsInt();
        return i;
        afreobject;
        afreobject.printStackTrace();
_L2:
        Log.d("ane", "error getInt");
        return 0;
        afreobject;
        afreobject.printStackTrace();
        continue; /* Loop/switch isn't completed */
        afreobject;
        afreobject.printStackTrace();
        continue; /* Loop/switch isn't completed */
        afreobject;
        afreobject.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected String getString(FREObject afreobject[], int i)
    {
        if (i < 0 || i > afreobject.length - 1)
        {
            return null;
        }
        if (afreobject[i] == null)
        {
            return null;
        }
        afreobject = afreobject[i].getAsString();
        return afreobject;
        afreobject;
        afreobject.printStackTrace();
_L2:
        Log.d("ane", "error getString");
        return null;
        afreobject;
        afreobject.printStackTrace();
        continue; /* Loop/switch isn't completed */
        afreobject;
        afreobject.printStackTrace();
        continue; /* Loop/switch isn't completed */
        afreobject;
        afreobject.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }
}
