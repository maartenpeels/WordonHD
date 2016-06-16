// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.immersion.hapticmediasdk;


// Referenced classes of package com.immersion.hapticmediasdk:
//            HapticContentSDK

public static final class b041704170417041704170417 extends Enum
{

    public static final DISPOSED DISPOSED;
    public static final DISPOSED INITIALIZED;
    public static final DISPOSED NOT_INITIALIZED;
    public static final DISPOSED PAUSED;
    public static final DISPOSED PAUSED_DUE_TO_BUFFERING;
    public static final DISPOSED PAUSED_DUE_TO_TIMEOUT;
    public static final DISPOSED PLAYING;
    public static final DISPOSED STOPPED;
    public static final DISPOSED STOPPED_DUE_TO_ERROR;
    private static final DISPOSED a[];
    public static int b041704170417041704170417 = 0;
    public static int b041704170417041704170417 = 2;
    public static int b044A044A044A044A044A044A = 6;
    public static int b044A044A044A044A044A044A = 1;

    public static int b041704170417041704170417()
    {
        return 2;
    }

    public static int b041704170417041704170417()
    {
        return 37;
    }

    public static int b041704170417041704170417()
    {
        return 1;
    }

    public static b041704170417041704170417 valueOf(String s)
    {
        try
        {
            s = Enum.valueOf(com/immersion/hapticmediasdk/HapticContentSDK$SDKStatus, s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw s;
        }
        if (((b044A044A044A044A044A044A + b041704170417041704170417()) * b044A044A044A044A044A044A) % b041704170417041704170417 != b041704170417041704170417)
        {
            b044A044A044A044A044A044A = 22;
            b041704170417041704170417 = 7;
        }
        try
        {
            s = (b041704170417041704170417)s;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw s;
        }
        return s;
    }

    public static b041704170417041704170417 valueOfCaseInsensitive(String s)
    {
        b041704170417041704170417 ab041704170417041704170417[];
        b041704170417041704170417 b041704170417041704170417_1;
        int i;
        int j;
        boolean flag;
        try
        {
            ab041704170417041704170417 = values();
            j = ab041704170417041704170417.length;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw s;
        }
        i = 0;
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        if (((b044A044A044A044A044A044A + b044A044A044A044A044A044A) * b044A044A044A044A044A044A) % b041704170417041704170417() != b041704170417041704170417)
        {
            b044A044A044A044A044A044A = 55;
            b041704170417041704170417 = b041704170417041704170417();
        }
        b041704170417041704170417_1 = ab041704170417041704170417[i];
        flag = s.equalsIgnoreCase(b041704170417041704170417_1.name());
        if (flag)
        {
            return b041704170417041704170417_1;
        }
        i++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_10;
_L1:
        return null;
    }

    public static name[] values()
    {
        int i = b044A044A044A044A044A044A;
        switch ((i * (b044A044A044A044A044A044A + i)) % b041704170417041704170417)
        {
        default:
            b044A044A044A044A044A044A = b041704170417041704170417();
            b044A044A044A044A044A044A = 72;
            break;

        case 0: // '\0'
            break;
        }
        name aname[];
        try
        {
            aname = a;
        }
        catch (Exception exception1)
        {
            throw exception1;
        }
        try
        {
            aname = (a[])aname.clone();
        }
        catch (Exception exception)
        {
            throw exception;
        }
        return aname;
    }

    static 
    {
        NOT_INITIALIZED = new <init>("NOT_INITIALIZED", 0);
        INITIALIZED = new <init>("INITIALIZED", 1);
        PLAYING = new <init>("PLAYING", 2);
        STOPPED = new <init>("STOPPED", 3);
        STOPPED_DUE_TO_ERROR = new <init>("STOPPED_DUE_TO_ERROR", 4);
        PAUSED = new <init>("PAUSED", 5);
        PAUSED_DUE_TO_TIMEOUT = new <init>("PAUSED_DUE_TO_TIMEOUT", 6);
        s_3B_.clone clone = new <init>("PAUSED_DUE_TO_BUFFERING", 7);
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
        PAUSED_DUE_TO_BUFFERING = clone;
        if (((b041704170417041704170417() + b044A044A044A044A044A044A) * b041704170417041704170417()) % b041704170417041704170417 != b041704170417041704170417)
        {
            b044A044A044A044A044A044A = b041704170417041704170417();
            b041704170417041704170417 = b041704170417041704170417();
        }
        DISPOSED = new <init>("DISPOSED", 8);
        a = (new a[] {
            NOT_INITIALIZED, INITIALIZED, PLAYING, STOPPED, STOPPED_DUE_TO_ERROR, PAUSED, PAUSED_DUE_TO_TIMEOUT, PAUSED_DUE_TO_BUFFERING, DISPOSED
        });
    }

    private (String s, int i)
    {
_L2:
        if ((4 * 5) % 2 != 0)
        {
            continue; /* Loop/switch isn't completed */
        }
_L4:
        super(s, i);
        return;
        if ((3 + 9) % 2 + 1 != 1) goto _L2; else goto _L1
_L1:
        int j = b044A044A044A044A044A044A;
        switch ((j * (b044A044A044A044A044A044A + j)) % b041704170417041704170417)
        {
        default:
            b044A044A044A044A044A044A = b041704170417041704170417();
            b041704170417041704170417 = b041704170417041704170417();
            break;

        case 0: // '\0'
            break;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
