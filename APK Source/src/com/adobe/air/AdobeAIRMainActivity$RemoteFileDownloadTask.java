// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.os.AsyncTask;
import java.util.Properties;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

// Referenced classes of package com.adobe.air:
//            AdobeAIRMainActivity

private class <init> extends AsyncTask
{

    final AdobeAIRMainActivity this$0;

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    protected transient Properties doInBackground(String as[])
    {
        Object obj = as[0];
        as = new DefaultHttpClient();
        obj = new HttpGet(((String) (obj)));
        try
        {
            as = as.execute(((org.apache.http.client.methods.HttpUriRequest) (obj))).getEntity().getContent();
            obj = new Properties();
            ((Properties) (obj)).load(as);
        }
        // Misplaced declaration of an exception variable
        catch (String as[])
        {
            return null;
        }
        return ((Properties) (obj));
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Properties)obj);
    }

    protected void onPostExecute(Properties properties)
    {
        if (properties != null)
        {
            properties = properties.getProperty("NewUIPercentage");
            if (properties != null)
            {
                int i = Integer.parseInt(properties);
                if (i != AdobeAIRMainActivity.access$100(AdobeAIRMainActivity.this))
                {
                    AdobeAIRMainActivity.access$102(AdobeAIRMainActivity.this, i);
                    properties = AdobeAIRMainActivity.this;
                    boolean flag;
                    if (AdobeAIRMainActivity.access$300(AdobeAIRMainActivity.this) <= AdobeAIRMainActivity.access$100(AdobeAIRMainActivity.this))
                    {
                        flag = false;
                    } else
                    {
                        flag = true;
                    }
                    AdobeAIRMainActivity.access$202(properties, flag);
                    AdobeAIRMainActivity.access$400(AdobeAIRMainActivity.this);
                }
            }
        }
    }

    private ()
    {
        this$0 = AdobeAIRMainActivity.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
