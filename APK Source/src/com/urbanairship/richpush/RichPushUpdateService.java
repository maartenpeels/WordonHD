// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.richpush;

import android.app.Application;
import android.app.IntentService;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.os.ResultReceiver;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Autopilot;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.push.PushManager;
import com.urbanairship.restclient.AppAuthenticatedRequest;
import com.urbanairship.restclient.Request;
import com.urbanairship.restclient.Response;
import com.urbanairship.util.UAStringUtil;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.apache.http.HttpEntity;
import org.apache.http.entity.ByteArrayEntity;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.urbanairship.richpush:
//            RichPushUser, RichPushUserAuthenticatedRequest, RichPushManager, RichPushResolver, 
//            RichPushInbox

public class RichPushUpdateService extends IntentService
{

    public RichPushUpdateService()
    {
        super("RichPushUpdateService");
    }

    private static Response a(String s, String s1, HttpEntity httpentity)
    {
        if (RichPushUser.a())
        {
            s = new RichPushUserAuthenticatedRequest(s, s1);
        } else
        {
            s = new AppAuthenticatedRequest(s, s1);
        }
        if (httpentity != null)
        {
            s.setEntity(httpentity);
            s.addHeader("Content-Type", "application/json");
        }
        return s.a();
    }

    private static String a(String s, String as[])
    {
        return (new StringBuilder(UAirship.a().h().e)).append(String.format(s, (Object[])as)).toString();
    }

    private static Set a(Cursor cursor)
    {
        if (cursor == null)
        {
            return null;
        }
        HashSet hashset = new HashSet(cursor.getCount());
        int j;
        for (int i = -1; cursor.moveToNext(); i = j)
        {
            j = i;
            if (i == -1)
            {
                j = cursor.getColumnIndex("message_id");
            }
            hashset.add(cursor.getString(j));
        }

        cursor.close();
        return hashset;
    }

    private static HttpEntity a(String s, Set set)
    {
        JSONObject jsonobject;
        jsonobject = new JSONObject();
        jsonobject.put(s, new JSONArray());
        String s1 = RichPushManager.a().b().e();
        for (set = set.iterator(); set.hasNext(); jsonobject.accumulate(s, a("api/user/%s/messages/message/%s/", new String[] {
    s1, (String)set.next()
}))) { }
          goto _L1
        s;
        Logger.d(s.getMessage());
_L3:
        return null;
_L1:
        Logger.b(jsonobject.toString());
        s = new ByteArrayEntity(jsonobject.toString().getBytes("UTF-8"));
        return s;
        s;
        Logger.d(s.getMessage());
        if (true) goto _L3; else goto _L2
_L2:
    }

    private static void a(ResultReceiver resultreceiver, boolean flag)
    {
        Bundle bundle;
label0:
        {
            if (resultreceiver != null)
            {
                bundle = new Bundle();
                if (!flag)
                {
                    break label0;
                }
                resultreceiver.send(0, bundle);
            }
            return;
        }
        resultreceiver.send(1, bundle);
    }

    private static boolean a()
    {
        Logger.c("Creating user");
        Object obj;
        obj = RichPushUser.b();
        JSONObject jsonobject = new JSONObject();
        String s = PushManager.b().j();
        if (!UAStringUtil.a(s))
        {
            JSONArray jsonarray = new JSONArray();
            jsonarray.put(s);
            jsonobject.putOpt("apids", jsonarray);
        }
        obj = a("POST", ((String) (obj)), ((HttpEntity) (new ByteArrayEntity(jsonobject.toString().getBytes("UTF-8")))));
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        Logger.d("User creation failed. No network response.");
        return false;
        if (((Response) (obj)).a() != 201)
        {
            break MISSING_BLOCK_LABEL_111;
        }
        Logger.b("User creation succeeded. Updating");
        RichPushUser.a(((Response) (obj)).d());
        return true;
        Logger.b("User creation failed. Logging.");
        Logger.d(((Response) (obj)).d());
        return false;
        Object obj1;
        obj1;
        Logger.c("Exception constructing JSON data when creating user.", ((Throwable) (obj1)));
_L2:
        return false;
        obj1;
        Logger.c("Error creating user.", ((Throwable) (obj1)));
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static boolean b()
    {
        Logger.c("Updating user");
        if (UAStringUtil.a(PushManager.b().j()))
        {
            Logger.c("No APID. Skipping user update.");
            return false;
        }
        String s = RichPushManager.a().b().c();
        JSONObject jsonobject = new JSONObject();
        JSONObject jsonobject1 = new JSONObject();
        JSONArray jsonarray = new JSONArray();
        jsonarray.put(PushManager.b().j());
        jsonobject1.put("add", jsonarray);
        jsonobject.put("apids", jsonobject1);
        if (b("POST", s, ((HttpEntity) (new ByteArrayEntity(jsonobject.toString().getBytes("UTF-8"))))))
        {
            break MISSING_BLOCK_LABEL_118;
        }
        Logger.d("User update failed. Will retry later.");
        return false;
        return true;
        Object obj;
        obj;
        Logger.c("Exception constructing JSON data when updating user.", ((Throwable) (obj)));
_L2:
        return false;
        obj;
        Logger.c("Error updating user.", ((Throwable) (obj)));
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static boolean b(String s, String s1, HttpEntity httpentity)
    {
        s = a(s, s1, httpentity);
        if (s != null)
        {
            Logger.b((new StringBuilder("The response status is ")).append(s.a()).toString());
            Logger.b(s.d());
        }
        return s != null && s.a() == 200;
    }

    private static boolean c()
    {
        int i = 0;
        Logger.c("Updating Messages");
        ContentValues acontentvalues[] = d();
        if (acontentvalues == null)
        {
            return false;
        }
        Object obj = new ArrayList();
        HashSet hashset = new HashSet();
        for (int j = acontentvalues.length; i < j; i++)
        {
            ContentValues contentvalues = acontentvalues[i];
            String s = contentvalues.getAsString("message_id");
            hashset.add(s);
            if (RichPushManager.a.a(s, contentvalues) != 1)
            {
                ((List) (obj)).add(contentvalues);
            }
        }

        if (((List) (obj)).size() > 0)
        {
            ContentValues acontentvalues1[] = new ContentValues[((List) (obj)).size()];
            ((List) (obj)).toArray(acontentvalues1);
            RichPushManager.a.a(acontentvalues1);
        }
        obj = a(RichPushManager.a.a());
        if (obj != null)
        {
            ((Set) (obj)).removeAll(hashset);
            RichPushManager.a().b().d().a(((Set) (obj)));
        }
        RichPushManager.a().b().d().b();
        return true;
    }

    private static ContentValues[] d()
    {
        Object obj = a("GET", a("api/user/%s/messages/", new String[] {
            RichPushManager.a().b().e()
        }), null);
        if (obj == null)
        {
            Logger.d("The response from the server was null. Will try later.");
            return null;
        }
        ContentValues acontentvalues[];
        JSONObject jsonobject;
        ContentValues contentvalues;
        int i;
        int j;
        try
        {
            obj = (new JSONObject(((Response) (obj)).d())).getJSONArray("messages");
            j = ((JSONArray) (obj)).length();
            acontentvalues = new ContentValues[j];
        }
        catch (JSONException jsonexception)
        {
            Logger.b("Unable to parse message list response from server", jsonexception);
            return null;
        }
        i = 0;
        if (i >= j) goto _L2; else goto _L1
_L1:
        jsonobject = ((JSONArray) (obj)).getJSONObject(i);
        contentvalues = new ContentValues();
        contentvalues.put("timestamp", jsonobject.getString("message_sent"));
        contentvalues.put("message_id", jsonobject.getString("message_id"));
        contentvalues.put("message_url", jsonobject.getString("message_url"));
        contentvalues.put("message_body_url", jsonobject.getString("message_body_url"));
        contentvalues.put("message_read_url", jsonobject.getString("message_read_url"));
        contentvalues.put("title", jsonobject.getString("title"));
        contentvalues.put("unread_orig", Boolean.valueOf(jsonobject.getBoolean("unread")));
        contentvalues.put("extra", jsonobject.getJSONObject("extra").toString());
        contentvalues.put("raw_message_object", jsonobject.toString());
        if (jsonobject.has("message_expiry"))
        {
            contentvalues.put("expiration_timestamp", jsonobject.getString("message_expiry"));
        }
        acontentvalues[i] = contentvalues;
        i++;
        break MISSING_BLOCK_LABEL_75;
_L2:
        return acontentvalues;
    }

    public void onCreate()
    {
        super.onCreate();
        Autopilot.b((Application)getApplicationContext());
    }

    protected void onHandleIntent(Intent intent)
    {
        if (intent != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Object obj;
        obj = intent.getAction();
        intent = (ResultReceiver)intent.getParcelableExtra("com.urbanairship.richpush.RESULT_RECEIVER");
        Logger.c((new StringBuilder("Starting RichPushUpdateService with action ")).append(((String) (obj))).toString());
        if (!"com.urbanairship.richpush.MESSAGES_UPDATE".equals(obj))
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!RichPushUser.a())
        {
            Logger.c("The Rich Push user has not been created, cancelling messages update");
            a(intent, false);
            return;
        }
        a(intent, c());
        intent = a(RichPushManager.a.b());
        if (intent != null && intent.size() > 0)
        {
            Logger.b((new StringBuilder("Found ")).append(intent.size()).append(" messages to mark read.").toString());
            if (b("POST", a("api/user/%s/messages/unread/", new String[] {
    RichPushManager.a().b().e()
}), a("mark_as_read", intent)))
            {
                obj = new ContentValues();
                ((ContentValues) (obj)).put("unread_orig", Integer.valueOf(0));
                RichPushManager.a.a(intent, ((ContentValues) (obj)));
            }
        }
        intent = a(RichPushManager.a.c());
        if (intent == null || intent.size() <= 0) goto _L1; else goto _L3
_L3:
        Logger.b((new StringBuilder("Found ")).append(intent.size()).append(" messages to delete.").toString());
        if (!b("POST", a("api/user/%s/messages/delete/", new String[] {
            RichPushManager.a().b().e()
        }), a("delete", intent))) goto _L1; else goto _L4
_L4:
        RichPushManager.a.d(intent);
        return;
        if (!"com.urbanairship.richpush.USER_UPDATE".equals(obj)) goto _L1; else goto _L5
_L5:
        boolean flag;
        if (!RichPushUser.a())
        {
            flag = a();
        } else
        {
            flag = b();
        }
        a(intent, flag);
        return;
    }
}
