// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package rrrrrr;

import com.immersion.hapticmediasdk.MediaTaskManager;

public class crccrr
{

    public static int b041704170417041704170417 = 1;
    public static final int b042504250425042504250425[];
    public static int b041704170417041704170417 = 88;
    public static int b041704170417041704170417 = 2;

    static 
    {
        b042504250425042504250425 = new int[com.immersion.hapticmediasdk.HapticContentSDK.SDKStatus.values().length];
        NoSuchFieldError nosuchfielderror;
        int i;
        try
        {
            b042504250425042504250425[com.immersion.hapticmediasdk.HapticContentSDK.SDKStatus.NOT_INITIALIZED.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        b042504250425042504250425[com.immersion.hapticmediasdk.HapticContentSDK.SDKStatus.INITIALIZED.ordinal()] = 2;
label0:
        do
        {
            switch ((3 + 9) % 2 + 1)
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
                break;

            case 1: // '\001'
                break label0;
            }
        } while (true);
_L4:
        try
        {
            b042504250425042504250425[com.immersion.hapticmediasdk.HapticContentSDK.SDKStatus.PLAYING.ordinal()] = 3;
        }
        // Misplaced declaration of an exception variable
        catch (NoSuchFieldError nosuchfielderror) { }
        b042504250425042504250425[com.immersion.hapticmediasdk.HapticContentSDK.SDKStatus.PAUSED.ordinal()] = 4;
        i = b041704170417041704170417;
        switch ((i * (b041704170417041704170417 + i)) % b041704170417041704170417)
        {
        default:
            b041704170417041704170417 = 57;
            b041704170417041704170417 = 26;
            break;

        case 0: // '\0'
            break;
        }
_L2:
        try
        {
            b042504250425042504250425[com.immersion.hapticmediasdk.HapticContentSDK.SDKStatus.PAUSED_DUE_TO_TIMEOUT.ordinal()] = 5;
        }
        // Misplaced declaration of an exception variable
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            b042504250425042504250425[com.immersion.hapticmediasdk.HapticContentSDK.SDKStatus.PAUSED_DUE_TO_BUFFERING.ordinal()] = 6;
        }
        // Misplaced declaration of an exception variable
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            b042504250425042504250425[com.immersion.hapticmediasdk.HapticContentSDK.SDKStatus.STOPPED.ordinal()] = 7;
            return;
        }
        // Misplaced declaration of an exception variable
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
        nosuchfielderror;
        if (true) goto _L2; else goto _L1
_L1:
        nosuchfielderror;
        if (true) goto _L4; else goto _L3
_L3:
    }
}
