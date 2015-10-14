// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.push.embedded;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.push.PushManager;
import com.urbanairship.push.PushPreferences;
import com.urbanairship.restclient.Request;
import com.urbanairship.restclient.Response;
import com.urbanairship.util.Device;
import java.io.UnsupportedEncodingException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.UUID;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.message.BasicNameValuePair;

public class BoxOfficeClient
{

    private static String a = "android-lib-";

    public BoxOfficeClient()
    {
    }

    public static String a()
    {
        Object obj;
        Object obj1;
        Logger.d("Performing BoxOffice firstRun.");
        obj1 = PushManager.b().g();
        obj = ((PushPreferences) (obj1)).e();
        if (obj == null)
        {
label0:
            {
                obj = b().getString("com.urbanairship.preferences.apid", null);
                if (obj == null || !((PushPreferences) (obj1)).b(((String) (obj))))
                {
                    break label0;
                }
                Logger.c((new StringBuilder("Restored APID: ")).append(((String) (obj))).append(" from shared preferences.").toString());
            }
        }
_L2:
        obj1 = new ArrayList();
        ((ArrayList) (obj1)).add(new BasicNameValuePair("package", UAirship.b()));
        ((ArrayList) (obj1)).add(new BasicNameValuePair("apid", ((String) (obj))));
        obj = new Request("POST", (new StringBuilder()).append(Config.BoxOffice.a).append("/firstrun").toString());
        PushPreferences pushpreferences;
        try
        {
            ((Request) (obj)).setEntity(new UrlEncodedFormEntity(((java.util.List) (obj1)), "UTF-8"));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new BoxOfficeException("Failed to post to /firstrun; UTF-8 unsupported!");
        }
        ((Request) (obj)).setHeader("X-UA-Device-Family", "Android");
        ((Request) (obj)).setHeader("X-UA-Device-Model", Build.MODEL);
        ((Request) (obj)).setHeader("X-UA-OS-Version", android.os.Build.VERSION.RELEASE);
        ((Request) (obj)).setHeader("X-UA-Lib-Version", (new StringBuilder()).append(a).append(UAirship.j()).toString());
        ((Request) (obj)).setHeader("X-UA-Package-Name", UAirship.b());
        ((Request) (obj)).setHeader("X-UA-Transport", "GCM");
        ((Request) (obj)).setHeader("X-UA-Sent-At", (new DecimalFormat("0.000")).format((double)System.currentTimeMillis() / 1000D));
        ((Request) (obj)).setHeader("X-UA-App-Key", UAirship.a().h().b());
        if (UAirship.a().h().m)
        {
            ((Request) (obj)).setHeader("X-UA-Device-ID", Device.a());
        }
        obj1 = ((Request) (obj)).a();
        obj = PushManager.b().g();
        if (obj1 == null)
        {
            throw new BoxOfficeException("Failed to post to /firstrun; request failed");
        }
        break MISSING_BLOCK_LABEL_408;
        obj1 = UUID.randomUUID().toString();
        Logger.c((new StringBuilder("Generating APID: ")).append(((String) (obj1))).toString());
        pushpreferences = PushManager.b().g();
        obj = b().edit();
        ((android.content.SharedPreferences.Editor) (obj)).putString("com.urbanairship.preferences.apid", ((String) (obj1)));
        if (!((android.content.SharedPreferences.Editor) (obj)).commit())
        {
            break; /* Loop/switch isn't completed */
        }
        obj = obj1;
        if (pushpreferences.b(((String) (obj1)))) goto _L2; else goto _L1
_L1:
        throw new BoxOfficeException("The APID was invalid or failed to save.");
        int i = ((Response) (obj1)).a();
        if (i == 409)
        {
            ((PushPreferences) (obj)).b(null);
            throw new BoxOfficeException("Unrecoverable firstrun state. Clearing APID.");
        }
        if (i == 403)
        {
            throw new FirstRunForbiddenException((new StringBuilder("Failed to post to firstrun; forbidden. Reason:\n")).append(((Response) (obj1)).d()).toString());
        }
        if (i == 200)
        {
            obj1 = ((Response) (obj1)).d().trim();
            if (((PushPreferences) (obj)).c(((String) (obj1))))
            {
                return ((String) (obj1));
            } else
            {
                throw new BoxOfficeException("Failed to post to /firstrun; The secret was invalid or failed to save.");
            }
        } else
        {
            throw new BoxOfficeException((new StringBuilder("Failed to post to /firstrun: ")).append(i).append(". Check your airship configuration, particularly your app key and secret.").toString());
        }
    }

    private static SharedPreferences b()
    {
        return UAirship.a().g().getSharedPreferences("com.urbanairship.preferences", 0);
    }


    private class BoxOfficeException extends Exception
    {

        public BoxOfficeException(String s)
        {
            super(s);
        }
    }


    private class FirstRunForbiddenException extends FatalBoxOfficeException
    {
        private class FatalBoxOfficeException extends BoxOfficeException
        {

            public FatalBoxOfficeException(String s)
            {
                super(s);
            }
        }


        public FirstRunForbiddenException(String s)
        {
            super(s);
        }
    }

}
