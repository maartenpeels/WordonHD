// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.immersion.content;

import android.content.Context;
import android.util.Log;

public class EndpointWarp
{

    private static final String b = "EndpointWarp";
    public static int b041504150415041504150415 = 39;
    public static int b041504150415041504150415 = 1;
    public static int b041504150415041504150415 = 2;
    public static int b041504150415041504150415;
    long a;

    public EndpointWarp(Context context, byte byte0, byte byte1, byte byte2, byte byte3, int i, short word0, 
            byte byte4, byte abyte0[], byte byte5)
    {
        break MISSING_BLOCK_LABEL_4;
        while ((4 * 5) % 2 != 0 && (4 * 5) % 2 != 0) ;
        if (((b041504150415041504150415 + b041504150415041504150415()) * b041504150415041504150415) % b041504150415041504150415 != b041504150415041504150415)
        {
            b041504150415041504150415 = 10;
            b041504150415041504150415 = b041504150415041504150415();
        }
        a = create(context, byte0, byte1, byte2, byte3, i, word0, byte4, abyte0, byte5);
        return;
    }

    public EndpointWarp(Context context, byte abyte0[], int i)
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
        if (((b041504150415041504150415 + b041504150415041504150415) * b041504150415041504150415) % b041504150415041504150415 != b041504150415041504150415())
        {
            b041504150415041504150415 = b041504150415041504150415();
            b041504150415041504150415 = b041504150415041504150415();
        }
        a = createWarp(context, abyte0, i);
    }

    public static int b041504150415041504150415()
    {
        return 29;
    }

    public static int b041504150415041504150415()
    {
        return 1;
    }

    public static int b041504150415041504150415()
    {
        return 0;
    }

    private native long create(Context context, byte byte0, byte byte1, byte byte2, byte byte3, int i, short word0, 
            byte byte4, byte abyte0[], byte byte5);

    private native long createWarp(Context context, byte abyte0[], int i);

    private native void disposeWarp(long l);

    private native void flushWarp(long l);

    private native long getWarpCurrentPosition(long l);

    public static boolean loadSharedLibrary()
    {
        System.loadLibrary("ImmEndpointWarpJ");
        boolean flag = true;
_L2:
        return flag;
_L5:
        if (System.getProperty("java.vm.name").contains("Java HotSpot"))
        {
            return true;
        }
        Log.e("EndpointWarp", "Unable to load libImmEndpointWarpJ.so.Please make sure this file is in the libs/armeabi folder.");
        if (((b041504150415041504150415() + b041504150415041504150415) * b041504150415041504150415()) % b041504150415041504150415 != b041504150415041504150415)
        {
            b041504150415041504150415 = b041504150415041504150415();
            b041504150415041504150415 = b041504150415041504150415();
        }
        unsatisfiedlinkerror.printStackTrace();
        flag1 = false;
_L4:
        flag = flag1;
        if ((3 + 9) % 2 + 1 == 1) goto _L2; else goto _L1
_L1:
        if ((3 + 9) % 2 + 1 != 1) goto _L4; else goto _L3
_L3:
        return false;
        unsatisfiedlinkerror;
          goto _L5
    }

    private native void startWarp(long l);

    private native void stopWarp(long l);

    private native void updateWarp(long l, byte abyte0[], int i, long l1, long l2);

    public void dispose()
    {
        throw new Runtime("d2j fail translate: java.lang.IndexOutOfBoundsException: fromIndex < 0: -1\n\tat java.util.BitSet.nextSetBit(BitSet.java:701)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.makeSureAllElementAreAssigned(FillArrayTransformer.java:505)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.transformReportChanged(FillArrayTransformer.java:123)\n\tat com.googlecode.dex2jar.ir.ts.StatedTransformer.transform(StatedTransformer.java:10)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:149)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
    }

    public void flush()
    {
        throw new Runtime("d2j fail translate: java.lang.IndexOutOfBoundsException: fromIndex < 0: -1\n\tat java.util.BitSet.nextSetBit(BitSet.java:701)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.makeSureAllElementAreAssigned(FillArrayTransformer.java:505)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.transformReportChanged(FillArrayTransformer.java:123)\n\tat com.googlecode.dex2jar.ir.ts.StatedTransformer.transform(StatedTransformer.java:10)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:149)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
    }

    public long getCurrentPosition()
    {
        long l;
        if (((b041504150415041504150415 + b041504150415041504150415) * b041504150415041504150415) % b041504150415041504150415 != b041504150415041504150415)
        {
            b041504150415041504150415 = b041504150415041504150415();
            b041504150415041504150415 = b041504150415041504150415();
        }
        l = a;
        break MISSING_BLOCK_LABEL_38;
        while ((4 * 5) % 2 != 0 && (3 + 9) % 2 + 1 != 1) ;
        return getWarpCurrentPosition(l);
    }

    public void start()
    {
        int i;
        long l;
        try
        {
            l = a;
        }
        catch (Exception exception1)
        {
            throw exception1;
        }
        i = b041504150415041504150415;
        switch ((i * (b041504150415041504150415 + i)) % b041504150415041504150415)
        {
        default:
            b041504150415041504150415 = 27;
            b041504150415041504150415 = b041504150415041504150415();
            break;

        case 0: // '\0'
            break;
        }
        try
        {
            startWarp(l);
            return;
        }
        catch (Exception exception)
        {
            throw exception;
        }
    }

    public void stop()
    {
        long l;
        l = a;
        if (((b041504150415041504150415() + b041504150415041504150415) * b041504150415041504150415()) % b041504150415041504150415 != b041504150415041504150415)
        {
            b041504150415041504150415 = 12;
            b041504150415041504150415 = b041504150415041504150415();
        }
        break MISSING_BLOCK_LABEL_37;
        while ((4 * 5) % 2 != 0 && (4 * 5) % 2 != 0) ;
        stopWarp(l);
        return;
    }

    public void update(byte abyte0[], int i, long l, long l1)
    {
        try
        {
            updateWarp(a, abyte0, i, l, l1);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw abyte0;
        }
        if (((b041504150415041504150415 + b041504150415041504150415) * b041504150415041504150415) % b041504150415041504150415 != b041504150415041504150415)
        {
            b041504150415041504150415 = b041504150415041504150415();
            b041504150415041504150415 = b041504150415041504150415();
        }
    }
}
