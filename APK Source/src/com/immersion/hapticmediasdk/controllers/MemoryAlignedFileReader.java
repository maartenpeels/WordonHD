// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.immersion.hapticmediasdk.controllers;

import com.immersion.content.HapticHeaderUtils;
import com.immersion.content.HeaderUtils;
import com.immersion.hapticmediasdk.models.HapticFileInformation;
import com.immersion.hapticmediasdk.models.NotEnoughHapticBytesAvailableException;
import com.immersion.hapticmediasdk.utils.FileManager;
import com.immersion.hapticmediasdk.utils.Log;
import com.immersion.hapticmediasdk.utils.Profiler;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import rrrrrr.crrcrr;
import rrrrrr.rcrcrr;

// Referenced classes of package com.immersion.hapticmediasdk.controllers:
//            IHapticFileReader

public class MemoryAlignedFileReader
    implements IHapticFileReader
{
    /* member class not found */
    class crrcrr {}

    /* member class not found */
    class rcrcrr {}


    private static final String a = "MemoryAlignedFileReader";
    public static int b041504150415041504150415 = 10;
    public static int b041504150415041504150415 = 1;
    public static int b041504150415041504150415 = 0;
    public static int b041504150415041504150415 = 2;
    private static int h = 0;
    private static int i = 0;
    private static final int k = 1024;
    private static final int l = 3072;
    private static final int t = 16;
    private File b;
    private FileChannel c;
    private rcrcrr d;
    private rcrcrr e;
    private int f;
    private int g;
    private HapticFileInformation j;
    private String m;
    private FileManager n;
    private HeaderUtils o;
    private byte p[];
    private final Profiler q;
    private int r;
    private int s;

    public MemoryAlignedFileReader(String s1, HeaderUtils headerutils)
    {
        int i1;
        try
        {
            super();
            f = 0;
            m = null;
            n = null;
            p = null;
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            throw s1;
        }
        try
        {
            q = new Profiler();
            m = s1;
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            throw s1;
        }
        i1 = b041504150415041504150415;
        switch ((i1 * (b041504150415041504150415 + i1)) % b041504150415041504150415)
        {
        default:
            b041504150415041504150415 = b041504150415041504150415();
            b041504150415041504150415 = 92;
            break;

        case 0: // '\0'
            break;
        }
        o = headerutils;
        return;
    }

    public MemoryAlignedFileReader(String s1, FileManager filemanager, int i1)
    {
        try
        {
            super();
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            throw s1;
        }
        if (((b041504150415041504150415 + b041504150415041504150415()) * b041504150415041504150415) % b041504150415041504150415 != b041504150415041504150415)
        {
            b041504150415041504150415 = b041504150415041504150415();
            b041504150415041504150415 = b041504150415041504150415();
        }
        f = 0;
        m = null;
        n = null;
        p = null;
        q = new Profiler();
        try
        {
            m = s1;
            n = filemanager;
            o = new HapticHeaderUtils();
            f = i1;
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            throw s1;
        }
    }

    private int a(rcrcrr rcrcrr1, int i1)
    {
        if (((b041504150415041504150415 + b041504150415041504150415) * b041504150415041504150415) % b041504150415041504150415 != b041504150415041504150415)
        {
            b041504150415041504150415 = 0;
            b041504150415041504150415 = b041504150415041504150415();
        }
        int j1;
        int k1;
        try
        {
            j1 = rcrcrr1.mHapticDataOffset;
        }
        // Misplaced declaration of an exception variable
        catch (rcrcrr rcrcrr1)
        {
            throw rcrcrr1;
        }
        try
        {
            k1 = rcrcrr1.mMappedByteBuffer.capacity();
        }
        // Misplaced declaration of an exception variable
        catch (rcrcrr rcrcrr1)
        {
            throw rcrcrr1;
        }
        return (i1 - j1) % k1;
    }

    private boolean a()
    {
        Object obj;
        Object obj1;
        FileChannel filechannel;
        filechannel = null;
        obj1 = null;
        obj = filechannel;
        if (j != null)
        {
            return true;
        }
        obj = filechannel;
        if (b != null) goto _L2; else goto _L1
_L1:
        obj = filechannel;
        if (n == null) goto _L4; else goto _L3
_L3:
        obj = filechannel;
        b = n.getHapticStorageFile(m);
_L2:
        obj = filechannel;
        if (c != null)
        {
            break MISSING_BLOCK_LABEL_83;
        }
        obj = filechannel;
        obj1 = new RandomAccessFile(b, "r");
        c = ((RandomAccessFile) (obj1)).getChannel();
        obj = obj1;
        filechannel = c;
        break MISSING_BLOCK_LABEL_90;
        obj1;
_L6:
        try
        {
            Log.e("MemoryAlignedFileReader", "FileNotFoundException");
            n.closeCloseable(((java.io.Closeable) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw obj;
        }
        try
        {
            n.closeCloseable(c);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw obj;
        }
        break; /* Loop/switch isn't completed */
        obj;
        ((Exception) (obj)).printStackTrace();
        break; /* Loop/switch isn't completed */
        if (filechannel == null)
        {
            if (((b041504150415041504150415 + b041504150415041504150415) * b041504150415041504150415) % b041504150415041504150415 != b041504150415041504150415)
            {
                b041504150415041504150415 = b041504150415041504150415();
                b041504150415041504150415 = 96;
            }
            return false;
        }
        obj = obj1;
        return b();
_L4:
        obj = filechannel;
        if (m == null)
        {
            break MISSING_BLOCK_LABEL_205;
        }
        obj = filechannel;
        b = new File(m);
        continue; /* Loop/switch isn't completed */
        return false;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        filenotfoundexception = ((FileNotFoundException) (obj1));
        if (true) goto _L6; else goto _L5
_L5:
        return false;
        if (true) goto _L2; else goto _L7
_L7:
    }

    private boolean a(int i1)
    {
        if (((b041504150415041504150415 + b041504150415041504150415()) * b041504150415041504150415) % b041504150415041504150415 != b041504150415041504150415)
        {
            b041504150415041504150415 = 31;
            b041504150415041504150415 = 17;
        }
        int j1;
        try
        {
            j1 = g;
        }
        catch (Exception exception)
        {
            throw exception;
        }
        return j1 >= i1;
    }

    private int b(int i1)
    {
        if (o != null)
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
            int j1 = b041504150415041504150415;
            switch ((j1 * (b041504150415041504150415 + j1)) % b041504150415041504150415)
            {
            default:
                b041504150415041504150415 = 53;
                b041504150415041504150415 = 85;
                // fall through

            case 0: // '\0'
                return o.calculateByteOffsetIntoHapticData(i1);
            }
        } else
        {
            return 0;
        }
    }

    private boolean b()
    {
        throw new Runtime("d2j fail translate: java.lang.IndexOutOfBoundsException: fromIndex < 0: -1\n\tat java.util.BitSet.nextSetBit(BitSet.java:701)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.makeSureAllElementAreAssigned(FillArrayTransformer.java:505)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.transformReportChanged(FillArrayTransformer.java:123)\n\tat com.googlecode.dex2jar.ir.ts.StatedTransformer.transform(StatedTransformer.java:10)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:149)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
    }

    private static boolean b(rcrcrr rcrcrr1, int i1)
    {
        if (i1 < rcrcrr1.mHapticDataOffset)
        {
            break MISSING_BLOCK_LABEL_8;
        } else
        {
            return false;
        }
        while ((3 + 9) % 2 + 1 != 1 && (4 * 5) % 2 != 0) ;
        if (((b041504150415041504150415 + b041504150415041504150415) * b041504150415041504150415) % b041504150415041504150415() != b041504150415041504150415)
        {
            b041504150415041504150415 = 22;
            b041504150415041504150415 = b041504150415041504150415();
        }
        return true;
    }

    public static int b041504150415041504150415()
    {
        return 1;
    }

    public static int b041504150415041504150415()
    {
        return 23;
    }

    public static int b041504150415041504150415()
    {
        return 2;
    }

    public static int b041504150415041504150415()
    {
        return 0;
    }

    private int c(int i1)
    {
        int j1 = s;
_L2:
        if ((3 + 9) % 2 + 1 != 1)
        {
            continue; /* Loop/switch isn't completed */
        }
_L3:
        return j1 + b(i1);
        if ((3 + 9) % 2 + 1 != 1) goto _L2; else goto _L1
_L1:
        if (((b041504150415041504150415() + b041504150415041504150415) * b041504150415041504150415()) % b041504150415041504150415 != b041504150415041504150415)
        {
            b041504150415041504150415 = b041504150415041504150415();
            b041504150415041504150415 = 66;
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    private void c()
        throws NotEnoughHapticBytesAvailableException, IOException
    {
        throw new Runtime("d2j fail translate: java.lang.IndexOutOfBoundsException: fromIndex < 0: -1\n\tat java.util.BitSet.nextSetBit(BitSet.java:701)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.makeSureAllElementAreAssigned(FillArrayTransformer.java:505)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.transformReportChanged(FillArrayTransformer.java:123)\n\tat com.googlecode.dex2jar.ir.ts.StatedTransformer.transform(StatedTransformer.java:10)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:149)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
    }

    private static boolean c(rcrcrr rcrcrr1, int i1)
    {
        int j1;
        int k1;
        try
        {
            j1 = rcrcrr1.mHapticDataOffset;
            k1 = rcrcrr1.mMappedByteBuffer.capacity();
        }
        // Misplaced declaration of an exception variable
        catch (rcrcrr rcrcrr1)
        {
            throw rcrcrr1;
        }
        if (i1 >= j1 + k1)
        {
            if (((b041504150415041504150415 + b041504150415041504150415) * b041504150415041504150415) % b041504150415041504150415 != b041504150415041504150415())
            {
                b041504150415041504150415 = b041504150415041504150415();
                b041504150415041504150415 = b041504150415041504150415();
                return true;
            } else
            {
                return true;
            }
        } else
        {
            return false;
        }
    }

    private int d()
    {
        HeaderUtils headerutils;
        try
        {
            headerutils = o;
        }
        catch (Exception exception)
        {
            throw exception;
        }
        if (headerutils != null)
        {
            int i1;
            try
            {
                i1 = o.getNumChannels();
            }
            catch (Exception exception1)
            {
                throw exception1;
            }
            if (((b041504150415041504150415 + b041504150415041504150415) * b041504150415041504150415) % b041504150415041504150415 != b041504150415041504150415)
            {
                b041504150415041504150415 = b041504150415041504150415();
                b041504150415041504150415 = b041504150415041504150415();
            }
            return i1;
        } else
        {
            return 0;
        }
    }

    private rcrcrr d(int i1)
        throws IOException, NotEnoughHapticBytesAvailableException
    {
        int k1;
        q.startTiming();
        if (i1 >= r)
        {
            break MISSING_BLOCK_LABEL_179;
        }
        k1 = s;
        MappedByteBuffer mappedbytebuffer;
        rcrcrr rcrcrr1;
        int j1;
        int l1;
        try
        {
            j1 = f();
        }
        catch (Exception exception1)
        {
            throw exception1;
        }
        try
        {
            l1 = r;
        }
        catch (Exception exception)
        {
            throw exception;
        }
        if (i1 + 1024 + j1 > l1) goto _L2; else goto _L1
_L1:
        if (((b041504150415041504150415 + b041504150415041504150415) * b041504150415041504150415) % b041504150415041504150415 != b041504150415041504150415)
        {
            b041504150415041504150415 = 31;
            b041504150415041504150415 = 69;
        }
        j1 += 1024;
_L4:
        if (i1 + j1 > g)
        {
            throw new NotEnoughHapticBytesAvailableException("Not enough bytes available yet.");
        }
        break; /* Loop/switch isn't completed */
_L2:
        j1 = r;
        j1 -= i1;
        if (true) goto _L4; else goto _L3
_L3:
        mappedbytebuffer = c.map(java.nio.channels.FileChannel.MapMode.READ_ONLY, k1 + i1, j1);
        if (mappedbytebuffer == null)
        {
            break MISSING_BLOCK_LABEL_179;
        }
        mappedbytebuffer.order(ByteOrder.BIG_ENDIAN);
        rcrcrr1 = new rcrcrr(null);
        rcrcrr1.mMappedByteBuffer = mappedbytebuffer;
        rcrcrr1.mHapticDataOffset = i1;
        return rcrcrr1;
        return null;
    }

    private static boolean d(rcrcrr rcrcrr1, int i1)
    {
label0:
        {
            if (!b(rcrcrr1, i1))
            {
label1:
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
                                continue label1;

                            case 1: // '\001'
                                break label1;
                            }
                        }
                        break;

                    case 0: // '\0'
                        break;

                    case 1: // '\001'
                        break label1;
                    }
                } while (true);
                if (!c(rcrcrr1, i1))
                {
                    break label0;
                }
                i1 = b041504150415041504150415();
                switch ((i1 * (b041504150415041504150415 + i1)) % b041504150415041504150415)
                {
                default:
                    b041504150415041504150415 = b041504150415041504150415();
                    b041504150415041504150415 = 24;
                    break;

                case 0: // '\0'
                    break;
                }
            }
            return true;
        }
        return false;
    }

    private void e()
    {
        Log.d("MemoryAlignedFileReader", "%%%%%%%%%%% logBufferState %%%%%%%%%%%");
        if (d != null)
        {
            Log.d("MemoryAlignedFileReader", (new StringBuilder()).append("mCurrentMMW capacity = ").append(d.mMappedByteBuffer.capacity()).toString());
            StringBuilder stringbuilder = new StringBuilder();
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
            Log.d("MemoryAlignedFileReader", stringbuilder.append("mCurrentMMW position = ").append(d.mMappedByteBuffer.position()).toString());
            Log.d("MemoryAlignedFileReader", (new StringBuilder()).append("mCurrentMMW remaining = ").append(d.mMappedByteBuffer.remaining()).toString());
            Log.d("MemoryAlignedFileReader", (new StringBuilder()).append("mCurrentMMW mHapticDataOffset = ").append(d.mHapticDataOffset).toString());
            Log.d("MemoryAlignedFileReader", (new StringBuilder()).append("mCurrentMMW mHapticDataOffset + position = ").append(d.mHapticDataOffset + d.mMappedByteBuffer.position()).toString());
        } else
        {
            Log.d("MemoryAlignedFileReader", "mCurrentMMW is null");
        }
        Log.d("MemoryAlignedFileReader", "--------------------------------------");
        if (e != null)
        {
            Log.d("MemoryAlignedFileReader", (new StringBuilder()).append("mNextMMW capacity = ").append(e.mMappedByteBuffer.capacity()).toString());
            Log.d("MemoryAlignedFileReader", (new StringBuilder()).append("mNextMMW position = ").append(e.mMappedByteBuffer.position()).toString());
            Log.d("MemoryAlignedFileReader", (new StringBuilder()).append("mNextMMW remaining = ").append(e.mMappedByteBuffer.remaining()).toString());
            Log.d("MemoryAlignedFileReader", (new StringBuilder()).append("mNextMMW mHapticDataOffset = ").append(e.mHapticDataOffset).toString());
            StringBuilder stringbuilder1 = (new StringBuilder()).append("mNextMMW mHapticDataOffset + position = ");
            if (((b041504150415041504150415 + b041504150415041504150415()) * b041504150415041504150415) % b041504150415041504150415 != b041504150415041504150415)
            {
                b041504150415041504150415 = b041504150415041504150415();
                b041504150415041504150415 = b041504150415041504150415();
            }
            Log.d("MemoryAlignedFileReader", stringbuilder1.append(e.mHapticDataOffset + e.mMappedByteBuffer.position()).toString());
        } else
        {
            Log.d("MemoryAlignedFileReader", "mNextMMW is null");
        }
        Log.d("MemoryAlignedFileReader", "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
    }

    private static boolean e(rcrcrr rcrcrr1, int i1)
    {
        int j1;
        int k1;
        boolean flag;
        try
        {
            j1 = i;
        }
        // Misplaced declaration of an exception variable
        catch (rcrcrr rcrcrr1)
        {
            throw rcrcrr1;
        }
        k1 = b041504150415041504150415;
        switch ((k1 * (b041504150415041504150415 + k1)) % b041504150415041504150415)
        {
        default:
            b041504150415041504150415 = 4;
            b041504150415041504150415 = 62;
            break;

        case 0: // '\0'
            break;
        }
        flag = c(rcrcrr1, j1 + i1);
        return flag;
    }

    private int f()
    {
        int i1;
        for (i1 = 0; (i1 + 1024) % (i / 2) != 0; i1 += 16) { }
_L2:
        if ((3 + 9) % 2 + 1 != 1)
        {
            continue; /* Loop/switch isn't completed */
        }
_L3:
        return i1;
        if ((3 + 9) % 2 + 1 != 1) goto _L2; else goto _L1
_L1:
        if (((b041504150415041504150415 + b041504150415041504150415) * b041504150415041504150415) % b041504150415041504150415 != b041504150415041504150415)
        {
            b041504150415041504150415 = b041504150415041504150415();
            b041504150415041504150415 = b041504150415041504150415();
            return i1;
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    public boolean bufferAtPlaybackPosition(int i1)
    {
        if (!a())
        {
            return false;
        }
        i1 = b(i1);
        if (i1 >= r)
        {
            return false;
        }
        if (d != null && !d(d, i1)) goto _L2; else goto _L1
_L1:
        if (e != null && !d(e, i1) && !e(e, i1)) goto _L4; else goto _L3
_L3:
        rcrcrr rcrcrr1 = d;
        if (rcrcrr1 == null) goto _L6; else goto _L5
_L10:
        if (d.mHapticDataOffset == i1) goto _L7; else goto _L6
_L6:
        d = d(i1);
_L7:
        if (e == null) goto _L9; else goto _L8
_L8:
        int j1;
        int k1;
        j1 = e.mHapticDataOffset;
        k1 = i / 2;
        if (((b041504150415041504150415() + b041504150415041504150415) * b041504150415041504150415()) % b041504150415041504150415 != b041504150415041504150415)
        {
            b041504150415041504150415 = 98;
            b041504150415041504150415 = 73;
        }
        if (j1 == (i1 + 1024) - k1)
        {
            break MISSING_BLOCK_LABEL_246;
        }
_L9:
        try
        {
            e = d((i1 + 1024) - i / 2);
        }
        catch (NotEnoughHapticBytesAvailableException notenoughhapticbytesavailableexception)
        {
            return false;
        }
        catch (IOException ioexception)
        {
            return false;
        }
        break MISSING_BLOCK_LABEL_246;
_L4:
        c();
_L2:
        if (d != null)
        {
            d.mMappedByteBuffer.position(a(d, i1));
        }
        return true;
_L5:
        while ((4 * 5) % 2 != 0 && (4 * 5) % 2 != 0) ;
          goto _L10
        return true;
    }

    public void close()
    {
        FileManager filemanager;
        FileChannel filechannel;
        filemanager = n;
        filechannel = c;
_L2:
        if ((3 + 9) % 2 + 1 != 1)
        {
            continue; /* Loop/switch isn't completed */
        }
_L3:
        filemanager.closeCloseable(filechannel);
        o.dispose();
        return;
        if ((3 + 9) % 2 + 1 != 1) goto _L2; else goto _L1
_L1:
        if (((b041504150415041504150415 + b041504150415041504150415) * b041504150415041504150415) % b041504150415041504150415 != b041504150415041504150415)
        {
            b041504150415041504150415 = b041504150415041504150415();
            b041504150415041504150415 = b041504150415041504150415();
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    public long getBlockOffset(long l1)
    {
        long l2;
        l2 = h;
        break MISSING_BLOCK_LABEL_6;
        int i1;
        while ((4 * 5) % 2 != 0 && (4 * 5) % 2 != 0) ;
        i1 = b041504150415041504150415;
        switch ((i1 * (b041504150415041504150415 + i1)) % b041504150415041504150415)
        {
        default:
            b041504150415041504150415 = b041504150415041504150415();
            b041504150415041504150415 = 40;
            // fall through

        case 0: // '\0'
            return ((l1 % l2) * 16L) / (long)h;
        }
    }

    public int getBlockSizeMS()
    {
        int i1;
        i1 = h;
        break MISSING_BLOCK_LABEL_4;
        while ((3 + 9) % 2 + 1 != 1 && (4 * 5) % 2 != 0) ;
        if (((b041504150415041504150415 + b041504150415041504150415) * b041504150415041504150415) % b041504150415041504150415 != b041504150415041504150415)
        {
            b041504150415041504150415 = 57;
            b041504150415041504150415 = 94;
        }
        return i1;
    }

    public byte[] getBufferForPlaybackPosition(int i1)
        throws NotEnoughHapticBytesAvailableException
    {
        if (d == null)
        {
            return null;
        }
        i1 = b(i1);
        if (i1 >= r - i)
        {
            return null;
        }
        byte abyte0[];
        MappedByteBuffer mappedbytebuffer;
        int j1;
        try
        {
            abyte0 = new byte[i];
            if (d.mMappedByteBuffer.remaining() < i)
            {
                c();
            }
            j1 = d.mMappedByteBuffer.position() + d.mHapticDataOffset;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        if (j1 >= i1 && j1 <= i1) goto _L2; else goto _L1
_L1:
        j1 = (i1 - j1) + d.mMappedByteBuffer.position();
        if (j1 >= 0) goto _L4; else goto _L3
_L3:
        i1 = 0;
_L11:
        d.mMappedByteBuffer.position(i1);
_L2:
        i1 = d.mMappedByteBuffer.remaining();
        j1 = b041504150415041504150415;
        switch ((j1 * (b041504150415041504150415 + j1)) % b041504150415041504150415())
        {
        default:
            b041504150415041504150415 = b041504150415041504150415();
            b041504150415041504150415 = b041504150415041504150415();
            break;

        case 0: // '\0'
            break;
        }
        mappedbytebuffer = d.mMappedByteBuffer;
        if (i1 >= i) goto _L6; else goto _L5
_L5:
        mappedbytebuffer.get(abyte0, 0, i1);
        mappedbytebuffer = d.mMappedByteBuffer;
        i1 = d.mMappedByteBuffer.position();
_L9:
        (4 * 5) % 2;
        JVM INSTR tableswitch 0 1: default 252
    //                   0 287
    //                   1 226;
           goto _L7 _L8 _L9
_L7:
        (3 + 9) % 2 + 1;
        JVM INSTR tableswitch 0 1: default 284
    //                   0 226
    //                   1 287;
           goto _L7 _L9 _L8
_L8:
        mappedbytebuffer.position(i1 - i / 2);
        return abyte0;
_L6:
        i1 = i;
          goto _L5
_L4:
        i1 = j1;
        if (d.mMappedByteBuffer.limit() >= j1)
        {
            continue; /* Loop/switch isn't completed */
        }
        i1 = d.mMappedByteBuffer.limit();
        i1--;
        if (true) goto _L11; else goto _L10
_L10:
    }

    public byte[] getEncryptedHapticHeader()
    {
        byte abyte0[] = p;
_L2:
        if ((4 * 5) % 2 != 0)
        {
            continue; /* Loop/switch isn't completed */
        }
_L3:
        return abyte0;
        if ((3 + 9) % 2 + 1 != 1) goto _L2; else goto _L1
_L1:
        if (((b041504150415041504150415 + b041504150415041504150415) * b041504150415041504150415) % b041504150415041504150415 != b041504150415041504150415)
        {
            b041504150415041504150415 = b041504150415041504150415();
            b041504150415041504150415 = b041504150415041504150415();
            return abyte0;
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    public int getHapticBlockIndex(long l1)
    {
        int i1 = (int)l1;
        int j1;
        try
        {
            i1 = b(i1);
            j1 = f;
        }
        catch (Exception exception)
        {
            throw exception;
        }
        if (((b041504150415041504150415 + b041504150415041504150415()) * b041504150415041504150415) % b041504150415041504150415 != b041504150415041504150415)
        {
            b041504150415041504150415 = 2;
            b041504150415041504150415 = b041504150415041504150415();
        }
        if (j1 != 2)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        return i1 / 16;
        if (f < 3)
        {
            break MISSING_BLOCK_LABEL_88;
        }
        j1 = d();
        try
        {
            i1 /= j1 * 16;
        }
        catch (Exception exception1)
        {
            throw exception1;
        }
        return i1;
        return 0;
    }

    public HapticFileInformation getHapticFileInformation()
    {
_L2:
        if ((4 * 5) % 2 != 0)
        {
            continue; /* Loop/switch isn't completed */
        }
_L3:
        return j;
        if ((4 * 5) % 2 != 0) goto _L2; else goto _L1
_L1:
        if (((b041504150415041504150415 + b041504150415041504150415()) * b041504150415041504150415) % b041504150415041504150415 != b041504150415041504150415)
        {
            b041504150415041504150415 = 3;
            b041504150415041504150415 = 56;
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    public void setBlockSizeMS(int i1)
    {
        int j1 = b041504150415041504150415;
        switch ((j1 * (b041504150415041504150415() + j1)) % b041504150415041504150415)
        {
        default:
            b041504150415041504150415 = b041504150415041504150415();
            b041504150415041504150415 = b041504150415041504150415();
            break;

        case 0: // '\0'
            break;
        }
        try
        {
            h = i1;
            return;
        }
        catch (Exception exception)
        {
            throw exception;
        }
    }

    public void setBytesAvailable(int i1)
    {
        g = i1;
        if (g > 0) goto _L2; else goto _L1
_L1:
        g = i1;
_L4:
        if ((4 * 5) % 2 != 0)
        {
            continue; /* Loop/switch isn't completed */
        }
_L5:
        a();
_L2:
        return;
        if ((4 * 5) % 2 != 0) goto _L4; else goto _L3
_L3:
        if (((b041504150415041504150415 + b041504150415041504150415) * b041504150415041504150415) % b041504150415041504150415 != b041504150415041504150415)
        {
            b041504150415041504150415 = 10;
            b041504150415041504150415 = b041504150415041504150415();
        }
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
    }

    static 
    {
_L2:
        if ((3 + 9) % 2 + 1 != 1)
        {
            continue; /* Loop/switch isn't completed */
        }
_L3:
        h = 80;
        i = 0;
        return;
        if ((3 + 9) % 2 + 1 != 1) goto _L2; else goto _L1
_L1:
        if (((b041504150415041504150415 + b041504150415041504150415) * b041504150415041504150415) % b041504150415041504150415 != b041504150415041504150415)
        {
            b041504150415041504150415 = b041504150415041504150415();
            b041504150415041504150415 = b041504150415041504150415();
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }
}
