// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.immersion.hapticmediasdk.controllers;

import com.immersion.content.HapticHeaderUtils;
import com.immersion.content.HeaderUtils;
import com.immersion.hapticmediasdk.utils.FileManager;
import com.immersion.hapticmediasdk.utils.Log;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;

// Referenced classes of package com.immersion.hapticmediasdk.controllers:
//            MemoryAlignedFileReader, MemoryMappedFileReader, IHapticFileReader

public class FileReaderFactory
{

    private static final String a = "FileReaderFactory";
    public static int b044604460446044604460446 = 2;
    public static int b044604460446044604460446 = 0;
    public static int b044604460446044604460446 = 72;
    public static int b044604460446044604460446 = 1;

    public FileReaderFactory()
    {
        int i = b044604460446044604460446;
        switch ((i * (b044604460446044604460446() + i)) % b044604460446044604460446)
        {
        default:
            b044604460446044604460446 = b044604460446044604460446();
            b044604460446044604460446 = b044604460446044604460446();
            break;

        case 0: // '\0'
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
        super();
    }

    private static int a(String s, FileManager filemanager)
    {
        if (filemanager == null) goto _L2; else goto _L1
_L1:
        s = filemanager.getHapticStorageFile(s);
_L5:
        if (s.length() == 0L)
        {
            return -1;
        }
          goto _L3
_L2:
        if (s == null)
        {
            break; /* Loop/switch isn't completed */
        }
        s = new File(s);
        if (true) goto _L5; else goto _L4
        s;
        int i = 0;
_L12:
        try
        {
            s.printStackTrace();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw s;
        }
        return i;
_L4:
        return 0;
_L3:
        if (false) goto _L7; else goto _L6
_L6:
        s = (new RandomAccessFile(s, "r")).getChannel();
          goto _L8
_L10:
        i = a(((FileChannel) (s)));
        try
        {
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            throw new NullPointerException();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            b044604460446044604460446 = b044604460446044604460446();
        }
        return i;
_L7:
        s = null;
_L8:
        if (s != null) goto _L10; else goto _L9
_L9:
        return 0;
        if (true) goto _L12; else goto _L11
_L11:
    }

    private static int a(FileChannel filechannel)
    {
        ByteBuffer bytebuffer;
        int i;
        try
        {
            bytebuffer = ByteBuffer.allocate(4);
            bytebuffer.order(ByteOrder.LITTLE_ENDIAN);
        }
        // Misplaced declaration of an exception variable
        catch (FileChannel filechannel)
        {
            filechannel.printStackTrace();
            return 0;
        }
        if (((b044604460446044604460446() + b044604460446044604460446()) * b044604460446044604460446()) % b044604460446044604460446() != b044604460446044604460446)
        {
            b044604460446044604460446 = b044604460446044604460446();
            b044604460446044604460446 = 93;
        }
        bytebuffer.position(0);
        i = filechannel.read(bytebuffer, 16L);
        if (i != 4)
        {
            return 0;
        }
          goto _L1
_L3:
        switch ((4 * 5) % 2)
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
                    continue; /* Loop/switch isn't completed */
                }
            } while (true);
            break;

        case 0: // '\0'
            break;

        case 1: // '\001'
            continue; /* Loop/switch isn't completed */
        }
        bytebuffer.position(4);
        bytebuffer.getInt();
        bytebuffer.position(20);
        filechannel = new HapticHeaderUtils();
        filechannel.setEncryptedHSI(bytebuffer, i);
        i = filechannel.getMajorVersionNumber();
        return i;
_L1:
        bytebuffer.flip();
        i = bytebuffer.getInt();
        int j = i + 28;
        int k;
        bytebuffer = ByteBuffer.allocate(j);
        bytebuffer.order(ByteOrder.LITTLE_ENDIAN);
        k = filechannel.read(bytebuffer, 0L);
        if (k != j)
        {
            return 0;
        }
        if (true) goto _L3; else goto _L2
_L2:
    }

    public static int b044604460446044604460446()
    {
        return 0;
    }

    public static int b044604460446044604460446()
    {
        return 2;
    }

    public static int b044604460446044604460446()
    {
        return 1;
    }

    public static int b044604460446044604460446()
    {
        return 47;
    }

    public static IHapticFileReader getHapticFileReaderInstance(String s, FileManager filemanager)
    {
        a(s, filemanager);
        JVM INSTR tableswitch -1 3: default 194
    //                   -1 109
    //                   0 40
    //                   1 182
    //                   2 118
    //                   3 171;
           goto _L1 _L2 _L1 _L3 _L4 _L5
_L1:
        Log.e("FileReaderFactory", "Unsupported HAPT file version");
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
        return null;
_L2:
        try
        {
            Log.i("FileReaderFactory", "Can't retrieve Major version! Not enough bytes available yet.");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            if (((b044604460446044604460446 + b044604460446044604460446) * b044604460446044604460446) % b044604460446044604460446 != b044604460446044604460446())
            {
                b044604460446044604460446 = b044604460446044604460446();
                b044604460446044604460446 = b044604460446044604460446();
            }
            return null;
        }
        return null;
_L4:
        s = new MemoryAlignedFileReader(s, filemanager, 2);
        return s;
_L5:
        return new MemoryAlignedFileReader(s, filemanager, 3);
_L3:
        s = new MemoryMappedFileReader(s, filemanager);
        return s;
    }
}
