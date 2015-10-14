// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.goviral;

import android.app.Activity;
import android.util.Log;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookServiceException;
import com.facebook.RequestAsyncTask;
import com.facebook.Session;
import com.facebook.SessionState;

// Referenced classes of package com.milkmangames.extensions.android.goviral:
//            b

final class e
    implements com.facebook.Session.StatusCallback
{

    final b a;

    e(b b1)
    {
        a = b1;
        super();
    }

    public final void call(Session session, SessionState sessionstate, Exception exception)
    {
        String s1;
        Log.d("[GVExtension]", (new StringBuilder("Auth complete, state:")).append(sessionstate.toString()).toString());
        Log.d("[GVExtension]", (new StringBuilder("perms:")).append(session.getPermissions().toString()).toString());
        s1 = "";
        if (exception == null) goto _L2; else goto _L1
_L1:
        Object obj;
        String s;
        if (b.e)
        {
            Log.d("[GVExtension]", (new StringBuilder("Exception on request:")).append(exception).toString());
        }
        s = exception.getLocalizedMessage();
        obj = null;
        if (exception instanceof FacebookServiceException)
        {
            obj = (FacebookServiceException)exception;
        }
        if (obj == null) goto _L4; else goto _L3
_L3:
        int i;
        int j;
        int k;
        i = ((FacebookServiceException) (obj)).getRequestError().getErrorCode();
        com.facebook.FacebookRequestError.Category category = ((FacebookServiceException) (obj)).getRequestError().getCategory();
        b b1 = a;
        k = b.a(category);
        if (((FacebookServiceException) (obj)).getRequestError().shouldNotifyUser())
        {
            j = 1;
        } else
        {
            j = 0;
        }
        if (!((FacebookServiceException) (obj)).getRequestError().shouldNotifyUser()) goto _L6; else goto _L5
_L5:
        j = ((FacebookServiceException) (obj)).getRequestError().getUserActionMessageId();
        obj = a.b.getString(j);
        Log.d("[GVExtension]", (new StringBuilder("User message:")).append(((String) (obj))).toString());
        j = 1;
_L12:
        Log.d("[GVExtension]", (new StringBuilder("Exception at login:")).append(exception).toString());
        Log.d("[GVExtension]", (new StringBuilder("Exception detail:")).append(exception.getLocalizedMessage()).toString());
_L16:
        b._cls1.a[sessionstate.ordinal()];
        JVM INSTR tableswitch 1 4: default 308
    //                   1 335
    //                   2 458
    //                   3 544
    //                   4 894;
           goto _L7 _L8 _L9 _L10 _L11
_L7:
        return;
        obj;
        Log.d("[GVExtension]", "Could not locate userMessage resource.");
        j = 1;
        obj = "";
          goto _L12
_L8:
        Log.d("[GVExtension]", "Closed session- not 'failed'");
        Session.getActiveSession().closeAndClearTokenInformation();
        if (b.a(a) != null)
        {
            Log.d("[GVExtension]", "Refreshing permissions failed.");
            a.dispatchStatusEventAsync("305", (new StringBuilder("{\"permissions\":\"\",\"gvShouldNotify\":")).append(j).append(",\"gvCategory\":").append(k).append(",\"gvErrCode\":").append(i).append(",\"gvErr\":\"").append(s).append("\",\"gvUserMessage\":\"").append(((String) (obj))).append("\"}").toString());
            b.b(a);
        }
        a.dispatchStatusEventAsync("6", "");
        return;
_L9:
        Log.d("[GVExtension]", "Closed session, clearing token (failed)");
        Session.getActiveSession().closeAndClearTokenInformation();
        a.dispatchStatusEventAsync("8", (new StringBuilder("{\"gvShouldNotify\":")).append(j).append(",\"gvCategory\":").append(k).append(",\"gvErrCode\":").append(i).append(",\"gvErr\":\"").append(s).append("\",\"gvUserMessage\":\"").append(((String) (obj))).append("\"}").toString());
        return;
_L10:
        if (exception == null)
        {
            a.dispatchStatusEventAsync("5", "");
            return;
        }
        if (b.c(a) != null)
        {
            Log.d("[GVExtension]", "Pending async task has failed.");
            sessionstate = a;
            exception = b.d(a);
            s1 = b.e(a);
            boolean flag;
            if (j == 1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (b.f(a) == null)
            {
                session = "";
            } else
            {
                session = b.f(a);
            }
            sessionstate.a(2, "Could not get write permissions", exception, s1, flag, k, ((String) (obj)), session);
            b.g(a);
        }
        if (b.f(a) != null)
        {
            Log.d("[GVExtension]", "Requested new publish permissions failed.");
            a.dispatchStatusEventAsync("303", (new StringBuilder("{\"permissions\":\"")).append(b.f(a)).append("\",\"gvShouldNotify\":").append(j).append(",\"gvCategory\":").append(k).append(",\"gvErrCode\":").append(i).append(",\"gvErr\":\"").append(s).append("\",\"gvUserMessage\":\"").append(((String) (obj))).append("\"}").toString());
            b.h(a);
        }
        if (b.i(a) != null)
        {
            Log.d("[GVExtension]", "Requested new read permissions failed.");
            a.dispatchStatusEventAsync("301", (new StringBuilder("{\"permissions\":\"")).append(b.i(a).concat(",")).append("\",\"gvShouldNotify\":").append(j).append(",\"gvCategory\":").append(k).append(",\"gvErrCode\":").append(i).append(",\"gvErr\":\"").append(s).append("\",\"gvUserMessage\":\"").append(((String) (obj))).append("\"}").toString());
            b.j(a);
            return;
        }
          goto _L7
_L11:
        if (exception != null) goto _L14; else goto _L13
_L13:
        if (b.c(a) != null)
        {
            Log.d("[GVExtension]", "Running pending publish task on token update.");
            b.c(a).execute(new Void[0]);
            b.g(a);
        }
        if (b.i(a) != null)
        {
            Log.d("[GVExtension]", "Got new read permissions.");
            a.dispatchStatusEventAsync("300", b.i(a).concat(","));
            b.j(a);
        }
        if (b.f(a) != null)
        {
            Log.d("[GVExtension]", "Got new publish permissions.");
            a.dispatchStatusEventAsync("302", b.f(a).concat(","));
            b.h(a);
        }
        if (b.a(a) != null)
        {
            Log.d("[GVExtension]", "Refreshed permissions for session.");
            sessionstate = a;
            exception = a;
            sessionstate.dispatchStatusEventAsync("304", b.a(session.getPermissions()));
            b.b(a);
            return;
        }
          goto _L7
_L14:
        if (b.c(a) != null)
        {
            Log.d("[GVExtension]", "Pending async task has failed.");
            sessionstate = a;
            exception = b.d(a);
            s1 = b.e(a);
            boolean flag1;
            if (j == 1)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (b.f(a) == null)
            {
                session = "";
            } else
            {
                session = b.f(a);
            }
            sessionstate.a(2, "Could not get write permissions", exception, s1, flag1, k, ((String) (obj)), session);
            b.g(a);
        }
        if (b.f(a) != null)
        {
            Log.d("[GVExtension]", "Requested new publish permissions failed.");
            a.dispatchStatusEventAsync("303", (new StringBuilder("{\"permissions\":\"")).append(b.f(a).concat(",")).append("\",\"gvShouldNotify\":").append(j).append(",\"gvCategory\":").append(k).append(",\"gvErrCode\":").append(i).append(",\"gvErr\":\"").append(s).append("\",\"gvUserMessage\":\"").append(((String) (obj))).append("\"}").toString());
            b.h(a);
        }
        if (b.i(a) != null)
        {
            Log.d("[GVExtension]", "Requested new read permissions failed.");
            a.dispatchStatusEventAsync("301", (new StringBuilder("{\"permissions\":\"")).append(b.i(a).concat(",")).append("\",\"gvShouldNotify\":").append(j).append(",\"gvCategory\":").append(k).append(",\"gvErrCode\":").append(i).append(",\"gvErr\":\"").append(s).append("\",\"gvUserMessage\":\"").append(((String) (obj))).append("\"}").toString());
            b.j(a);
        }
        if (b.a(a) == null) goto _L7; else goto _L15
_L15:
        Log.d("[GVExtension]", "Refreshing permissions failed.");
        a.dispatchStatusEventAsync("305", (new StringBuilder("{\"permissions\":\"\",\"gvShouldNotify\":")).append(j).append(",\"gvCategory\":").append(k).append(",\"gvErrCode\":").append(i).append(",\"gvErr\":\"").append(s).append("\",\"gvUserMessage\":\"").append(((String) (obj))).append("\"}").toString());
        b.b(a);
        return;
_L6:
        obj = s1;
          goto _L12
_L4:
        i = 9001;
        k = -1;
        j = 0;
        obj = s1;
          goto _L12
_L2:
        s = "";
        i = 9001;
        j = 0;
        obj = "";
        k = -1;
          goto _L16
    }
}
