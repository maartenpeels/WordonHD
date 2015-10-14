// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.goviral;

import android.os.Bundle;
import android.util.Log;
import com.facebook.widget.FacebookDialog;

// Referenced classes of package com.milkmangames.extensions.android.goviral:
//            b

final class q
    implements com.facebook.widget.FacebookDialog.Callback
{

    final String a;
    final b b;

    q(b b1, String s)
    {
        b = b1;
        a = s;
        super();
    }

    public final void onComplete(com.facebook.widget.FacebookDialog.PendingCall pendingcall, Bundle bundle)
    {
        Log.d("[GVExtension]", (new StringBuilder("Message Gesture is ")).append(FacebookDialog.getNativeDialogCompletionGesture(bundle)).toString());
        Log.d("[GVExtension]", (new StringBuilder("Message dialog complete? ")).append(FacebookDialog.getNativeDialogDidComplete(bundle)).toString());
        if (FacebookDialog.getNativeDialogCompletionGesture(bundle).equals("cancel"))
        {
            b.a("message", a);
            return;
        } else
        {
            pendingcall = new Bundle();
            pendingcall.putString("gvDialogType", "message");
            b.a("message", pendingcall, a);
            return;
        }
    }

    public final void onError(com.facebook.widget.FacebookDialog.PendingCall pendingcall, Exception exception, Bundle bundle)
    {
        b.a(400, exception.getMessage(), "message", a);
    }
}
