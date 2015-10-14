// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.analytics;

import android.content.pm.PackageInfo;
import android.os.Build;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.push.PushManager;
import com.urbanairship.push.PushPreferences;
import com.urbanairship.restclient.Request;
import com.urbanairship.restclient.Response;
import com.urbanairship.util.Device;
import com.urbanairship.util.Network;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.URI;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.TimeZone;
import java.util.zip.GZIPOutputStream;
import org.apache.http.entity.AbstractHttpEntity;
import org.apache.http.entity.ByteArrayEntity;

class EventAPIClient
{

    EventAPIClient()
    {
    }

    public static Response a(Collection collection)
    {
        if (collection == null || collection.size() == 0)
        {
            Logger.d("Send failed. No events.");
            return null;
        }
        if (!Network.a())
        {
            Logger.d("No network connectivity available. Postponing analytics event updates.");
            return null;
        }
        Request request = new Request("POST", (new StringBuilder()).append(UAirship.a().h().f).append("warp9/").toString());
        request.setEntity(a(b(collection)));
        request.setHeader("X-UA-Device-Family", "android");
        request.setHeader("X-UA-Sent-At", Double.toString((double)System.currentTimeMillis() / 1000D));
        request.setHeader("X-UA-Package-Name", UAirship.b());
        request.setHeader("X-UA-Package-Version", UAirship.d().versionName);
        request.setHeader("X-UA-Device-ID", Device.a());
        Object obj = UAirship.a().h();
        request.setHeader("X-UA-App-Key", ((AirshipConfigOptions) (obj)).b());
        request.setHeader("X-UA-In-Production", Boolean.toString(((AirshipConfigOptions) (obj)).j));
        request.setHeader("X-UA-Device-Model", Build.MODEL);
        request.setHeader("X-UA-OS-Version", android.os.Build.VERSION.RELEASE);
        request.setHeader("X-UA-Lib-Version", UAirship.j());
        request.setHeader("X-UA-Timezone", TimeZone.getDefault().getID());
        obj = Locale.getDefault();
        if (((Locale) (obj)).getLanguage().length() != 0)
        {
            request.setHeader("X-UA-Locale-Language", ((Locale) (obj)).getLanguage());
            if (((Locale) (obj)).getCountry().length() != 0)
            {
                request.setHeader("X-UA-Locale-Country", ((Locale) (obj)).getCountry());
            }
            if (((Locale) (obj)).getVariant().length() != 0)
            {
                request.setHeader("X-UA-Locale-Variant", ((Locale) (obj)).getVariant());
            }
        }
        obj = PushManager.b().g();
        if (obj != null)
        {
            obj = ((PushPreferences) (obj)).e();
            if (obj != null && ((String) (obj)).length() > 0)
            {
                request.setHeader("X-UA-Apid", ((String) (obj)));
                request.setHeader("X-UA-Push-Address", ((String) (obj)));
            }
        }
        Logger.d((new StringBuilder("Sending ")).append(collection.size()).append(" events.").toString());
        Logger.d((new StringBuilder("Sending Analytics to: ")).append(request.getURI().toASCIIString()).toString());
        return request.a();
    }

    private static AbstractHttpEntity a(byte abyte0[])
    {
        ByteArrayEntity bytearrayentity = null;
        Object obj;
        int i = abyte0.length / 4;
        obj = new ByteArrayOutputStream(i);
        GZIPOutputStream gzipoutputstream = new GZIPOutputStream(((java.io.OutputStream) (obj)));
        gzipoutputstream.write(abyte0);
        gzipoutputstream.close();
        byte abyte1[] = ((ByteArrayOutputStream) (obj)).toByteArray();
        Logger.b((new StringBuilder("GZIP'd: ")).append(abyte0.length).append(" into ").append(abyte1.length).append(" (expected ").append(i).append(")").toString());
        abyte1 = new ByteArrayEntity(abyte1);
        abyte1.setContentEncoding("gzip");
_L2:
        bytearrayentity = abyte1;
        if (abyte1 == null)
        {
            bytearrayentity = new ByteArrayEntity(abyte0);
        }
        bytearrayentity.setContentType("application/json");
        return bytearrayentity;
        IOException ioexception;
        ioexception;
        ioexception = bytearrayentity;
_L3:
        Logger.e("GZIP of analytics payload failed.");
        if (true) goto _L2; else goto _L1
_L1:
        IOException ioexception1;
        ioexception1;
          goto _L3
    }

    private static byte[] b(Collection collection)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        try
        {
            bytearrayoutputstream.write("[".getBytes());
            collection = collection.iterator();
            do
            {
                if (!collection.hasNext())
                {
                    break;
                }
                bytearrayoutputstream.write(((String)collection.next()).getBytes());
                if (collection.hasNext())
                {
                    bytearrayoutputstream.write(",".getBytes());
                }
            } while (true);
            break MISSING_BLOCK_LABEL_85;
        }
        // Misplaced declaration of an exception variable
        catch (Collection collection) { }
        finally
        {
            IOException ioexception;
            try
            {
                bytearrayoutputstream.close();
            }
            catch (IOException ioexception1) { }
            throw collection;
        }
        Logger.e("Unable to create raw JSON payload.");
        try
        {
            bytearrayoutputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (Collection collection) { }
        return null;
        bytearrayoutputstream.write("]".getBytes());
        collection = bytearrayoutputstream.toByteArray();
        try
        {
            bytearrayoutputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception) { }
        return collection;
    }
}
