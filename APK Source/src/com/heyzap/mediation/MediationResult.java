// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation;

import com.heyzap.mediation.abstr.NetworkAdapter;
import java.util.ArrayList;
import java.util.List;

public class MediationResult
{
    public static class NetworkResult
    {

        public final NetworkAdapter adapter;
        public final com.heyzap.mediation.abstr.NetworkAdapter.FetchResult fetchResult;
        public final String id;
        public final boolean isVideo;
        public final String network;
        public final int ordinal;
        public final Double score;

        public NetworkResult(String s, Double double1, NetworkAdapter networkadapter, boolean flag, String s1, com.heyzap.mediation.abstr.NetworkAdapter.FetchResult fetchresult, int i)
        {
            id = s;
            score = double1;
            network = s1;
            fetchResult = fetchresult;
            adapter = networkadapter;
            ordinal = i;
            isVideo = flag;
        }
    }


    private String error;
    public String id;
    public List networkResults;
    public NetworkResult selectedNetwork;

    public MediationResult()
    {
        networkResults = new ArrayList();
    }

    public String getError()
    {
        return error;
    }

    public void setError(String s)
    {
        error = s;
    }
}
