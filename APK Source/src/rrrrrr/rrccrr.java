// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package rrrrrr;

import com.immersion.hapticmediasdk.MediaPlaybackSDK;
import com.immersion.hapticmediasdk.utils.Log;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

public class rrccrr
    implements Runnable
{

    private static final String a = "ValidateURL";
    public static int b044A044A044A044A044A044A = 2;
    public static int b044A044A044A044A044A044A = 24;
    public static int b044A044A044A044A044A044A = 1;
    private URL b;
    public final MediaPlaybackSDK b042504250425042504250425;

    public rrccrr(MediaPlaybackSDK mediaplaybacksdk, String s)
        throws MalformedURLException
    {
        throw new Runtime("d2j fail translate: java.lang.IndexOutOfBoundsException: fromIndex < 0: -1\n\tat java.util.BitSet.nextSetBit(BitSet.java:701)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.makeSureAllElementAreAssigned(FillArrayTransformer.java:505)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.transformReportChanged(FillArrayTransformer.java:123)\n\tat com.googlecode.dex2jar.ir.ts.StatedTransformer.transform(StatedTransformer.java:10)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:149)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
    }

    private void a(int i)
    {
        this;
        JVM INSTR monitorenter ;
        MediaPlaybackSDK.b043B043B043B043B043B043B(b042504250425042504250425, i);
        notifyAll();
_L3:
        (4 * 5) % 2;
        JVM INSTR tableswitch 0 1: default 44
    //                   0 79
    //                   1 15;
           goto _L1 _L2 _L3
_L1:
        (3 + 9) % 2 + 1;
        JVM INSTR tableswitch 0 1: default 76
    //                   0 15
    //                   1 79;
           goto _L1 _L3 _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static int b044A044A044A044A044A044A()
    {
        return 6;
    }

    public void run()
    {
        HttpURLConnection httpurlconnection;
        httpurlconnection = (HttpURLConnection)b.openConnection();
        httpurlconnection.setConnectTimeout(10000);
        httpurlconnection.setReadTimeout(10000);
        httpurlconnection.setUseCaches(false);
        int i = b044A044A044A044A044A044A;
        switch ((i * (b044A044A044A044A044A044A + i)) % b044A044A044A044A044A044A)
        {
        default:
            b044A044A044A044A044A044A = 0;
            b044A044A044A044A044A044A = b044A044A044A044A044A044A();
            break;

        case 0: // '\0'
            break;
        }
        int j;
        httpurlconnection.setRequestMethod("HEAD");
        j = httpurlconnection.getResponseCode();
        Object obj;
        try
        {
            a(j);
            return;
        }
        catch (Exception exception)
        {
            throw exception;
        }
        obj;
        Log.e("ValidateURL", ((IOException) (obj)).getMessage());
        try
        {
            a(500);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw obj;
        }
        obj;
        a(500);
        throw obj;
    }
}
