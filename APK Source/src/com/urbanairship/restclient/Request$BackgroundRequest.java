// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.restclient;

import android.os.AsyncTask;
import com.urbanairship.Logger;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

// Referenced classes of package com.urbanairship.restclient:
//            Request, Response, AsyncHandler

class b extends AsyncTask
{

    final Request a;
    private final AsyncHandler b;

    private transient Response a(Request arequest[])
    {
        int i;
        i = 0;
        if (arequest.length > 1)
        {
            throw new RuntimeException("Background Request only handles executing one Request at a time ");
        }
        arequest = arequest[0];
        Response response = arequest.a();
        arequest = response;
        if (response == null) goto _L2; else goto _L1
_L1:
        if (a.d == null) goto _L4; else goto _L3
_L3:
        FileOutputStream fileoutputstream;
        byte abyte0[];
        long l;
        a.d.getParentFile().mkdirs();
        l = response.b();
        arequest = response.c();
        fileoutputstream = new FileOutputStream(a.d);
        abyte0 = new byte[8192];
_L7:
        int j = arequest.read(abyte0);
        if (j == -1) goto _L6; else goto _L5
_L5:
        i += j;
        fileoutputstream.write(abyte0, 0, j);
        publishProgress(new Integer[] {
            Integer.valueOf((int)(((float)i / (float)l) * 100F))
        });
          goto _L7
        arequest;
        Logger.a(arequest);
        arequest = null;
_L2:
        return arequest;
_L6:
        fileoutputstream.flush();
        arequest.close();
        fileoutputstream.close();
        return response;
_L4:
        arequest = response;
        if (response.b() >= 0x100000L) goto _L2; else goto _L8
_L8:
        response.d();
        return response;
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Request[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        obj = (Response)obj;
        if (obj != null)
        {
            b.a(((Response) (obj)));
            return;
        } else
        {
            b.a(new Exception("Error when executing request."));
            return;
        }
    }

    protected void onProgressUpdate(Object aobj[])
    {
        aobj = ((Integer[])aobj)[0];
        b.a(((Integer) (aobj)).intValue());
    }

    public (Request request, AsyncHandler asynchandler)
    {
        a = request;
        super();
        b = asynchandler;
    }
}
