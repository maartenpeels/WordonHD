// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper

public static final class  extends Enum
{

    private static final DESTROYED $VALUES[];
    public static final DESTROYED DESTROYED;
    public static final DESTROYED PAUSED;
    public static final DESTROYED RESTARTED;
    public static final DESTROYED RESUMED;
    public static final DESTROYED STARTED;
    public static final DESTROYED STOPPED;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/adobe/air/AndroidActivityWrapper$ActivityState, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        STARTED = new <init>("STARTED", 0);
        RESTARTED = new <init>("RESTARTED", 1);
        RESUMED = new <init>("RESUMED", 2);
        PAUSED = new <init>("PAUSED", 3);
        STOPPED = new <init>("STOPPED", 4);
        DESTROYED = new <init>("DESTROYED", 5);
        $VALUES = (new .VALUES[] {
            STARTED, RESTARTED, RESUMED, PAUSED, STOPPED, DESTROYED
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
