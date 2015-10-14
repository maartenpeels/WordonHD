// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.controller;

import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.widget.SimpleAdapter;
import android.widget.Toast;
import com.tapjoy.TapjoyLog;
import com.tapjoy.mraid.view.MraidView;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tapjoy.mraid.controller:
//            Abstract, Assets, Display, MraidLocation, 
//            Network, MraidSensor

public class Utility extends Abstract
{

    private static final String TAG = "MRAID Utility";
    private Assets mAssetController;
    private Display mDisplayController;
    private MraidLocation mLocationController;
    private Network mNetworkController;
    private MraidSensor mSensorController;

    public Utility(MraidView mraidview, Context context)
    {
        super(mraidview, context);
        mAssetController = new Assets(mraidview, context);
        mDisplayController = new Display(mraidview, context);
        mLocationController = new MraidLocation(mraidview, context);
        mNetworkController = new Network(mraidview, context);
        mSensorController = new MraidSensor(mraidview, context);
        mraidview.addJavascriptInterface(mAssetController, "MRAIDAssetsControllerBridge");
        mraidview.addJavascriptInterface(mDisplayController, "MRAIDDisplayControllerBridge");
        mraidview.addJavascriptInterface(mLocationController, "MRAIDLocationControllerBridge");
        mraidview.addJavascriptInterface(mNetworkController, "MRAIDNetworkControllerBridge");
        mraidview.addJavascriptInterface(mSensorController, "MRAIDSensorControllerBridge");
    }

    private void addCalendarEvent(int i, String s, String s1, String s2)
    {
        ContentResolver contentresolver = mContext.getContentResolver();
        long l = Long.parseLong(s);
        s = new ContentValues();
        s.put("calendar_id", Integer.valueOf(i));
        s.put("title", s1);
        s.put("description", s2);
        s.put("dtstart", Long.valueOf(l));
        s.put("hasAlarm", Integer.valueOf(1));
        s.put("dtend", Long.valueOf(l + 0x36ee80L));
        if (Integer.parseInt(android.os.Build.VERSION.SDK) == 8)
        {
            s = contentresolver.insert(Uri.parse("content://com.android.calendar/events"), s);
        } else
        {
            s = contentresolver.insert(Uri.parse("content://calendar/events"), s);
        }
        if (s != null)
        {
            long l1 = Long.parseLong(s.getLastPathSegment());
            s = new ContentValues();
            s.put("event_id", Long.valueOf(l1));
            s.put("method", Integer.valueOf(1));
            s.put("minutes", Integer.valueOf(15));
            if (Integer.parseInt(android.os.Build.VERSION.SDK) == 8)
            {
                contentresolver.insert(Uri.parse("content://com.android.calendar/reminders"), s);
            } else
            {
                contentresolver.insert(Uri.parse("content://calendar/reminders"), s);
            }
        }
        Toast.makeText(mContext, "Event added to calendar", 0).show();
    }

    private String createTelUrl(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return null;
        } else
        {
            StringBuilder stringbuilder = new StringBuilder("tel:");
            stringbuilder.append(s);
            return stringbuilder.toString();
        }
    }

    private String getSupports()
    {
        String s1 = "supports: [ 'level-1', 'level-2', 'screen', 'orientation', 'network'";
        String s;
        boolean flag;
        if (mLocationController.allowLocationServices() && (mContext.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0 || mContext.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            s1 = (new StringBuilder()).append("supports: [ 'level-1', 'level-2', 'screen', 'orientation', 'network'").append(", 'location'").toString();
        }
        if (mContext.checkCallingOrSelfPermission("android.permission.SEND_SMS") == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s = s1;
        if (flag)
        {
            s = (new StringBuilder()).append(s1).append(", 'sms'").toString();
        }
        if (mContext.checkCallingOrSelfPermission("android.permission.CALL_PHONE") == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s1 = s;
        if (flag)
        {
            s1 = (new StringBuilder()).append(s).append(", 'phone'").toString();
        }
        if (mContext.checkCallingOrSelfPermission("android.permission.WRITE_CALENDAR") == 0 && mContext.checkCallingOrSelfPermission("android.permission.READ_CALENDAR") == 0 && android.os.Build.VERSION.SDK_INT >= 14)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s = s1;
        if (flag)
        {
            s = (new StringBuilder()).append(s1).append(", 'calendar'").toString();
        }
        s = (new StringBuilder()).append(s).append(", 'video'").toString();
        s = (new StringBuilder()).append(s).append(", 'audio'").toString();
        s = (new StringBuilder()).append(s).append(", 'map'").toString();
        s = (new StringBuilder()).append(s).append(", 'email' ]").toString();
        TapjoyLog.d("MRAID Utility", (new StringBuilder()).append("getSupports: ").append(s).toString());
        return s;
    }

    public void activate(String s)
    {
        TapjoyLog.d("MRAID Utility", (new StringBuilder()).append("activate: ").append(s).toString());
        if (s.equalsIgnoreCase("networkChange"))
        {
            mNetworkController.startNetworkListener();
        } else
        {
            if (mLocationController.allowLocationServices() && s.equalsIgnoreCase("locationChange"))
            {
                mLocationController.startLocationListener();
                return;
            }
            if (s.equalsIgnoreCase("shake"))
            {
                mSensorController.startShakeListener();
                return;
            }
            if (s.equalsIgnoreCase("tiltChange"))
            {
                mSensorController.startTiltListener();
                return;
            }
            if (s.equalsIgnoreCase("headingChange"))
            {
                mSensorController.startHeadingListener();
                return;
            }
            if (s.equalsIgnoreCase("orientationChange"))
            {
                mDisplayController.startConfigurationListener();
                return;
            }
        }
    }

    public String copyTextFromJarIntoAssetDir(String s, String s1)
    {
        return mAssetController.copyTextFromJarIntoAssetDir(s, s1);
    }

    public void createEvent(final String date, final String title, final String body)
    {
        TapjoyLog.d("MRAID Utility", (new StringBuilder()).append("createEvent: date: ").append(date).append(" title: ").append(title).append(" body: ").append(body).toString());
        Object obj = mContext.getContentResolver();
        String as[] = new String[3];
        as[0] = "_id";
        as[1] = "displayName";
        as[2] = "_sync_account";
        if (Integer.parseInt(android.os.Build.VERSION.SDK) == 8)
        {
            obj = ((ContentResolver) (obj)).query(Uri.parse("content://com.android.calendar/calendars"), as, null, null, null);
        } else
        {
            obj = ((ContentResolver) (obj)).query(Uri.parse("content://calendar/calendars"), as, null, null, null);
        }
        if (obj == null || obj != null && !((Cursor) (obj)).moveToFirst())
        {
            Toast.makeText(mContext, "No calendar account found", 1).show();
            if (obj != null)
            {
                ((Cursor) (obj)).close();
            }
            return;
        }
        if (((Cursor) (obj)).getCount() == 1)
        {
            addCalendarEvent(((Cursor) (obj)).getInt(0), date, title, body);
        } else
        {
            final ArrayList entries = new ArrayList();
            for (int i = 0; i < ((Cursor) (obj)).getCount(); i++)
            {
                HashMap hashmap = new HashMap();
                hashmap.put("ID", ((Cursor) (obj)).getString(0));
                hashmap.put("NAME", ((Cursor) (obj)).getString(1));
                hashmap.put("EMAILID", ((Cursor) (obj)).getString(2));
                entries.add(hashmap);
                ((Cursor) (obj)).moveToNext();
            }

            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(mContext);
            builder.setTitle("Choose Calendar to save event to");
            builder.setSingleChoiceItems(new SimpleAdapter(mContext, entries, 0x109000d, new String[] {
                "NAME", "EMAILID"
            }, new int[] {
                0x1020014, 0x1020015
            }), -1, new android.content.DialogInterface.OnClickListener() {

                final Utility this$0;
                final String val$body;
                final String val$date;
                final List val$entries;
                final String val$title;

                public void onClick(DialogInterface dialoginterface, int j)
                {
                    Map map = (Map)entries.get(j);
                    addCalendarEvent(Integer.parseInt((String)map.get("ID")), date, title, body);
                    dialoginterface.cancel();
                }

            
            {
                this$0 = Utility.this;
                entries = list;
                date = s;
                title = s1;
                body = s2;
                super();
            }
            });
            builder.create().show();
        }
        ((Cursor) (obj)).close();
    }

    public void deactivate(String s)
    {
        TapjoyLog.d("MRAID Utility", (new StringBuilder()).append("deactivate: ").append(s).toString());
        if (s.equalsIgnoreCase("networkChange"))
        {
            mNetworkController.stopNetworkListener();
        } else
        {
            if (s.equalsIgnoreCase("locationChange"))
            {
                mLocationController.stopAllListeners();
                return;
            }
            if (s.equalsIgnoreCase("shake"))
            {
                mSensorController.stopShakeListener();
                return;
            }
            if (s.equalsIgnoreCase("tiltChange"))
            {
                mSensorController.stopTiltListener();
                return;
            }
            if (s.equalsIgnoreCase("headingChange"))
            {
                mSensorController.stopHeadingListener();
                return;
            }
            if (s.equalsIgnoreCase("orientationChange"))
            {
                mDisplayController.stopConfigurationListener();
                return;
            }
        }
    }

    public void deleteOldAds()
    {
        mAssetController.deleteOldAds();
    }

    public void init(float f)
    {
        String s = (new StringBuilder()).append("window.mraidview.fireChangeEvent({ state: 'default', network: '").append(mNetworkController.getNetwork()).append("',").append(" size: ").append(mDisplayController.getSize()).append(",").append(" placement: ").append("'").append(mMraidView.getPlacementType()).append("',").append(" maxSize: ").append(mDisplayController.getMaxSize()).append(",expandProperties: ").append(mDisplayController.getMaxSize()).append(",").append(" screenSize: ").append(mDisplayController.getScreenSize()).append(",").append(" defaultPosition: { x:").append((int)((float)mMraidView.getLeft() / f)).append(", y: ").append((int)((float)mMraidView.getTop() / f)).append(", width: ").append((int)((float)mMraidView.getWidth() / f)).append(", height: ").append((int)((float)mMraidView.getHeight() / f)).append(" },").append(" orientation:").append(mDisplayController.getOrientation()).append(",").append(getSupports()).append(",viewable:true });").toString();
        Log.d("MRAID Utility", (new StringBuilder()).append("init: injection: ").append(s).toString());
        mMraidView.injectMraidJavaScript(s);
        ready();
    }

    public void makeCall(String s)
    {
        TapjoyLog.d("MRAID Utility", (new StringBuilder()).append("makeCall: number: ").append(s).toString());
        s = createTelUrl(s);
        if (s == null)
        {
            mMraidView.raiseError("Bad Phone Number", "makeCall");
            return;
        } else
        {
            s = new Intent("android.intent.action.CALL", Uri.parse(s.toString()));
            s.addFlags(0x10000000);
            mContext.startActivity(s);
            return;
        }
    }

    public void mraidCreateEvent(String s)
    {
        String s1;
        String s2;
        String s3;
        String s4;
        String s5;
        String s6;
        String s7;
        Object obj1;
        Calendar calendar;
        Calendar calendar1;
        obj1 = null;
        s5 = null;
        s6 = null;
        s7 = null;
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            return;
        }
        calendar = Calendar.getInstance();
        calendar1 = Calendar.getInstance();
        s4 = obj1;
        s3 = s5;
        s2 = s7;
        s1 = s6;
        JSONObject jsonobject1 = new JSONObject(s);
        s4 = obj1;
        s3 = s5;
        s2 = s7;
        s1 = s6;
        JSONObject jsonobject = jsonobject1.getJSONObject("start");
        s4 = obj1;
        s3 = s5;
        s2 = s7;
        s1 = s6;
        s = jsonobject1.optJSONObject("end");
        Object obj;
        obj = s;
        if (s == null)
        {
            obj = jsonobject;
        }
        s4 = obj1;
        s3 = s5;
        s2 = s7;
        s1 = s6;
        s = jsonobject1.getString("description");
        s4 = s;
        s3 = s5;
        s2 = s7;
        s1 = s6;
        s5 = jsonobject1.optString("location");
        s4 = s;
        s3 = s5;
        s2 = s7;
        s1 = s6;
        s6 = jsonobject1.optString("summary");
        s4 = s;
        s3 = s5;
        s2 = s7;
        s1 = s6;
        s7 = jsonobject1.optString("status");
        s4 = s;
        s3 = s5;
        s2 = s7;
        s1 = s6;
        calendar.set(jsonobject.getInt("year"), jsonobject.getInt("month"), jsonobject.getInt("day"), jsonobject.getInt("hour"), jsonobject.getInt("min"));
        s4 = s;
        s3 = s5;
        s2 = s7;
        s1 = s6;
        calendar1.set(((JSONObject) (obj)).getInt("year"), ((JSONObject) (obj)).getInt("month"), ((JSONObject) (obj)).getInt("day"), ((JSONObject) (obj)).getInt("hour"), ((JSONObject) (obj)).getInt("min"));
        s1 = s6;
        s2 = s7;
        s3 = s5;
_L2:
        s = (new Intent("android.intent.action.INSERT")).setData(android.provider.CalendarContract.Events.CONTENT_URI).putExtra("beginTime", calendar.getTimeInMillis()).putExtra("endTime", calendar1.getTimeInMillis()).putExtra("title", s1).putExtra("description", s).putExtra("eventLocation", s3).putExtra("eventStatus", s2);
        mMraidView.getContext().startActivity(s);
        return;
        s;
        s.printStackTrace();
        s = s4;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void ready()
    {
        mMraidView.injectMraidJavaScript((new StringBuilder()).append("mraid.setState(\"").append(mMraidView.getState()).append("\");").toString());
        mMraidView.injectMraidJavaScript("mraidview.fireReadyEvent();");
    }

    public void sendMail(String s, String s1, String s2)
    {
        TapjoyLog.d("MRAID Utility", (new StringBuilder()).append("sendMail: recipient: ").append(s).append(" subject: ").append(s1).append(" body: ").append(s2).toString());
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("plain/text");
        intent.putExtra("android.intent.extra.EMAIL", new String[] {
            s
        });
        intent.putExtra("android.intent.extra.SUBJECT", s1);
        intent.putExtra("android.intent.extra.TEXT", s2);
        intent.addFlags(0x10000000);
        mContext.startActivity(intent);
    }

    public void sendSMS(String s, String s1)
    {
        TapjoyLog.d("MRAID Utility", (new StringBuilder()).append("sendSMS: recipient: ").append(s).append(" body: ").append(s1).toString());
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.putExtra("address", s);
        intent.putExtra("sms_body", s1);
        intent.setType("vnd.android-dir/mms-sms");
        intent.addFlags(0x10000000);
        mContext.startActivity(intent);
    }

    public void setMaxSize(int i, int j)
    {
        mDisplayController.setMaxSize(i, j);
    }

    public void showAlert(String s)
    {
        TapjoyLog.e("MRAID Utility", s);
    }

    public void stopAllListeners()
    {
        try
        {
            mAssetController.stopAllListeners();
            mDisplayController.stopAllListeners();
            mLocationController.stopAllListeners();
            mNetworkController.stopAllListeners();
            mSensorController.stopAllListeners();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public String writeToDiskWrap(InputStream inputstream, String s, boolean flag, String s1, String s2)
        throws IllegalStateException, IOException
    {
        return mAssetController.writeToDiskWrap(inputstream, s, flag, s1, s2);
    }

}
