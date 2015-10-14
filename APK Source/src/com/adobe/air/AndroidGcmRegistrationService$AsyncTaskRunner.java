// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.os.AsyncTask;
import com.google.android.gms.gcm.GoogleCloudMessaging;

// Referenced classes of package com.adobe.air:
//            AndroidGcmRegistrationService

private class <init> extends AsyncTask
{

    final AndroidGcmRegistrationService this$0;

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((Integer[])aobj);
    }

    protected transient Void doInBackground(Integer ainteger[])
    {
label0:
        {
            Thread.sleep(ainteger[0].intValue());
            AndroidGcmRegistrationService.access$102(AndroidGcmRegistrationService.this, AndroidGcmRegistrationService.access$300(AndroidGcmRegistrationService.this).register(new String[] {
                AndroidGcmRegistrationService.access$200()
            }));
            if (AndroidGcmRegistrationService.access$100(AndroidGcmRegistrationService.this) == null)
            {
                AndroidGcmRegistrationService.access$400(AndroidGcmRegistrationService.this, 0x493e0);
                break label0;
            }
            try
            {
                AndroidGcmRegistrationService.access$500(AndroidGcmRegistrationService.this);
            }
            // Misplaced declaration of an exception variable
            catch (Integer ainteger[])
            {
                AndroidGcmRegistrationService.access$400(AndroidGcmRegistrationService.this, 0x493e0);
            }
        }
        return null;
    }

    private A()
    {
        this$0 = AndroidGcmRegistrationService.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
