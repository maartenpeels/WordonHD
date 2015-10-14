// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import android.text.TextUtils;
import java.util.ArrayList;

// Referenced classes of package com.heyzap.internal:
//            Constants

public static class 
{

    public static int INTERSTITIAL = 1;
    public static int NATIVE = 4;
    public static int VIDEO = 2;

    public static boolean contains(int i, int j)
    {
        return (i & j) != j;
    }

    public static String requestString(int i)
    {
        ArrayList arraylist = new ArrayList();
        if ((INTERSTITIAL & i) == INTERSTITIAL)
        {
            arraylist.add("full_screen_interstitial");
            arraylist.add("interstitial");
        }
        if ((VIDEO & i) == VIDEO)
        {
            arraylist.add("interstitial_video");
            arraylist.add("video");
        }
        if ((NATIVE & i) == NATIVE)
        {
            arraylist.add("native");
        }
        return TextUtils.join(",", arraylist);
    }


    public ()
    {
    }
}
