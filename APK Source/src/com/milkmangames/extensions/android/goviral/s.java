// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.goviral;

import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;

// Referenced classes of package com.milkmangames.extensions.android.goviral:
//            b

final class s
    implements com.facebook.widget.WebDialog.OnCompleteListener
{

    final String a;
    final b b;

    s(b b1, String s1)
    {
        b = b1;
        a = s1;
        super();
    }

    public final void onComplete(Bundle bundle, FacebookException facebookexception)
    {
        if (facebookexception == null)
        {
            b.a("feed", bundle, a);
            return;
        }
        if (facebookexception instanceof FacebookOperationCanceledException)
        {
            b.a("feed", a);
            return;
        } else
        {
            b.a(facebookexception.hashCode(), facebookexception.getMessage(), "feed", a);
            return;
        }
    }
}
