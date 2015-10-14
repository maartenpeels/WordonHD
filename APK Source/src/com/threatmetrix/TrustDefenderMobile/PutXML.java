// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.threatmetrix.TrustDefenderMobile;

import android.util.Log;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.UnknownHostException;

// Referenced classes of package com.threatmetrix.TrustDefenderMobile:
//            TrustDefenderMobile

public class PutXML
    implements Runnable
{

    static final String TAG = com/threatmetrix/TrustDefenderMobile/PutXML.getName();
    String fp_server;
    String org_id;
    private TrustDefenderMobile sdk;
    String session_id;
    int timeout;
    String w;

    public PutXML(String s, String s1, String s2, String s3, int i, TrustDefenderMobile trustdefendermobile)
    {
        fp_server = null;
        org_id = null;
        session_id = null;
        w = null;
        timeout = 10000;
        fp_server = s;
        org_id = s1;
        session_id = s2;
        w = s3;
        timeout = i;
        sdk = trustdefendermobile;
    }

    public void run()
    {
        Object obj;
        Object obj3;
        Object obj4;
        obj4 = null;
        obj = null;
        obj3 = null;
        Object obj1 = new Socket(fp_server, 8080);
        BufferedReader bufferedreader;
        ((Socket) (obj1)).setSoTimeout(timeout);
        obj = new BufferedWriter(new PrintWriter(((Socket) (obj1)).getOutputStream()));
        bufferedreader = new BufferedReader(new InputStreamReader(((Socket) (obj1)).getInputStream()));
        ((BufferedWriter) (obj)).write((new StringBuilder("<handle sig=FF44EE55 session_id=")).append(session_id).append(" org_id=").append(org_id).append(" w=").append(w).append(" />").toString());
        ((BufferedWriter) (obj)).flush();
        if (bufferedreader.read() == -1)
        {
            break MISSING_BLOCK_LABEL_168;
        }
        int i = 0;
_L2:
        if (i >= 15)
        {
            break; /* Loop/switch isn't completed */
        }
        ((BufferedWriter) (obj)).write(new char[] {
            '\0'
        });
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        bufferedreader.read();
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_176;
        }
        ((Socket) (obj1)).close();
_L4:
        return;
        Object obj2;
        obj2;
        obj1 = obj3;
_L10:
        obj = obj1;
        Log.w("Failed to connect to the fp server", ((Throwable) (obj2)));
        if (obj1 == null) goto _L4; else goto _L3
_L3:
        try
        {
            ((Socket) (obj1)).close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return;
        }
        obj2;
        obj1 = obj4;
_L9:
        obj = obj1;
        Log.w("Failed to read/write to the fp server", ((Throwable) (obj2)));
        obj = obj1;
        if (sdk == null) goto _L6; else goto _L5
_L5:
        obj = obj1;
        sdk.interruptThreads();
_L6:
        if (obj1 == null) goto _L4; else goto _L7
_L7:
        ((Socket) (obj1)).close();
        return;
        obj1;
_L8:
        if (obj != null)
        {
            try
            {
                ((Socket) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj) { }
        }
        throw obj1;
        obj;
          goto _L4
        obj2;
        obj = obj1;
        obj1 = obj2;
          goto _L8
        obj2;
          goto _L9
        obj2;
          goto _L10
    }

}
