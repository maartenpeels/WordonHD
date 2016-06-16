// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


// Referenced classes of package com.adobe.air:
//            RemoteDebuggerListenerDialog

private static final class  extends Enum
{

    private static final StateRuntimeTimedOut $VALUES[];
    public static final StateRuntimeTimedOut StateRuntimeNotReady;
    public static final StateRuntimeTimedOut StateRuntimeTimedOut;
    public static final StateRuntimeTimedOut StateRuntimeWaitingForDebugger;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/adobe/air/RemoteDebuggerListenerDialog$DialogState, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        StateRuntimeNotReady = new <init>("StateRuntimeNotReady", 0);
        StateRuntimeWaitingForDebugger = new <init>("StateRuntimeWaitingForDebugger", 1);
        StateRuntimeTimedOut = new <init>("StateRuntimeTimedOut", 2);
        $VALUES = (new .VALUES[] {
            StateRuntimeNotReady, StateRuntimeWaitingForDebugger, StateRuntimeTimedOut
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
