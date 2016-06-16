// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package rrrrrr;

import com.immersion.hapticmediasdk.controllers.HapticPlaybackThread;

public class crcrrr
    implements Runnable
{

    public static int b042704270427042704270427 = 2;
    public static int b042704270427042704270427 = 0;
    public static int b042704270427042704270427 = 48;
    public static int b042704270427042704270427 = 1;
    public final HapticPlaybackThread b044404440444044404440444;

    public crcrrr(HapticPlaybackThread hapticplaybackthread)
    {
        b044404440444044404440444 = hapticplaybackthread;
        if (((b042704270427042704270427 + b042704270427042704270427) * b042704270427042704270427) % b042704270427042704270427() != b042704270427042704270427)
        {
            b042704270427042704270427 = b042704270427042704270427();
            b042704270427042704270427 = b042704270427042704270427();
        }
label0:
        do
        {
            switch ((4 * 5) % 2)
            {
            default:
                while (true) 
                {
                    switch ((3 + 9) % 2 + 1)
                    {
                    default:
                        break;

                    case 0: // '\0'
                        continue label0;

                    case 1: // '\001'
                        break label0;
                    }
                }
                break;

            case 0: // '\0'
                break label0;

            case 1: // '\001'
                break;
            }
        } while (true);
        super();
    }

    public static int b042704270427042704270427()
    {
        return 2;
    }

    public static int b042704270427042704270427()
    {
        return 15;
    }

    public void run()
    {
        HapticPlaybackThread hapticplaybackthread;
        try
        {
            hapticplaybackthread = b044404440444044404440444;
        }
        catch (Exception exception1)
        {
            throw exception1;
        }
        if (((b042704270427042704270427 + b042704270427042704270427) * b042704270427042704270427) % b042704270427042704270427 != b042704270427042704270427)
        {
            b042704270427042704270427 = b042704270427042704270427();
            b042704270427042704270427 = 40;
        }
        try
        {
            HapticPlaybackThread.b041104110411041104110411(hapticplaybackthread);
            return;
        }
        catch (Exception exception)
        {
            throw exception;
        }
    }
}
