// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.view.View;

public interface TapjoyDisplayAdNotifier
{

    public abstract void getDisplayAdResponse(View view);

    public abstract void getDisplayAdResponseFailed(String s);
}
