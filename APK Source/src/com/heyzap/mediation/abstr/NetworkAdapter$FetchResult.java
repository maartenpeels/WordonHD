// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.abstr;


// Referenced classes of package com.heyzap.mediation.abstr:
//            NetworkAdapter

public static class success
{

    public static son NOT_READY;
    public com.heyzap.internal.lureReason errorCode;
    public String errorMessage;
    public boolean success;

    static 
    {
        NOT_READY = new <init>(com.heyzap.internal.lureReason.TIMEOUT, "Ad not ready");
    }

    public son()
    {
        success = true;
    }

    public son(com.heyzap.internal.lureReason lurereason, String s)
    {
        errorCode = lurereason;
        errorMessage = s;
        success = false;
    }
}
