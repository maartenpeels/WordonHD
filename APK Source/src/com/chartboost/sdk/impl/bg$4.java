// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.media.MediaPlayer;
import com.chartboost.sdk.Libraries.CBLogging;

// Referenced classes of package com.chartboost.sdk.impl:
//            bg

class a
    implements android.media.Player.OnErrorListener
{

    final bg a;

    public boolean onError(MediaPlayer mediaplayer, int i, int j)
    {
        CBLogging.a(bg.i(a), (new StringBuilder()).append("Error: ").append(i).append(",").append(j).toString());
        bg.c(a, -1);
        bg.d(a, -1);
        return bg.j(a) == null || !bg.j(a).onError(bg.d(a), i, j) ? true : true;
    }

    CBLogging(bg bg1)
    {
        a = bg1;
        super();
    }
}
