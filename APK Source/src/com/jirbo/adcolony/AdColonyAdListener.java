// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;


// Referenced classes of package com.jirbo.adcolony:
//            AdColonyAd

public interface AdColonyAdListener
{

    public abstract void onAdColonyAdAttemptFinished(AdColonyAd adcolonyad);

    public abstract void onAdColonyAdStarted(AdColonyAd adcolonyad);
}
