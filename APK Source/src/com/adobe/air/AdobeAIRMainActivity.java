// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.adobe.air.utils.Utils;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.util.Date;
import java.util.Locale;
import java.util.Properties;
import java.util.Random;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

// Referenced classes of package com.adobe.air:
//            AdobeAIR, AdobeAIRWebView, AndroidGcmResultReceiver, AndroidGcmRegistrationService, 
//            ShakeListenerService

public class AdobeAIRMainActivity extends Activity
    implements AndroidGcmResultReceiver.Receiver
{
    private class RemoteFileDownloadTask extends AsyncTask
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
                    if (i != mNewUIThreshold)
                    {
                        mNewUIThreshold = i;
                        properties = AdobeAIRMainActivity.this;
                        boolean flag;
                        if (mRandomNumber <= mNewUIThreshold)
                        {
                            flag = false;
                        } else
                        {
                            flag = true;
                        }
                        properties.mIsGameListDefaultActivity = flag;
                        updateSharedPrefForDefaultActivity();
                    }
                }
            }
        }

        private RemoteFileDownloadTask()
        {
            this$0 = AdobeAIRMainActivity.this;
            super();
        }

    }


    private static final String AIR_PROPERTIES_URL = "airPropertiesUrl";
    private static final String MSG_ID = "msgId";
    private static final String NEW_UI_ANALYTICS_URL = "http://www.adobe.com/airgames/3/";
    private static final String NOTIFICATION_ANALYTICS_URL = "https://www.adobe.com/gamepreview/?game=notification/notificationClicked.html_";
    private static final int PLAY_SERVICES_RESOLUTION_REQUEST = 9000;
    public static final String PROPERTY_DEFAULT_ACTIVITY = "AIRDefaultActivity";
    private static final String PROPERTY_FIRST_LAUNCH = "firstLaunch";
    private static final String PROPERTY_NEW_UI_PERCENTAGE = "NewUIPercentage";
    private static final String PROPERTY_RANDOM_NO = "AirRandomNumber";
    public static long RATE_LIMIT = 0L;
    public static final String RESULT_RECEIVER = "resultReceiver";
    private static final String TAG = "AdobeAIRMainActivity";
    private String mAirPropsFileUrl;
    private AdobeAIRWebView mAnalyticsWebView;
    private Context mCtx;
    private boolean mIsGameListDefaultActivity;
    private boolean mIsNewUISupported;
    private int mNewUIThreshold;
    private AdobeAIRWebView mNotificationWebView;
    private int mRandomNumber;
    private AndroidGcmResultReceiver mReceiver;

    public AdobeAIRMainActivity()
    {
        mCtx = null;
        mNewUIThreshold = 15;
        mAirPropsFileUrl = "http://s3-us-west-1.amazonaws.com/gamepreview/prod/airandroid/air.properties";
        mIsNewUISupported = false;
        mIsGameListDefaultActivity = true;
        mReceiver = null;
        mNotificationWebView = null;
        mAnalyticsWebView = null;
    }

    private void configureTestEnv()
    {
        Object obj = getPackageManager().getActivityInfo(getComponentName(), 128).metaData;
        if (obj == null)
        {
            return;
        }
        obj = ((Bundle) (obj)).getString("airPropertiesUrl");
        if (obj != null)
        {
            try
            {
                if (!((String) (obj)).isEmpty())
                {
                    mAirPropsFileUrl = ((String) (obj));
                    return;
                }
            }
            catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
            {
                return;
            }
            catch (NullPointerException nullpointerexception) { }
        }
        return;
    }

    private void decideDefaultActivity()
    {
        if (mIsNewUISupported)
        {
            boolean flag;
            try
            {
                mRandomNumber = generateRandomNumber();
            }
            catch (NumberFormatException numberformatexception)
            {
                mRandomNumber = 100;
            }
            if (mRandomNumber <= mNewUIThreshold)
            {
                flag = false;
            } else
            {
                flag = true;
            }
            mIsGameListDefaultActivity = flag;
            return;
        } else
        {
            mIsGameListDefaultActivity = true;
            return;
        }
    }

    private void decideDefaultActivityForNextLaunch()
    {
        if (mIsNewUISupported && Utils.isNetworkAvailable(getApplicationContext()))
        {
            configureTestEnv();
            (new RemoteFileDownloadTask()).execute(new String[] {
                mAirPropsFileUrl
            });
        }
    }

    private int generateRandomNumber()
        throws NumberFormatException
    {
        Object obj = android.provider.Settings.Secure.getString(getApplicationContext().getContentResolver(), "android_id");
        int i;
        if (obj == null)
        {
            obj = new Random();
        } else
        {
            Date date = new Date();
            long l = ((String) (obj)).hashCode();
            obj = new Random(date.getTime() + l);
        }
        i = ((Random) (obj)).nextInt(100);
        Log.i("AdobeAIRMainActivity", (new StringBuilder()).append("Random No generated = ").append(i).toString());
        return i;
    }

    private boolean isFirstLaunch()
    {
        return getSharedPreferences(com/adobe/air/AdobeAIR.getSimpleName(), 0).getBoolean("firstLaunch", true);
    }

    private void launchDefaultActivity()
    {
        Intent intent = new Intent();
        if (mIsGameListDefaultActivity)
        {
            intent.setClassName(this, "com.adobe.air.AdobeAIR");
        } else
        {
            intent.setClassName(this, "com.adobe.mobile_playpanel.LeadingPageActivity");
            mAnalyticsWebView = new AdobeAIRWebView(mCtx);
            mAnalyticsWebView.createAnalyticsWebView();
            mAnalyticsWebView.loadAnalyticsUrl("http://www.adobe.com/airgames/3/");
        }
        startActivity(intent);
    }

    private void registerForNotifications()
    {
        mReceiver = new AndroidGcmResultReceiver(new Handler());
        mReceiver.setReceiver(this);
        Intent intent = new Intent(mCtx, com/adobe/air/AndroidGcmRegistrationService);
        intent.putExtra("resultReceiver", mReceiver);
        mCtx.startService(intent);
    }

    private void updateSharedPrefForDefaultActivity()
    {
        android.content.SharedPreferences.Editor editor = getSharedPreferences(com/adobe/air/AdobeAIR.getSimpleName(), 0).edit();
        editor.putBoolean("AIRDefaultActivity", mIsGameListDefaultActivity);
        if (mIsNewUISupported)
        {
            editor.putInt("AirRandomNumber", mRandomNumber);
            editor.putInt("NewUIPercentage", mNewUIThreshold);
        }
        editor.commit();
    }

    private void updateSharedPrefForInitialLaunch()
    {
        android.content.SharedPreferences.Editor editor = getSharedPreferences(com/adobe/air/AdobeAIR.getSimpleName(), 0).edit();
        editor.putBoolean("firstLaunch", false);
        editor.commit();
    }

    private void verifyNewUISupport()
    {
        if (android.os.Build.VERSION.SDK_INT >= 14 && !Locale.getDefault().getLanguage().equalsIgnoreCase("zh"))
        {
            mIsNewUISupported = true;
        }
    }

    public void onBackPressed()
    {
        launchDefaultActivity();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mCtx = this;
        verifyNewUISupport();
        if (isFirstLaunch())
        {
            updateSharedPrefForInitialLaunch();
            decideDefaultActivity();
            updateSharedPrefForDefaultActivity();
        } else
        {
            bundle = getSharedPreferences(com/adobe/air/AdobeAIR.getSimpleName(), 0);
            mIsGameListDefaultActivity = bundle.getBoolean("AIRDefaultActivity", true);
            mRandomNumber = bundle.getInt("AirRandomNumber", 100);
            mNewUIThreshold = bundle.getInt("NewUIPercentage", mNewUIThreshold);
        }
        decideDefaultActivityForNextLaunch();
        registerForNotifications();
        onNewIntent(getIntent());
        startService(new Intent(this, com/adobe/air/ShakeListenerService));
    }

    public void onNewIntent(Intent intent)
    {
        super.onNewIntent(intent);
        intent = intent.getExtras();
        if (intent != null && intent.containsKey("gameUrl"))
        {
            String s = intent.getString("gameUrl");
            mNotificationWebView = new AdobeAIRWebView(mCtx);
            mNotificationWebView.create();
            mNotificationWebView.loadUrl(s);
            if (intent.containsKey("msgId"))
            {
                mNotificationWebView.loadAnalyticsUrl((new StringBuilder()).append("https://www.adobe.com/gamepreview/?game=notification/notificationClicked.html_").append(intent.getString("msgId")).toString());
            }
            return;
        } else
        {
            launchDefaultActivity();
            return;
        }
    }

    public void onReceiveResult(int i, Bundle bundle)
    {
        GooglePlayServicesUtil.getErrorDialog(i, (Activity)mCtx, 9000).show();
    }

    static 
    {
        RATE_LIMIT = 0x5265c00L;
    }



/*
    static int access$102(AdobeAIRMainActivity adobeairmainactivity, int i)
    {
        adobeairmainactivity.mNewUIThreshold = i;
        return i;
    }

*/


/*
    static boolean access$202(AdobeAIRMainActivity adobeairmainactivity, boolean flag)
    {
        adobeairmainactivity.mIsGameListDefaultActivity = flag;
        return flag;
    }

*/


}
