// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.immersion.hapticmediasdk.utils;

import android.os.SystemClock;

public class Profiler
{

    public static int b044A044A044A044A044A044A = 0;
    public static int b044A044A044A044A044A044A = 1;
    public static int b044A044A044A044A044A044A = 89;
    public static int b044A044A044A044A044A044A = 2;
    public long mStartTime;
    public long mStartTimeII;

    public Profiler()
    {
        int i = b044A044A044A044A044A044A;
        switch ((i * (b044A044A044A044A044A044A + i)) % b044A044A044A044A044A044A)
        {
        default:
            b044A044A044A044A044A044A = 10;
            b044A044A044A044A044A044A = 87;
            break;

        case 0: // '\0'
            break;
        }
        try
        {
            super();
            return;
        }
        catch (Exception exception)
        {
            throw exception;
        }
    }

    public static int b044A044A044A044A044A044A()
    {
        return 4;
    }

    public long getDuration()
    {
        int i;
        long l;
        long l1;
        try
        {
            l = SystemClock.elapsedRealtime();
            l1 = mStartTime;
        }
        catch (Exception exception)
        {
            throw exception;
        }
        i = b044A044A044A044A044A044A;
        switch ((i * (b044A044A044A044A044A044A + i)) % b044A044A044A044A044A044A)
        {
        default:
            b044A044A044A044A044A044A = b044A044A044A044A044A044A();
            b044A044A044A044A044A044A = 69;
            // fall through

        case 0: // '\0'
            return l - l1;
        }
    }

    public long getDurationII()
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
        long l = SystemClock.elapsedRealtime();
        int i = b044A044A044A044A044A044A;
        switch ((i * (b044A044A044A044A044A044A + i)) % b044A044A044A044A044A044A)
        {
        default:
            b044A044A044A044A044A044A = 72;
            b044A044A044A044A044A044A = 11;
            // fall through

        case 0: // '\0'
            return l - mStartTimeII;
        }
    }

    public void startTiming()
    {
        int i = 3;
        try
        {
            do
            {
                i /= 0;
            } while (true);
        }
        catch (Exception exception)
        {
            b044A044A044A044A044A044A = 75;
        }
        try
        {
            mStartTime = SystemClock.elapsedRealtime();
            return;
        }
        catch (Exception exception1)
        {
            throw exception1;
        }
    }

    public void startTimingII()
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
        if (((b044A044A044A044A044A044A + b044A044A044A044A044A044A) * b044A044A044A044A044A044A) % b044A044A044A044A044A044A != b044A044A044A044A044A044A)
        {
            b044A044A044A044A044A044A = 81;
            b044A044A044A044A044A044A = 31;
        }
        mStartTimeII = SystemClock.elapsedRealtime();
    }
}
