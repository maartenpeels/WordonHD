// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.utils;

import java.io.IOException;
import java.io.InputStream;

public class DeviceInfo
{

    public DeviceInfo()
    {
    }

    static String getCPUCount()
    {
        byte abyte0[];
        Object obj;
        int i;
        obj = new ProcessBuilder(new String[] {
            "/system/bin/cat", "/sys/devices/system/cpu/present"
        });
        abyte0 = new byte[1024];
        obj = ((ProcessBuilder) (obj)).start().getInputStream();
        i = ((InputStream) (obj)).read(abyte0, 0, 1024);
        if (i < 0)
        {
            break MISSING_BLOCK_LABEL_106;
        }
        String s;
        s = new String(abyte0, 0, i);
        i = s.indexOf("-");
        if (i < 0)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        return Integer.toString(Integer.parseInt(s.substring(i + 1, i + 2)) + 1);
        return Integer.toString(Integer.parseInt(s.substring(0, 1)) + 1);
        ((InputStream) (obj)).close();
_L2:
        return new String("");
        IOException ioexception;
        ioexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    static String getHardwareInfo()
    {
        byte abyte0[];
        Object obj;
        int i;
        obj = new ProcessBuilder(new String[] {
            "/system/bin/cat", "/proc/cpuinfo"
        });
        abyte0 = new byte[1024];
        obj = ((ProcessBuilder) (obj)).start().getInputStream();
        i = ((InputStream) (obj)).read(abyte0, 0, 1024);
        if (i < 0)
        {
            break MISSING_BLOCK_LABEL_104;
        }
        String s;
        s = new String(abyte0, 0, i);
        i = s.indexOf("Hardware");
        if (i < 0)
        {
            break MISSING_BLOCK_LABEL_104;
        }
        i = s.indexOf(':', i);
        if (i < 0)
        {
            break MISSING_BLOCK_LABEL_104;
        }
        return s.substring(i + 1, s.indexOf('\n', i + 1)).trim();
        ((InputStream) (obj)).close();
_L2:
        return new String("");
        IOException ioexception;
        ioexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    static String getTotalMemory()
    {
        byte abyte0[];
        Object obj;
        int i;
        obj = new ProcessBuilder(new String[] {
            "/system/bin/cat", "/proc/meminfo"
        });
        abyte0 = new byte[1024];
        obj = ((ProcessBuilder) (obj)).start().getInputStream();
        i = ((InputStream) (obj)).read(abyte0, 0, 1024);
        if (i < 0)
        {
            break MISSING_BLOCK_LABEL_104;
        }
        String s;
        s = new String(abyte0, 0, i);
        i = s.indexOf("MemTotal");
        if (i < 0)
        {
            break MISSING_BLOCK_LABEL_104;
        }
        i = s.indexOf(':', i);
        if (i < 0)
        {
            break MISSING_BLOCK_LABEL_104;
        }
        return s.substring(i + 1, s.indexOf('\n', i + 1)).trim();
        ((InputStream) (obj)).close();
_L2:
        return new String("");
        IOException ioexception;
        ioexception;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
