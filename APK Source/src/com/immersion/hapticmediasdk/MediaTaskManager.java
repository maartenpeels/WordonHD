// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.immersion.hapticmediasdk;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import com.immersion.hapticmediasdk.controllers.HapticPlaybackThread;
import com.immersion.hapticmediasdk.controllers.MediaController;
import com.immersion.hapticmediasdk.utils.Log;
import com.immersion.hapticmediasdk.utils.RuntimeInfo;
import rrrrrr.crccrr;

public class MediaTaskManager
    implements Runnable
{
    /* member class not found */
    class crccrr {}


    private static final String a = "MediaTaskManager";
    public static int b041504150415041504150415 = 2;
    public static int b041504150415041504150415 = 0;
    public static int b041504150415041504150415 = 1;
    public static int b042104210421042104210421 = 37;
    private final Object b;
    private final Object c;
    private long d;
    private long e;
    private Handler f;
    private volatile HapticContentSDK.SDKStatus g;
    private MediaController h;
    private String i;
    private boolean j;
    private Context k;
    private RuntimeInfo l;

    public MediaTaskManager(Handler handler, Context context, RuntimeInfo runtimeinfo)
    {
        if (((b042104210421042104210421 + b041504150415041504150415) * b042104210421042104210421) % b041504150415041504150415 != b041504150415041504150415())
        {
            b042104210421042104210421 = 47;
            b041504150415041504150415 = b041504150415041504150415();
        }
        HapticContentSDK.SDKStatus sdkstatus;
        try
        {
            super();
            b = new Object();
        }
        // Misplaced declaration of an exception variable
        catch (Handler handler)
        {
            throw handler;
        }
        try
        {
            c = new Object();
            sdkstatus = HapticContentSDK.SDKStatus.NOT_INITIALIZED;
        }
        // Misplaced declaration of an exception variable
        catch (Handler handler)
        {
            throw handler;
        }
        g = sdkstatus;
        f = handler;
        k = context;
        l = runtimeinfo;
        return;
    }

    private int a()
    {
        int i1;
        try
        {
            f.removeCallbacks(this);
            if (h != null && d() != 0)
            {
                Log.e("MediaTaskManager", "Could not dispose haptics, reset anyway.");
            }
        }
        catch (Exception exception)
        {
            throw exception;
        }
        try
        {
            i = null;
            d = 0L;
            g = HapticContentSDK.SDKStatus.NOT_INITIALIZED;
        }
        catch (Exception exception1)
        {
            throw exception1;
        }
        i1 = b042104210421042104210421;
        switch ((i1 * (b041504150415041504150415() + i1)) % b041504150415041504150415)
        {
        default:
            b042104210421042104210421 = b041504150415041504150415();
            b041504150415041504150415 = 55;
            // fall through

        case 0: // '\0'
            return 0;
        }
    }

    private int a(HapticContentSDK.SDKStatus sdkstatus)
    {
        int i1 = b042104210421042104210421;
        switch ((i1 * (b041504150415041504150415 + i1)) % b041504150415041504150415)
        {
        default:
            b042104210421042104210421 = 19;
            b041504150415041504150415 = b041504150415041504150415();
            break;

        case 0: // '\0'
            break;
        }
        Object obj;
        String s;
        try
        {
            obj = f;
        }
        // Misplaced declaration of an exception variable
        catch (HapticContentSDK.SDKStatus sdkstatus)
        {
            throw sdkstatus;
        }
        try
        {
            ((Handler) (obj)).removeCallbacks(this);
            g = sdkstatus;
            if (i == null)
            {
                break MISSING_BLOCK_LABEL_135;
            }
            h = new MediaController(f.getLooper(), this);
            sdkstatus = h.getControlHandler();
            obj = k;
            s = i;
        }
        // Misplaced declaration of an exception variable
        catch (HapticContentSDK.SDKStatus sdkstatus)
        {
            throw sdkstatus;
        }
        sdkstatus = new HapticPlaybackThread(((Context) (obj)), s, sdkstatus, j, l);
        h.initHapticPlayback(sdkstatus);
        return 0;
        return -4;
    }

    private int b()
    {
        f.removeCallbacks(this);
        int i1 = h.onPrepared();
        if (i1 == 0)
        {
            g = HapticContentSDK.SDKStatus.PLAYING;
            Handler handler;
            int j1;
            while ((4 * 5) % 2 != 0 && (3 + 9) % 2 + 1 != 1) ;
            handler = f;
            j1 = b042104210421042104210421;
            switch ((j1 * (b041504150415041504150415 + j1)) % b041504150415041504150415)
            {
            default:
                b042104210421042104210421 = b041504150415041504150415();
                b041504150415041504150415 = 68;
                // fall through

            case 0: // '\0'
                handler.postDelayed(this, 1500L);
                break;
            }
        }
        return i1;
    }

    public static int b041504150415041504150415()
    {
        return 1;
    }

    public static int b041504150415041504150415()
    {
        return 0;
    }

    public static int b041504150415041504150415()
    {
        return 54;
    }

    private int c()
    {
        int i1;
        try
        {
            f.removeCallbacks(this);
            d = 0L;
        }
        catch (Exception exception)
        {
            throw exception;
        }
        if (((b042104210421042104210421 + b041504150415041504150415) * b042104210421042104210421) % b041504150415041504150415 != b041504150415041504150415)
        {
            b042104210421042104210421 = b041504150415041504150415();
            b041504150415041504150415 = b041504150415041504150415();
        }
        try
        {
            i1 = h.stopHapticPlayback();
        }
        catch (Exception exception1)
        {
            throw exception1;
        }
        if (i1 != 0)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        g = HapticContentSDK.SDKStatus.STOPPED;
        return i1;
    }

    private int d()
    {
        int i1 = c();
        if (i1 == 0)
        {
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
            h.onDestroy(f);
            if (((b042104210421042104210421 + b041504150415041504150415) * b042104210421042104210421) % b041504150415041504150415 != b041504150415041504150415)
            {
                b042104210421042104210421 = 80;
                b041504150415041504150415 = 44;
            }
            h = null;
        }
        return i1;
    }

    private int e()
    {
        int i1 = 2;
        int j1;
        try
        {
            f.removeCallbacks(this);
        }
        catch (Exception exception1)
        {
            throw exception1;
        }
        try
        {
            j1 = h.onPause();
        }
        catch (Exception exception2)
        {
            throw exception2;
        }
        if (j1 != 0)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        try
        {
            do
            {
                i1 /= 0;
            } while (true);
        }
        catch (Exception exception)
        {
            b042104210421042104210421 = b041504150415041504150415();
        }
        g = HapticContentSDK.SDKStatus.PAUSED;
        return j1;
    }

    private int f()
    {
        f.removeCallbacks(this);
        if (f.postDelayed(this, 1500L))
        {
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
            if (((b041504150415041504150415() + b041504150415041504150415) * b041504150415041504150415()) % b041504150415041504150415 != b041504150415041504150415)
            {
                b042104210421042104210421 = 70;
                b041504150415041504150415 = 50;
            }
            return 0;
        } else
        {
            return -1;
        }
    }

    private int g()
    {
        int i1;
        try
        {
            i1 = h.onPause();
        }
        catch (Exception exception)
        {
            throw exception;
        }
        if (i1 != 0)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        if (((b042104210421042104210421 + b041504150415041504150415) * b042104210421042104210421) % b041504150415041504150415 != b041504150415041504150415())
        {
            b042104210421042104210421 = 64;
            b041504150415041504150415 = 32;
        }
        g = HapticContentSDK.SDKStatus.PAUSED_DUE_TO_TIMEOUT;
        return i1;
    }

    private int h()
    {
        int i1;
        try
        {
            i1 = h.onPause();
        }
        catch (Exception exception)
        {
            throw exception;
        }
        if (i1 != 0)
        {
            break MISSING_BLOCK_LABEL_19;
        }
        g = HapticContentSDK.SDKStatus.PAUSED_DUE_TO_BUFFERING;
        if (((b042104210421042104210421 + b041504150415041504150415) * b042104210421042104210421) % b041504150415041504150415 != b041504150415041504150415)
        {
            b042104210421042104210421 = 29;
            b041504150415041504150415 = b041504150415041504150415();
        }
        return i1;
    }

    private int i()
    {
        if (((b042104210421042104210421 + b041504150415041504150415) * b042104210421042104210421) % b041504150415041504150415 != b041504150415041504150415)
        {
            b042104210421042104210421 = 78;
            b041504150415041504150415 = 14;
        }
        int j1 = b();
        int i1 = j1;
        if (j1 == 0)
        {
            i1 = f();
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
        return i1;
    }

    public int SeekTo(int i1)
    {
        int j1 = b041504150415041504150415();
        switch ((j1 * (b041504150415041504150415() + j1)) % b041504150415041504150415)
        {
        default:
            b042104210421042104210421 = 10;
            b041504150415041504150415 = 6;
            // fall through

        case 0: // '\0'
            setMediaTimestamp(i1);
            break;
        }
        h.seekTo(i1);
        if (getSDKStatus() == HapticContentSDK.SDKStatus.PLAYING)
        {
label0:
            do
            {
                switch ((3 + 9) % 2 + 1)
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
                    break;

                case 1: // '\001'
                    break label0;
                }
            } while (true);
            return h.prepareHapticPlayback();
        } else
        {
            return 0;
        }
    }

    public long getMediaReferenceTime()
    {
        long l1;
        synchronized (c)
        {
            l1 = e;
        }
        return l1;
        exception;
        obj;
        JVM INSTR monitorexit ;
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
        throw exception;
    }

    public long getMediaTimestamp()
    {
        long l1;
        synchronized (c)
        {
            l1 = d;
        }
        return l1;
        exception;
_L2:
        (3 + 9) % 2 + 1;
        JVM INSTR tableswitch 0 1: default 48
    //                   0 17
    //                   1 79;
           goto _L1 _L2 _L3
_L1:
        (4 * 5) % 2;
        JVM INSTR tableswitch 0 1: default 76
    //                   0 79
    //                   1 17;
           goto _L1 _L3 _L2
_L3:
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public HapticContentSDK.SDKStatus getSDKStatus()
    {
        obj;
        JVM INSTR monitorenter ;
        sdkstatus = g;
        obj;
        JVM INSTR monitorexit ;
        return sdkstatus;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        Object obj = b;
        HapticContentSDK.SDKStatus sdkstatus;
        Exception exception;
        while ((3 + 9) % 2 + 1 != 1 && (4 * 5) % 2 != 0) ;
        break MISSING_BLOCK_LABEL_17;
    }

    public void run()
    {
        System.currentTimeMillis();
        if (((b042104210421042104210421 + b041504150415041504150415) * b042104210421042104210421) % b041504150415041504150415 != b041504150415041504150415)
        {
            b042104210421042104210421 = 91;
            b041504150415041504150415 = 30;
        }
label0:
        do
        {
            switch ((3 + 9) % 2 + 1)
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
                break;

            case 1: // '\001'
                break label0;
            }
        } while (true);
        transitToState(HapticContentSDK.SDKStatus.PAUSED_DUE_TO_TIMEOUT);
    }

    public void setHapticsUrl(String s, boolean flag)
    {
        synchronized (b)
        {
            i = s;
            j = flag;
        }
        return;
        s;
_L3:
        (4 * 5) % 2;
        JVM INSTR tableswitch 0 1: default 48
    //                   0 79
    //                   1 21;
           goto _L1 _L2 _L3
_L1:
        (4 * 5) % 2;
        JVM INSTR tableswitch 0 1: default 76
    //                   0 79
    //                   1 21;
           goto _L1 _L2 _L3
_L2:
        obj;
        JVM INSTR monitorexit ;
        throw s;
    }

    public void setMediaReferenceTime()
    {
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        HapticContentSDK.SDKStatus sdkstatus = g;
_L2:
        (3 + 9) % 2 + 1;
        JVM INSTR tableswitch 0 1: default 44
    //                   0 12
    //                   1 75;
           goto _L1 _L2 _L3
_L1:
        (4 * 5) % 2;
        JVM INSTR tableswitch 0 1: default 72
    //                   0 75
    //                   1 12;
           goto _L1 _L3 _L2
_L3:
        if (sdkstatus == HapticContentSDK.SDKStatus.STOPPED)
        {
            h.waitHapticStopped();
        }
        e = SystemClock.uptimeMillis();
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void setMediaTimestamp(long l1)
    {
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        if (g == HapticContentSDK.SDKStatus.STOPPED)
        {
            h.waitHapticStopped();
        }
        e = SystemClock.uptimeMillis();
_L2:
        (3 + 9) % 2 + 1;
        JVM INSTR tableswitch 0 1: default 60
    //                   0 31
    //                   1 95;
           goto _L1 _L2 _L3
_L1:
        (3 + 9) % 2 + 1;
        JVM INSTR tableswitch 0 1: default 92
    //                   0 31
    //                   1 95;
           goto _L1 _L2 _L3
_L3:
        d = l1;
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int transitToState(HapticContentSDK.SDKStatus sdkstatus)
    {
        int i1;
label0:
        {
            i1 = -1;
            synchronized (b)
            {
                if (sdkstatus != HapticContentSDK.SDKStatus.NOT_INITIALIZED)
                {
                    break label0;
                }
                i1 = a();
            }
            return i1;
        }
        crccrr.b042504250425042504250425[g.ordinal()];
        JVM INSTR tableswitch 1 7: default 652
    //                   1 90
    //                   2 107
    //                   3 213
    //                   4 330
    //                   5 449
    //                   6 485
    //                   7 554;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L1:
        obj;
        JVM INSTR monitorexit ;
        return i1;
        sdkstatus;
        obj;
        JVM INSTR monitorexit ;
        throw sdkstatus;
_L2:
        if (sdkstatus != HapticContentSDK.SDKStatus.INITIALIZED) goto _L1; else goto _L9
_L9:
        i1 = a(sdkstatus);
          goto _L1
_L3:
        if (sdkstatus != HapticContentSDK.SDKStatus.PLAYING) goto _L11; else goto _L10
_L10:
        i1 = i();
          goto _L1
_L31:
        if (sdkstatus != HapticContentSDK.SDKStatus.STOPPED_DUE_TO_ERROR) goto _L1; else goto _L12
_L12:
        i1 = c();
        g = HapticContentSDK.SDKStatus.STOPPED_DUE_TO_ERROR;
          goto _L1
_L36:
        if (sdkstatus != HapticContentSDK.SDKStatus.PLAYING) goto _L14; else goto _L13
_L13:
        h.setRequestBufferPosition((int)d);
        i1 = i();
          goto _L1
_L11:
        if (sdkstatus != HapticContentSDK.SDKStatus.STOPPED) goto _L16; else goto _L15
_L15:
        i1 = c();
          goto _L1
_L16:
        if (sdkstatus != HapticContentSDK.SDKStatus.STOPPED_DUE_TO_ERROR) goto _L1; else goto _L17
_L17:
        i1 = c();
        g = HapticContentSDK.SDKStatus.STOPPED_DUE_TO_ERROR;
          goto _L1
_L4:
        (3 + 9) % 2 + 1;
        JVM INSTR tableswitch 0 1: default 244
    //                   0 213
    //                   1 275;
           goto _L18 _L4 _L19
_L18:
        (4 * 5) % 2;
        JVM INSTR tableswitch 0 1: default 272
    //                   0 275
    //                   1 213;
           goto _L18 _L19 _L4
_L19:
        if (sdkstatus != HapticContentSDK.SDKStatus.PLAYING) goto _L21; else goto _L20
_L20:
        i1 = f();
          goto _L1
_L21:
        if (sdkstatus != HapticContentSDK.SDKStatus.PAUSED) goto _L23; else goto _L22
_L22:
        i1 = e();
          goto _L1
_L23:
        if (sdkstatus != HapticContentSDK.SDKStatus.PAUSED_DUE_TO_TIMEOUT) goto _L25; else goto _L24
_L24:
        Log.w("MediaTaskManager", "Haptic playback is paused due to update time-out. Call update() to resume playback");
        i1 = g();
          goto _L1
_L5:
        if (sdkstatus != HapticContentSDK.SDKStatus.PLAYING) goto _L27; else goto _L26
_L26:
        h.setRequestBufferPosition((int)d);
        i1 = i();
          goto _L1
_L27:
        if (sdkstatus != HapticContentSDK.SDKStatus.PAUSED) goto _L29; else goto _L28
_L28:
        i1 = 0;
          goto _L1
_L25:
        if (sdkstatus != HapticContentSDK.SDKStatus.PAUSED_DUE_TO_BUFFERING)
        {
            continue; /* Loop/switch isn't completed */
        }
        i1 = h();
        Log.w("MediaTaskManager", "Haptic playback is paused due to slow data buffering...");
          goto _L1
        if (sdkstatus != HapticContentSDK.SDKStatus.STOPPED) goto _L31; else goto _L30
_L30:
        i1 = c();
          goto _L1
_L29:
        if (sdkstatus != HapticContentSDK.SDKStatus.STOPPED) goto _L33; else goto _L32
_L32:
        i1 = c();
          goto _L1
_L33:
        if (sdkstatus != HapticContentSDK.SDKStatus.STOPPED_DUE_TO_ERROR) goto _L1; else goto _L34
_L34:
        i1 = c();
        g = HapticContentSDK.SDKStatus.STOPPED_DUE_TO_ERROR;
          goto _L1
_L6:
        if (sdkstatus != HapticContentSDK.SDKStatus.PAUSED_DUE_TO_TIMEOUT) goto _L36; else goto _L35
_L35:
        i1 = 0;
          goto _L1
_L41:
        if (sdkstatus != HapticContentSDK.SDKStatus.STOPPED_DUE_TO_ERROR) goto _L1; else goto _L37
_L37:
        i1 = c();
        g = HapticContentSDK.SDKStatus.STOPPED_DUE_TO_ERROR;
          goto _L1
_L7:
        if (sdkstatus != HapticContentSDK.SDKStatus.PAUSED_DUE_TO_BUFFERING) goto _L39; else goto _L38
_L38:
        i1 = 0;
          goto _L1
_L14:
        if (sdkstatus != HapticContentSDK.SDKStatus.PAUSED)
        {
            continue; /* Loop/switch isn't completed */
        }
        g = HapticContentSDK.SDKStatus.PAUSED;
        i1 = 0;
          goto _L1
        if (sdkstatus != HapticContentSDK.SDKStatus.STOPPED) goto _L41; else goto _L40
_L40:
        i1 = c();
          goto _L1
_L47:
        if (sdkstatus != HapticContentSDK.SDKStatus.PAUSED) goto _L43; else goto _L42
_L42:
        g = HapticContentSDK.SDKStatus.PAUSED;
        i1 = 0;
          goto _L1
_L8:
        if (sdkstatus != HapticContentSDK.SDKStatus.PLAYING) goto _L45; else goto _L44
_L44:
        i1 = i();
          goto _L1
_L39:
        if (sdkstatus != HapticContentSDK.SDKStatus.PLAYING) goto _L47; else goto _L46
_L46:
        h.setRequestBufferPosition((int)d);
        i1 = i();
          goto _L1
_L43:
        if (sdkstatus != HapticContentSDK.SDKStatus.STOPPED) goto _L49; else goto _L48
_L48:
        i1 = c();
          goto _L1
_L49:
        if (sdkstatus != HapticContentSDK.SDKStatus.STOPPED_DUE_TO_ERROR) goto _L1; else goto _L50
_L50:
        i1 = c();
        g = HapticContentSDK.SDKStatus.STOPPED_DUE_TO_ERROR;
          goto _L1
_L45:
        HapticContentSDK.SDKStatus sdkstatus1 = HapticContentSDK.SDKStatus.STOPPED;
        if (sdkstatus == sdkstatus1)
        {
            i1 = 0;
        }
          goto _L1
    }
}
