// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.ads;


// Referenced classes of package com.heyzap.sdk.ads:
//            HeyzapAds

public static interface 
{

    public abstract void onAudioFinished();

    public abstract void onAudioStarted();

    public abstract void onAvailable(String s);

    public abstract void onClick(String s);

    public abstract void onFailedToFetch(String s);

    public abstract void onFailedToShow(String s);

    public abstract void onHide(String s);

    public abstract void onShow(String s);
}
