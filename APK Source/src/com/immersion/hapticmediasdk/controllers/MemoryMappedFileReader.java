// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.immersion.hapticmediasdk.controllers;

import com.immersion.hapticmediasdk.models.HapticFileInformation;
import com.immersion.hapticmediasdk.models.NotEnoughHapticBytesAvailableException;
import com.immersion.hapticmediasdk.utils.FileManager;
import com.immersion.hapticmediasdk.utils.Log;
import com.immersion.hapticmediasdk.utils.Profiler;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import rrrrrr.cccrrr;
import rrrrrr.ccrrrr;

// Referenced classes of package com.immersion.hapticmediasdk.controllers:
//            IHapticFileReader

public class MemoryMappedFileReader
    implements IHapticFileReader
{
    /* member class not found */
    class cccrrr {}

    /* member class not found */
    class ccrrrr {}


    private static final String a = "MemoryMappedFileReader";
    public static int b044A044A044A044A044A044A = 1;
    public static int b044A044A044A044A044A044A = 93;
    public static int b044A044A044A044A044A044A = 0;
    public static int b044A044A044A044A044A044A = 2;
    private static int g = 0;
    private static int h = 0;
    private static final int j = 4096;
    private static final int k = 12288;
    private File b;
    private FileChannel c;
    private ccrrrr d;
    private ccrrrr e;
    private int f;
    private HapticFileInformation i;
    private String l;
    private final Profiler m = new Profiler();
    private FileManager n;

    public MemoryMappedFileReader(String s, FileManager filemanager)
    {
        try
        {
            super();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw s;
        }
        if (((b044A044A044A044A044A044A() + b044A044A044A044A044A044A) * b044A044A044A044A044A044A()) % b044A044A044A044A044A044A != b044A044A044A044A044A044A)
        {
            b044A044A044A044A044A044A = b044A044A044A044A044A044A();
        }
        try
        {
            l = s;
            n = filemanager;
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw s;
        }
    }

    private int a(ccrrrr ccrrrr1, int i1)
    {
        int j1 = ccrrrr1.mHapticDataOffset;
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
        int k1 = b044A044A044A044A044A044A;
        switch ((k1 * (b044A044A044A044A044A044A() + k1)) % b044A044A044A044A044A044A)
        {
        default:
            b044A044A044A044A044A044A = b044A044A044A044A044A044A();
            b044A044A044A044A044A044A = b044A044A044A044A044A044A();
            // fall through

        case 0: // '\0'
            return (i1 - j1) % ccrrrr1.mMappedByteBuffer.capacity();
        }
    }

    private boolean a()
    {
        Object obj = null;
        if (i != null)
        {
            return true;
        }
          goto _L1
_L9:
        if (b == null)
        {
            b = n.getHapticStorageFile(l);
        }
        if (c != null) goto _L3; else goto _L2
_L2:
        Object obj1 = new RandomAccessFile(b, "r");
        boolean flag;
        int i1;
        try
        {
            c = ((RandomAccessFile) (obj1)).getChannel();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            continue; /* Loop/switch isn't completed */
        }
_L10:
        obj = obj1;
_L3:
        if (c == null)
        {
            return false;
        }
        flag = b();
_L7:
        if ((4 * 5) % 2 == 0) goto _L5; else goto _L4
_L4:
        if ((3 + 9) % 2 + 1 != 1) goto _L7; else goto _L6
_L6:
        i1 = b044A044A044A044A044A044A();
        switch ((i1 * (b044A044A044A044A044A044A + i1)) % b044A044A044A044A044A044A())
        {
        default:
            b044A044A044A044A044A044A = b044A044A044A044A044A044A();
            b044A044A044A044A044A044A = b044A044A044A044A044A044A();
            return flag;

        case 0: // '\0'
            break;
        }
          goto _L5
_L1:
        if (!(flag = a(12288))) goto _L9; else goto _L8
_L8:
        return false;
        obj;
        obj1 = null;
_L12:
        Log.e("MemoryMappedFileReader", ((FileNotFoundException) (obj)).getMessage());
        n.closeCloseable(((java.io.Closeable) (obj1)));
        n.closeCloseable(c);
_L11:
        return false;
        obj;
        ((Exception) (obj)).printStackTrace();
        if (true) goto _L11; else goto _L10
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        obj1 = obj;
        obj = filenotfoundexception;
        if (true) goto _L12; else goto _L5
_L5:
        return flag;
    }

    private boolean a(int i1)
    {
        if (f >= i1)
        {
            break MISSING_BLOCK_LABEL_8;
        } else
        {
            return false;
        }
        while ((4 * 5) % 2 != 0 && (3 + 9) % 2 + 1 != 1) ;
        if (((b044A044A044A044A044A044A() + b044A044A044A044A044A044A) * b044A044A044A044A044A044A()) % b044A044A044A044A044A044A != b044A044A044A044A044A044A)
        {
            b044A044A044A044A044A044A = 58;
            b044A044A044A044A044A044A = 75;
            return true;
        } else
        {
            return true;
        }
    }

    private int b(int i1)
    {
        float f1;
        float f2;
        int j1;
        j1 = i1 / (1000 / i.getSampleHertz());
        if (((b044A044A044A044A044A044A + b044A044A044A044A044A044A) * b044A044A044A044A044A044A) % b044A044A044A044A044A044A != b044A044A044A044A044A044A)
        {
            b044A044A044A044A044A044A = 77;
            b044A044A044A044A044A044A = 64;
        }
        i1 = i.getBitsPerSample();
        int k1 = i.getNumberOfChannels();
        f1 = (float)(i1 * k1) / 8F;
        f2 = (i1 * k1) / 8;
        i1 = (int)f2;
        break MISSING_BLOCK_LABEL_84;
        while ((4 * 5) % 2 != 0 && (4 * 5) % 2 != 0) ;
        if (f1 > f2)
        {
            i1++;
        }
        return j1 * i1;
    }

    private boolean b()
    {
        ByteBuffer bytebuffer;
        bytebuffer = ByteBuffer.allocate(4);
        bytebuffer.order(ByteOrder.LITTLE_ENDIAN);
        bytebuffer.position(0);
        if (c.read(bytebuffer, 16L) != 4)
        {
            return false;
        }
        bytebuffer.flip();
        int i1 = bytebuffer.getInt() + 28;
        bytebuffer = ByteBuffer.allocate(i1);
        bytebuffer.order(ByteOrder.LITTLE_ENDIAN);
        int k1 = c.read(bytebuffer, 0L);
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
        if (k1 != i1)
        {
            return false;
        }
          goto _L1
_L3:
        com.immersion.hapticmediasdk.models.HapticFileInformation.Builder builder;
        int ai[];
        int j1;
        int l1;
        try
        {
            builder.setActuatorArray(ai);
            builder.setCompressionScheme(bytebuffer.get());
            bytebuffer.position(bytebuffer.position() + 4);
            builder.setHapticDataLength(bytebuffer.getInt());
            builder.setHapticDataStartByteOffset(bytebuffer.position());
            i = builder.build();
            j1 = (g * i.getSampleHertz()) / 1000;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return false;
        }
        l1 = b044A044A044A044A044A044A;
        switch ((l1 * (b044A044A044A044A044A044A() + l1)) % b044A044A044A044A044A044A)
        {
        default:
            b044A044A044A044A044A044A = b044A044A044A044A044A044A();
            b044A044A044A044A044A044A = 51;
            break;

        case 0: // '\0'
            break;
        }
        h = (j1 * i.getBitsPerSample() * i.getNumberOfChannels()) / 8;
        return true;
_L1:
        bytebuffer.flip();
        builder = new com.immersion.hapticmediasdk.models.HapticFileInformation.Builder();
        builder.setFilePath(b.getAbsolutePath());
        bytebuffer.position(4);
        builder.setTotalFileLength(bytebuffer.getInt() + 8);
        bytebuffer.position(20);
        builder.setMajorVersion(bytebuffer.get());
        builder.setMinorVersion(bytebuffer.get());
        builder.setEncoding(bytebuffer.get());
        bytebuffer.position(24);
        builder.setSampleHertz(bytebuffer.getInt());
        builder.setBitsPerSample(bytebuffer.get() | bytebuffer.get() << 8);
        l1 = bytebuffer.get();
        builder.setNumberOfChannels(l1);
        ai = new int[l1];
        j1 = 0;
_L4:
        if (j1 >= l1) goto _L3; else goto _L2
_L2:
        ai[j1] = bytebuffer.get();
        j1++;
          goto _L4
    }

    private static boolean b(ccrrrr ccrrrr1, int i1)
    {
        if (i1 < ccrrrr1.mHapticDataOffset)
        {
            i1 = b044A044A044A044A044A044A;
            switch ((i1 * (b044A044A044A044A044A044A + i1)) % b044A044A044A044A044A044A)
            {
            default:
                b044A044A044A044A044A044A = b044A044A044A044A044A044A();
                b044A044A044A044A044A044A = b044A044A044A044A044A044A();
                // fall through

            case 0: // '\0'
                return true;
            }
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
        return false;
    }

    public static int b044A044A044A044A044A044A()
    {
        return 0;
    }

    public static int b044A044A044A044A044A044A()
    {
        return 1;
    }

    public static int b044A044A044A044A044A044A()
    {
        return 73;
    }

    public static int b044A044A044A044A044A044A()
    {
        return 2;
    }

    private int c(int i1)
    {
        HapticFileInformation hapticfileinformation;
        int j1;
        try
        {
            hapticfileinformation = i;
        }
        catch (Exception exception)
        {
            throw exception;
        }
        if (((b044A044A044A044A044A044A + b044A044A044A044A044A044A) * b044A044A044A044A044A044A) % b044A044A044A044A044A044A != b044A044A044A044A044A044A)
        {
            b044A044A044A044A044A044A = 98;
            b044A044A044A044A044A044A = 21;
        }
        j1 = hapticfileinformation.getHapticDataStartByteOffset();
        try
        {
            i1 = b(i1);
        }
        catch (Exception exception1)
        {
            throw exception1;
        }
        return j1 + i1;
    }

    private void c()
        throws NotEnoughHapticBytesAvailableException, IOException
    {
        ccrrrr ccrrrr1;
        int i1;
        try
        {
            if (e == null)
            {
                return;
            }
        }
        catch (Exception exception1)
        {
            throw exception1;
        }
        i1 = e.mHapticDataOffset;
        ccrrrr1 = e;
        try
        {
            d = ccrrrr1;
        }
        catch (Exception exception)
        {
            throw exception;
        }
        if (((b044A044A044A044A044A044A() + b044A044A044A044A044A044A) * b044A044A044A044A044A044A()) % b044A044A044A044A044A044A() != b044A044A044A044A044A044A())
        {
            b044A044A044A044A044A044A = 80;
            b044A044A044A044A044A044A = 68;
        }
        e = d(i1 + 4096);
        return;
    }

    private static boolean c(ccrrrr ccrrrr1, int i1)
    {
        if (i1 >= ccrrrr1.mHapticDataOffset + ccrrrr1.mMappedByteBuffer.capacity())
        {
            break MISSING_BLOCK_LABEL_16;
        } else
        {
            return false;
        }
        while ((3 + 9) % 2 + 1 != 1 && (3 + 9) % 2 + 1 != 1) ;
        if (((b044A044A044A044A044A044A + b044A044A044A044A044A044A) * b044A044A044A044A044A044A) % b044A044A044A044A044A044A != b044A044A044A044A044A044A)
        {
            b044A044A044A044A044A044A = b044A044A044A044A044A044A();
            b044A044A044A044A044A044A = b044A044A044A044A044A044A();
            return true;
        } else
        {
            return true;
        }
    }

    private ccrrrr d(int i1)
        throws IOException, NotEnoughHapticBytesAvailableException
    {
        int l1;
        m.startTiming();
        if (i1 >= i.getHapticDataLength())
        {
            break MISSING_BLOCK_LABEL_211;
        }
        l1 = i.getHapticDataStartByteOffset();
        if (i1 + 4096 > i.getHapticDataLength()) goto _L2; else goto _L1
_L1:
        if ((3 + 9) % 2 + 1 != 1)
        {
            continue; /* Loop/switch isn't completed */
        }
_L6:
        int j1 = 4096;
_L4:
        if (i1 + j1 > f)
        {
            throw new NotEnoughHapticBytesAvailableException("Not enough bytes available yet.");
        }
        MappedByteBuffer mappedbytebuffer = c.map(java.nio.channels.FileChannel.MapMode.READ_ONLY, l1 + i1, j1);
        if (mappedbytebuffer != null)
        {
            mappedbytebuffer.order(ByteOrder.LITTLE_ENDIAN);
            ccrrrr ccrrrr1 = new ccrrrr(null);
            ccrrrr1.mMappedByteBuffer = mappedbytebuffer;
            ccrrrr1.mHapticDataOffset = i1;
            return ccrrrr1;
        }
        break MISSING_BLOCK_LABEL_211;
_L2:
        j1 = i.getHapticDataLength() - i1;
        if (true) goto _L4; else goto _L3
_L3:
        if ((3 + 9) % 2 + 1 != 1) goto _L1; else goto _L5
_L5:
        int k1 = b044A044A044A044A044A044A;
        switch ((k1 * (b044A044A044A044A044A044A + k1)) % b044A044A044A044A044A044A)
        {
        default:
            b044A044A044A044A044A044A = b044A044A044A044A044A044A();
            b044A044A044A044A044A044A = b044A044A044A044A044A044A();
            break;

        case 0: // '\0'
            break;
        }
          goto _L6
        if (true) goto _L1; else goto _L7
_L7:
        return null;
    }

    private void d()
    {
        Log.d("MemoryMappedFileReader", "%%%%%%%%%%% logBufferState %%%%%%%%%%%");
        if (d != null)
        {
            Log.d("MemoryMappedFileReader", (new StringBuilder()).append("mCurrentMMW capacity = ").append(d.mMappedByteBuffer.capacity()).toString());
            Log.d("MemoryMappedFileReader", (new StringBuilder()).append("mCurrentMMW position = ").append(d.mMappedByteBuffer.position()).toString());
            Log.d("MemoryMappedFileReader", (new StringBuilder()).append("mCurrentMMW remaining = ").append(d.mMappedByteBuffer.remaining()).toString());
            Log.d("MemoryMappedFileReader", (new StringBuilder()).append("mCurrentMMW mHapticDataOffset = ").append(d.mHapticDataOffset).toString());
            StringBuilder stringbuilder = new StringBuilder();
            ccrrrr ccrrrr1;
            while ((3 + 9) % 2 + 1 != 1 && (3 + 9) % 2 + 1 != 1) ;
            stringbuilder = stringbuilder.append("mCurrentMMW mHapticDataOffset + position = ");
            ccrrrr1 = d;
            if (((b044A044A044A044A044A044A() + b044A044A044A044A044A044A) * b044A044A044A044A044A044A()) % b044A044A044A044A044A044A() != b044A044A044A044A044A044A())
            {
                b044A044A044A044A044A044A = b044A044A044A044A044A044A();
                b044A044A044A044A044A044A = b044A044A044A044A044A044A();
            }
            Log.d("MemoryMappedFileReader", stringbuilder.append(ccrrrr1.mHapticDataOffset + d.mMappedByteBuffer.position()).toString());
        } else
        {
            Log.d("MemoryMappedFileReader", "mCurrentMMW is null");
        }
        Log.d("MemoryMappedFileReader", "--------------------------------------");
        if (e != null)
        {
            Log.d("MemoryMappedFileReader", (new StringBuilder()).append("mNextMMW capacity = ").append(e.mMappedByteBuffer.capacity()).toString());
            Log.d("MemoryMappedFileReader", (new StringBuilder()).append("mNextMMW position = ").append(e.mMappedByteBuffer.position()).toString());
            Log.d("MemoryMappedFileReader", (new StringBuilder()).append("mNextMMW remaining = ").append(e.mMappedByteBuffer.remaining()).toString());
            Log.d("MemoryMappedFileReader", (new StringBuilder()).append("mNextMMW mHapticDataOffset = ").append(e.mHapticDataOffset).toString());
            Log.d("MemoryMappedFileReader", (new StringBuilder()).append("mNextMMW mHapticDataOffset + position = ").append(e.mHapticDataOffset + e.mMappedByteBuffer.position()).toString());
        } else
        {
            Log.d("MemoryMappedFileReader", "mNextMMW is null");
        }
        Log.d("MemoryMappedFileReader", "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
    }

    private static boolean d(ccrrrr ccrrrr1, int i1)
    {
label0:
        {
label1:
            {
                boolean flag;
                try
                {
                    if (b(ccrrrr1, i1))
                    {
                        break label1;
                    }
                    flag = c(ccrrrr1, i1);
                }
                // Misplaced declaration of an exception variable
                catch (ccrrrr ccrrrr1)
                {
                    throw ccrrrr1;
                }
                if (((b044A044A044A044A044A044A + b044A044A044A044A044A044A) * b044A044A044A044A044A044A) % b044A044A044A044A044A044A != b044A044A044A044A044A044A)
                {
                    b044A044A044A044A044A044A = 52;
                    b044A044A044A044A044A044A = 7;
                }
                if (!flag)
                {
                    break label0;
                }
            }
            return true;
        }
        return false;
    }

    private static boolean e(ccrrrr ccrrrr1, int i1)
    {
        int j1 = b044A044A044A044A044A044A;
        switch ((j1 * (b044A044A044A044A044A044A() + j1)) % b044A044A044A044A044A044A)
        {
        default:
            b044A044A044A044A044A044A = 57;
            b044A044A044A044A044A044A = 27;
            break;

        case 0: // '\0'
            break;
        }
        boolean flag;
        try
        {
            j1 = h;
        }
        // Misplaced declaration of an exception variable
        catch (ccrrrr ccrrrr1)
        {
            throw ccrrrr1;
        }
        try
        {
            flag = c(ccrrrr1, j1 + i1);
        }
        // Misplaced declaration of an exception variable
        catch (ccrrrr ccrrrr1)
        {
            throw ccrrrr1;
        }
        return flag;
    }

    public boolean bufferAtPlaybackPosition(int i1)
    {
        throw new Runtime("d2j fail translate: java.lang.IndexOutOfBoundsException: fromIndex < 0: -1\n\tat java.util.BitSet.nextSetBit(BitSet.java:701)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.makeSureAllElementAreAssigned(FillArrayTransformer.java:505)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.transformReportChanged(FillArrayTransformer.java:123)\n\tat com.googlecode.dex2jar.ir.ts.StatedTransformer.transform(StatedTransformer.java:10)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:149)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
    }

    public void close()
    {
        int i1 = b044A044A044A044A044A044A;
        switch ((i1 * (b044A044A044A044A044A044A() + i1)) % b044A044A044A044A044A044A)
        {
        default:
            b044A044A044A044A044A044A = b044A044A044A044A044A044A();
            b044A044A044A044A044A044A = 35;
            break;

        case 0: // '\0'
            break;
        }
        try
        {
            n.closeCloseable(c);
            return;
        }
        catch (Exception exception)
        {
            throw exception;
        }
    }

    public long getBlockOffset(long l1)
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
        int i1 = b044A044A044A044A044A044A;
        switch ((i1 * (b044A044A044A044A044A044A + i1)) % b044A044A044A044A044A044A)
        {
        default:
            b044A044A044A044A044A044A = 89;
            b044A044A044A044A044A044A = 47;
            // fall through

        case 0: // '\0'
            return 0L;
        }
    }

    public int getBlockSizeMS()
    {
        int i1;
        try
        {
            i1 = g;
        }
        catch (Exception exception)
        {
            throw exception;
        }
        if (((b044A044A044A044A044A044A + b044A044A044A044A044A044A) * b044A044A044A044A044A044A) % b044A044A044A044A044A044A != b044A044A044A044A044A044A)
        {
            b044A044A044A044A044A044A = b044A044A044A044A044A044A();
            b044A044A044A044A044A044A = b044A044A044A044A044A044A();
        }
        return i1;
    }

    public byte[] getBufferForPlaybackPosition(int i1)
        throws NotEnoughHapticBytesAvailableException
    {
_L4:
        if (i1 + d.mMappedByteBuffer.position() >= i.getHapticDataLength())
        {
            return null;
        }
          goto _L1
        if (d == null)
        {
            return null;
        }
        ccrrrr ccrrrr1 = d;
        if (((b044A044A044A044A044A044A + b044A044A044A044A044A044A) * b044A044A044A044A044A044A) % b044A044A044A044A044A044A != b044A044A044A044A044A044A)
        {
            b044A044A044A044A044A044A = b044A044A044A044A044A044A();
            b044A044A044A044A044A044A = 47;
        }
        i1 = ccrrrr1.mHapticDataOffset;
_L3:
        (3 + 9) % 2 + 1;
        JVM INSTR tableswitch 0 1: default 104
    //                   0 75
    //                   1 9;
           goto _L2 _L3 _L4
_L2:
        (4 * 5) % 2;
        JVM INSTR tableswitch 0 1: default 132
    //                   0 9
    //                   1 75;
           goto _L2 _L4 _L3
_L1:
        Object obj = new byte[h];
        if (h < d.mMappedByteBuffer.remaining()) goto _L6; else goto _L5
_L5:
        int j1;
        j1 = d.mMappedByteBuffer.remaining();
        i1 = h - j1;
        d.mMappedByteBuffer.get(((byte []) (obj)), 0, j1);
        if (i1 <= 0)
        {
            break MISSING_BLOCK_LABEL_227;
        }
        if (e == null)
        {
            break MISSING_BLOCK_LABEL_227;
        }
        if (e.mMappedByteBuffer.remaining() < i1)
        {
            try
            {
                i1 = e.mMappedByteBuffer.remaining();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((Exception) (obj)).printStackTrace();
                return null;
            }
        }
        e.mMappedByteBuffer.get(((byte []) (obj)), j1, i1);
        c();
        return ((byte []) (obj));
_L6:
        d.mMappedByteBuffer.get(((byte []) (obj)), 0, h);
        return ((byte []) (obj));
    }

    public byte[] getEncryptedHapticHeader()
    {
        byte abyte0[] = new byte[0];
_L2:
        if ((4 * 5) % 2 != 0)
        {
            continue; /* Loop/switch isn't completed */
        }
_L4:
        return abyte0;
        if ((3 + 9) % 2 + 1 != 1) goto _L2; else goto _L1
_L1:
        int i1 = b044A044A044A044A044A044A;
        switch ((i1 * (b044A044A044A044A044A044A + i1)) % b044A044A044A044A044A044A)
        {
        default:
            b044A044A044A044A044A044A = 36;
            b044A044A044A044A044A044A = 93;
            return abyte0;

        case 0: // '\0'
            break;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int getHapticBlockIndex(long l1)
    {
        throw new Runtime("d2j fail translate: java.lang.IndexOutOfBoundsException: fromIndex < 0: -1\n\tat java.util.BitSet.nextSetBit(BitSet.java:701)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.makeSureAllElementAreAssigned(FillArrayTransformer.java:505)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.transformReportChanged(FillArrayTransformer.java:123)\n\tat com.googlecode.dex2jar.ir.ts.StatedTransformer.transform(StatedTransformer.java:10)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:149)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
    }

    public HapticFileInformation getHapticFileInformation()
    {
        HapticFileInformation hapticfileinformation = i;
_L2:
        if ((3 + 9) % 2 + 1 != 1)
        {
            continue; /* Loop/switch isn't completed */
        }
_L4:
        return hapticfileinformation;
        if ((4 * 5) % 2 != 0) goto _L2; else goto _L1
_L1:
        int i1 = b044A044A044A044A044A044A;
        switch ((i1 * (b044A044A044A044A044A044A + i1)) % b044A044A044A044A044A044A)
        {
        default:
            b044A044A044A044A044A044A = 55;
            b044A044A044A044A044A044A = 17;
            return hapticfileinformation;

        case 0: // '\0'
            break;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setBlockSizeMS(int i1)
    {
        g = i1;
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
        i1 = b044A044A044A044A044A044A();
        switch ((i1 * (b044A044A044A044A044A044A() + i1)) % b044A044A044A044A044A044A)
        {
        default:
            b044A044A044A044A044A044A = 15;
            // fall through

        case 0: // '\0'
            return;
        }
    }

    public void setBytesAvailable(int i1)
    {
        f = i1;
        break MISSING_BLOCK_LABEL_5;
        while ((3 + 9) % 2 + 1 != 1 && (3 + 9) % 2 + 1 != 1) ;
        if (((b044A044A044A044A044A044A + b044A044A044A044A044A044A()) * b044A044A044A044A044A044A) % b044A044A044A044A044A044A != b044A044A044A044A044A044A())
        {
            b044A044A044A044A044A044A = 62;
            b044A044A044A044A044A044A = 4;
        }
        a();
        return;
    }

    static 
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
        g = 40;
        if (((b044A044A044A044A044A044A + b044A044A044A044A044A044A) * b044A044A044A044A044A044A) % b044A044A044A044A044A044A != b044A044A044A044A044A044A)
        {
            b044A044A044A044A044A044A = 55;
            b044A044A044A044A044A044A = 34;
        }
        h = 0;
    }
}
