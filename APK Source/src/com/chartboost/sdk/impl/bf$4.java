// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.media.MediaPlayer;
import com.chartboost.sdk.Libraries.CBLogging;

// Referenced classes of package com.chartboost.sdk.impl:
//            bf

class a
    implements android.media.Player.OnErrorListener
{

    final bf a;

    public boolean onError(MediaPlayer mediaplayer, int i, int j)
    {
        CBLogging.a(bf.k(a), (new StringBuilder()).append("Error: ").append(i).append(",").append(j).toString());
        bf.c(a, -1);
        bf.d(a, -1);
        return bf.l(a) == null || !bf.l(a).onError(bf.d(a), i, j) ? true : true;
    }

    CBLogging(bf bf1)
    {
        a = bf1;
        super();
    }
}
