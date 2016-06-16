// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.alebianco.air.extensions.analytics.functions;


// Referenced classes of package eu.alebianco.air.extensions.analytics.functions:
//            TrackData

static class tType
{

    static final int $SwitchMap$eu$alebianco$air$extensions$analytics$functions$TrackData$HitType[];

    static 
    {
        $SwitchMap$eu$alebianco$air$extensions$analytics$functions$TrackData$HitType = new int[tType.values().length];
        try
        {
            $SwitchMap$eu$alebianco$air$extensions$analytics$functions$TrackData$HitType[tType.VIEW.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            $SwitchMap$eu$alebianco$air$extensions$analytics$functions$TrackData$HitType[tType.EVENT.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            $SwitchMap$eu$alebianco$air$extensions$analytics$functions$TrackData$HitType[tType.EXCEPTION.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            $SwitchMap$eu$alebianco$air$extensions$analytics$functions$TrackData$HitType[tType.TIMING.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$eu$alebianco$air$extensions$analytics$functions$TrackData$HitType[tType.SOCIAL.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$eu$alebianco$air$extensions$analytics$functions$TrackData$HitType[tType.TRANSACTION.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
