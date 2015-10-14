// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.webkit.WebBackForwardList;
import android.webkit.WebHistoryItem;

// Referenced classes of package com.adobe.air:
//            AdobeAIRWebView

public class AdobeAIR extends Activity
{

    private static final String PROPERTY_INITIAL_LAUNCH = "initialLaunch";
    private static final String TAG = "Adobe AIR";
    public String DYNAMIC_URL;
    private Context mCtx;
    private AdobeAIRWebView mGameListingWebView;

    public AdobeAIR()
    {
        mGameListingWebView = null;
        DYNAMIC_URL = "https://www.adobe.com/airgames/";
        mCtx = null;
    }

    private boolean isInitialLaunch()
    {
        return getSharedPreferences(com/adobe/air/AdobeAIR.getSimpleName(), 0).getBoolean("initialLaunch", true);
    }

    private void updateSharedPrefForInitialLaunch()
    {
        android.content.SharedPreferences.Editor editor = getSharedPreferences(com/adobe/air/AdobeAIR.getSimpleName(), 0).edit();
        editor.putBoolean("initialLaunch", false);
        editor.commit();
    }

    public void onBackPressed()
    {
        if (android.os.Build.VERSION.SDK_INT < 12 || !mGameListingWebView.canGoBack()) goto _L2; else goto _L1
_L1:
        Object obj;
        int i;
        obj = mGameListingWebView.copyBackForwardList();
        i = ((WebBackForwardList) (obj)).getCurrentIndex();
        if (i <= 0) goto _L4; else goto _L3
_L3:
        obj = ((WebBackForwardList) (obj)).getItemAtIndex(i - 1).getUrl();
        if (!DYNAMIC_URL.equals(obj)) goto _L4; else goto _L5
_L5:
        boolean flag = false;
_L7:
        if (flag)
        {
            mGameListingWebView.goBack();
            return;
        }
_L2:
        super.onBackPressed();
        return;
_L4:
        flag = true;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mCtx = this;
        if (isInitialLaunch())
        {
            DYNAMIC_URL = "https://www.adobe.com/airgames2/";
            updateSharedPrefForInitialLaunch();
        }
        mGameListingWebView = new AdobeAIRWebView(mCtx);
        mGameListingWebView.create();
        mGameListingWebView.loadUrl(DYNAMIC_URL);
        onNewIntent(getIntent());
    }

    public void onResume()
    {
        super.onResume();
        if (mGameListingWebView.isOffline())
        {
            mGameListingWebView.setOffline(false);
            mGameListingWebView.loadUrl(DYNAMIC_URL);
        }
    }
}
