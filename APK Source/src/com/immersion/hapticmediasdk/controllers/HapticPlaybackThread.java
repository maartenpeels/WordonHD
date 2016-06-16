// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.immersion.hapticmediasdk.controllers;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.SystemClock;
import com.immersion.content.EndpointWarp;
import com.immersion.hapticmediasdk.models.NotEnoughHapticBytesAvailableException;
import com.immersion.hapticmediasdk.utils.FileManager;
import com.immersion.hapticmediasdk.utils.Log;
import com.immersion.hapticmediasdk.utils.Profiler;
import com.immersion.hapticmediasdk.utils.RuntimeInfo;
import java.util.ArrayList;
import java.util.Iterator;
import rrrrrr.ccrcrr;
import rrrrrr.crcrrr;
import rrrrrr.rccrrr;
import rrrrrr.rrcrrr;

// Referenced classes of package com.immersion.hapticmediasdk.controllers:
//            HapticDownloadThread, IHapticFileReader

public class HapticPlaybackThread extends Thread
{
    /* member class not found */
    class ccrcrr {}

    /* member class not found */
    class crcrrr {}

    /* member class not found */
    class rccrrr {}

    /* member class not found */
    class rrcrrr {}


    private static final long D = 100L;
    private static final int E = 5;
    public static final int HAPTIC_BYTES_AVAILABLE_TO_DOWNLOAD = 3;
    public static final int HAPTIC_DOWNLOAD_ERROR = 8;
    public static final String HAPTIC_DOWNLOAD_EXCEPTION_KEY = "haptic_download_exception";
    public static final int HAPTIC_PAUSE_PLAYBACK = 5;
    public static final int HAPTIC_PLAYBACK_FOR_TIME_CODE = 2;
    public static final int HAPTIC_PLAYBACK_IS_READY = 6;
    public static final int HAPTIC_QUIT_PLAYBACK = 9;
    public static final int HAPTIC_SET_BUFFERING_POSITION = 1;
    public static final int HAPTIC_STOP_PLAYBACK = 4;
    public static final int PAUSE_AV_FOR_HAPTIC_BUFFERING = 7;
    private static final String a = "HapticPlaybackThread";
    private static final int b = 0x80000000;
    public static int b042704270427042704270427 = 1;
    public static int b042704270427042704270427 = 0;
    public static int b042704270427042704270427 = 86;
    public static int b042704270427042704270427 = 2;
    private static final String c = "playback_timecode";
    private static final String d = "playback_uptime";
    private RuntimeInfo A;
    private boolean B;
    private FileManager C;
    private final Runnable F;
    private final Runnable G;
    public volatile boolean b044404440444044404440444_boolean_fld;
    public Context b044404440444044404440444_android_content_Context_fld;
    public volatile boolean b044404440444044404440444_boolean_fld;
    private int e;
    private final String f;
    private Handler g;
    private final Handler h;
    private HapticDownloadThread i;
    private Looper j;
    private IHapticFileReader k;
    private EndpointWarp l;
    private final Profiler m;
    private Object n;
    private Object o;
    private int p;
    private int q;
    private int r;
    private long s;
    private int t;
    private int u;
    private int v;
    private long w;
    private boolean x;
    private boolean y;
    private ArrayList z;

    public HapticPlaybackThread(Context context, String s1, Handler handler, boolean flag, RuntimeInfo runtimeinfo)
    {
        super("HapticPlaybackThread");
        e = 0;
        m = new Profiler();
        n = new Object();
        o = new Object();
        int i1 = b042704270427042704270427;
        switch ((i1 * (b042704270427042704270427 + i1)) % b042704270427042704270427)
        {
        default:
            b042704270427042704270427 = b042704270427042704270427();
            b042704270427042704270427 = b042704270427042704270427();
            // fall through

        case 0: // '\0'
            x = false;
            break;
        }
        break MISSING_BLOCK_LABEL_97;
        while ((4 * 5) % 2 != 0 && (4 * 5) % 2 != 0) ;
        y = false;
        b044404440444044404440444_boolean_fld = false;
        b044404440444044404440444_boolean_fld = false;
        B = false;
        F = new rrcrrr(this);
        G = new crcrrr(this);
        f = s1;
        h = handler;
        b044404440444044404440444_android_content_Context_fld = context;
        B = flag;
        C = new FileManager(context);
        A = runtimeinfo;
        z = new ArrayList();
        return;
    }

    private void a()
    {
        do
        {
            if (!i.isAlive())
            {
                break;
            }
            if (((b042704270427042704270427 + b042704270427042704270427) * b042704270427042704270427) % b042704270427042704270427 != b042704270427042704270427())
            {
                b042704270427042704270427 = b042704270427042704270427();
                b042704270427042704270427 = 65;
            }
            i.terminate();
            i.interrupt();
            Thread.currentThread();
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
            Thread.yield();
        } while (true);
    }

    private void a(int i1, long l1)
    {
        if (y)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        if (k == null)
        {
            return;
        }
        Object obj;
        if (l != null)
        {
            break MISSING_BLOCK_LABEL_94;
        }
        obj = k.getEncryptedHapticHeader();
        if (obj == null)
        {
            try
            {
                Log.e("HapticPlaybackThread", "corrupted hapt file or unsupported format");
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                Log.e("HapticPlaybackThread", ((Error) (obj)).getMessage());
            }
            return;
        }
        l = new EndpointWarp(b044404440444044404440444_android_content_Context_fld, ((byte []) (obj)), obj.length);
        if (l == null)
        {
            Log.d("HapticPlaybackThread", "Error creating endpointwarp");
            return;
        }
        l.start();
        b044404440444044404440444_boolean_fld = false;
        y = true;
        v = 0;
        synchronized (n)
        {
            u = i1;
            t = u;
            if (w != 0L)
            {
                w = SystemClock.uptimeMillis();
            }
        }
        s = l1;
        h();
        return;
        exception;
_L2:
        (3 + 9) % 2 + 1;
        JVM INSTR tableswitch 0 1: default 200
    //                   0 169
    //                   1 235;
           goto _L1 _L2 _L3
_L1:
        (3 + 9) % 2 + 1;
        JVM INSTR tableswitch 0 1: default 232
    //                   0 169
    //                   1 235;
           goto _L1 _L2 _L3
_L3:
        obj1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a(Message message)
    {
        x = true;
        Message message1 = h.obtainMessage(8);
        message1.setData(message.getData());
        h.sendMessage(message1);
        if (((b042704270427042704270427 + b042704270427042704270427) * b042704270427042704270427) % b042704270427042704270427 != b042704270427042704270427)
        {
            b042704270427042704270427 = 41;
            b042704270427042704270427 = b042704270427042704270427();
        }
        do
        {
            if ((4 * 5) % 2 == 0)
            {
                return;
            }
        } while ((3 + 9) % 2 + 1 != 1);
    }

    private void b()
    {
        if (i != null)
        {
            a();
            i = null;
        }
        synchronized (o)
        {
            g.removeCallbacksAndMessages(null);
        }
        if (j != null)
        {
            j.quit();
            j = null;
        }
        if (k != null)
        {
            k.close();
            k = null;
        }
        if (l != null)
        {
            l.stop();
            l.dispose();
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
            l = null;
        }
        C.deleteHapticStorage();
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static void b041104110411041104110411(HapticPlaybackThread hapticplaybackthread, int i1, long l1)
    {
        if (((b042704270427042704270427 + b042704270427042704270427) * b042704270427042704270427) % b042704270427042704270427 != b042704270427042704270427)
        {
            b042704270427042704270427 = b042704270427042704270427();
            b042704270427042704270427 = 45;
        }
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
        hapticplaybackthread.a(i1, l1);
    }

    public static EndpointWarp b041104110411041104110411(HapticPlaybackThread hapticplaybackthread)
    {
        throw new Runtime("d2j fail translate: java.lang.IndexOutOfBoundsException: fromIndex < 0: -1\n\tat java.util.BitSet.nextSetBit(BitSet.java:701)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.makeSureAllElementAreAssigned(FillArrayTransformer.java:505)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.transformReportChanged(FillArrayTransformer.java:123)\n\tat com.googlecode.dex2jar.ir.ts.StatedTransformer.transform(StatedTransformer.java:10)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:149)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
    }

    public static void b041104110411041104110411(HapticPlaybackThread hapticplaybackthread)
    {
        int i1 = b042704270427042704270427;
        switch ((i1 * (b042704270427042704270427 + i1)) % b042704270427042704270427)
        {
        default:
            b042704270427042704270427 = 25;
            b042704270427042704270427 = 36;
            break;

        case 0: // '\0'
            break;
        }
        try
        {
            hapticplaybackthread.g();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (HapticPlaybackThread hapticplaybackthread)
        {
            throw hapticplaybackthread;
        }
    }

    public static int b041104110411041104110411(HapticPlaybackThread hapticplaybackthread, int i1)
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
        int j1 = b042704270427042704270427;
        switch ((j1 * (b042704270427042704270427 + j1)) % b042704270427042704270427)
        {
        default:
            b042704270427042704270427 = 74;
            b042704270427042704270427 = b042704270427042704270427();
            // fall through

        case 0: // '\0'
            hapticplaybackthread.p = i1;
            break;
        }
        return i1;
    }

    public static boolean b041104110411041104110411(HapticPlaybackThread hapticplaybackthread)
    {
        boolean flag;
        try
        {
            flag = hapticplaybackthread.y;
        }
        // Misplaced declaration of an exception variable
        catch (HapticPlaybackThread hapticplaybackthread)
        {
            throw hapticplaybackthread;
        }
        if (((b042704270427042704270427 + b042704270427042704270427) * b042704270427042704270427) % b042704270427042704270427 != b042704270427042704270427)
        {
            b042704270427042704270427 = b042704270427042704270427();
            b042704270427042704270427 = b042704270427042704270427();
        }
        return flag;
    }

    public static int b041104110411041104110411(HapticPlaybackThread hapticplaybackthread)
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
        if (((b042704270427042704270427() + b042704270427042704270427) * b042704270427042704270427()) % b042704270427042704270427 != b042704270427042704270427)
        {
            b042704270427042704270427 = b042704270427042704270427();
            b042704270427042704270427 = b042704270427042704270427();
        }
        return hapticplaybackthread.u;
    }

    public static FileManager b041104110411041104110411(HapticPlaybackThread hapticplaybackthread)
    {
        throw new Runtime("d2j fail translate: java.lang.IndexOutOfBoundsException: fromIndex < 0: -1\n\tat java.util.BitSet.nextSetBit(BitSet.java:701)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.makeSureAllElementAreAssigned(FillArrayTransformer.java:505)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.transformReportChanged(FillArrayTransformer.java:123)\n\tat com.googlecode.dex2jar.ir.ts.StatedTransformer.transform(StatedTransformer.java:10)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:149)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
    }

    public static int b041104110411041104110411(HapticPlaybackThread hapticplaybackthread, int i1)
    {
        while ((3 + 9) % 2 + 1 != 1 && (4 * 5) % 2 != 0) ;
        if (((b042704270427042704270427 + b042704270427042704270427) * b042704270427042704270427) % b042704270427042704270427 != b042704270427042704270427)
        {
            b042704270427042704270427 = b042704270427042704270427();
            b042704270427042704270427 = 87;
        }
        hapticplaybackthread.r = i1;
        return i1;
    }

    public static ArrayList b041104110411041104110411(HapticPlaybackThread hapticplaybackthread)
    {
        if (((b042704270427042704270427 + b042704270427042704270427) * b042704270427042704270427) % b042704270427042704270427 != b042704270427042704270427)
        {
            b042704270427042704270427 = b042704270427042704270427();
            b042704270427042704270427 = 92;
        }
        try
        {
            hapticplaybackthread = hapticplaybackthread.z;
        }
        // Misplaced declaration of an exception variable
        catch (HapticPlaybackThread hapticplaybackthread)
        {
            throw hapticplaybackthread;
        }
        return hapticplaybackthread;
    }

    public static Runnable b041104110411041104110411(HapticPlaybackThread hapticplaybackthread)
    {
        if (((b042704270427042704270427() + b042704270427042704270427) * b042704270427042704270427()) % b042704270427042704270427 != b042704270427042704270427)
        {
            b042704270427042704270427 = b042704270427042704270427();
            b042704270427042704270427 = b042704270427042704270427();
        }
        try
        {
            hapticplaybackthread = hapticplaybackthread.G;
        }
        // Misplaced declaration of an exception variable
        catch (HapticPlaybackThread hapticplaybackthread)
        {
            throw hapticplaybackthread;
        }
        return hapticplaybackthread;
    }

    public static int b041104110411041104110411(HapticPlaybackThread hapticplaybackthread, int i1)
    {
        if (((b042704270427042704270427 + b042704270427042704270427) * b042704270427042704270427) % b042704270427042704270427 != b042704270427042704270427)
        {
            b042704270427042704270427 = b042704270427042704270427();
            b042704270427042704270427 = 23;
        }
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
        hapticplaybackthread.e = i1;
        return i1;
    }

    public static Runnable b041104110411041104110411(HapticPlaybackThread hapticplaybackthread)
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
        hapticplaybackthread = hapticplaybackthread.F;
        if (((b042704270427042704270427 + b042704270427042704270427) * b042704270427042704270427) % b042704270427042704270427 != b042704270427042704270427())
        {
            b042704270427042704270427 = b042704270427042704270427();
            b042704270427042704270427 = 18;
        }
        return hapticplaybackthread;
    }

    public static void b041104110411041104110411(HapticPlaybackThread hapticplaybackthread)
    {
        while ((3 + 9) % 2 + 1 != 1 && (3 + 9) % 2 + 1 != 1) ;
        hapticplaybackthread.e();
        try
        {
            throw new NullPointerException();
        }
        // Misplaced declaration of an exception variable
        catch (HapticPlaybackThread hapticplaybackthread)
        {
            b042704270427042704270427 = b042704270427042704270427();
        }
    }

    public static int b041104110411041104110411(HapticPlaybackThread hapticplaybackthread, int i1)
    {
        int j1;
        j1 = hapticplaybackthread.u;
        break MISSING_BLOCK_LABEL_5;
        while ((3 + 9) % 2 + 1 != 1 && (4 * 5) % 2 != 0) ;
        i1 = j1 + i1;
        if (((b042704270427042704270427 + b042704270427042704270427) * b042704270427042704270427) % b042704270427042704270427 != b042704270427042704270427)
        {
            b042704270427042704270427 = 55;
            b042704270427042704270427 = 1;
        }
        hapticplaybackthread.u = i1;
        return i1;
    }

    public static IHapticFileReader b041104110411041104110411(HapticPlaybackThread hapticplaybackthread, IHapticFileReader ihapticfilereader)
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
        if (((b042704270427042704270427 + b042704270427042704270427) * b042704270427042704270427) % b042704270427042704270427 != b042704270427042704270427)
        {
            b042704270427042704270427 = b042704270427042704270427();
            b042704270427042704270427 = b042704270427042704270427();
        }
        hapticplaybackthread.k = ihapticfilereader;
        return ihapticfilereader;
    }

    public static int b042704270427042704270427()
    {
        return 2;
    }

    public static int b042704270427042704270427()
    {
        return 41;
    }

    public static void b041104110411041104110411(HapticPlaybackThread hapticplaybackthread)
    {
        hapticplaybackthread.d();
        int i1 = b042704270427042704270427;
        switch ((i1 * (b042704270427042704270427 + i1)) % b042704270427042704270427)
        {
        default:
            b042704270427042704270427 = b042704270427042704270427();
            b042704270427042704270427 = b042704270427042704270427();
            break;

        case 0: // '\0'
            break;
        }
        do
        {
            if ((3 + 9) % 2 + 1 == 1)
            {
                return;
            }
        } while ((3 + 9) % 2 + 1 != 1);
    }

    public static RuntimeInfo b041104110411041104110411(HapticPlaybackThread hapticplaybackthread)
    {
        int i1 = b042704270427042704270427;
        switch ((i1 * (b042704270427042704270427 + i1)) % b042704270427042704270427)
        {
        default:
            b042704270427042704270427 = b042704270427042704270427();
            b042704270427042704270427 = 64;
            break;

        case 0: // '\0'
            break;
        }
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
        return hapticplaybackthread.A;
    }

    public static void b041104110411041104110411(HapticPlaybackThread hapticplaybackthread)
    {
        int i1;
        while ((3 + 9) % 2 + 1 != 1 && (4 * 5) % 2 != 0) ;
        i1 = b042704270427042704270427();
        switch ((i1 * (b042704270427042704270427 + i1)) % b042704270427042704270427)
        {
        default:
            b042704270427042704270427 = b042704270427042704270427();
            b042704270427042704270427 = b042704270427042704270427();
            // fall through

        case 0: // '\0'
            hapticplaybackthread.f();
            break;
        }
    }

    public static Handler b041104110411041104110411(HapticPlaybackThread hapticplaybackthread)
    {
        int i1;
        try
        {
            hapticplaybackthread = hapticplaybackthread.g;
        }
        // Misplaced declaration of an exception variable
        catch (HapticPlaybackThread hapticplaybackthread)
        {
            throw hapticplaybackthread;
        }
        i1 = b042704270427042704270427;
        switch ((i1 * (b042704270427042704270427 + i1)) % b042704270427042704270427)
        {
        default:
            b042704270427042704270427 = 9;
            b042704270427042704270427 = 62;
            // fall through

        case 0: // '\0'
            return hapticplaybackthread;
        }
    }

    public static void b041104110411041104110411(HapticPlaybackThread hapticplaybackthread)
    {
        throw new Runtime("d2j fail translate: java.lang.IndexOutOfBoundsException: fromIndex < 0: -1\n\tat java.util.BitSet.nextSetBit(BitSet.java:701)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.makeSureAllElementAreAssigned(FillArrayTransformer.java:505)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.transformReportChanged(FillArrayTransformer.java:123)\n\tat com.googlecode.dex2jar.ir.ts.StatedTransformer.transform(StatedTransformer.java:10)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:149)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
    }

    public static int b041104110411041104110411(HapticPlaybackThread hapticplaybackthread, int i1)
    {
        throw new Runtime("d2j fail translate: java.lang.IndexOutOfBoundsException: fromIndex < 0: -1\n\tat java.util.BitSet.nextSetBit(BitSet.java:701)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.makeSureAllElementAreAssigned(FillArrayTransformer.java:505)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.transformReportChanged(FillArrayTransformer.java:123)\n\tat com.googlecode.dex2jar.ir.ts.StatedTransformer.transform(StatedTransformer.java:10)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:149)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
    }

    public static String b041104110411041104110411(HapticPlaybackThread hapticplaybackthread)
    {
_L2:
        if ((4 * 5) % 2 != 0)
        {
            continue; /* Loop/switch isn't completed */
        }
_L3:
        return hapticplaybackthread.f;
        if ((3 + 9) % 2 + 1 != 1) goto _L2; else goto _L1
_L1:
        if (((b042704270427042704270427() + b042704270427042704270427) * b042704270427042704270427()) % b042704270427042704270427 != b042704270427042704270427)
        {
            b042704270427042704270427 = 1;
            b042704270427042704270427 = b042704270427042704270427();
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    public static int b041104110411041104110411(HapticPlaybackThread hapticplaybackthread, int i1)
    {
        if (((b042704270427042704270427 + b042704270427042704270427) * b042704270427042704270427) % b042704270427042704270427() != b042704270427042704270427)
        {
            b042704270427042704270427 = 8;
            b042704270427042704270427 = b042704270427042704270427();
        }
        try
        {
            hapticplaybackthread.q = i1;
        }
        // Misplaced declaration of an exception variable
        catch (HapticPlaybackThread hapticplaybackthread)
        {
            throw hapticplaybackthread;
        }
        return i1;
    }

    public static Object b041104110411041104110411(HapticPlaybackThread hapticplaybackthread)
    {
_L2:
        if ((4 * 5) % 2 != 0)
        {
            continue; /* Loop/switch isn't completed */
        }
_L3:
        return hapticplaybackthread.o;
        if ((3 + 9) % 2 + 1 != 1) goto _L2; else goto _L1
_L1:
        if (((b042704270427042704270427 + b042704270427042704270427) * b042704270427042704270427) % b042704270427042704270427 != b042704270427042704270427())
        {
            b042704270427042704270427 = 2;
            b042704270427042704270427 = 48;
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    public static long b041104110411041104110411(HapticPlaybackThread hapticplaybackthread, long l1)
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
        if (((b042704270427042704270427 + b042704270427042704270427) * b042704270427042704270427) % b042704270427042704270427 != b042704270427042704270427)
        {
            b042704270427042704270427 = b042704270427042704270427();
            b042704270427042704270427 = 90;
        }
        hapticplaybackthread.w = l1;
        return l1;
    }

    public static int b041104110411041104110411(HapticPlaybackThread hapticplaybackthread)
    {
        int i1 = hapticplaybackthread.e;
_L2:
        if ((3 + 9) % 2 + 1 != 1)
        {
            continue; /* Loop/switch isn't completed */
        }
_L3:
        return i1;
        if ((3 + 9) % 2 + 1 != 1) goto _L2; else goto _L1
_L1:
        if (((b042704270427042704270427 + b042704270427042704270427) * b042704270427042704270427) % b042704270427042704270427 != b042704270427042704270427)
        {
            b042704270427042704270427 = 25;
            b042704270427042704270427 = b042704270427042704270427();
            return i1;
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    public static void b041104110411041104110411(HapticPlaybackThread hapticplaybackthread, Message message)
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
        int i1 = b042704270427042704270427;
        switch ((i1 * (b042704270427042704270427() + i1)) % b042704270427042704270427)
        {
        default:
            b042704270427042704270427 = 56;
            b042704270427042704270427 = 92;
            // fall through

        case 0: // '\0'
            hapticplaybackthread.a(message);
            break;
        }
    }

    public static Object b041104110411041104110411(HapticPlaybackThread hapticplaybackthread)
    {
        if (((b042704270427042704270427 + b042704270427042704270427) * b042704270427042704270427) % b042704270427042704270427 != b042704270427042704270427)
        {
            b042704270427042704270427 = 18;
            b042704270427042704270427 = b042704270427042704270427();
        }
        try
        {
            hapticplaybackthread = ((HapticPlaybackThread) (hapticplaybackthread.n));
        }
        // Misplaced declaration of an exception variable
        catch (HapticPlaybackThread hapticplaybackthread)
        {
            throw hapticplaybackthread;
        }
        return hapticplaybackthread;
    }

    public static IHapticFileReader b041104110411041104110411(HapticPlaybackThread hapticplaybackthread)
    {
        int i1 = b042704270427042704270427;
        switch ((i1 * (b042704270427042704270427 + i1)) % b042704270427042704270427)
        {
        default:
            b042704270427042704270427 = b042704270427042704270427();
            b042704270427042704270427 = 19;
            // fall through

        case 0: // '\0'
            hapticplaybackthread = hapticplaybackthread.k;
            break;
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
        return hapticplaybackthread;
    }

    public static int b042704270427042704270427()
    {
        return 1;
    }

    public static int b042704270427042704270427()
    {
        return 0;
    }

    private void c()
    {
        this;
        JVM INSTR monitorenter ;
_L3:
        (4 * 5) % 2;
        JVM INSTR tableswitch 0 1: default 28
    //                   0 59
    //                   1 2;
           goto _L1 _L2 _L3
_L1:
        (4 * 5) % 2;
        JVM INSTR tableswitch 0 1: default 56
    //                   0 59
    //                   1 2;
           goto _L1 _L2 _L3
_L2:
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void d()
    {
        while ((4 * 5) % 2 != 0 && (4 * 5) % 2 != 0) ;
        if (((b042704270427042704270427 + b042704270427042704270427) * b042704270427042704270427) % b042704270427042704270427 != b042704270427042704270427)
        {
            b042704270427042704270427 = 74;
            b042704270427042704270427 = 21;
        }
        if (!x)
        {
            int i1 = r;
            r = i1 + 1;
            if (i1 == 5)
            {
                h.sendMessage(h.obtainMessage(7, p, 0));
                g.postDelayed(F, 100L);
            } else
            if (k != null && k.bufferAtPlaybackPosition(p))
            {
                if (q != 0x80000000)
                {
                    h.sendMessage(h.obtainMessage(6, p, q));
                    return;
                }
            } else
            {
                g.postDelayed(F, 100L);
                return;
            }
        }
    }

    private void e()
    {
        b();
        try
        {
            throw new NullPointerException();
        }
        catch (Exception exception)
        {
            b042704270427042704270427 = b042704270427042704270427();
        }
        try
        {
            throw new NullPointerException();
        }
        catch (Exception exception1)
        {
            b042704270427042704270427 = b042704270427042704270427();
        }
        try
        {
            throw new NullPointerException();
        }
        catch (Exception exception2)
        {
            b042704270427042704270427 = 38;
        }
        b044404440444044404440444_boolean_fld = false;
        c();
        return;
_L6:
        b044404440444044404440444_boolean_fld = false;
        c();
        return;
        Object obj;
        obj;
        Log.e("HapticPlaybackThread", (new StringBuilder()).append("quit() : ").append(((Exception) (obj)).getMessage()).toString());
_L4:
        switch ((4 * 5) % 2)
        {
        case 0: // '\0'
            break; /* Loop/switch isn't completed */

        case 1: // '\001'
            continue; /* Loop/switch isn't completed */
        }
_L2:
        switch ((3 + 9) % 2 + 1)
        {
        default:
            continue; /* Loop/switch isn't completed */

        case 0: // '\0'
            break;

        case 1: // '\001'
            break; /* Loop/switch isn't completed */
        }
        break; /* Loop/switch isn't completed */
        obj;
        b044404440444044404440444_boolean_fld = false;
        c();
        throw obj;
        if (true) goto _L2; else goto _L1
_L1:
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void f()
    {
        y = false;
        if (l != null)
        {
            l.stop();
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
        g.removeCallbacks(F);
        removePlaybackCallbacks();
        synchronized (n)
        {
            u = 0;
            t = 0;
            w = 0L;
        }
        v = 0;
        s = 0L;
        b044404440444044404440444_boolean_fld = true;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void g()
    {
        y = false;
        removePlaybackCallbacks();
        break MISSING_BLOCK_LABEL_9;
        int i1;
        while ((3 + 9) % 2 + 1 != 1 && (3 + 9) % 2 + 1 != 1) ;
        i1 = b042704270427042704270427;
        switch ((i1 * (b042704270427042704270427() + i1)) % b042704270427042704270427)
        {
        default:
            b042704270427042704270427 = b042704270427042704270427();
            b042704270427042704270427 = b042704270427042704270427();
            // fall through

        case 0: // '\0'
            return;
        }
    }

    private void h()
    {
        if (!y)
        {
            break MISSING_BLOCK_LABEL_220;
        }
        int i1;
        int j1;
        synchronized (n)
        {
            i1 = u;
            j1 = t;
        }
        ccrcrr ccrcrr1;
        int k1;
        long l1;
        long l2;
        long l3;
        try
        {
            obj = k.getBufferForPlaybackPosition(i1);
            k1 = k.getHapticBlockIndex(i1);
            l1 = k.getBlockOffset(i1);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            y = false;
            h.sendMessage(h.obtainMessage(7, i1, 0));
            return;
        }
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_257;
        }
        l2 = s;
        l3 = v;
        ccrcrr1 = new ccrcrr(this, i1, j1, ((byte []) (obj)), k1, l1);
        obj = o;
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
        obj;
        JVM INSTR monitorenter ;
        z.add(ccrcrr1);
        obj;
        JVM INSTR monitorexit ;
        g.postAtTime(ccrcrr1, (long)e + (l3 + l2));
        v = v + e;
        m.startTimingII();
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        Exception exception1;
        exception1;
        obj;
        JVM INSTR monitorexit ;
        throw exception1;
        synchronized (n)
        {
            u = 0;
            t = 0;
        }
        v = 0;
        s = 0L;
        y = false;
        return;
        exception2;
        obj1;
        JVM INSTR monitorexit ;
        throw exception2;
    }

    public Handler getHandler()
    {
        Handler handler;
        try
        {
            handler = g;
        }
        catch (Exception exception)
        {
            throw exception;
        }
        if (((b042704270427042704270427 + b042704270427042704270427) * b042704270427042704270427) % b042704270427042704270427 != b042704270427042704270427)
        {
            b042704270427042704270427 = b042704270427042704270427();
            b042704270427042704270427 = 58;
        }
        return handler;
    }

    public boolean isStarted()
    {
        boolean flag;
        flag = b044404440444044404440444_boolean_fld;
        break MISSING_BLOCK_LABEL_5;
        int i1;
        while ((4 * 5) % 2 != 0 && (3 + 9) % 2 + 1 != 1) ;
        i1 = b042704270427042704270427;
        switch ((i1 * (b042704270427042704270427 + i1)) % b042704270427042704270427)
        {
        default:
            b042704270427042704270427 = 69;
            b042704270427042704270427 = b042704270427042704270427();
            // fall through

        case 0: // '\0'
            return flag;
        }
    }

    public boolean isStopped()
    {
        boolean flag = b044404440444044404440444_boolean_fld;
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
        int i1 = b042704270427042704270427;
        switch ((i1 * (b042704270427042704270427() + i1)) % b042704270427042704270427)
        {
        default:
            b042704270427042704270427 = 11;
            b042704270427042704270427 = b042704270427042704270427();
            // fall through

        case 0: // '\0'
            return flag;
        }
    }

    public void pauseHapticPlayback()
    {
        if (((b042704270427042704270427 + b042704270427042704270427) * b042704270427042704270427) % b042704270427042704270427() != b042704270427042704270427())
        {
            b042704270427042704270427 = 98;
            b042704270427042704270427 = 68;
        }
        g.sendEmptyMessage(5);
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
    }

    public void playHapticForPlaybackPosition(int i1, long l1)
    {
        removePlaybackCallbacks();
        g.removeMessages(2);
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
        Bundle bundle = new Bundle();
        bundle.putInt("playback_timecode", i1);
        bundle.putLong("playback_uptime", l1);
        Message message = g.obtainMessage(2);
        try
        {
            throw new NullPointerException();
        }
        catch (Exception exception)
        {
            b042704270427042704270427 = 75;
        }
        i1 = 0;
        Exception exception1;
        try
        {
            do
            {
                i1 /= 0;
            } while (true);
        }
        catch (Exception exception2)
        {
            b042704270427042704270427 = b042704270427042704270427();
        }
        break MISSING_BLOCK_LABEL_163;
        exception1;
        b042704270427042704270427 = 38;
        message.setData(bundle);
        g.sendMessage(message);
        return;
        throw new NullPointerException();
    }

    public void prepareHapticPlayback(int i1, int j1)
    {
_L2:
        if ((4 * 5) % 2 != 0)
        {
            continue; /* Loop/switch isn't completed */
        }
_L3:
        g.removeMessages(1);
        g.sendMessage(g.obtainMessage(1, i1, j1));
        return;
        if ((4 * 5) % 2 != 0) goto _L2; else goto _L1
_L1:
        if (((b042704270427042704270427() + b042704270427042704270427) * b042704270427042704270427()) % b042704270427042704270427 != b042704270427042704270427)
        {
            b042704270427042704270427 = b042704270427042704270427();
            b042704270427042704270427 = 41;
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    public void quitHapticPlayback()
    {
        boolean flag;
        try
        {
            flag = g.sendEmptyMessage(9);
        }
        catch (Exception exception)
        {
            throw exception;
        }
        if (flag)
        {
            break MISSING_BLOCK_LABEL_55;
        }
        if (((b042704270427042704270427 + b042704270427042704270427()) * b042704270427042704270427) % b042704270427042704270427 != b042704270427042704270427)
        {
            b042704270427042704270427 = b042704270427042704270427();
            b042704270427042704270427 = 16;
        }
        b044404440444044404440444_boolean_fld = false;
        c();
        return;
        Exception exception1;
        exception1;
        throw exception1;
    }

    public void removePlaybackCallbacks()
    {
        Object obj = o;
        obj;
        JVM INSTR monitorenter ;
        ccrcrr ccrcrr1;
        for (Iterator iterator = z.iterator(); iterator.hasNext(); g.removeCallbacks(ccrcrr1))
        {
            ccrcrr1 = (ccrcrr)iterator.next();
        }

          goto _L1
        Exception exception;
        exception;
          goto _L2
_L3:
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L1:
        z.clear();
        obj;
        JVM INSTR monitorexit ;
        return;
_L2:
        while ((4 * 5) % 2 != 0 && (3 + 9) % 2 + 1 != 1) ;
          goto _L3
    }

    public void run()
    {
        Process.setThreadPriority(-19);
        Looper.prepare();
        break MISSING_BLOCK_LABEL_8;
        while ((4 * 5) % 2 != 0 && (4 * 5) % 2 != 0) ;
        j = Looper.myLooper();
        g = new rccrrr(this, null);
        try
        {
            throw new NullPointerException();
        }
        catch (Exception exception)
        {
            b042704270427042704270427 = b042704270427042704270427();
        }
        i = new HapticDownloadThread(f, g, B, C);
        i.start();
        b044404440444044404440444_boolean_fld = true;
        c();
        Looper.loop();
        return;
    }

    public void stopHapticPlayback()
    {
        int i1;
        try
        {
            g.sendEmptyMessage(4);
        }
        catch (Exception exception)
        {
            throw exception;
        }
        i1 = b042704270427042704270427;
        switch ((i1 * (b042704270427042704270427 + i1)) % b042704270427042704270427)
        {
        default:
            b042704270427042704270427 = 35;
            b042704270427042704270427 = 24;
            // fall through

        case 0: // '\0'
            return;
        }
    }

    public void syncUpdate(int i1, long l1)
    {
        Object obj = n;
        obj;
        JVM INSTR monitorenter ;
        long l2 = SystemClock.uptimeMillis();
        i1 = (int)((long)i1 + (l2 - l1));
        int j1;
        j1 = u;
        j1 = i1 - ((int)(l2 - w) + j1);
        if (50 >= Math.abs(j1)) goto _L2; else goto _L1
_L1:
        u = j1 + u;
_L5:
        (4 * 5) % 2;
        JVM INSTR tableswitch 0 1: default 92
    //                   0 127
    //                   1 65;
           goto _L3 _L4 _L5
_L3:
        (3 + 9) % 2 + 1;
        JVM INSTR tableswitch 0 1: default 124
    //                   0 65
    //                   1 127;
           goto _L3 _L5 _L4
_L4:
        t = u;
        g.sendMessage(g.obtainMessage(1, i1, 0x80000000));
_L2:
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
