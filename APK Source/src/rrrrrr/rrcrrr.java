// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package rrrrrr;

import com.immersion.hapticmediasdk.controllers.HapticPlaybackThread;

public class rrcrrr
    implements Runnable
{

    public static int b041504150415041504150415 = 1;
    public static int b041504150415041504150415 = 2;
    public static int b041504150415041504150415 = 2;
    public static int b041504150415041504150415;
    public final HapticPlaybackThread b041704170417041704170417;

    public rrcrrr(HapticPlaybackThread hapticplaybackthread)
    {
label0:
        do
        {
            switch ((4 * 5) % 2)
            {
            default:
                while (true) 
                {
                    switch ((4 * 5) % 2)
                    {
                    default:
                        break;

                    case 0: // '\0'
                        break label0;

                    case 1: // '\001'
                        continue label0;
                    }
                }
                break;

            case 0: // '\0'
                break label0;

            case 1: // '\001'
                break;
            }
        } while (true);
        int i = b041504150415041504150415;
        switch ((i * (b041504150415041504150415 + i)) % b041504150415041504150415)
        {
        default:
            b041504150415041504150415 = b041504150415041504150415();
            b041504150415041504150415 = b041504150415041504150415();
            // fall through

        case 0: // '\0'
            b041704170417041704170417 = hapticplaybackthread;
            break;
        }
        super();
    }

    public static int b041504150415041504150415()
    {
        return 54;
    }

    public void run()
    {
        HapticPlaybackThread hapticplaybackthread = b041704170417041704170417;
_L2:
        if ((4 * 5) % 2 != 0)
        {
            continue; /* Loop/switch isn't completed */
        }
_L3:
        HapticPlaybackThread.b041104110411041104110411(hapticplaybackthread);
        return;
        if ((4 * 5) % 2 != 0) goto _L2; else goto _L1
_L1:
        if (((b041504150415041504150415 + b041504150415041504150415) * b041504150415041504150415) % b041504150415041504150415 != b041504150415041504150415)
        {
            b041504150415041504150415 = 88;
            b041504150415041504150415 = 29;
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }
}
