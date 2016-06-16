// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.threatmetrix.TrustDefenderMobile;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.StatFs;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.turbomanage.httpclient.ParameterMap;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.Socket;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Formatter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.Set;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

// Referenced classes of package com.threatmetrix.TrustDefenderMobile:
//            TDLocationManager, JSExecutor, StatWrapper, FetchW, 
//            JavaScriptInterface, ProfileNotify, HttpGet, PutXML, 
//            CompleteProfile

public class TrustDefenderMobile
{
    public static final class THMStatusCode extends Enum
    {

        private static final THMStatusCode $VALUES[];
        public static final THMStatusCode THM_Connection_Error;
        public static final THMStatusCode THM_HostNotFound_Error;
        public static final THMStatusCode THM_HostVerification_Error;
        public static final THMStatusCode THM_Internal_Error;
        public static final THMStatusCode THM_Interrupted_Error;
        public static final THMStatusCode THM_InvalidOrgID;
        public static final THMStatusCode THM_NetworkTimeout_Error;
        public static final THMStatusCode THM_NotYet;
        public static final THMStatusCode THM_OK;
        private String desc;
        private String label;

        public static THMStatusCode valueOf(String s)
        {
            return (THMStatusCode)Enum.valueOf(com/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode, s);
        }

        public static THMStatusCode[] values()
        {
            return (THMStatusCode[])$VALUES.clone();
        }

        public final String getDesc()
        {
            return desc;
        }

        public final String toString()
        {
            return label;
        }

        static 
        {
            THM_NotYet = new THMStatusCode("THM_NotYet", 0, "Not Yet", "Profile request has returned but not yet completed");
            THM_OK = new THMStatusCode("THM_OK", 1, "Okay", "Completed, No errors");
            THM_Connection_Error = new THMStatusCode("THM_Connection_Error", 2, "Connection Error", "There has been a connection issue, profiling incomplete");
            THM_HostNotFound_Error = new THMStatusCode("THM_HostNotFound_Error", 3, "Host Not Found", "Unable to resolve the host name");
            THM_NetworkTimeout_Error = new THMStatusCode("THM_NetworkTimeout_Error", 4, "Network Timeout", "Communications layer timed out");
            THM_Internal_Error = new THMStatusCode("THM_Internal_Error", 5, "Internal Error", "Internal Error, profiling incomplete or interrupted");
            THM_HostVerification_Error = new THMStatusCode("THM_HostVerification_Error", 6, "Host Verification Error", "Host name doesn't match certificate! Potential MITM attack");
            THM_Interrupted_Error = new THMStatusCode("THM_Interrupted_Error", 7, "Interrupted", "Request was cancelled");
            THM_InvalidOrgID = new THMStatusCode("THM_InvalidOrgID", 8, "Invalid ORG ID", "Request contained an invalid org id");
            $VALUES = (new THMStatusCode[] {
                THM_NotYet, THM_OK, THM_Connection_Error, THM_HostNotFound_Error, THM_NetworkTimeout_Error, THM_Internal_Error, THM_HostVerification_Error, THM_Interrupted_Error, THM_InvalidOrgID
            });
        }

        private THMStatusCode(String s, int i, String s1, String s2)
        {
            super(s, i);
            label = s1;
            desc = s2;
        }
    }


    private static final int MAX_ATTR_LEN = 255;
    private static final String TAG = com/threatmetrix/TrustDefenderMobile/TrustDefenderMobile.getName();
    public static final int THM_OPTION_ALL = 254;
    public static final int THM_OPTION_ALL_ASYNC = 255;
    public static final int THM_OPTION_ALL_SYNC = 254;
    public static final int THM_OPTION_ASYNC = 1;
    private static final int THM_OPTION_BROWSER_PLUGINS = 32;
    private static final int THM_OPTION_BROWSER_STRING = 2;
    public static final int THM_OPTION_LEAN_ASYNC = 63;
    public static final int THM_OPTION_LEAN_SYNC = 62;
    private static final int THM_OPTION_MIME_TYPES = 4;
    public static final int THM_OPTION_MOST_ASYNC = 127;
    public static final int THM_OPTION_MOST_SYNC = 126;
    private static final int THM_OPTION_SCREEN_DIM = 16;
    public static final int THM_OPTION_SYNC = 0;
    public static final int THM_OPTION_TCP_FP = 64;
    private static final int THM_OPTION_TCP_TARPIT = 128;
    private static final int THM_OPTION_TIME_ZONE = 8;
    public static final int THM_OPTION_WEBVIEW = 38;
    public static String version = "TrustDefender Mobile: 1.2.4-3";
    ArrayList customAttributes;
    String m_HTML5Cookie;
    private TDLocationManager m_TDLocationManager;
    private volatile boolean m_active;
    String m_browserPluginCount;
    String m_browserPlugins;
    String m_browserPluginsFromJS;
    String m_browserStringFromJS;
    private ReentrantLock m_callback_lock;
    private volatile boolean m_cancel;
    private Context m_context;
    String m_cookie;
    String m_deviceFingerprint;
    String m_deviceState;
    int m_dstDiff;
    String m_flashCookie;
    String m_fp_server;
    boolean m_generate_session_id;
    int m_gmtOffset;
    private String m_imei;
    private JavaScriptInterface m_jsInterface;
    int m_mimeTypeCount;
    String m_mimeTypes;
    int m_options;
    String m_org_id;
    private ProfileNotify m_profileNotify;
    private Thread m_profile_thread;
    String m_referrerURL;
    private ReentrantLock m_request_lock;
    ArrayList m_requests;
    int m_screenHeight;
    int m_screenWidth;
    String m_serverReportedIPAndTimestamp;
    String m_session_id;
    Socket m_socket;
    private volatile THMStatusCode m_status;
    int m_timeout_ms;
    String m_url;

    public TrustDefenderMobile()
    {
        m_session_id = null;
        m_timeout_ms = 10000;
        m_serverReportedIPAndTimestamp = null;
        m_socket = null;
        m_flashCookie = null;
        m_HTML5Cookie = null;
        m_cookie = null;
        m_gmtOffset = 0;
        m_dstDiff = 0;
        m_screenWidth = 0;
        m_screenHeight = 0;
        m_url = null;
        m_referrerURL = null;
        m_browserPlugins = null;
        m_browserPluginCount = "0";
        m_browserPluginsFromJS = null;
        m_browserStringFromJS = null;
        m_mimeTypeCount = 0;
        m_mimeTypes = null;
        m_deviceFingerprint = null;
        m_deviceState = null;
        m_options = 0;
        m_org_id = null;
        m_fp_server = null;
        m_generate_session_id = false;
        customAttributes = null;
        m_context = null;
        m_profile_thread = null;
        m_profileNotify = null;
        m_requests = new ArrayList();
        m_request_lock = new ReentrantLock();
        m_callback_lock = new ReentrantLock();
        m_status = THMStatusCode.THM_OK;
        m_TDLocationManager = new TDLocationManager();
    }

    private static String MD5(String s)
    {
        if (s == null || s.isEmpty())
        {
            return "";
        }
        Object obj;
        Formatter formatter;
        int i;
        int j;
        try
        {
            obj = MessageDigest.getInstance("MD5");
            ((MessageDigest) (obj)).update(s.getBytes());
            s = ((MessageDigest) (obj)).digest();
            obj = new StringBuffer();
            formatter = new Formatter(((Appendable) (obj)));
            j = s.length;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s = TAG;
            return "";
        }
        i = 0;
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        formatter.format("%02x", new Object[] {
            Byte.valueOf(s[i])
        });
        i++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_56;
_L1:
        formatter.close();
        s = ((StringBuffer) (obj)).toString();
        return s;
    }

    private ParameterMap buildFlashCookieParameter()
    {
        StringBuilder stringbuilder = new StringBuilder();
        ParameterMap parametermap = new ParameterMap();
        Random random = new Random();
        Formatter formatter = new Formatter(stringbuilder);
        formatter.format("%04d", new Object[] {
            Integer.valueOf(random.nextInt(10000))
        });
        parametermap.add("nu", stringbuilder.toString());
        stringbuilder.setLength(0);
        formatter.format("%16s%32s", new Object[] {
            m_serverReportedIPAndTimestamp, m_flashCookie
        });
        parametermap.add("fc", stringbuilder.toString());
        formatter.close();
        return parametermap;
    }

    private ParameterMap buildHTML5Parameters()
    {
        StringBuilder stringbuilder = new StringBuilder();
        Formatter formatter = new Formatter(stringbuilder);
        formatter.format("%16s%32s", new Object[] {
            m_serverReportedIPAndTimestamp, m_HTML5Cookie
        });
        formatter.close();
        return (new ParameterMap()).add("la", stringbuilder.toString());
    }

    private String buildJavaScriptParameters(int i, String s)
    {
        StringBuilder stringbuilder;
        stringbuilder = new StringBuilder();
        stringbuilder.append("w=");
        stringbuilder.append(m_serverReportedIPAndTimestamp);
        if ((i & 8) != 0)
        {
            stringbuilder.append("&c=");
            stringbuilder.append(m_gmtOffset);
            stringbuilder.append("&z=");
            stringbuilder.append(m_dstDiff);
        }
        if ((i & 0x10) != 0)
        {
            stringbuilder.append("&f=");
            stringbuilder.append(m_screenWidth);
            stringbuilder.append("x");
            stringbuilder.append(m_screenHeight);
        }
        if (m_url == null || m_url.length() <= 0) goto _L2; else goto _L1
_L1:
        String s1 = "";
        String s2;
        int j;
        try
        {
            s2 = URLEncoder.encode(m_url, "utf-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            String s3 = TAG;
            continue; /* Loop/switch isn't completed */
        }
        s1 = s2;
_L5:
        stringbuilder.append("&lh=");
        if (s1.length() > 255)
        {
            s1 = s1.substring(0, 255);
        }
        stringbuilder.append(s1);
_L2:
        s1 = "";
        s2 = URLEncoder.encode(m_referrerURL, "utf-8");
        s1 = s2;
_L3:
        stringbuilder.append("&dr=");
        if (s1.length() > 255)
        {
            s1 = s1.substring(0, 255);
        }
        stringbuilder.append(s1);
        if ((i & 0x20) != 0 && m_browserPluginCount != null && !m_browserPluginCount.equals("0") && m_browserPluginsFromJS != null)
        {
            stringbuilder.append("&p=");
            Object obj;
            UnsupportedEncodingException unsupportedencodingexception1;
            String s4;
            if (m_browserPlugins == null)
            {
                obj = "";
            } else
            {
                obj = m_browserPlugins;
            }
            stringbuilder.append(((String) (obj)));
            stringbuilder.append("&pl=");
            if (m_browserPluginCount == null)
            {
                obj = "";
            } else
            {
                obj = m_browserPluginCount;
            }
            stringbuilder.append(((String) (obj)));
            stringbuilder.append("&ph=");
            if (m_browserPluginsFromJS == null)
            {
                obj = "";
            } else
            {
                obj = MD5(m_browserPluginsFromJS);
            }
            stringbuilder.append(((String) (obj)));
        }
        stringbuilder.append("&hh=");
        stringbuilder.append(MD5((new StringBuilder()).append(s).append(m_session_id).toString()));
        if ((i & 4) != 0 && m_mimeTypeCount > 0)
        {
            stringbuilder.append("&mt=");
            if (m_mimeTypes == null)
            {
                s = "";
            } else
            {
                s = MD5(m_mimeTypes);
            }
            stringbuilder.append(s);
            stringbuilder.append("&mn=");
            stringbuilder.append(m_mimeTypeCount);
        }
        stringbuilder.append("&mdf=");
        if (m_deviceFingerprint == null)
        {
            s = "";
        } else
        {
            s = m_deviceFingerprint;
        }
        stringbuilder.append(s);
        stringbuilder.append("&mds=");
        if (m_deviceState == null)
        {
            s = "";
        } else
        {
            s = m_deviceState;
        }
        stringbuilder.append(s);
        stringbuilder.append("&imei=");
        if (m_imei == null)
        {
            s = "";
        } else
        {
            s = m_imei;
        }
        stringbuilder.append(s);
        s = m_TDLocationManager.getLocation();
        if (s != null)
        {
            stringbuilder.append("&tdlat=");
            stringbuilder.append(Double.valueOf(s.getLatitude()).toString());
            stringbuilder.append("&tdlon=");
            stringbuilder.append(Double.valueOf(s.getLongitude()).toString());
            stringbuilder.append("&tdlacc=");
            stringbuilder.append(Double.valueOf(s.getAccuracy()).toString());
            obj = TAG;
            (new StringBuilder("Got lat/long/acc = ")).append(s.getLatitude()).append("/").append(s.getLongitude()).append("/").append(s.getAccuracy());
        }
        if (customAttributes != null && customAttributes.size() > 0)
        {
            i = 0;
            obj = customAttributes.iterator();
            do
            {
                if (!((Iterator) (obj)).hasNext())
                {
                    break;
                }
                s = (String)((Iterator) (obj)).next();
                stringbuilder.append("&aca");
                j = i + 1;
                stringbuilder.append(i);
                stringbuilder.append("=");
                if (s.length() > 255)
                {
                    s = s.substring(0, 255);
                }
                stringbuilder.append(s);
                if (j >= 5)
                {
                    break;
                }
                i = j;
            } while (true);
        }
        break MISSING_BLOCK_LABEL_868;
        unsupportedencodingexception1;
        s4 = TAG;
          goto _L3
        stringbuilder.append("&at=agent_mobile&av=");
        try
        {
            stringbuilder.append(URLEncoder.encode(version, "utf-8"));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s = TAG;
        }
        return xor(stringbuilder.toString().toLowerCase(), m_session_id);
        if (true) goto _L5; else goto _L4
_L4:
    }

    private static String checkLength(String s)
    {
        if (s == null)
        {
            return null;
        }
        if (s.length() == 32)
        {
            return s;
        }
        if (s.length() < 32)
        {
            s = (new StringBuilder()).append(s).append(MD5(s).substring(0, 32 - s.length())).toString();
        } else
        {
            s = MD5(s);
        }
        return s;
    }

    private static HashMap checkPlugin(ArrayList arraylist, String s)
    {
        for (arraylist = arraylist.iterator(); arraylist.hasNext();)
        {
            HashMap hashmap = (HashMap)arraylist.next();
            if (((String)hashmap.get("name")).toLowerCase().indexOf(s.toLowerCase()) != -1)
            {
                return hashmap;
            }
        }

        return null;
    }

    private static String containsPluginNamed(String s, String s1, ArrayList arraylist)
    {
        String s2;
        Iterator iterator;
        s2 = "false";
        iterator = arraylist.iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        arraylist = (HashMap)iterator.next();
        if (((String)arraylist.get("name")).toLowerCase().indexOf(s.toLowerCase()) == -1) goto _L4; else goto _L3
_L3:
        s = s2;
        if (arraylist != null)
        {
            arraylist = ((String)arraylist.get("name")).replace("[abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY -]", "");
            s = arraylist;
            if (!arraylist.isEmpty())
            {
                s = "true";
            }
        }
        return (new StringBuilder()).append(s1).append("^").append(s).append("!").toString();
_L2:
        arraylist = null;
        if (true) goto _L3; else goto _L5
_L5:
    }

    static String convertFromOctal(String s)
    {
        int j = s.length();
        StringBuilder stringbuilder = new StringBuilder();
        if (s.charAt(0) != '\\')
        {
            return s;
        }
        int i = 1;
        while (i < j) 
        {
            int k = s.indexOf("\\", i + 1);
            String s1;
            if (k > 0)
            {
                s1 = s.substring(i, k);
            } else
            {
                s1 = s.substring(i);
            }
            k = s1.length();
            try
            {
                stringbuilder.append(Character.toChars(Integer.parseInt(s1, 8)));
            }
            catch (NumberFormatException numberformatexception)
            {
                Log.e(TAG, "failed to convert", numberformatexception);
            }
            i = i + k + 1;
        }
        return stringbuilder.toString();
    }

    private void getBrowserInfo(Context context, JavaScriptInterface javascriptinterface)
        throws InterruptedException
    {
        if (!Thread.currentThread().isInterrupted())
        {
            boolean flag;
            if ((m_options & 0x26) != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            javascriptinterface = new JSExecutor(context, javascriptinterface, flag);
            javascriptinterface.init();
            if (!Thread.currentThread().isInterrupted())
            {
                StringBuilder stringbuilder;
                if ((m_options & 2) != 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                m_browserStringFromJS = javascriptinterface.getUserAgentString(flag, context);
                context = TAG;
                stringbuilder = new StringBuilder("getBrowserInfo: ");
                if (m_browserStringFromJS == null)
                {
                    context = "null";
                } else
                {
                    context = m_browserStringFromJS;
                }
                stringbuilder.append(context);
                if ((m_options & 0x20) != 0)
                {
                    context = javascriptinterface.getJSResult("(function () { var plugins_string='', i=0; for (p=navigator.plugins[0]; i< navigator.plugins.length;p=navigator.plugins[i++]) {  plugins_string += p.name + '<FIELD_SEP>' + p.description + '<FIELD_SEP>' + p.filename + '<FIELD_SEP>' + p.length.toString() + '<REC_SEP>'; } return plugins_string;})();");
                    if (context != null)
                    {
                        parseBrowserInfo_Plugins(context);
                    }
                }
                if (!Thread.currentThread().isInterrupted() && (m_options & 4) != 0)
                {
                    context = javascriptinterface.getJSResult("navigator.mimeTypes.length");
                    if (context != null)
                    {
                        try
                        {
                            m_mimeTypeCount = Integer.parseInt(context);
                        }
                        // Misplaced declaration of an exception variable
                        catch (Context context)
                        {
                            Log.e(TAG, "failed to convert", context);
                        }
                    }
                    m_mimeTypes = javascriptinterface.getJSResult("(function () { var mime_string='', i=0; for (var m=navigator.mimeTypes[0]; i< navigator.mimeTypes.length;m=navigator.mimeTypes[i++]) {  mime_string += m.type; } return mime_string;})();");
                    if (m_mimeTypes != null)
                    {
                        context = TAG;
                        (new StringBuilder("Got:")).append(m_mimeTypes);
                        return;
                    }
                }
            }
        }
    }

    private static String getCPUInfo()
    {
        Object obj = new ArrayList();
        Collections.addAll(((java.util.Collection) (obj)), new String[] {
            "Processor", "BogoMips", "Hardware", "Serial"
        });
        obj = getInfoAlt("/proc/cpuinfo", ((List) (obj)));
        String s = TAG;
        (new StringBuilder("getCPUInfo returned: ")).append(((String) (obj)));
        return ((String) (obj));
    }

    private static String getDeviceFingerprint(Context context)
    {
        Object obj = TAG;
        StringBuilder stringbuilder = new StringBuilder();
        if (Thread.currentThread().isInterrupted())
        {
            return "";
        }
        TelephonyManager telephonymanager = (TelephonyManager)context.getSystemService("phone");
        obj = "Unknown";
        if (telephonymanager.getPhoneType() == 1)
        {
            obj = telephonymanager.getNetworkOperatorName();
        }
        stringbuilder.append(((String) (obj)));
        stringbuilder.append(telephonymanager.getSimCountryIso());
        obj = new StatFs(Environment.getDataDirectory().getPath());
        long l = ((StatFs) (obj)).getBlockSize();
        float f = (long)((StatFs) (obj)).getBlockCount();
        stringbuilder.append(((float)l * f) / 1024F / 1024F / 1024F);
        context = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
        stringbuilder.append(context.getWidth()).append("x").append(context.getHeight());
        context = TAG;
        context = new ArrayList();
        Collections.addAll(context, new String[] {
            "Processor", "BogoMips", "Hardware", "Serial"
        });
        context = getInfoAlt("/proc/cpuinfo", context);
        obj = TAG;
        (new StringBuilder("getCPUInfo returned: ")).append(context);
        stringbuilder.append(context);
        context = TAG;
        context = new ArrayList();
        Collections.addAll(context, new String[] {
            "MemTotal"
        });
        context = getInfoAlt("/proc/meminfo", context);
        obj = TAG;
        (new StringBuilder("getMemInfo returned: ")).append(context);
        stringbuilder.append(context);
        stringbuilder.append(Build.DEVICE).append(" ").append(Build.MODEL).append(" ").append(Build.PRODUCT).append(" ").append(Build.MANUFACTURER).append(" ").append(android.os.Build.VERSION.RELEASE);
        context = TAG;
        (new StringBuilder("getDeviceFingerprint returned: hash(")).append(stringbuilder.toString()).append(")");
        return MD5(stringbuilder.toString());
    }

    private static String getDeviceState()
    {
        StringBuilder stringbuilder = new StringBuilder();
        Object obj = new StatWrapper(Environment.getDataDirectory().getPath());
        long l = ((StatWrapper) (obj)).getBlockSize();
        long l1 = ((StatWrapper) (obj)).getAvailableBlocks();
        float f = 1.0F;
        if (l1 * l != 0L)
        {
            f = ((float)l1 * (float)l) / 1024F / 1024F / 1024F;
        }
        stringbuilder.append(f);
        stringbuilder.append(" - ");
        stringbuilder.append(Long.toString((System.currentTimeMillis() - SystemClock.elapsedRealtime()) / 1000L));
        obj = TAG;
        (new StringBuilder("getDeviceState: ")).append(MD5(stringbuilder.toString()));
        return MD5(stringbuilder.toString());
    }

    private static ParameterMap getFlashProperties()
    {
        ParameterMap parametermap = new ParameterMap();
        Object obj = new StringBuilder();
        Formatter formatter = new Formatter(((Appendable) (obj)));
        Random random = new Random();
        List list = getFontList();
        StringBuilder stringbuilder = new StringBuilder();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); stringbuilder.append((String)iterator.next())) { }
        formatter.format("%04d", new Object[] {
            Integer.valueOf(random.nextInt(10000))
        });
        parametermap.add("nu", ((StringBuilder) (obj)).toString());
        ((StringBuilder) (obj)).setLength(0);
        formatter.format("%d", new Object[] {
            Integer.valueOf(list.size())
        });
        parametermap.add("ftsn", ((StringBuilder) (obj)).toString());
        ((StringBuilder) (obj)).setLength(0);
        parametermap.add("v", android.os.Build.VERSION.RELEASE.toLowerCase());
        parametermap.add("o", Build.BRAND.toLowerCase());
        parametermap.add("mf", Build.MODEL.toLowerCase());
        parametermap.add("l", Locale.getDefault().getLanguage().toLowerCase());
        parametermap.add("fts", MD5(stringbuilder.toString()).toLowerCase());
        obj = TAG;
        (new StringBuilder("getFlashProperties: ")).append(parametermap.urlEncode());
        formatter.close();
        return parametermap;
    }

    private static List getFontList()
    {
        ArrayList arraylist = new ArrayList();
        File afile[] = (new File("/system/fonts/")).listFiles();
        if (afile != null)
        {
            int j = afile.length;
            int i = 0;
            while (i < j) 
            {
                String s = afile[i].getName();
                if (s.endsWith(".ttf"))
                {
                    arraylist.add(s.subSequence(0, s.lastIndexOf(".ttf")).toString());
                }
                i++;
            }
        }
        return arraylist;
    }

    private THMStatusCode getIPAddressFromServer(String s, String s1, String s2, int i, StringBuilder stringbuilder)
        throws InterruptedException
    {
        s2 = new FetchW(s, s1, s2, i, stringbuilder);
        s1 = new Thread(s2);
        m_request_lock.lockInterruptibly();
        s1.start();
        m_requests.add(s1);
        s1.join(i);
        s = s1;
        if (!s1.isAlive())
        {
            break MISSING_BLOCK_LABEL_66;
        }
        s1.interrupt();
        s = null;
        m_requests.remove(s);
        m_request_lock.unlock();
        if (stringbuilder != null && stringbuilder.length() > 0)
        {
            s = TAG;
            (new StringBuilder("Fetched ")).append(stringbuilder.toString());
            return THMStatusCode.THM_OK;
        }
        break MISSING_BLOCK_LABEL_208;
        s;
        try
        {
            m_requests.remove(s1);
            m_request_lock.unlock();
            throw s;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s1 = TAG;
            throw s;
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        if (m_cancel)
        {
            throw new InterruptedException();
        }
        s = TAG;
        (new StringBuilder("Failed to fetch W: ")).append(((FetchW) (s2)).statusCode.toString());
        if (((FetchW) (s2)).statusCode != THMStatusCode.THM_OK)
        {
            return ((FetchW) (s2)).statusCode;
        } else
        {
            return THMStatusCode.THM_Connection_Error;
        }
        Log.w(TAG, (new StringBuilder("Failed to fetch w: ")).append(((FetchW) (s2)).statusCode.toString()).toString());
        if (((FetchW) (s2)).statusCode != THMStatusCode.THM_OK)
        {
            return ((FetchW) (s2)).statusCode;
        } else
        {
            return THMStatusCode.THM_Connection_Error;
        }
    }

    private static String getInfoAlt(String s, List list)
    {
        String s1;
        String s2;
        StringBuilder stringbuilder;
        stringbuilder = new StringBuilder();
        s1 = null;
        s2 = null;
        if (!(new File(s)).exists()) goto _L2; else goto _L1
_L1:
        s = new BufferedReader(new FileReader(new File(s)));
_L6:
        s1 = s.readLine();
        if (s1 == null) goto _L4; else goto _L3
_L3:
        String as[] = s1.split(":");
        if (as.length == 0) goto _L6; else goto _L5
_L5:
        s2 = as[0].trim();
        if (s2.length() == 0) goto _L6; else goto _L7
_L7:
        s1 = "";
        if (as.length > 1)
        {
            s1 = as[1].trim();
        }
        if (list.contains(s2))
        {
            stringbuilder.append(s1);
        }
          goto _L6
        list;
_L12:
        s1 = s;
        list = TAG;
        if (s != null)
        {
            try
            {
                s.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s = TAG;
            }
        }
_L2:
        return stringbuilder.toString();
_L4:
        try
        {
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s = TAG;
        }
        if (true) goto _L2; else goto _L8
_L8:
        s;
_L10:
        if (s1 != null)
        {
            try
            {
                s1.close();
            }
            // Misplaced declaration of an exception variable
            catch (List list)
            {
                list = TAG;
            }
        }
        throw s;
        list;
        s1 = s;
        s = list;
        if (true) goto _L10; else goto _L9
_L9:
        s;
        s = s2;
        if (true) goto _L12; else goto _L11
_L11:
    }

    private static String getMemInfo()
    {
        Object obj = new ArrayList();
        Collections.addAll(((java.util.Collection) (obj)), new String[] {
            "MemTotal"
        });
        obj = getInfoAlt("/proc/meminfo", ((List) (obj)));
        String s = TAG;
        (new StringBuilder("getMemInfo returned: ")).append(((String) (obj)));
        return ((String) (obj));
    }

    private boolean getTimeZoneInfo()
    {
        Object obj = TimeZone.getDefault();
        if (obj != null)
        {
            m_gmtOffset = ((TimeZone) (obj)).getRawOffset() / 60000;
            m_dstDiff = ((TimeZone) (obj)).getDSTSavings() / 60000;
            obj = TAG;
            (new StringBuilder("getTimeZoneInfo: dstDiff=")).append(m_dstDiff).append(" gmfOffset=").append(m_gmtOffset);
            return true;
        } else
        {
            Log.w(TAG, "getTimeZoneInfo: FAILED");
            return false;
        }
    }

    private static String new_session_id()
    {
        return UUID.randomUUID().toString().toLowerCase().replaceAll("-", "");
    }

    private void parseBrowserInfo(JavaScriptInterface javascriptinterface)
    {
        int i;
        boolean flag = false;
        i = ((flag) ? 1 : 0);
        if ((m_options & 0x20) != 0)
        {
            i = ((flag) ? 1 : 0);
            if (javascriptinterface.returnedValues.size() > 0)
            {
                String s = (String)javascriptinterface.returnedValues.get(0);
                int j = 0 + 1;
                i = j;
                if (s != null)
                {
                    parseBrowserInfo_Plugins(s);
                    i = j;
                }
            }
        }
        if (Thread.currentThread().isInterrupted() || (m_options & 4) == 0 || javascriptinterface.returnedValues.size() <= i) goto _L2; else goto _L1
_L1:
        String s1;
        s1 = (String)javascriptinterface.returnedValues.get(i);
        i++;
        if (s1 == null) goto _L4; else goto _L3
_L3:
        m_mimeTypeCount = Integer.parseInt(s1);
_L6:
        if (m_mimeTypeCount > 0 && javascriptinterface.returnedValues.size() > i)
        {
            m_mimeTypes = (String)javascriptinterface.returnedValues.get(i);
        }
        javascriptinterface = TAG;
        (new StringBuilder("Got mime ")).append(m_mimeTypeCount).append(":").append(m_mimeTypes);
_L2:
        return;
        NumberFormatException numberformatexception;
        numberformatexception;
        Log.e(TAG, "failed to convert", numberformatexception);
_L4:
        m_mimeTypeCount = 0;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void parseBrowserInfo_Plugins(String s)
    {
        m_browserPluginsFromJS = s.replaceAll("(<FIELD_SEP>|<REC_SEP>)", "");
        ArrayList arraylist = new ArrayList();
        s = s.split("<REC_SEP>");
        int j = s.length;
        for (int i = 0; i < j; i++)
        {
            String s1 = s[i];
            if (Thread.currentThread().isInterrupted())
            {
                return;
            }
            HashMap hashmap = new HashMap();
            String as[] = s1.split("<FIELD_SEP>");
            if (as.length == 4)
            {
                hashmap.put("name", as[0]);
                hashmap.put("description", as[1]);
                hashmap.put("filename", as[2]);
                hashmap.put("length", as[3]);
                arraylist.add(hashmap);
            }
        }

        m_browserPluginCount = Integer.toString(arraylist.size());
        s = new StringBuilder();
        s.append(containsPluginNamed("QuickTime Plug-in", "plugin_quicktime", arraylist));
        s.append(containsPluginNamed("Adobe Acrobat", "plugin_adobe_acrobat", arraylist));
        s.append(containsPluginNamed("Java", "plugin_java", arraylist));
        s.append(containsPluginNamed("SVG Viewer", "plugin_svg_viewer", arraylist));
        s.append(containsPluginNamed("Flash", "plugin_flash", arraylist));
        s.append(containsPluginNamed("Windows Media Player", "plugin_windows_media_player", arraylist));
        s.append(containsPluginNamed("Silverlight", "plugin_silverlight", arraylist));
        s.append(containsPluginNamed("Real Player", "plugin_realplayer", arraylist));
        s.append(containsPluginNamed("ShockWave Director", "plugin_shockwave", arraylist));
        s.append(containsPluginNamed("VLC", "plugin_vlc_player", arraylist));
        s.append(containsPluginNamed("DevalVR", "plugin_devalvr", arraylist));
        m_browserPlugins = s.toString();
        s = TAG;
        (new StringBuilder("Got")).append(m_browserPluginCount).append(":").append(m_browserPlugins);
    }

    private void reset()
    {
        m_flashCookie = null;
        m_HTML5Cookie = null;
        m_cookie = null;
        m_gmtOffset = 0;
        m_dstDiff = 0;
        m_screenWidth = 0;
        m_screenHeight = 0;
        m_browserPluginsFromJS = null;
        m_browserPluginCount = "0";
        m_browserPluginsFromJS = null;
        m_browserStringFromJS = null;
        m_mimeTypeCount = 0;
        m_mimeTypes = null;
        m_deviceFingerprint = null;
        m_deviceState = null;
        m_serverReportedIPAndTimestamp = null;
        if (m_TDLocationManager != null)
        {
            m_TDLocationManager.unregister();
        }
    }

    private static String xor(String s, String s1)
    {
        s = (new StringBuilder()).append(s.length()).append("&").append(s).toString();
        int l = s.length();
        StringBuilder stringbuilder = new StringBuilder();
        Formatter formatter = new Formatter(stringbuilder);
        int i1 = s1.length();
        char ac[] = new char[16];
        char[] _tmp = ac;
        ac[0] = '0';
        ac[1] = '1';
        ac[2] = '2';
        ac[3] = '3';
        ac[4] = '4';
        ac[5] = '5';
        ac[6] = '6';
        ac[7] = '7';
        ac[8] = '8';
        ac[9] = '9';
        ac[10] = 'a';
        ac[11] = 'b';
        ac[12] = 'c';
        ac[13] = 'd';
        ac[14] = 'e';
        ac[15] = 'f';
        int i = 0;
        for (int j = 0; j < l; j++)
        {
            char c = s.charAt(j);
            int k = i + 1;
            c = (char)(s1.charAt(i) & 0xa ^ c);
            i = k;
            if (k >= i1)
            {
                i = 0;
            }
            formatter.format("%c", new Object[] {
                Character.valueOf(ac[c >> 4 & 0xf])
            });
            formatter.format("%c", new Object[] {
                Character.valueOf(ac[c & 0xf])
            });
        }

        formatter.close();
        return stringbuilder.toString();
    }

    public void cancel()
    {
        String s = TAG;
        m_cancel = true;
        Object obj;
        obj = TAG;
        m_request_lock.lock();
        if (!m_active)
        {
            break MISSING_BLOCK_LABEL_163;
        }
        obj = TAG;
        interruptThreads();
        if (m_profile_thread != null)
        {
            obj = TAG;
            (new StringBuilder("sending interrupt to profile thread TID: ")).append(m_profile_thread.getId());
            m_profile_thread.interrupt();
        }
        obj = m_requests.iterator();
_L1:
        Object obj1;
        if (!((Iterator) (obj)).hasNext())
        {
            break MISSING_BLOCK_LABEL_120;
        }
        obj1 = (Thread)((Iterator) (obj)).next();
        String s1 = TAG;
        ((Thread) (obj1)).join();
          goto _L1
        InterruptedException interruptedexception1;
        interruptedexception1;
        interruptedexception1 = TAG;
          goto _L1
        boolean flag;
        m_requests.clear();
        if (m_profile_thread == null)
        {
            break MISSING_BLOCK_LABEL_159;
        }
        flag = m_profile_thread.isAlive();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_159;
        }
        Exception exception;
        try
        {
            obj = TAG;
            m_profile_thread.join();
        }
        catch (InterruptedException interruptedexception) { }
        obj = TAG;
        m_request_lock.unlock();
        return;
        exception;
        m_request_lock.unlock();
        throw exception;
    }

    public void completeProfileRequest()
    {
        Object obj;
        Object obj2;
        obj2 = new StringBuilder();
        obj = getIPAddressFromServer(m_fp_server, m_org_id, m_session_id, m_timeout_ms, ((StringBuilder) (obj2)));
        if (obj != THMStatusCode.THM_OK) goto _L2; else goto _L1
_L1:
        m_serverReportedIPAndTimestamp = ((StringBuilder) (obj2)).toString();
        if (m_cancel || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
          goto _L3
_L43:
        obj = TAG;
        m_status = THMStatusCode.THM_Internal_Error;
        if (m_cancel)
        {
            m_status = THMStatusCode.THM_Interrupted_Error;
            Thread.interrupted();
        }
        m_callback_lock.lockInterruptibly();
        if (m_profileNotify != null)
        {
            m_profileNotify.complete();
        }
        if (!m_callback_lock.isHeldByCurrentThread()) goto _L5; else goto _L4
_L4:
        obj = m_callback_lock;
_L51:
        ((ReentrantLock) (obj)).unlock();
_L5:
        m_active = false;
        return;
_L2:
        obj2 = TAG;
        m_status = ((THMStatusCode) (obj));
        if (m_cancel)
        {
            m_status = THMStatusCode.THM_Interrupted_Error;
            Thread.interrupted();
        }
        m_callback_lock.lockInterruptibly();
        if (m_profileNotify != null)
        {
            m_profileNotify.complete();
        }
        if (m_callback_lock.isHeldByCurrentThread())
        {
            m_callback_lock.unlock();
        }
          goto _L5
_L3:
        Object obj3 = null;
        Exception exception;
        obj = TAG;
        if (m_cancel || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
          goto _L6
        m_callback_lock.lockInterruptibly();
        if (m_profileNotify != null)
        {
            m_profileNotify.complete();
        }
        if (!m_callback_lock.isHeldByCurrentThread()) goto _L8; else goto _L7
_L7:
        obj = m_callback_lock;
_L49:
        ((ReentrantLock) (obj)).unlock();
_L8:
        m_active = false;
        throw exception;
_L6:
        if ((m_options & 1) != 0 && (m_options & 0x26) != 0) goto _L10; else goto _L9
_L9:
        getBrowserInfo(m_context, null);
_L12:
        if (m_cancel || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
        break MISSING_BLOCK_LABEL_621;
_L10:
        float f;
        Object obj1;
        Object obj4;
        Object obj5;
        Object obj6;
        int i;
        boolean flag;
        int j;
        boolean flag1;
        long l;
        long l1;
        boolean flag2;
        if (JSExecutor.isBrokenJSInterface() || JSExecutor.hasAsyncInterface())
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        i = 1;
        j = 1;
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_428;
        }
        if ((m_options & 0x20) != 0)
        {
            j = 1 + 1;
        }
        i = j;
        if ((m_options & 4) != 0)
        {
            i = j + 2;
        }
        obj = new CountDownLatch(i);
        obj3 = new Handler(Looper.getMainLooper());
        exception = TAG;
        (new StringBuilder("Firing off getBrowserInfo on UI thread using latch: ")).append(obj.hashCode()).append(" with count: ").append(i);
        if (flag1)
        {
            exception = ((Exception) (obj));
        } else
        {
            exception = null;
        }
        m_jsInterface = new JavaScriptInterface(exception);
        ((Handler) (obj3)).post(new CompleteProfile(this, ((CountDownLatch) (obj))) {

            final TrustDefenderMobile this$0;

            public final void run()
            {
                if (!profile.m_cancel)
                {
                    try
                    {
                        String _tmp = TrustDefenderMobile.TAG;
                        profile.getBrowserInfo(m_context, profile.m_jsInterface);
                        String _tmp1 = TrustDefenderMobile.TAG;
                        (new StringBuilder("status = ")).append(profile.getStatus().toString());
                    }
                    catch (InterruptedException interruptedexception)
                    {
                        String _tmp2 = TrustDefenderMobile.TAG;
                    }
                }
                if (latch != null)
                {
                    latch.countDown();
                }
            }

            
            {
                this$0 = TrustDefenderMobile.this;
                super(trustdefendermobile1, countdownlatch);
            }
        });
        exception = TAG;
        (new StringBuilder("waiting for getBrowserInfo to finished, latch: ")).append(((CountDownLatch) (obj)).getCount()).append(" - ").append(obj.hashCode());
        obj3 = obj;
        if (!flag1) goto _L12; else goto _L11
_L11:
        if (!((CountDownLatch) (obj)).await(10L, TimeUnit.SECONDS))
        {
            break MISSING_BLOCK_LABEL_588;
        }
        parseBrowserInfo(m_jsInterface);
        obj3 = obj;
          goto _L12
        Log.e(TAG, (new StringBuilder("getBrowserInfo no response from UI thread before timeout with latch: ")).append(obj.hashCode()).toString());
        obj3 = obj;
          goto _L12
        obj = TAG;
        if ((m_options & 8) == 0) goto _L14; else goto _L13
_L13:
        obj = TimeZone.getDefault();
        if (obj == null) goto _L16; else goto _L15
_L15:
        m_gmtOffset = ((TimeZone) (obj)).getRawOffset() / 60000;
        m_dstDiff = ((TimeZone) (obj)).getDSTSavings() / 60000;
        obj = TAG;
        (new StringBuilder("getTimeZoneInfo: dstDiff=")).append(m_dstDiff).append(" gmfOffset=").append(m_gmtOffset);
_L14:
        obj4 = m_context.getSharedPreferences("ThreatMetrixMobileSDK", 0);
        exception = ((SharedPreferences) (obj4)).getString("ThreatMetrixMobileSDK", null);
        if (m_cancel)
        {
            throw new InterruptedException();
        }
        break; /* Loop/switch isn't completed */
_L16:
        Log.w(TAG, "getTimeZoneInfo: FAILED");
        if (true) goto _L14; else goto _L17
_L17:
        obj = exception;
        if (exception != null)
        {
            break MISSING_BLOCK_LABEL_828;
        }
        obj = TAG;
        obj = (new BigInteger(64, new SecureRandom())).toString(16);
        exception = ((SharedPreferences) (obj4)).edit();
        exception.putString("ThreatMetrixMobileSDK", ((String) (obj)));
        exception.commit();
        if (m_cancel)
        {
            throw new InterruptedException();
        }
        m_cookie = android.provider.Settings.Secure.getString(m_context.getContentResolver(), "android_id");
        if (m_cookie != null && !m_cookie.equals("9774d56d682e549c") && m_cookie.length() >= 15) goto _L19; else goto _L18
_L18:
        exception = TAG;
        m_cookie = null;
_L26:
        exception = TAG;
        (new StringBuilder("using generated ID for HTML5Cookie:")).append(((String) (obj)));
        m_HTML5Cookie = ((String) (obj));
        m_imei = ((TelephonyManager)m_context.getSystemService("phone")).getDeviceId();
        obj = TAG;
        (new StringBuilder("using getDeviceId for imei: ")).append(m_imei);
_L27:
        if (Build.SERIAL != null) goto _L21; else goto _L20
_L20:
        obj = "";
_L28:
        if (m_imei == null || m_imei.isEmpty() || m_imei.equals("000000000000000")) goto _L23; else goto _L22
_L22:
        exception = (new StringBuilder()).append(((String) (obj)));
        obj = m_imei;
_L29:
        obj = exception.append(((String) (obj))).toString();
        if (m_flashCookie != null) goto _L25; else goto _L24
_L24:
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_1167;
        }
        if (((String) (obj)).isEmpty())
        {
            break MISSING_BLOCK_LABEL_1167;
        }
        m_flashCookie = MD5(((String) (obj)));
_L25:
        if (m_cancel || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
        break MISSING_BLOCK_LABEL_1174;
_L19:
        exception = TAG;
        (new StringBuilder("using ANDROID_ID for cookie:")).append(m_cookie);
          goto _L26
        obj;
        obj = TAG;
          goto _L27
_L21:
        obj = Build.SERIAL;
          goto _L28
_L23:
label0:
        {
            if (m_cookie == null)
            {
                break label0;
            }
            exception = (new StringBuilder()).append(((String) (obj)));
            obj = m_cookie;
        }
          goto _L29
        exception = (new StringBuilder()).append(((String) (obj)));
        if (m_HTML5Cookie != null)
        {
            break MISSING_BLOCK_LABEL_1159;
        }
        obj = "";
          goto _L29
        obj = m_HTML5Cookie;
          goto _L29
        obj = TAG;
          goto _L25
        m_flashCookie = checkLength(m_flashCookie);
        if (m_cancel || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
        m_HTML5Cookie = checkLength(m_HTML5Cookie);
        if (m_cancel || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
        m_cookie = checkLength(m_cookie);
        if (m_cancel || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
        if ((m_options & 0x10) != 0)
        {
            obj = ((WindowManager)m_context.getSystemService("window")).getDefaultDisplay();
            m_screenWidth = ((Display) (obj)).getWidth();
            m_screenHeight = ((Display) (obj)).getHeight();
        }
        if (m_cancel || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
        obj = new StringBuilder();
        exception = new StatWrapper(Environment.getDataDirectory().getPath());
        l = exception.getBlockSize();
        l1 = exception.getAvailableBlocks();
        if (l1 * l == 0L)
        {
            break MISSING_BLOCK_LABEL_4186;
        }
        f = ((float)l1 * (float)l) / 1024F / 1024F / 1024F;
_L52:
        ((StringBuilder) (obj)).append(f);
        ((StringBuilder) (obj)).append(" - ");
        ((StringBuilder) (obj)).append(Long.toString((System.currentTimeMillis() - SystemClock.elapsedRealtime()) / 1000L));
        exception = TAG;
        (new StringBuilder("getDeviceState: ")).append(MD5(((StringBuilder) (obj)).toString()));
        m_deviceState = MD5(((StringBuilder) (obj)).toString());
        if (m_cancel || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
        obj4 = m_context;
        obj = TAG;
        exception = new StringBuilder();
        if (!Thread.currentThread().isInterrupted()) goto _L31; else goto _L30
_L30:
        obj = "";
_L33:
        m_deviceFingerprint = ((String) (obj));
        if (m_cancel || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
          goto _L32
_L31:
        obj5 = (TelephonyManager)((Context) (obj4)).getSystemService("phone");
        obj = "Unknown";
        if (((TelephonyManager) (obj5)).getPhoneType() == 1)
        {
            obj = ((TelephonyManager) (obj5)).getNetworkOperatorName();
        }
        exception.append(((String) (obj)));
        exception.append(((TelephonyManager) (obj5)).getSimCountryIso());
        obj = new StatFs(Environment.getDataDirectory().getPath());
        l = ((StatFs) (obj)).getBlockSize();
        exception.append(((float)(long)((StatFs) (obj)).getBlockCount() * (float)l) / 1024F / 1024F / 1024F);
        obj = ((WindowManager)((Context) (obj4)).getSystemService("window")).getDefaultDisplay();
        exception.append(((Display) (obj)).getWidth()).append("x").append(((Display) (obj)).getHeight());
        obj = TAG;
        obj = new ArrayList();
        Collections.addAll(((java.util.Collection) (obj)), new String[] {
            "Processor", "BogoMips", "Hardware", "Serial"
        });
        obj = getInfoAlt("/proc/cpuinfo", ((List) (obj)));
        obj4 = TAG;
        (new StringBuilder("getCPUInfo returned: ")).append(((String) (obj)));
        exception.append(((String) (obj)));
        obj = TAG;
        obj = new ArrayList();
        Collections.addAll(((java.util.Collection) (obj)), new String[] {
            "MemTotal"
        });
        obj = getInfoAlt("/proc/meminfo", ((List) (obj)));
        obj4 = TAG;
        (new StringBuilder("getMemInfo returned: ")).append(((String) (obj)));
        exception.append(((String) (obj)));
        exception.append(Build.DEVICE).append(" ").append(Build.MODEL).append(" ").append(Build.PRODUCT).append(" ").append(Build.MANUFACTURER).append(" ").append(android.os.Build.VERSION.RELEASE);
        obj = TAG;
        (new StringBuilder("getDeviceFingerprint returned: hash(")).append(exception.toString()).append(")");
        obj = MD5(exception.toString());
          goto _L33
_L32:
        exception = buildJavaScriptParameters(m_options, m_org_id);
        if (obj3 == null)
        {
            break MISSING_BLOCK_LABEL_1978;
        }
        if (!((CountDownLatch) (obj3)).await(m_timeout_ms, TimeUnit.MILLISECONDS))
        {
            Log.e(TAG, "no response from UI thread before timeout, will not use browser info");
        }
        obj3 = new StringBuilder("lq=");
        if (m_browserStringFromJS != null) goto _L35; else goto _L34
_L34:
        obj = "";
_L41:
        obj3 = xor(((StringBuilder) (obj3)).append(((String) (obj))).toString(), m_session_id);
        obj = new HashMap();
        if (m_browserStringFromJS != null && !m_browserStringFromJS.isEmpty())
        {
            obj4 = TAG;
            (new StringBuilder("Setting User-Agent to ")).append(m_browserStringFromJS);
            ((HashMap) (obj)).put("User-Agent", m_browserStringFromJS);
        }
        if (m_cookie != null) goto _L37; else goto _L36
_L36:
        ((HashMap) (obj)).put("Cookie", "thx_guid=");
_L42:
        ((HashMap) (obj)).put("Referer", m_referrerURL);
        if ((m_options & 0x40) == 0) goto _L39; else goto _L38
_L38:
        obj4 = (new ParameterMap()).add("org_id", m_org_id).add("session_id", m_session_id).add("m", "1");
        obj5 = (new ParameterMap()).add("org_id", m_org_id).add("session_id", m_session_id).add("m", "2");
        if ((m_options & 0x80) == 0)
        {
            ((ParameterMap) (obj4)).add("h", "0");
            ((ParameterMap) (obj5)).add("h", "0");
        }
        m_request_lock.lockInterruptibly();
        m_requests.add(new Thread(new HttpGet("https", m_fp_server, "/fp/clear.png", ((ParameterMap) (obj4)), m_timeout_ms, ((java.util.Map) (obj)), this)));
        m_requests.add(new Thread(new HttpGet("https", m_fp_server, "/fp/clear.png", ((ParameterMap) (obj5)), m_timeout_ms, ((java.util.Map) (obj)), this)));
        if (m_request_lock.isHeldByCurrentThread())
        {
            m_request_lock.unlock();
        }
        obj4 = new ParameterMap();
        ((ParameterMap) (obj4)).add("org_id", m_org_id);
        ((ParameterMap) (obj4)).add("session_id", m_session_id);
        ((ParameterMap) (obj4)).add("h", "1");
        obj5 = new StringBuilder();
        obj6 = new Formatter(((Appendable) (obj5)));
        ((Formatter) (obj6)).format("%16s%32s", new Object[] {
            m_serverReportedIPAndTimestamp, m_HTML5Cookie
        });
        ((Formatter) (obj6)).close();
        ((ParameterMap) (obj4)).putAll((new ParameterMap()).add("la", ((StringBuilder) (obj5)).toString()));
        m_request_lock.lockInterruptibly();
        m_requests.add(new Thread(new HttpGet("https", m_fp_server, "/fp/clear.png", ((ParameterMap) (obj4)), m_timeout_ms, ((java.util.Map) (obj)), this)));
        if (m_request_lock.isHeldByCurrentThread())
        {
            m_request_lock.unlock();
        }
        obj4 = new ParameterMap();
        ((ParameterMap) (obj4)).add("org_id", m_org_id);
        ((ParameterMap) (obj4)).add("session_id", m_session_id);
        ((ParameterMap) (obj4)).add("ja", exception);
        ((ParameterMap) (obj4)).add("jb", ((String) (obj3)));
        m_request_lock.lockInterruptibly();
        m_requests.add(new Thread(new HttpGet("https", m_fp_server, "/fp/clear.png", ((ParameterMap) (obj4)), m_timeout_ms, ((java.util.Map) (obj)), this)));
        if (m_request_lock.isHeldByCurrentThread())
        {
            m_request_lock.unlock();
        }
        if (m_flashCookie == null)
        {
            break MISSING_BLOCK_LABEL_2876;
        }
        exception = new ParameterMap();
        exception.add("org_id", m_org_id);
        exception.add("session_id", m_session_id);
        obj3 = new StringBuilder();
        obj4 = new ParameterMap();
        obj5 = new Random();
        obj6 = new Formatter(((Appendable) (obj3)));
        ((Formatter) (obj6)).format("%04d", new Object[] {
            Integer.valueOf(((Random) (obj5)).nextInt(10000))
        });
        ((ParameterMap) (obj4)).add("nu", ((StringBuilder) (obj3)).toString());
        ((StringBuilder) (obj3)).setLength(0);
        ((Formatter) (obj6)).format("%16s%32s", new Object[] {
            m_serverReportedIPAndTimestamp, m_flashCookie
        });
        ((ParameterMap) (obj4)).add("fc", ((StringBuilder) (obj3)).toString());
        ((Formatter) (obj6)).close();
        exception.putAll(((java.util.Map) (obj4)));
        m_request_lock.lockInterruptibly();
        m_requests.add(new Thread(new HttpGet("https", m_fp_server, "/fp/clear.png", exception, m_timeout_ms, ((java.util.Map) (obj)), this)));
        if (m_request_lock.isHeldByCurrentThread())
        {
            m_request_lock.unlock();
        }
        if (m_cancel || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
          goto _L40
_L35:
        obj = m_browserStringFromJS;
          goto _L41
_L37:
        ((HashMap) (obj)).put("Cookie", (new StringBuilder("thx_guid=")).append(m_cookie).toString());
          goto _L42
        obj;
        try
        {
            if (m_request_lock.isHeldByCurrentThread())
            {
                m_request_lock.unlock();
            }
            throw obj;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        finally
        {
            if (m_cancel)
            {
                m_status = THMStatusCode.THM_Interrupted_Error;
                Thread.interrupted();
            }
        }
          goto _L43
        obj;
        if (m_request_lock.isHeldByCurrentThread())
        {
            m_request_lock.unlock();
        }
        throw obj;
        obj;
        if (m_request_lock.isHeldByCurrentThread())
        {
            m_request_lock.unlock();
        }
        throw obj;
        obj;
        if (m_request_lock.isHeldByCurrentThread())
        {
            m_request_lock.unlock();
        }
        throw obj;
_L40:
        exception = new ParameterMap();
        exception.add("org_id", m_org_id);
        exception.add("session_id", m_session_id);
        exception.putAll(getFlashProperties());
        m_request_lock.lockInterruptibly();
        m_requests.add(new Thread(new HttpGet("https", m_fp_server, "/fp/clear.png", exception, m_timeout_ms, ((java.util.Map) (obj)), this)));
        if (m_request_lock.isHeldByCurrentThread())
        {
            m_request_lock.unlock();
        }
_L46:
        i = m_options;
        if ((i & 0x40) == 0)
        {
            break MISSING_BLOCK_LABEL_3202;
        }
        m_request_lock.lockInterruptibly();
        m_requests.add(new Thread(new PutXML(m_fp_server, m_org_id, m_session_id, m_serverReportedIPAndTimestamp, m_timeout_ms, this)));
        if (m_request_lock.isHeldByCurrentThread())
        {
            m_request_lock.unlock();
        }
        m_request_lock.lockInterruptibly();
        obj = m_requests.iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            exception = (Thread)((Iterator) (obj)).next();
            if (m_cancel)
            {
                break;
            }
            exception.start();
        } while (true);
        break MISSING_BLOCK_LABEL_3708;
        obj;
        if (m_request_lock.isHeldByCurrentThread())
        {
            m_request_lock.unlock();
        }
        throw obj;
        obj;
        if (m_request_lock.isHeldByCurrentThread())
        {
            m_request_lock.unlock();
        }
        throw obj;
_L39:
        obj4 = new StringBuilder();
        obj5 = getFlashProperties().entrySet().iterator();
        flag = true;
_L44:
        if (!((Iterator) (obj5)).hasNext())
        {
            break MISSING_BLOCK_LABEL_3416;
        }
        if (m_cancel || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
        obj6 = (java.util.Map.Entry)((Iterator) (obj5)).next();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_3375;
        }
        ((StringBuilder) (obj4)).append("&");
        flag = false;
        ((StringBuilder) (obj4)).append((String)((java.util.Map.Entry) (obj6)).getKey()).append("=").append((String)((java.util.Map.Entry) (obj6)).getValue());
          goto _L44
        obj5 = new StringBuilder();
        ((StringBuilder) (obj5)).append(((StringBuilder) (obj4)).toString());
        if (m_HTML5Cookie != null)
        {
            ((StringBuilder) (obj5)).append("&ls=");
            ((StringBuilder) (obj5)).append(m_HTML5Cookie);
        }
        if (m_flashCookie != null)
        {
            ((StringBuilder) (obj5)).append("&fg=");
            ((StringBuilder) (obj5)).append(m_flashCookie);
        }
        if (m_cancel || Thread.currentThread().isInterrupted())
        {
            throw new InterruptedException();
        }
        obj4 = new ParameterMap();
        ((ParameterMap) (obj4)).add("org_id", m_org_id);
        ((ParameterMap) (obj4)).add("session_id", m_session_id);
        ((ParameterMap) (obj4)).add("ja", exception);
        ((ParameterMap) (obj4)).add("jb", ((String) (obj3)));
        ((ParameterMap) (obj4)).add("jc", xor(((StringBuilder) (obj5)).toString(), m_session_id));
        ((ParameterMap) (obj4)).add("h", "1");
        m_request_lock.lockInterruptibly();
        m_requests.add(new Thread(new HttpGet("https", m_fp_server, "/fp/clear.png", ((ParameterMap) (obj4)), m_timeout_ms, ((java.util.Map) (obj)), this)));
        if (!m_request_lock.isHeldByCurrentThread()) goto _L46; else goto _L45
_L45:
        m_request_lock.unlock();
          goto _L46
        obj;
        if (m_request_lock.isHeldByCurrentThread())
        {
            m_request_lock.unlock();
        }
        throw obj;
        obj;
        if (m_request_lock.isHeldByCurrentThread())
        {
            m_request_lock.unlock();
        }
        throw obj;
        if (m_request_lock.isHeldByCurrentThread())
        {
            m_request_lock.unlock();
        }
        m_request_lock.lockInterruptibly();
        obj = m_requests.iterator();
_L47:
        if (!((Iterator) (obj)).hasNext())
        {
            break MISSING_BLOCK_LABEL_3812;
        }
        exception = (Thread)((Iterator) (obj)).next();
        if (m_cancel)
        {
            break MISSING_BLOCK_LABEL_3812;
        }
        flag2 = Thread.currentThread().isInterrupted();
        if (flag2)
        {
            break MISSING_BLOCK_LABEL_3812;
        }
        exception.join();
          goto _L47
        obj;
        if (m_status == THMStatusCode.THM_NotYet)
        {
            m_status = THMStatusCode.THM_Connection_Error;
        }
        interruptThreads();
        obj = TAG;
        if (m_request_lock.isHeldByCurrentThread())
        {
            m_request_lock.unlock();
        }
        if (m_status == THMStatusCode.THM_NotYet)
        {
            m_status = THMStatusCode.THM_OK;
        }
        m_request_lock.lockInterruptibly();
        m_requests.clear();
        if (m_request_lock.isHeldByCurrentThread())
        {
            m_request_lock.unlock();
        }
        obj = TAG;
        if (m_cancel)
        {
            m_status = THMStatusCode.THM_Interrupted_Error;
            Thread.interrupted();
        }
        m_callback_lock.lockInterruptibly();
        if (m_profileNotify != null)
        {
            m_profileNotify.complete();
        }
        if (m_callback_lock.isHeldByCurrentThread())
        {
            m_callback_lock.unlock();
        }
          goto _L5
        obj;
        if (m_request_lock.isHeldByCurrentThread())
        {
            m_request_lock.unlock();
        }
        throw obj;
        obj;
        if (m_request_lock.isHeldByCurrentThread())
        {
            m_request_lock.unlock();
        }
        throw obj;
        obj;
        Log.e(TAG, "profilNotify callback interrupted", ((Throwable) (obj)));
        if (!m_callback_lock.isHeldByCurrentThread()) goto _L8; else goto _L48
_L48:
        obj = m_callback_lock;
          goto _L49
        obj;
        if (m_callback_lock.isHeldByCurrentThread())
        {
            m_callback_lock.unlock();
        }
        throw obj;
        obj1;
        Log.e(TAG, "profilNotify callback interrupted", ((Throwable) (obj1)));
        if (!m_callback_lock.isHeldByCurrentThread()) goto _L5; else goto _L50
_L50:
        obj1 = m_callback_lock;
          goto _L51
        obj1;
        if (m_callback_lock.isHeldByCurrentThread())
        {
            m_callback_lock.unlock();
        }
        throw obj1;
        obj1;
        Log.e(TAG, "profilNotify callback interrupted", ((Throwable) (obj1)));
        if (m_callback_lock.isHeldByCurrentThread())
        {
            m_callback_lock.unlock();
        }
          goto _L5
        obj1;
        if (m_callback_lock.isHeldByCurrentThread())
        {
            m_callback_lock.unlock();
        }
        throw obj1;
        obj1;
        Log.e(TAG, "profilNotify callback interrupted", ((Throwable) (obj1)));
        if (m_callback_lock.isHeldByCurrentThread())
        {
            m_callback_lock.unlock();
        }
          goto _L5
        obj1;
        if (m_callback_lock.isHeldByCurrentThread())
        {
            m_callback_lock.unlock();
        }
        throw obj1;
        f = 1.0F;
          goto _L52
    }

    public THMStatusCode doProfileRequest(Context context, String s, String s1, String s2, int i)
    {
        m_request_lock.lockInterruptibly();
        String s3 = TAG;
        (new StringBuilder("starting profile request using - ")).append(version).append(" with options ").append(i);
        if (!m_active)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        context = THMStatusCode.THM_NotYet;
        m_request_lock.unlock();
        return context;
        if ((i & 1) != 0)
        {
            break MISSING_BLOCK_LABEL_112;
        }
        Log.w(TAG, "Synchronous is deprecated, please switch to ASYNC");
        if (Looper.getMainLooper().getThread() == Thread.currentThread())
        {
            break MISSING_BLOCK_LABEL_112;
        }
        Log.e(TAG, "Synchronous only works when called from the UI thread");
        context = THMStatusCode.THM_Internal_Error;
        m_request_lock.unlock();
        return context;
        m_flashCookie = null;
        m_HTML5Cookie = null;
        m_cookie = null;
        m_gmtOffset = 0;
        m_dstDiff = 0;
        m_screenWidth = 0;
        m_screenHeight = 0;
        m_browserPluginsFromJS = null;
        m_browserPluginCount = "0";
        m_browserPluginsFromJS = null;
        m_browserStringFromJS = null;
        m_mimeTypeCount = 0;
        m_mimeTypes = null;
        m_deviceFingerprint = null;
        m_deviceState = null;
        m_serverReportedIPAndTimestamp = null;
        if (m_TDLocationManager != null)
        {
            m_TDLocationManager.unregister();
        }
        m_cancel = false;
        m_status = THMStatusCode.THM_NotYet;
        if (m_requests.size() > 0)
        {
            String s4 = TAG;
            interruptThreads();
        }
        m_requests.clear();
        String s5;
        s5 = s1;
        if (s1 == null)
        {
            s5 = "h.online-metrix.net";
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_270;
        }
        if (s.length() == 8)
        {
            break MISSING_BLOCK_LABEL_293;
        }
        Log.e(TAG, "Invalid org_id");
        context = THMStatusCode.THM_InvalidOrgID;
        m_request_lock.unlock();
        return context;
        m_active = true;
        if (m_generate_session_id || m_session_id == null)
        {
            m_session_id = UUID.randomUUID().toString().toLowerCase().replaceAll("-", "");
        }
        m_generate_session_id = true;
        m_referrerURL = (new StringBuilder("http://")).append(context.getPackageName()).toString();
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_467;
        }
        if (s2.length() <= 0)
        {
            break MISSING_BLOCK_LABEL_467;
        }
        m_url = s2;
        if (s2.compareToIgnoreCase(m_referrerURL) == 0)
        {
            m_url = (new StringBuilder()).append(s2).append("mobile").toString();
        }
_L1:
        m_options = i;
        m_org_id = s;
        m_fp_server = s5;
        m_context = context;
        if ((m_options & 1) != 0)
        {
            break MISSING_BLOCK_LABEL_533;
        }
        completeProfileRequest();
        context = m_status;
        m_request_lock.unlock();
        return context;
        m_url = (new StringBuilder("http://")).append(context.getPackageName()).append("/mobile").toString();
          goto _L1
        context;
        if (m_profile_thread != null)
        {
            m_profile_thread.interrupt();
        }
        m_active = false;
        context = THMStatusCode.THM_Interrupted_Error;
        m_request_lock.unlock();
        return context;
        m_profile_thread = new Thread(new CompleteProfile(this, null));
        m_profile_thread.start();
        context = THMStatusCode.THM_OK;
        m_request_lock.unlock();
        return context;
        context;
        m_request_lock.unlock();
        throw context;
    }

    public String getSessionID()
    {
        return m_session_id;
    }

    public THMStatusCode getStatus()
    {
        String s = TAG;
        (new StringBuilder("getStatus returns: ")).append(m_status.toString());
        return m_status;
    }

    public int getTimeout()
    {
        return m_timeout_ms / 1000;
    }

    final void interruptThreads()
    {
        String s = TAG;
        this;
        JVM INSTR monitorenter ;
        Thread thread;
        for (Iterator iterator = m_requests.iterator(); iterator.hasNext(); thread.interrupt())
        {
            thread = (Thread)iterator.next();
            String s1 = TAG;
            (new StringBuilder("sending interrupt to TID: ")).append(thread.getId());
        }

        break MISSING_BLOCK_LABEL_67;
        Exception exception;
        exception;
        throw exception;
        this;
        JVM INSTR monitorexit ;
    }

    public void pauseLocationServices(boolean flag)
    {
        if (flag)
        {
            m_TDLocationManager.pause();
            return;
        } else
        {
            m_TDLocationManager.resume();
            return;
        }
    }

    public boolean registerLocationServices(Context context)
    {
        return m_TDLocationManager.registerLocationServices(context, 0xdbba0L, 0x36ee80L, 1);
    }

    public boolean registerLocationServices(Context context, long l, long l1, int i)
    {
        return m_TDLocationManager.registerLocationServices(context, l, l1, i);
    }

    public void setCompletionNotifier(ProfileNotify profilenotify)
        throws InterruptedException
    {
        m_callback_lock.lockInterruptibly();
        m_profileNotify = profilenotify;
        if (m_callback_lock.isHeldByCurrentThread())
        {
            m_callback_lock.unlock();
        }
        return;
        profilenotify;
        if (m_callback_lock.isHeldByCurrentThread())
        {
            m_callback_lock.unlock();
        }
        throw profilenotify;
    }

    public void setCustomAttributes(List list)
    {
        customAttributes = new ArrayList(list);
    }

    public void setLocation(Location location)
    {
        m_TDLocationManager.setLocation(location);
    }

    public void setSessionID(String s)
    {
        if (m_session_id != s)
        {
            if (s == null)
            {
                m_session_id = null;
            } else
            {
                m_session_id = s;
            }
        }
        if (m_session_id != null)
        {
            m_generate_session_id = false;
        }
    }

    final void setStatus(THMStatusCode thmstatuscode)
    {
        m_status = thmstatuscode;
    }

    public void setTimeout(int i)
    {
        m_timeout_ms = i * 1000;
    }

    public void tidyUp()
    {
        m_TDLocationManager.unregister();
        cancel();
    }






}
