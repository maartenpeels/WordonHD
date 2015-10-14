// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import com.facebook.internal.Utility;
import java.net.HttpURLConnection;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook:
//            FacebookServiceException, FacebookException

public final class FacebookRequestError
{
    public static final class Category extends Enum
    {

        private static final Category $VALUES[];
        public static final Category AUTHENTICATION_REOPEN_SESSION;
        public static final Category AUTHENTICATION_RETRY;
        public static final Category BAD_REQUEST;
        public static final Category CLIENT;
        public static final Category OTHER;
        public static final Category PERMISSION;
        public static final Category SERVER;
        public static final Category THROTTLING;

        public static Category valueOf(String s)
        {
            return (Category)Enum.valueOf(com/facebook/FacebookRequestError$Category, s);
        }

        public static Category[] values()
        {
            return (Category[])$VALUES.clone();
        }

        static 
        {
            AUTHENTICATION_RETRY = new Category("AUTHENTICATION_RETRY", 0);
            AUTHENTICATION_REOPEN_SESSION = new Category("AUTHENTICATION_REOPEN_SESSION", 1);
            PERMISSION = new Category("PERMISSION", 2);
            SERVER = new Category("SERVER", 3);
            THROTTLING = new Category("THROTTLING", 4);
            OTHER = new Category("OTHER", 5);
            BAD_REQUEST = new Category("BAD_REQUEST", 6);
            CLIENT = new Category("CLIENT", 7);
            $VALUES = (new Category[] {
                AUTHENTICATION_RETRY, AUTHENTICATION_REOPEN_SESSION, PERMISSION, SERVER, THROTTLING, OTHER, BAD_REQUEST, CLIENT
            });
        }

        private Category(String s, int i)
        {
            super(s, i);
        }
    }

    private static class Range
    {

        private final int end;
        private final int start;

        boolean contains(int i)
        {
            return start <= i && i <= end;
        }

        private Range(int i, int j)
        {
            start = i;
            end = j;
        }

    }


    private static final String BODY_KEY = "body";
    private static final String CODE_KEY = "code";
    private static final int EC_APP_NOT_INSTALLED = 458;
    private static final int EC_APP_TOO_MANY_CALLS = 4;
    private static final int EC_EXPIRED = 463;
    private static final int EC_INVALID_SESSION = 102;
    private static final int EC_INVALID_TOKEN = 190;
    private static final int EC_PASSWORD_CHANGED = 460;
    private static final int EC_PERMISSION_DENIED = 10;
    private static final Range EC_RANGE_PERMISSION = new Range(200, 299);
    private static final int EC_SERVICE_UNAVAILABLE = 2;
    private static final int EC_UNCONFIRMED_USER = 464;
    private static final int EC_UNKNOWN_ERROR = 1;
    private static final int EC_USER_CHECKPOINTED = 459;
    private static final int EC_USER_TOO_MANY_CALLS = 17;
    private static final String ERROR_CODE_FIELD_KEY = "code";
    private static final String ERROR_CODE_KEY = "error_code";
    private static final String ERROR_IS_TRANSIENT_KEY = "is_transient";
    private static final String ERROR_KEY = "error";
    private static final String ERROR_MESSAGE_FIELD_KEY = "message";
    private static final String ERROR_MSG_KEY = "error_msg";
    private static final String ERROR_REASON_KEY = "error_reason";
    private static final String ERROR_SUB_CODE_KEY = "error_subcode";
    private static final String ERROR_TYPE_FIELD_KEY = "type";
    private static final String ERROR_USER_MSG_KEY = "error_user_msg";
    private static final String ERROR_USER_TITLE_KEY = "error_user_title";
    private static final Range HTTP_RANGE_CLIENT_ERROR = new Range(400, 499);
    private static final Range HTTP_RANGE_SERVER_ERROR = new Range(500, 599);
    private static final Range HTTP_RANGE_SUCCESS = new Range(200, 299);
    public static final int INVALID_ERROR_CODE = -1;
    public static final int INVALID_HTTP_STATUS_CODE = -1;
    private static final int INVALID_MESSAGE_ID = 0;
    private final Object batchRequestResult;
    private final Category category;
    private final HttpURLConnection connection;
    private final int errorCode;
    private final boolean errorIsTransient;
    private final String errorMessage;
    private final String errorType;
    private final String errorUserMessage;
    private final String errorUserTitle;
    private final FacebookException exception;
    private final JSONObject requestResult;
    private final JSONObject requestResultBody;
    private final int requestStatusCode;
    private final boolean shouldNotifyUser;
    private final int subErrorCode;
    private final int userActionMessageId;

    private FacebookRequestError(int i, int j, int k, String s, String s1, String s2, String s3, 
            boolean flag, JSONObject jsonobject, JSONObject jsonobject1, Object obj, HttpURLConnection httpurlconnection)
    {
        this(i, j, k, s, s1, s2, s3, flag, jsonobject, jsonobject1, obj, httpurlconnection, null);
    }

    private FacebookRequestError(int i, int j, int k, String s, String s1, String s2, String s3, 
            boolean flag, JSONObject jsonobject, JSONObject jsonobject1, Object obj, HttpURLConnection httpurlconnection, FacebookException facebookexception)
    {
        requestStatusCode = i;
        errorCode = j;
        subErrorCode = k;
        errorType = s;
        errorMessage = s1;
        requestResultBody = jsonobject;
        requestResult = jsonobject1;
        batchRequestResult = obj;
        connection = httpurlconnection;
        errorUserTitle = s2;
        errorUserMessage = s3;
        errorIsTransient = flag;
        boolean flag1 = false;
        if (facebookexception != null)
        {
            exception = facebookexception;
            flag1 = true;
        } else
        {
            exception = new FacebookServiceException(this, s1);
        }
        s = null;
        if (flag1)
        {
            s1 = Category.CLIENT;
            k = 0;
        } else
        {
            if (j == 1 || j == 2)
            {
                s = Category.SERVER;
                j = 0;
            } else
            if (j == 4 || j == 17)
            {
                s = Category.THROTTLING;
                j = 0;
            } else
            if (j == 10 || EC_RANGE_PERMISSION.contains(j))
            {
                s = Category.PERMISSION;
                j = com.facebook.android.R.string.com_facebook_requesterror_permissions;
            } else
            if (j == 102 || j == 190)
            {
                if (k == 459 || k == 464)
                {
                    s = Category.AUTHENTICATION_RETRY;
                    j = com.facebook.android.R.string.com_facebook_requesterror_web_login;
                } else
                {
                    s = Category.AUTHENTICATION_REOPEN_SESSION;
                    if (k == 458 || k == 463)
                    {
                        j = com.facebook.android.R.string.com_facebook_requesterror_relogin;
                    } else
                    if (k == 460)
                    {
                        j = com.facebook.android.R.string.com_facebook_requesterror_password_changed;
                    } else
                    {
                        j = com.facebook.android.R.string.com_facebook_requesterror_reconnect;
                    }
                }
            } else
            {
                j = 0;
            }
            k = j;
            s1 = s;
            if (s == null)
            {
                if (HTTP_RANGE_CLIENT_ERROR.contains(i))
                {
                    s1 = Category.BAD_REQUEST;
                    k = j;
                } else
                if (HTTP_RANGE_SERVER_ERROR.contains(i))
                {
                    s1 = Category.SERVER;
                    k = j;
                } else
                {
                    s1 = Category.OTHER;
                    k = j;
                }
            }
        }
        if (s3 != null && s3.length() > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        category = s1;
        userActionMessageId = k;
        shouldNotifyUser = flag;
    }

    public FacebookRequestError(int i, String s, String s1)
    {
        this(-1, i, -1, s, s1, null, null, false, null, null, null, null, null);
    }

    FacebookRequestError(HttpURLConnection httpurlconnection, Exception exception1)
    {
        if (exception1 instanceof FacebookException)
        {
            exception1 = (FacebookException)exception1;
        } else
        {
            exception1 = new FacebookException(exception1);
        }
        this(-1, -1, -1, null, null, null, null, false, null, null, null, httpurlconnection, ((FacebookException) (exception1)));
    }

    static FacebookRequestError checkResponseAndCreateError(JSONObject jsonobject, Object obj, HttpURLConnection httpurlconnection)
    {
        if (!jsonobject.has("code")) goto _L2; else goto _L1
_L1:
        Object obj1;
        int k;
        k = jsonobject.getInt("code");
        obj1 = Utility.getStringPropertyAsJSON(jsonobject, "body", "FACEBOOK_NON_JSON_RESULT");
        if (obj1 == null) goto _L4; else goto _L3
_L3:
        if (!(obj1 instanceof JSONObject)) goto _L4; else goto _L5
_L5:
        JSONObject jsonobject1 = (JSONObject)obj1;
        if (!jsonobject1.has("error")) goto _L7; else goto _L6
_L6:
        String s;
        String s1;
        String s2;
        int i;
        int j;
        boolean flag1;
        JSONObject jsonobject2 = (JSONObject)Utility.getStringPropertyAsJSON(jsonobject1, "error", null);
        obj1 = jsonobject2.optString("type", null);
        s = jsonobject2.optString("message", null);
        i = jsonobject2.optInt("code", -1);
        j = jsonobject2.optInt("error_subcode", -1);
        s2 = jsonobject2.optString("error_user_msg", null);
        s1 = jsonobject2.optString("error_user_title", null);
        flag1 = jsonobject2.optBoolean("is_transient", false);
        boolean flag = true;
_L14:
        if (!flag) goto _L4; else goto _L8
_L8:
        return new FacebookRequestError(k, i, j, ((String) (obj1)), s, s1, s2, flag1, jsonobject1, jsonobject, obj, httpurlconnection);
_L7:
        if (!jsonobject1.has("error_code") && !jsonobject1.has("error_msg") && !jsonobject1.has("error_reason")) goto _L10; else goto _L9
_L9:
        obj1 = jsonobject1.optString("error_reason", null);
        s = jsonobject1.optString("error_msg", null);
        i = jsonobject1.optInt("error_code", -1);
        j = jsonobject1.optInt("error_subcode", -1);
        flag1 = false;
        s1 = null;
        flag = true;
        s2 = null;
        continue; /* Loop/switch isn't completed */
_L4:
        if (HTTP_RANGE_SUCCESS.contains(k)) goto _L2; else goto _L11
_L11:
        if (!jsonobject.has("body"))
        {
            break MISSING_BLOCK_LABEL_310;
        }
        obj1 = (JSONObject)Utility.getStringPropertyAsJSON(jsonobject, "body", "FACEBOOK_NON_JSON_RESULT");
_L12:
        jsonobject = new FacebookRequestError(k, -1, -1, null, null, null, null, false, ((JSONObject) (obj1)), jsonobject, obj, httpurlconnection);
        return jsonobject;
        obj1 = null;
          goto _L12
        jsonobject;
_L2:
        return null;
_L10:
        flag1 = false;
        s = null;
        i = 0;
        s1 = null;
        obj1 = null;
        flag = false;
        s2 = null;
        j = 0;
        if (true) goto _L14; else goto _L13
_L13:
    }

    public final Object getBatchRequestResult()
    {
        return batchRequestResult;
    }

    public final Category getCategory()
    {
        return category;
    }

    public final HttpURLConnection getConnection()
    {
        return connection;
    }

    public final int getErrorCode()
    {
        return errorCode;
    }

    public final boolean getErrorIsTransient()
    {
        return errorIsTransient;
    }

    public final String getErrorMessage()
    {
        if (errorMessage != null)
        {
            return errorMessage;
        } else
        {
            return exception.getLocalizedMessage();
        }
    }

    public final String getErrorType()
    {
        return errorType;
    }

    public final String getErrorUserMessage()
    {
        return errorUserMessage;
    }

    public final String getErrorUserTitle()
    {
        return errorUserTitle;
    }

    public final FacebookException getException()
    {
        return exception;
    }

    public final JSONObject getRequestResult()
    {
        return requestResult;
    }

    public final JSONObject getRequestResultBody()
    {
        return requestResultBody;
    }

    public final int getRequestStatusCode()
    {
        return requestStatusCode;
    }

    public final int getSubErrorCode()
    {
        return subErrorCode;
    }

    public final int getUserActionMessageId()
    {
        return userActionMessageId;
    }

    public final boolean shouldNotifyUser()
    {
        return shouldNotifyUser;
    }

    public final String toString()
    {
        return (new StringBuilder("{HttpStatus: ")).append(requestStatusCode).append(", errorCode: ").append(errorCode).append(", errorType: ").append(errorType).append(", errorMessage: ").append(getErrorMessage()).append("}").toString();
    }

}
