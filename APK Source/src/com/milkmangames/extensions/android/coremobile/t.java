// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.coremobile;

import android.content.DialogInterface;
import android.util.Log;

// Referenced classes of package com.milkmangames.extensions.android.coremobile:
//            b

final class t
    implements android.content.DialogInterface.OnDismissListener
{

    final b a;

    t(b b1)
    {
        a = b1;
        super();
    }

    public final void onDismiss(DialogInterface dialoginterface)
    {
        Log.d(b.a, "On dimsiss");
    }
}
