// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.IntentService;
import android.content.ComponentName;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationManager;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.util.Log;
import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.sns.AmazonSNS;
import com.amazonaws.services.sns.AmazonSNSClient;
import com.amazonaws.services.sns.model.CreatePlatformEndpointRequest;
import com.amazonaws.services.sns.model.CreatePlatformEndpointResult;
import com.amazonaws.services.sns.model.InternalErrorException;
import com.amazonaws.services.sns.model.InvalidParameterException;
import com.amazonaws.services.sns.model.SetEndpointAttributesRequest;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;

// Referenced classes of package com.adobe.air:
//            AdobeAIRMainActivity, SystemCapabilities, AdobeAIR

public class AndroidGcmRegistrationService extends IntentService
{
    private class AsyncTaskRunner extends AsyncTask
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
                mRegId = mGcm.register(new String[] {
                    AndroidGcmRegistrationService.SENDER_ID
                });
                if (mRegId == null)
                {
                    registerInBackground(0x493e0);
                    break label0;
                }
                try
                {
                    sendRegistrationIdToAws();
                }
                // Misplaced declaration of an exception variable
                catch (Integer ainteger[])
                {
                    registerInBackground(0x493e0);
                }
            }
            return null;
        }

        private AsyncTaskRunner()
        {
            this$0 = AndroidGcmRegistrationService.this;
            super();
        }

    }


    private static String ACCESS_KEY = "";
    private static String APPLICATION_ARN = "arn:aws:sns:us-west-2:502492504188:app/GCM/AdobeAIRGCM";
    private static final String CUSTOM_USER_DATA = "CustomUserData";
    private static final String ENABLED = "Enabled";
    private static final String ENABLE_LOGGING = "enableLogging";
    private static final int MAX_RETRIES = 10;
    private static final String PROPERTY_APP_VERSION = "appVersion";
    private static final String PROPERTY_ENDPOINT_ARN = "endpointArn";
    private static final String RATE_LIMIT = "rateLimit";
    private static final int RETRY_TIME = 0x493e0;
    private static String SECRET_KEY = "";
    private static String SENDER_ID = "233437466354";
    private static final String TAG = "AndroidGcmRegistrationService";
    private static final String TEST_ACCESS_KEY = "";
    private static final String TEST_APPLICATION_ARN = "arn:aws:sns:us-west-2:413177889857:app/GCM/airruntimetestapp";
    private static final String TEST_ENV = "testEnv";
    private static final String TEST_SECRET_KEY = "";
    private static final String TEST_SENDER_ID = "1078258869814";
    private static final String TOKEN = "Token";
    private AmazonSNS mClient;
    private boolean mEnableLogging;
    private String mEndpointArn;
    private GoogleCloudMessaging mGcm;
    private String mRegId;
    private ResultReceiver mResultReceiver;
    private int mRetryCount;
    private boolean mTestEnv;

    public AndroidGcmRegistrationService()
    {
        super("AndroidGcmRegistrationService");
        mRetryCount = 0;
        mRegId = null;
        mEndpointArn = null;
        mClient = null;
        mGcm = null;
        mResultReceiver = null;
        mEnableLogging = false;
        mTestEnv = false;
    }

    private boolean checkPlayServices()
    {
        int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this);
        if (i != 0)
        {
            if (GooglePlayServicesUtil.isUserRecoverableError(i) && mResultReceiver != null)
            {
                mResultReceiver.send(i, null);
            }
            return false;
        } else
        {
            return true;
        }
    }

    private void configureTestEnv()
    {
        Object obj;
        obj = new ComponentName(this, getClass());
        obj = getPackageManager().getServiceInfo(((ComponentName) (obj)), 128).metaData;
        if (obj == null)
        {
            return;
        }
        int i;
        mEnableLogging = ((Bundle) (obj)).getBoolean("enableLogging");
        mTestEnv = ((Bundle) (obj)).getBoolean("testEnv");
        if (!mTestEnv)
        {
            break MISSING_BLOCK_LABEL_102;
        }
        SENDER_ID = "1078258869814";
        APPLICATION_ARN = "arn:aws:sns:us-west-2:413177889857:app/GCM/airruntimetestapp";
        ACCESS_KEY = "";
        SECRET_KEY = "";
        i = ((Bundle) (obj)).getInt("rateLimit", 0x80000000);
        if (i != 0x80000000)
        {
            try
            {
                AdobeAIRMainActivity.RATE_LIMIT = i;
                return;
            }
            catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception) { }
        }
    }

    private int getAppVersion()
    {
        int i;
        try
        {
            i = getPackageManager().getPackageInfo(getPackageName(), 0).versionCode;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return 0;
        }
        return i;
    }

    private String getCustomData()
    {
        Object obj;
        Object obj1;
        JSONObject jsonobject;
        Geocoder geocoder;
        try
        {
            jsonobject = new JSONObject();
            jsonobject.put("osVersion", android.os.Build.VERSION.RELEASE);
            jsonobject.put("airVersion", getPackageManager().getPackageInfo(getPackageName(), 0).versionName);
            jsonobject.put("deviceInfo", (new StringBuilder()).append(Build.MODEL).append("&").append(Build.MANUFACTURER).append("&").append(Integer.toString(SystemCapabilities.GetScreenHRes(this))).append("&").append(Integer.toString(SystemCapabilities.GetScreenVRes(this))).append("&").append(Integer.toString(SystemCapabilities.GetScreenDPI(this))).toString());
            obj = Locale.getDefault();
            jsonobject.put("locale", ((Locale) (obj)).toString());
            obj = ((Locale) (obj)).getDisplayCountry(Locale.ENGLISH);
        }
        catch (Exception exception)
        {
            return "";
        }
        obj1 = (LocationManager)getSystemService("location");
        if (!((LocationManager) (obj1)).isProviderEnabled("network"))
        {
            break MISSING_BLOCK_LABEL_229;
        }
        obj1 = ((LocationManager) (obj1)).getLastKnownLocation("network");
        geocoder = new Geocoder(this, Locale.ENGLISH);
        if (obj1 == null || geocoder == null)
        {
            break MISSING_BLOCK_LABEL_229;
        }
        if (!Geocoder.isPresent())
        {
            break MISSING_BLOCK_LABEL_229;
        }
        obj1 = ((Address)geocoder.getFromLocation(((Location) (obj1)).getLatitude(), ((Location) (obj1)).getLongitude(), 1).get(0)).getCountryName();
        obj = obj1;
_L2:
        jsonobject.put("geo", obj);
        jsonobject.put("timestamp", String.valueOf(System.currentTimeMillis()));
        if (getSharedPreferences(com/adobe/air/AdobeAIR.getSimpleName(), 0).getBoolean("AIRDefaultActivity", true))
        {
            jsonobject.put("AIRDefaultActivity", "GL");
        } else
        {
            jsonobject.put("AIRDefaultActivity", "PP");
        }
        return jsonobject.toString();
        Exception exception1;
        exception1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private boolean isAppRegistered()
    {
        int i = getSharedPreferences(com/adobe/air/AdobeAIR.getSimpleName(), 0).getInt("appVersion", 0x80000000);
        int j = getAppVersion();
        return i != 0x80000000 && i == j;
    }

    private void registerForNotifications()
    {
        while (isAppRegistered() || !checkPlayServices()) 
        {
            return;
        }
        configureTestEnv();
        registerInBackground(0);
    }

    private void registerInBackground(int i)
    {
        if (mRetryCount < 10)
        {
            if (i != 0)
            {
                mRetryCount = mRetryCount + 1;
            }
            if (mGcm == null)
            {
                mGcm = GoogleCloudMessaging.getInstance(this);
            }
            (new AsyncTaskRunner()).execute(new Integer[] {
                Integer.valueOf(i)
            });
        }
    }

    private void sendRegistrationIdToAws()
    {
        BasicAWSCredentials basicawscredentials = new BasicAWSCredentials(ACCESS_KEY, SECRET_KEY);
        Region region = Region.getRegion(Regions.US_WEST_2);
        mClient = new AmazonSNSClient(basicawscredentials);
        mClient.setRegion(region);
        Object obj;
        obj = new CreatePlatformEndpointRequest();
        ((CreatePlatformEndpointRequest) (obj)).setPlatformApplicationArn(APPLICATION_ARN);
        ((CreatePlatformEndpointRequest) (obj)).setToken(mRegId);
        ((CreatePlatformEndpointRequest) (obj)).setCustomUserData(getCustomData());
        obj = mClient.createPlatformEndpoint(((CreatePlatformEndpointRequest) (obj)));
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_144;
        }
        if (((CreatePlatformEndpointResult) (obj)).getEndpointArn() != null)
        {
            mEndpointArn = ((CreatePlatformEndpointResult) (obj)).getEndpointArn();
            if (mEnableLogging)
            {
                Log.i("AndroidGcmRegistrationService", (new StringBuilder()).append("Creation EndpointArn = ").append(mEndpointArn).toString());
            }
            updateSharedPref();
        }
        return;
        Object obj1;
        obj1;
        try
        {
            registerInBackground(0x493e0);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
        obj1;
        updateEndpointAttributes();
        return;
        obj1;
        return;
        obj1;
    }

    private void updateEndpointAttributes()
    {
        try
        {
            SetEndpointAttributesRequest setendpointattributesrequest = new SetEndpointAttributesRequest();
            if (mEndpointArn == null)
            {
                mEndpointArn = getSharedPreferences(com/adobe/air/AdobeAIR.getSimpleName(), 0).getString("endpointArn", "");
                if (mEnableLogging)
                {
                    Log.i("AndroidGcmRegistrationService", (new StringBuilder()).append("Update EndpointArn = ").append(mEndpointArn).toString());
                }
            }
            setendpointattributesrequest.setEndpointArn(mEndpointArn);
            HashMap hashmap = new HashMap();
            hashmap.put("CustomUserData", getCustomData());
            hashmap.put("Enabled", "true");
            hashmap.put("Token", mRegId);
            setendpointattributesrequest.setAttributes(hashmap);
            mClient.setEndpointAttributes(setendpointattributesrequest);
            updateSharedPref();
            return;
        }
        catch (AmazonServiceException amazonserviceexception)
        {
            return;
        }
        catch (AmazonClientException amazonclientexception)
        {
            return;
        }
    }

    private void updateSharedPref()
    {
        Object obj = getSharedPreferences(com/adobe/air/AdobeAIR.getSimpleName(), 0);
        int i = getAppVersion();
        obj = ((SharedPreferences) (obj)).edit();
        ((android.content.SharedPreferences.Editor) (obj)).putInt("appVersion", i);
        ((android.content.SharedPreferences.Editor) (obj)).putString("endpointArn", mEndpointArn);
        ((android.content.SharedPreferences.Editor) (obj)).commit();
    }

    protected void onHandleIntent(Intent intent)
    {
        mResultReceiver = (ResultReceiver)intent.getParcelableExtra("resultReceiver");
        registerForNotifications();
    }




/*
    static String access$102(AndroidGcmRegistrationService androidgcmregistrationservice, String s)
    {
        androidgcmregistrationservice.mRegId = s;
        return s;
    }

*/




}
