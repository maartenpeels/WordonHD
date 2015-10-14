// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package rrrrrr;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.immersion.hapticmediasdk.controllers.FileReaderFactory;
import com.immersion.hapticmediasdk.controllers.HapticPlaybackThread;
import com.immersion.hapticmediasdk.controllers.IHapticFileReader;

// Referenced classes of package rrrrrr:
//            rrcrrr

public class rccrrr extends Handler
{

    public static int b042704270427042704270427 = 16;
    public static int b042704270427042704270427 = 1;
    public static int b042704270427042704270427;
    public final HapticPlaybackThread b044404440444044404440444;

    private rccrrr(HapticPlaybackThread hapticplaybackthread)
    {
        throw new Runtime("d2j fail translate: java.lang.IndexOutOfBoundsException: fromIndex < 0: -1\n\tat java.util.BitSet.nextSetBit(BitSet.java:701)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.makeSureAllElementAreAssigned(FillArrayTransformer.java:505)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.transformReportChanged(FillArrayTransformer.java:123)\n\tat com.googlecode.dex2jar.ir.ts.StatedTransformer.transform(StatedTransformer.java:10)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:149)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
    }

    public rccrrr(HapticPlaybackThread hapticplaybackthread, rrcrrr rrcrrr)
    {
_L2:
        if ((3 + 9) % 2 + 1 != 1)
        {
            continue; /* Loop/switch isn't completed */
        }
_L3:
        this(hapticplaybackthread);
        return;
        if ((4 * 5) % 2 != 0) goto _L2; else goto _L1
_L1:
        if (((b042704270427042704270427 + b042704270427042704270427) * b042704270427042704270427) % b042704270427042704270427() != b042704270427042704270427)
        {
            b042704270427042704270427 = 37;
            b042704270427042704270427 = b044604460446044604460446();
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    public static int b044604460446044604460446()
    {
        return 85;
    }

    public static int b042704270427042704270427()
    {
        return 2;
    }

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 9: default 56
    //                   1 57
    //                   2 115
    //                   3 140
    //                   4 250
    //                   5 266
    //                   6 56
    //                   7 56
    //                   8 274
    //                   9 283;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L1 _L1 _L7 _L8
_L1:
        return;
_L2:
        HapticPlaybackThread.b041104110411041104110411(b044404440444044404440444).removeCallbacks(HapticPlaybackThread.b041104110411041104110411(b044404440444044404440444));
        HapticPlaybackThread.b041104110411041104110411(b044404440444044404440444, message.arg1);
        HapticPlaybackThread.b041104110411041104110411(b044404440444044404440444, message.arg2);
        HapticPlaybackThread.b041104110411041104110411(b044404440444044404440444, 0);
        HapticPlaybackThread.b041104110411041104110411(b044404440444044404440444);
        return;
_L3:
        message = message.getData();
        HapticPlaybackThread.b041104110411041104110411(b044404440444044404440444, message.getInt("playback_timecode"), message.getLong("playback_uptime"));
        return;
_L4:
        if (HapticPlaybackThread.b041104110411041104110411(b044404440444044404440444) == null)
        {
            HapticPlaybackThread.b041104110411041104110411(b044404440444044404440444, FileReaderFactory.getHapticFileReaderInstance(HapticPlaybackThread.b041104110411041104110411(b044404440444044404440444), HapticPlaybackThread.b041104110411041104110411(b044404440444044404440444)));
        }
        int i;
        while ((4 * 5) % 2 != 0 && (4 * 5) % 2 != 0) ;
        if (HapticPlaybackThread.b041104110411041104110411(b044404440444044404440444) != null && HapticPlaybackThread.b041104110411041104110411(b044404440444044404440444) == 0)
        {
            HapticPlaybackThread.b041104110411041104110411(b044404440444044404440444, HapticPlaybackThread.b041104110411041104110411(b044404440444044404440444).getBlockSizeMS());
        }
        if (HapticPlaybackThread.b041104110411041104110411(b044404440444044404440444) != null)
        {
            HapticPlaybackThread.b041104110411041104110411(b044404440444044404440444).setBytesAvailable(message.arg1);
            return;
        }
        if (true) goto _L1; else goto _L9
_L9:
        break; /* Loop/switch isn't completed */
_L5:
        HapticPlaybackThread.b041104110411041104110411(b044404440444044404440444);
        i = 0;
        try
        {
            do
            {
                i /= 0;
            } while (true);
        }
        // Misplaced declaration of an exception variable
        catch (Message message) { }
        break; /* Loop/switch isn't completed */
_L6:
        HapticPlaybackThread.b041104110411041104110411(b044404440444044404440444);
        return;
_L7:
        HapticPlaybackThread.b041104110411041104110411(b044404440444044404440444, message);
        return;
_L8:
        HapticPlaybackThread.b041104110411041104110411(b044404440444044404440444);
        return;
        try
        {
            throw new NullPointerException();
        }
        // Misplaced declaration of an exception variable
        catch (Message message)
        {
            return;
        }
    }
}
