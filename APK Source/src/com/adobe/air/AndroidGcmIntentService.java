// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.IntentService;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONObject;

// Referenced classes of package com.adobe.air:
//            AdobeAIR, AdobeAIRMainActivity, AndroidGcmBroadcastReceiver

public class AndroidGcmIntentService extends IntentService
{

    private static final String CLOUDFRONT = "cloudfront";
    private static final String GAMESPACE = "gamespace";
    private static final String GAME_URL = "gameUrl";
    private static final String MSG_ID = "msgId";
    private static final String PROPERTY_NOTIFICATION_TIMESTAMP = "notficationTimestamp";
    private static final String TAG = "AndroidGcmIntentService";
    private static int sUniqueId = 0;
    private String mGameDesc;
    private String mGameIconUrl;
    private String mGameTitle;
    private String mGameUrl;
    private String mGameUrlPrefix;
    private String mHost;
    private String mMsgId;

    public AndroidGcmIntentService()
    {
        super("AndroidGcmIntentService");
        mGameTitle = null;
        mGameDesc = null;
        mGameIconUrl = null;
        mGameUrl = null;
        mGameUrlPrefix = null;
        mMsgId = null;
        mHost = null;
    }

    private Bitmap getBitmapFromURL(String s)
    {
        try
        {
            s = (HttpURLConnection)(new URL(s)).openConnection();
            s.setDoInput(true);
            s.connect();
            s = BitmapFactory.decodeStream(s.getInputStream());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    private void handleNotification(String s)
    {
        if (isNotificationValid()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        s = new JSONObject(s);
        mGameTitle = s.getString("gameTitle");
        mGameDesc = s.getString("gameDesc");
        mGameIconUrl = s.getString("gameIconUrl");
        mGameUrl = s.getString("gameUrl");
        mGameUrlPrefix = s.getString("gameUrlPrefix");
        mMsgId = s.getString("msgId");
        if (mGameTitle == null || mGameDesc == null || mGameIconUrl == null || mGameUrl == null || mGameUrlPrefix == null || mMsgId == null) goto _L1; else goto _L3
_L3:
        if (!mGameUrlPrefix.equals("gamespace")) goto _L5; else goto _L4
_L4:
        mHost = "http://gamespace.adobe.com";
_L7:
        mGameUrl = (new StringBuilder()).append(mHost).append("/").append(mGameUrl).toString();
        mGameIconUrl = (new StringBuilder()).append(mHost).append("/").append(mGameIconUrl).toString();
        sendNotification();
        return;
_L5:
        if (mGameUrlPrefix.equals("cloudfront"))
        {
            mHost = "https://dh8vjmvwgc27o.cloudfront.net";
        }
        if (true) goto _L7; else goto _L6
_L6:
        s;
    }

    private boolean isNotificationValid()
    {
        Object obj = getSharedPreferences(com/adobe/air/AdobeAIR.getSimpleName(), 0);
        long l = ((SharedPreferences) (obj)).getLong("notficationTimestamp", 0x8000000000000000L);
        long l1 = System.currentTimeMillis();
        if (l == 0x8000000000000000L || l1 - l > AdobeAIRMainActivity.RATE_LIMIT)
        {
            obj = ((SharedPreferences) (obj)).edit();
            ((android.content.SharedPreferences.Editor) (obj)).putLong("notficationTimestamp", l1);
            ((android.content.SharedPreferences.Editor) (obj)).commit();
            return true;
        } else
        {
            return false;
        }
    }

    private void sendNotification()
    {
        Object obj = new Intent(this, com/adobe/air/AdobeAIRMainActivity);
        ((Intent) (obj)).putExtra("gameUrl", mGameUrl);
        ((Intent) (obj)).putExtra("msgId", mMsgId);
        ((Intent) (obj)).setFlags(0x24000000);
        int i = sUniqueId + 1;
        sUniqueId = i;
        Object obj1 = PendingIntent.getActivity(this, i, ((Intent) (obj)), 0x40000000);
        obj = new android.support.v4.app.NotificationCompat.Builder(this);
        ((android.support.v4.app.NotificationCompat.Builder) (obj)).setSmallIcon(0x7f020058);
        ((android.support.v4.app.NotificationCompat.Builder) (obj)).setContentTitle(mGameTitle);
        ((android.support.v4.app.NotificationCompat.Builder) (obj)).setContentText(mGameDesc);
        ((android.support.v4.app.NotificationCompat.Builder) (obj)).setContentIntent(((PendingIntent) (obj1)));
        ((android.support.v4.app.NotificationCompat.Builder) (obj)).setAutoCancel(true);
        obj1 = getBitmapFromURL(mGameIconUrl);
        if (obj1 != null)
        {
            ((android.support.v4.app.NotificationCompat.Builder) (obj)).setLargeIcon(((Bitmap) (obj1)));
        }
        ((NotificationManager)getSystemService("notification")).notify(sUniqueId, ((android.support.v4.app.NotificationCompat.Builder) (obj)).build());
    }

    protected void onHandleIntent(Intent intent)
    {
        String s1 = "";
        Bundle bundle = intent.getExtras();
        String s = s1;
        if (bundle != null)
        {
            s = s1;
            if (bundle.containsKey("message"))
            {
                s = bundle.getString("message");
            }
        }
        if (!s.isEmpty() && "gcm".equals(GoogleCloudMessaging.getInstance(this).getMessageType(intent)))
        {
            handleNotification(s);
        }
        AndroidGcmBroadcastReceiver.completeWakefulIntent(intent);
    }

}
