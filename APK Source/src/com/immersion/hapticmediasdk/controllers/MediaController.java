// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.immersion.hapticmediasdk.controllers;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.immersion.hapticmediasdk.MediaTaskManager;
import com.immersion.hapticmediasdk.models.HttpUnsuccessfulException;
import com.immersion.hapticmediasdk.utils.Log;
import com.immersion.hapticmediasdk.utils.Profiler;
import java.util.concurrent.atomic.AtomicInteger;
import rrrrrr.crrrrr;
import rrrrrr.rcrrrr;

// Referenced classes of package com.immersion.hapticmediasdk.controllers:
//            HapticPlaybackThread

public class MediaController
{
    /* member class not found */
    class crrrrr {}

    /* member class not found */
    class rcrrrr {}


    private static final String a = "MediaController";
    private static final int b = 1000;
    public static int b044604460446044604460446 = 35;
    public static int b044604460446044604460446 = 1;
    public static int b044604460446044604460446 = 2;
    public static int b044604460446044604460446 = 0;
    private static final int c = 200;
    private AtomicInteger d;
    private AtomicInteger e;
    private Handler f;
    private HapticPlaybackThread g;
    private Profiler h;
    private MediaTaskManager i;
    private Runnable j;

    public MediaController(Looper looper, MediaTaskManager mediataskmanager)
    {
        try
        {
            super();
            d = new AtomicInteger();
            e = new AtomicInteger();
        }
        // Misplaced declaration of an exception variable
        catch (Looper looper)
        {
            throw looper;
        }
        if (((b044604460446044604460446 + b044604460446044604460446) * b044604460446044604460446) % b044604460446044604460446 != b044604460446044604460446)
        {
            b044604460446044604460446 = b044604460446044604460446();
            b044604460446044604460446 = b044604460446044604460446();
        }
        try
        {
            h = new Profiler();
        }
        // Misplaced declaration of an exception variable
        catch (Looper looper)
        {
            throw looper;
        }
        j = new rcrrrr(this);
        i = mediataskmanager;
        f = new crrrrr(this, looper);
        return;
    }

    private int a()
    {
_L2:
        if ((3 + 9) % 2 + 1 != 1)
        {
            continue; /* Loop/switch isn't completed */
        }
_L4:
        g.pauseHapticPlayback();
        return 0;
        if ((4 * 5) % 2 != 0) goto _L2; else goto _L1
_L1:
        int k = b044604460446044604460446;
        switch ((k * (b044604460446044604460446 + k)) % b044604460446044604460446)
        {
        default:
            b044604460446044604460446 = 41;
            b044604460446044604460446 = b044604460446044604460446();
            break;

        case 0: // '\0'
            break;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void a(int k)
    {
        throw new Runtime("d2j fail translate: java.lang.IndexOutOfBoundsException: fromIndex < 0: -1\n\tat java.util.BitSet.nextSetBit(BitSet.java:701)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.makeSureAllElementAreAssigned(FillArrayTransformer.java:505)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.transformReportChanged(FillArrayTransformer.java:123)\n\tat com.googlecode.dex2jar.ir.ts.StatedTransformer.transform(StatedTransformer.java:10)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:149)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
    }

    private void a(int k, long l)
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
        HapticPlaybackThread hapticplaybackthread = g;
        if (((b044604460446044604460446 + b044604460446044604460446) * b044604460446044604460446) % b044604460446044604460446 != b044604460446044604460446)
        {
            b044604460446044604460446 = 10;
            b044604460446044604460446 = 4;
        }
        hapticplaybackthread.playHapticForPlaybackPosition(k, l);
    }

    private void a(Message message)
    {
        message = (Exception)message.getData().getSerializable("haptic_download_exception");
        if (message instanceof HttpUnsuccessfulException)
        {
            HttpUnsuccessfulException httpunsuccessfulexception = (HttpUnsuccessfulException)message;
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
            Log.e("MediaController", (new StringBuilder()).append("caught HttpUnsuccessfulExcetion http status code = ").append(httpunsuccessfulexception.getHttpStatusCode()).toString());
        }
        if (((b044604460446044604460446 + b044604460446044604460446) * b044604460446044604460446) % b044604460446044604460446 != b044604460446044604460446)
        {
            b044604460446044604460446 = b044604460446044604460446();
            b044604460446044604460446 = 98;
        }
        Log.e("MediaController", (new StringBuilder()).append("HapticDownloadError: ").append(message.getMessage()).toString());
        i.transitToState(com.immersion.hapticmediasdk.HapticContentSDK.SDKStatus.STOPPED_DUE_TO_ERROR);
    }

    private void a(boolean flag)
    {
        int k;
        boolean flag1;
        flag1 = g.isStarted();
        k = 0;
_L2:
        HapticPlaybackThread hapticplaybackthread;
        Exception exception;
        int l;
        boolean flag2;
        if (flag ? !flag1 : flag1)
        {
            break MISSING_BLOCK_LABEL_21;
        } else
        {
            break; /* Loop/switch isn't completed */
        }
        hapticplaybackthread = g;
        hapticplaybackthread;
        JVM INSTR monitorenter ;
        try
        {
            g.wait(200L);
        }
        catch (InterruptedException interruptedexception) { }
        finally { }
        switch ((3 + 9) % 2 + 1)
        {
        default:
label0:
            do
            {
                switch ((4 * 5) % 2)
                {
                case 0: // '\0'
                    break label0;

                case 1: // '\001'
                    break MISSING_BLOCK_LABEL_38;
                }
            } while (true);
            break;

        case 0: // '\0'
            break MISSING_BLOCK_LABEL_38;

        case 1: // '\001'
            break;
        }
        hapticplaybackthread;
        JVM INSTR monitorexit ;
        flag2 = g.isStarted();
        l = k + 1;
        flag1 = flag2;
        k = l;
        if (flag) goto _L2; else goto _L1
_L1:
        flag1 = flag2;
        k = l;
        if (l < 5) goto _L2; else goto _L3
_L3:
        return;
        hapticplaybackthread;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static void b043B043B043B043B043B043B(MediaController mediacontroller, int k, long l)
    {
        int i1 = b044604460446044604460446;
        switch ((i1 * (b044604460446044604460446 + i1)) % b044604460446044604460446)
        {
        default:
            b044604460446044604460446 = 79;
            b044604460446044604460446 = 74;
            break;

        case 0: // '\0'
            break;
        }
        try
        {
            mediacontroller.a(k, l);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (MediaController mediacontroller)
        {
            throw mediacontroller;
        }
    }

    public static void b043B043B043B043B043B043B(MediaController mediacontroller, Message message)
    {
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
        if (((b044604460446044604460446 + b044604460446044604460446) * b044604460446044604460446) % b044604460446044604460446 != b044604460446044604460446())
        {
            b044604460446044604460446 = 31;
            b044604460446044604460446 = 2;
        }
        mediacontroller.a(message);
    }

    public static AtomicInteger b043B043B043B043B043B043B(MediaController mediacontroller)
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
        int k = b044604460446044604460446;
        switch ((k * (b044604460446044604460446 + k)) % b044604460446044604460446)
        {
        default:
            b044604460446044604460446 = 31;
            b044604460446044604460446 = 73;
            // fall through

        case 0: // '\0'
            return mediacontroller.e;
        }
    }

    public static int b044604460446044604460446()
    {
        return 5;
    }

    public static int b044604460446044604460446()
    {
        return 2;
    }

    public static AtomicInteger b041104110411041104110411(MediaController mediacontroller)
    {
        try
        {
            mediacontroller = mediacontroller.d;
        }
        // Misplaced declaration of an exception variable
        catch (MediaController mediacontroller)
        {
            throw mediacontroller;
        }
        if (((b044604460446044604460446 + b044604460446044604460446) * b044604460446044604460446) % b044604460446044604460446 != b044604460446044604460446())
        {
            b044604460446044604460446 = 20;
            b044604460446044604460446 = 78;
        }
        return mediacontroller;
    }

    public static HapticPlaybackThread b043B043B043B043B043B043B(MediaController mediacontroller)
    {
        int k = b044604460446044604460446;
        switch ((k * (b044604460446044604460446 + k)) % b044604460446044604460446)
        {
        default:
            b044604460446044604460446 = 93;
            b044604460446044604460446 = b044604460446044604460446();
            break;

        case 0: // '\0'
            break;
        }
        try
        {
            mediacontroller = mediacontroller.g;
        }
        // Misplaced declaration of an exception variable
        catch (MediaController mediacontroller)
        {
            throw mediacontroller;
        }
        return mediacontroller;
    }

    public static MediaTaskManager b043B043B043B043B043B043B(MediaController mediacontroller)
    {
        mediacontroller = mediacontroller.i;
        break MISSING_BLOCK_LABEL_5;
        while ((3 + 9) % 2 + 1 != 1 && (4 * 5) % 2 != 0) ;
        if (((b044604460446044604460446 + b044604460446044604460446) * b044604460446044604460446) % b044604460446044604460446 != b044604460446044604460446)
        {
            b044604460446044604460446 = 52;
            b044604460446044604460446 = 73;
        }
        return mediacontroller;
    }

    public static void b043B043B043B043B043B043B(MediaController mediacontroller, int k)
    {
_L2:
        if ((3 + 9) % 2 + 1 != 1)
        {
            continue; /* Loop/switch isn't completed */
        }
_L3:
        mediacontroller.a(k);
        return;
        if ((4 * 5) % 2 != 0) goto _L2; else goto _L1
_L1:
        if (((b044604460446044604460446 + b044604460446044604460446) * b044604460446044604460446) % b044604460446044604460446() != b044604460446044604460446)
        {
            b044604460446044604460446 = b044604460446044604460446();
            b044604460446044604460446 = b044604460446044604460446();
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    public static int b044604460446044604460446()
    {
        return 0;
    }

    public Handler getControlHandler()
    {
        while ((3 + 9) % 2 + 1 != 1 && (4 * 5) % 2 != 0) ;
        if (((b044604460446044604460446 + b044604460446044604460446) * b044604460446044604460446) % b044604460446044604460446 != b044604460446044604460446)
        {
            b044604460446044604460446 = 97;
            b044604460446044604460446 = 45;
        }
        return f;
    }

    public int getCurrentPosition()
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
        if (((b044604460446044604460446 + b044604460446044604460446) * b044604460446044604460446) % b044604460446044604460446 != b044604460446044604460446)
        {
            b044604460446044604460446 = 51;
            b044604460446044604460446 = 63;
        }
        return (int)i.getMediaTimestamp();
    }

    public long getReferenceTimeForCurrentPosition()
    {
        int k = b044604460446044604460446;
        switch ((k * (b044604460446044604460446 + k)) % b044604460446044604460446)
        {
        default:
            b044604460446044604460446 = b044604460446044604460446();
            b044604460446044604460446 = 38;
            break;

        case 0: // '\0'
            break;
        }
        long l;
        try
        {
            l = i.getMediaReferenceTime();
        }
        catch (Exception exception)
        {
            throw exception;
        }
        return l;
    }

    public void initHapticPlayback(HapticPlaybackThread hapticplaybackthread)
    {
        try
        {
            g = hapticplaybackthread;
            g.start();
        }
        // Misplaced declaration of an exception variable
        catch (HapticPlaybackThread hapticplaybackthread)
        {
            throw hapticplaybackthread;
        }
        if (((b044604460446044604460446 + b044604460446044604460446) * b044604460446044604460446) % b044604460446044604460446 != b044604460446044604460446)
        {
            b044604460446044604460446 = b044604460446044604460446();
            b044604460446044604460446 = 24;
        }
        try
        {
            a(true);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (HapticPlaybackThread hapticplaybackthread)
        {
            throw hapticplaybackthread;
        }
    }

    public boolean isPlaying()
    {
        com.immersion.hapticmediasdk.HapticContentSDK.SDKStatus sdkstatus;
        com.immersion.hapticmediasdk.HapticContentSDK.SDKStatus sdkstatus1;
        try
        {
            sdkstatus = i.getSDKStatus();
            sdkstatus1 = com.immersion.hapticmediasdk.HapticContentSDK.SDKStatus.PLAYING;
        }
        catch (Exception exception)
        {
            throw exception;
        }
        return sdkstatus == sdkstatus1;
    }

    public void onDestroy(Handler handler)
    {
        if (g != null)
        {
            g.quitHapticPlayback();
            a(false);
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
            g = null;
        }
        MediaTaskManager mediataskmanager = i;
        if (((b044604460446044604460446 + b044604460446044604460446) * b044604460446044604460446) % b044604460446044604460446 != b044604460446044604460446)
        {
            b044604460446044604460446 = b044604460446044604460446();
            b044604460446044604460446 = 29;
        }
        handler.removeCallbacks(mediataskmanager);
    }

    public int onPause()
    {
        int k;
        int l;
        while ((3 + 9) % 2 + 1 != 1 && (3 + 9) % 2 + 1 != 1) ;
        k = a();
        l = b044604460446044604460446;
        switch ((l * (b044604460446044604460446 + l)) % b044604460446044604460446)
        {
        default:
            b044604460446044604460446 = 39;
            b044604460446044604460446 = 73;
            // fall through

        case 0: // '\0'
            return k;
        }
    }

    public int onPrepared()
    {
_L2:
        if ((4 * 5) % 2 != 0)
        {
            continue; /* Loop/switch isn't completed */
        }
_L3:
        return prepareHapticPlayback();
        if ((4 * 5) % 2 != 0) goto _L2; else goto _L1
_L1:
        if (((b044604460446044604460446 + b044604460446044604460446) * b044604460446044604460446) % b044604460446044604460446 != b044604460446044604460446)
        {
            b044604460446044604460446 = 37;
            b044604460446044604460446 = 76;
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    public void playbackStarted()
    {
        if (g != null)
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
            HapticPlaybackThread hapticplaybackthread = g;
            int k = b044604460446044604460446;
            switch ((k * (b044604460446044604460446 + k)) % b044604460446044604460446)
            {
            default:
                b044604460446044604460446 = b044604460446044604460446();
                b044604460446044604460446 = b044604460446044604460446();
                // fall through

            case 0: // '\0'
                hapticplaybackthread.getHandler().postDelayed(j, 200L);
                break;
            }
            return;
        } else
        {
            Log.e("MediaController", "Can't start periodic sync since haptic playback thread stopped.");
            return;
        }
    }

    public int prepareHapticPlayback()
    {
        HapticPlaybackThread hapticplaybackthread;
        int k;
        int l;
        try
        {
            h.startTiming();
        }
        catch (Exception exception)
        {
            throw exception;
        }
        try
        {
            hapticplaybackthread = g;
            k = d.get();
        }
        catch (Exception exception1)
        {
            throw exception1;
        }
        l = b044604460446044604460446;
        switch ((l * (b044604460446044604460446 + l)) % b044604460446044604460446)
        {
        default:
            b044604460446044604460446 = b044604460446044604460446();
            b044604460446044604460446 = 98;
            break;

        case 0: // '\0'
            break;
        }
        hapticplaybackthread.prepareHapticPlayback(k, e.incrementAndGet());
        return 0;
    }

    public void seekTo(int k)
    {
        ((Handler) (obj)).removeCallbacks(j);
        g.removePlaybackCallbacks();
        return;
        {
            Object obj = d;
            if (k <= 0)
            {
                k = 0;
            }
            ((AtomicInteger) (obj)).set(k);
            if (g == null)
            {
                break MISSING_BLOCK_LABEL_96;
            }
            obj = g.getHandler();
            k = b044604460446044604460446;
            switch ((k * (b044604460446044604460446 + k)) % b044604460446044604460446)
            {
            default:
                b044604460446044604460446 = 66;
                b044604460446044604460446 = 5;
                break;

            case 0: // '\0'
                break;
            }
        }
        while ((4 * 5) % 2 != 0 && (4 * 5) % 2 != 0) ;
        break MISSING_BLOCK_LABEL_81;
    }

    public void setRequestBufferPosition(int k)
    {
        AtomicInteger atomicinteger;
        int l;
        try
        {
            atomicinteger = d;
        }
        catch (Exception exception)
        {
            throw exception;
        }
        l = b044604460446044604460446();
        switch ((l * (b044604460446044604460446 + l)) % b044604460446044604460446)
        {
        default:
            b044604460446044604460446 = 8;
            b044604460446044604460446 = b044604460446044604460446();
            break;

        case 0: // '\0'
            break;
        }
        atomicinteger.set(k);
        return;
    }

    public int stopHapticPlayback()
    {
        d.set(0);
        HapticPlaybackThread hapticplaybackthread = g;
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
        hapticplaybackthread.stopHapticPlayback();
        hapticplaybackthread = g;
        if (((b044604460446044604460446 + b044604460446044604460446) * b044604460446044604460446) % b044604460446044604460446 != b044604460446044604460446)
        {
            b044604460446044604460446 = 48;
            b044604460446044604460446 = 63;
        }
        hapticplaybackthread.getHandler().removeCallbacks(j);
        return 0;
    }

    public void waitHapticStopped()
    {
        boolean flag = g.isStopped();
        int k = 0;
        do
        {
            if (flag || k >= 5)
            {
                break;
            }
            synchronized (g)
            {
                try
                {
                    g.wait(200L);
                }
                // Misplaced declaration of an exception variable
                catch (InterruptedException interruptedexception) { }
            }
            flag = g.isStopped();
            k++;
        } while (true);
        break MISSING_BLOCK_LABEL_121;
        exception;
        hapticplaybackthread;
        JVM INSTR monitorexit ;
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
        throw exception;
        InterruptedException interruptedexception;
    }
}
