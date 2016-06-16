// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.immersion.hapticmediasdk;

import android.content.Context;
import android.webkit.URLUtil;
import com.immersion.hapticmediasdk.utils.Log;
import java.io.File;
import java.net.MalformedURLException;
import rrrrrr.rrccrr;

// Referenced classes of package com.immersion.hapticmediasdk:
//            HapticContentSDK, MediaTaskManager

public class MediaPlaybackSDK extends HapticContentSDK
{
    /* member class not found */
    class rrccrr {}


    private static final String a = "HapticContentSDK";
    public static int b044A044A044A044A044A044A = 1;
    public static int b044A044A044A044A044A044A = 13;
    public static int b044A044A044A044A044A044A = 0;
    public static int b044A044A044A044A044A044A = 2;
    private int b;

    public MediaPlaybackSDK(Context context)
    {
        try
        {
            super(0, context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            throw context;
        }
        if (((b044A044A044A044A044A044A + b044A044A044A044A044A044A) * b044A044A044A044A044A044A) % b044A044A044A044A044A044A != b044A044A044A044A044A044A)
        {
            b044A044A044A044A044A044A = b044A044A044A044A044A044A();
            b044A044A044A044A044A044A = b044A044A044A044A044A044A();
        }
        try
        {
            b = 400;
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            throw context;
        }
    }

    private boolean a(String s)
    {
        s = s.replaceFirst("https", "http");
        InterruptedException interruptedexception;
        int i;
        boolean flag;
        try
        {
            s = new rrccrr(this, s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Log.e("HapticContentSDK", s.getMessage());
            return false;
        }
        (new Thread(s, "ping url")).start();
        s;
        JVM INSTR monitorenter ;
        b = -100;
_L2:
        i = b;
        Exception exception;
label0:
        {
            if (i >= 0)
            {
                break label0;
            }
            try
            {
                s.wait(100L);
            }
            // Misplaced declaration of an exception variable
            catch (InterruptedException interruptedexception) { }
            finally { }
        }
        if (true) goto _L2; else goto _L1
_L1:
label1:
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
                        break label1;

                    case 1: // '\001'
                        continue label1;
                    }
                }
                break;

            case 0: // '\0'
                break label1;

            case 1: // '\001'
                break;
            }
        } while (true);
        if (200 <= b && b <= 399)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s;
        JVM INSTR monitorexit ;
        return flag;
        s;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private int b(String s)
    {
        Object obj;
        if (s == null)
        {
            Log.e("HapticContentSDK", "invalid local hapt file url: null");
            return -4;
        }
        obj = new File(s);
        if (!((File) (obj)).isFile()) goto _L2; else goto _L1
_L1:
        if (!((File) (obj)).canRead()) goto _L4; else goto _L3
_L3:
        obj = mMediaTaskManager;
_L6:
        if ((3 + 9) % 2 + 1 != 1)
        {
            continue; /* Loop/switch isn't completed */
        }
_L8:
        ((MediaTaskManager) (obj)).setHapticsUrl(s, false);
        return mMediaTaskManager.transitToState(HapticContentSDK.SDKStatus.INITIALIZED);
_L4:
        Log.e("HapticContentSDK", "could not access local hapt file: permission denied");
        return -3;
_L2:
        Log.e("HapticContentSDK", "invalid local hapt file url: directory");
        return -4;
        if ((3 + 9) % 2 + 1 != 1) goto _L6; else goto _L5
_L5:
        int i = b044A044A044A044A044A044A;
        switch ((i * (b044A044A044A044A044A044A + i)) % b044A044A044A044A044A044A)
        {
        default:
            b044A044A044A044A044A044A = b044A044A044A044A044A044A();
            b044A044A044A044A044A044A = b044A044A044A044A044A044A();
            break;

        case 0: // '\0'
            break;
        }
        if (true) goto _L8; else goto _L7
_L7:
    }

    public static int b044A044A044A044A044A044A()
    {
        return 2;
    }

    public static int b044A044A044A044A044A044A()
    {
        return 61;
    }

    public static int b043B043B043B043B043B043B(MediaPlaybackSDK mediaplaybacksdk, int i)
    {
        if (((b044A044A044A044A044A044A() + b044A044A044A044A044A044A) * b044A044A044A044A044A044A()) % b044A044A044A044A044A044A != b044A044A044A044A044A044A)
        {
            b044A044A044A044A044A044A = 4;
            b044A044A044A044A044A044A = b044A044A044A044A044A044A();
        }
        try
        {
            mediaplaybacksdk.b = i;
        }
        // Misplaced declaration of an exception variable
        catch (MediaPlaybackSDK mediaplaybacksdk)
        {
            throw mediaplaybacksdk;
        }
        return i;
    }

    public static int b044A044A044A044A044A044A()
    {
        return 1;
    }

    public int openHaptics(String s)
    {
        HapticContentSDK.SDKStatus sdkstatus = getSDKStatus();
        int i;
        if (sdkstatus == HapticContentSDK.SDKStatus.STOPPED || sdkstatus == HapticContentSDK.SDKStatus.NOT_INITIALIZED || sdkstatus == HapticContentSDK.SDKStatus.INITIALIZED || sdkstatus == HapticContentSDK.SDKStatus.STOPPED_DUE_TO_ERROR)
        {
            break MISSING_BLOCK_LABEL_33;
        } else
        {
            return -1;
        }
_L2:
        if (URLUtil.isFileUrl(s))
        {
            return b(s);
        } else
        {
            Log.e("HapticContentSDK", "could not access hapt file url: unsupposted protocol");
            return -5;
        }
        i = mMediaTaskManager.transitToState(HapticContentSDK.SDKStatus.NOT_INITIALIZED);
        if (i != 0)
        {
            return i;
        }
        if (!URLUtil.isValidUrl(s))
        {
            return b(s);
        }
        if (URLUtil.isHttpUrl(s))
        {
            break; /* Loop/switch isn't completed */
        }
_L4:
        if ((3 + 9) % 2 + 1 != 1)
        {
            continue; /* Loop/switch isn't completed */
        }
_L5:
        if (!URLUtil.isHttpsUrl(s)) goto _L2; else goto _L1
_L1:
        if (a(s))
        {
            mMediaTaskManager.setHapticsUrl(s, true);
            return mMediaTaskManager.transitToState(HapticContentSDK.SDKStatus.INITIALIZED);
        } else
        {
            Log.e("HapticContentSDK", "could not access hapt file url: Inaccessible URL");
            return -2;
        }
        if ((3 + 9) % 2 + 1 != 1) goto _L4; else goto _L3
_L3:
        if (((b044A044A044A044A044A044A + b044A044A044A044A044A044A()) * b044A044A044A044A044A044A) % b044A044A044A044A044A044A() != b044A044A044A044A044A044A)
        {
            b044A044A044A044A044A044A = b044A044A044A044A044A044A();
            b044A044A044A044A044A044A = b044A044A044A044A044A044A();
        }
          goto _L5
    }
}
