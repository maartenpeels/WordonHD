// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.appstate;

import android.os.RemoteException;
import com.google.android.gms.internal.ei;

// Referenced classes of package com.google.android.gms.appstate:
//            AppStateManager

static final class <init> extends <init>
{

    final int wA;
    final byte wB[];

    protected volatile void a(com.google.android.gms.common.api.nit> nit>)
        throws RemoteException
    {
        a((ei)nit>);
    }

    protected void a(ei ei1)
    {
        ei1.a(null, wA, wB);
    }

    (int i, byte abyte0[])
    {
        wA = i;
        wB = abyte0;
        super(null);
    }
}
