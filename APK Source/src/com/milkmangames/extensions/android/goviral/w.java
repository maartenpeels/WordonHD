// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.goviral;

import android.content.DialogInterface;

// Referenced classes of package com.milkmangames.extensions.android.goviral:
//            b

final class w
    implements android.content.DialogInterface.OnClickListener
{

    final String a;
    final b b;

    w(b b1, String s)
    {
        b = b1;
        a = s;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        com.milkmangames.extensions.android.goviral.b.a(b, "Android hash", "", (new StringBuilder("Your android hash key is below.  You'll need to enter it in the facebook developer site.  After doing so, you can switch to the regular ANE file.  Remember that this key is different when you build with a debug or release android p12 keystore file- so you'll need to do this again before release and set the release key on the facebook site. KEY:    ")).append(a).toString(), false, "", "", "0");
    }
}
