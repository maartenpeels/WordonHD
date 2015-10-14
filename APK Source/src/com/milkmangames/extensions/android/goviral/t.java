// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.goviral;

import android.os.Bundle;
import android.util.Log;
import com.facebook.FacebookDialogException;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookServiceException;

// Referenced classes of package com.milkmangames.extensions.android.goviral:
//            b

final class t
    implements com.facebook.widget.WebDialog.OnCompleteListener
{

    final String a;
    final b b;

    t(b b1, String s)
    {
        b = b1;
        a = s;
        super();
    }

    public final void onComplete(Bundle bundle, FacebookException facebookexception)
    {
        Log.d("[GVExtension]", "onComplete rbu");
        if (facebookexception == null)
        {
            Log.d("[GVExtension]", "Request complete no err.");
            if (bundle.getString("request") == null)
            {
                b.a("apprequests", a);
                return;
            } else
            {
                b.a("apprequests", bundle, a);
                return;
            }
        }
        if (facebookexception instanceof FacebookOperationCanceledException)
        {
            b.a("apprequests", a);
            return;
        }
        if (facebookexception instanceof FacebookDialogException)
        {
            Log.d("[GVExtension]", "DialogException.");
            bundle = (FacebookDialogException)facebookexception;
            b.a(bundle.getErrorCode(), bundle.getMessage(), "apprequests", a);
            return;
        }
        if (facebookexception instanceof FacebookServiceException)
        {
            Log.d("[GVExtension]", "Service exception..-.");
            bundle = (FacebookServiceException)facebookexception;
            Log.d("[GVExtension]", (new StringBuilder("SEM:")).append(bundle.getMessage()).toString());
            Log.d("[GVExtension]", (new StringBuilder("RE:")).append(bundle.getRequestError()).toString());
            Log.d("[GVExtension]", (new StringBuilder("REC:")).append(bundle.getRequestError().getErrorCode()).toString());
            Log.d("[GVExtension]", (new StringBuilder("RECM:")).append(bundle.getRequestError().getErrorMessage()).toString());
            if (bundle.getMessage().toLowerCase().contains("user cancel"))
            {
                b.a("apprequests", a);
                return;
            } else
            {
                b.a(bundle.getRequestError().getErrorCode(), bundle.getMessage(), "apprequests", a);
                return;
            }
        } else
        {
            Log.d("[GVExtension]", (new StringBuilder("Facebook request dialog exception:")).append(facebookexception.getCause()).toString());
            Log.d("[GVExtension]", facebookexception.toString());
            b.a(facebookexception.hashCode(), facebookexception.getMessage(), "apprequests", a);
            return;
        }
    }
}
