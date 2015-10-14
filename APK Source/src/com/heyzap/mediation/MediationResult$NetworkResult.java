// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation;

import com.heyzap.mediation.abstr.NetworkAdapter;

// Referenced classes of package com.heyzap.mediation:
//            MediationResult

public static class isVideo
{

    public final NetworkAdapter adapter;
    public final com.heyzap.mediation.abstr.o fetchResult;
    public final String id;
    public final boolean isVideo;
    public final String network;
    public final int ordinal;
    public final Double score;

    public lt(String s, Double double1, NetworkAdapter networkadapter, boolean flag, String s1, com.heyzap.mediation.abstr. , int i)
    {
        id = s;
        score = double1;
        network = s1;
        fetchResult = ;
        adapter = networkadapter;
        ordinal = i;
        isVideo = flag;
    }
}
