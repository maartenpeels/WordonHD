// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.threatmetrix.TrustDefenderMobile;

import android.os.StatFs;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class StatWrapper
{

    private static final String TAG;
    private static final Method m_getAvailableBlocks;
    private static final Method m_getAvailableBlocksLong;
    private static final Method m_getBlockSize;
    private static final Method m_getBlockSizeLong;
    private StatFs m_stat;

    public StatWrapper(String s)
    {
        m_stat = new StatFs(s);
    }

    public long getAvailableBlocks()
    {
        long l;
        long l1;
        l1 = 0L;
        l = l1;
        if (m_getAvailableBlocksLong == null) goto _L2; else goto _L1
_L1:
        boolean flag = false;
        l = ((Long)m_getAvailableBlocksLong.invoke(m_stat, new Object[0])).longValue();
        l1 = l;
_L3:
        l = l1;
        if (!flag)
        {
            return l1;
        }
        break; /* Loop/switch isn't completed */
        Object obj;
        obj;
        Log.e(TAG, "getAvailableBlocksLong invoke failed: ", ((Throwable) (obj)));
        flag = true;
        continue; /* Loop/switch isn't completed */
        obj;
        Log.e(TAG, "getAvailableBlocksLong invoke failed: ", ((Throwable) (obj)));
        flag = true;
        continue; /* Loop/switch isn't completed */
        obj;
        Log.e(TAG, "getAvailableBlocksLong invoke failed: ", ((Throwable) (obj)));
        flag = true;
        continue; /* Loop/switch isn't completed */
        obj;
        Log.e(TAG, "getAvailableBlocksLong invoke failed: ", ((Throwable) (obj)));
        flag = true;
        if (true) goto _L3; else goto _L2
_L2:
        l1 = l;
        if (m_getAvailableBlocks == null) goto _L5; else goto _L4
_L4:
        flag = false;
        int i = ((Integer)m_getAvailableBlocks.invoke(m_stat, new Object[0])).intValue();
        l = i;
_L6:
        l1 = l;
        if (!flag)
        {
            return l;
        }
        break; /* Loop/switch isn't completed */
        obj;
        Log.e(TAG, "getAvailableBlocks invoke failed: ", ((Throwable) (obj)));
        flag = true;
        continue; /* Loop/switch isn't completed */
        obj;
        Log.e(TAG, "getAvailableBlocks invoke failed: ", ((Throwable) (obj)));
        flag = true;
        continue; /* Loop/switch isn't completed */
        obj;
        Log.e(TAG, "getAvailableBlocks invoke failed: ", ((Throwable) (obj)));
        flag = true;
        continue; /* Loop/switch isn't completed */
        obj;
        Log.e(TAG, "getAvailableBlocks invoke failed: ", ((Throwable) (obj)));
        flag = true;
        if (true) goto _L6; else goto _L5
_L5:
        return l1;
    }

    public long getBlockSize()
    {
        long l;
        long l1;
        l1 = 0L;
        l = l1;
        if (m_getBlockSizeLong == null) goto _L2; else goto _L1
_L1:
        boolean flag = false;
        l = ((Long)m_getBlockSizeLong.invoke(m_stat, new Object[0])).longValue();
        l1 = l;
_L3:
        l = l1;
        if (!flag)
        {
            return l1;
        }
        break; /* Loop/switch isn't completed */
        Object obj;
        obj;
        Log.e(TAG, "getBlockSizeLong invoke failed: ", ((Throwable) (obj)));
        flag = true;
        continue; /* Loop/switch isn't completed */
        obj;
        Log.e(TAG, "getBlockSizeLong invoke failed: ", ((Throwable) (obj)));
        flag = true;
        continue; /* Loop/switch isn't completed */
        obj;
        Log.e(TAG, "getBlockSizeLong invoke failed: ", ((Throwable) (obj)));
        flag = true;
        continue; /* Loop/switch isn't completed */
        obj;
        Log.e(TAG, "getBlockSizeLong invoke failed: ", ((Throwable) (obj)));
        flag = true;
        if (true) goto _L3; else goto _L2
_L2:
        l1 = l;
        if (m_getBlockSize == null) goto _L5; else goto _L4
_L4:
        flag = false;
        int i = ((Integer)m_getBlockSize.invoke(m_stat, new Object[0])).intValue();
        l = i;
_L6:
        l1 = l;
        if (!flag)
        {
            return l;
        }
        break; /* Loop/switch isn't completed */
        obj;
        Log.e(TAG, "getBlockSize invoke failed: ", ((Throwable) (obj)));
        flag = true;
        continue; /* Loop/switch isn't completed */
        obj;
        Log.e(TAG, "getBlockSize invoke failed: ", ((Throwable) (obj)));
        flag = true;
        continue; /* Loop/switch isn't completed */
        obj;
        Log.e(TAG, "getBlockSize invoke failed: ", ((Throwable) (obj)));
        flag = true;
        continue; /* Loop/switch isn't completed */
        obj;
        Log.e(TAG, "getBlockSize invoke failed: ", ((Throwable) (obj)));
        flag = true;
        if (true) goto _L6; else goto _L5
_L5:
        return l1;
    }

    static 
    {
        Method method;
        TAG = com/threatmetrix/TrustDefenderMobile/StatWrapper.getName();
        method = null;
        Method method1 = android/os/StatFs.getMethod("getBlockSize", new Class[0]);
        method = method1;
_L8:
        m_getBlockSize = method;
        method = null;
        method1 = android/os/StatFs.getMethod("getBlockSizeLong", new Class[0]);
        method = method1;
_L6:
        m_getBlockSizeLong = method;
        method = null;
        method1 = android/os/StatFs.getMethod("getAvailableBlocks", new Class[0]);
        method = method1;
_L4:
        m_getAvailableBlocks = method;
        method = null;
        method1 = android/os/StatFs.getMethod("getAvailableBlocksLong", new Class[0]);
        method = method1;
_L2:
        m_getAvailableBlocksLong = method;
        return;
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
        if (true) goto _L2; else goto _L1
_L1:
        nosuchmethodexception;
        if (true) goto _L4; else goto _L3
_L3:
        nosuchmethodexception;
        if (true) goto _L6; else goto _L5
_L5:
        nosuchmethodexception;
        if (true) goto _L8; else goto _L7
_L7:
    }
}
