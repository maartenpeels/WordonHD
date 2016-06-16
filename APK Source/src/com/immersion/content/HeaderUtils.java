// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.immersion.content;

import java.nio.ByteBuffer;

public abstract class HeaderUtils
{

    public static int b044A044A044A044A044A044A = 1;
    public static int b044A044A044A044A044A044A = 2;
    public static int b044A044A044A044A044A044A = 86;

    public HeaderUtils()
    {
_L2:
        if ((3 + 9) % 2 + 1 != 1)
        {
            continue; /* Loop/switch isn't completed */
        }
_L4:
        return;
        if ((4 * 5) % 2 != 0) goto _L2; else goto _L1
_L1:
        int i = b044A044A044A044A044A044A;
        switch ((i * (b044A044A044A044A044A044A + i)) % b044A044A044A044A044A044A)
        {
        default:
            b044A044A044A044A044A044A = 53;
            b044A044A044A044A044A044A = b044A044A044A044A044A044A();
            return;

        case 0: // '\0'
            break;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static int b044A044A044A044A044A044A()
    {
        return 34;
    }

    public abstract int calculateBlockRate();

    public abstract int calculateBlockSize();

    public abstract int calculateByteOffsetIntoHapticData(int i);

    public abstract void dispose();

    public abstract String getContentUUID();

    public abstract int getEncryption();

    public abstract int getMajorVersionNumber();

    public abstract int getMinorVersionNumber();

    public abstract int getNumChannels();

    public abstract void setEncryptedHSI(ByteBuffer bytebuffer, int i);
}
