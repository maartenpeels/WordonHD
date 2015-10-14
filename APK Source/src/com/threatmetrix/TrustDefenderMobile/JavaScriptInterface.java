// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.threatmetrix.TrustDefenderMobile;

import android.util.Log;
import android.webkit.ValueCallback;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;

public class JavaScriptInterface
    implements ValueCallback
{

    private final String TAG = com/threatmetrix/TrustDefenderMobile/JavaScriptInterface.getName();
    CountDownLatch latch;
    public String returnedValue;
    public ArrayList returnedValues;

    JavaScriptInterface(CountDownLatch countdownlatch)
    {
        latch = null;
        returnedValues = new ArrayList();
        latch = countdownlatch;
    }

    private void callback(String s, String s1)
    {
        String s2 = s;
        if (s == null)
        {
            s2 = "null";
        }
        long l = 0L;
        if (latch != null)
        {
            l = latch.getCount();
        }
        String s3 = TAG;
        (new StringBuilder("in ")).append(s1).append("(").append(s2).append(") count = ").append(l);
        returnedValue = s;
        if (s == null)
        {
            returnedValues.add("");
        } else
        {
            returnedValues.add(s);
        }
        if (latch != null)
        {
            latch.countDown();
            s = TAG;
            (new StringBuilder("in ")).append(s1).append("() count = ").append(latch.getCount());
            return;
        } else
        {
            Log.e(TAG, (new StringBuilder("in ")).append(s1).append("() latch == null").toString());
            return;
        }
    }

    public void getString(String s)
    {
        callback(s, "getString");
    }

    public volatile void onReceiveValue(Object obj)
    {
        onReceiveValue((String)obj);
    }

    public void onReceiveValue(String s)
    {
        String s1 = s;
        if (s == null) goto _L2; else goto _L1
_L1:
        if (s.length() != 2 || !s.equals("\"\"")) goto _L4; else goto _L3
_L3:
        s1 = "";
_L2:
        callback(s1, "onReceiveValue");
        return;
_L4:
        s1 = s;
        if (s.length() > 1)
        {
            s1 = s.substring(1, s.length() - 1);
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public void setLatch(CountDownLatch countdownlatch)
    {
        String s;
        if (latch != null)
        {
            s = TAG;
        }
        latch = countdownlatch;
    }
}
