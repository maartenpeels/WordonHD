// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.UUID;
import org.w3c.dom.Document;

// Referenced classes of package com.tapjoy:
//            TapjoyUtil, TapjoyAwardPointsNotifier, TapjoyLog, TapjoyEarnedPointsNotifier, 
//            TapjoyNotifier, TapjoySpendPointsNotifier, TapjoyURLConnection, TapjoyConnectCore, 
//            TapjoyHttpURLResponse

public class TJPoints
{

    private static final String TAG = "TapjoyPoints";
    private static TapjoyAwardPointsNotifier tapjoyAwardPointsNotifier;
    private static TapjoyEarnedPointsNotifier tapjoyEarnedPointsNotifier;
    private static TapjoyNotifier tapjoyNotifier;
    private static TapjoySpendPointsNotifier tapjoySpendPointsNotifier;
    int awardTapPoints;
    Context context;
    String spendTapPoints;

    public TJPoints(Context context1)
    {
        spendTapPoints = null;
        awardTapPoints = 0;
        context = context1;
    }

    private boolean handleAwardPointsResponse(String s)
    {
        s = TapjoyUtil.buildDocument(s);
        if (s != null)
        {
            String s1 = TapjoyUtil.getNodeTrimValue(s.getElementsByTagName("Success"));
            if (s1 != null && s1.equals("true"))
            {
                s1 = TapjoyUtil.getNodeTrimValue(s.getElementsByTagName("TapPoints"));
                s = TapjoyUtil.getNodeTrimValue(s.getElementsByTagName("CurrencyName"));
                if (s1 != null && s != null)
                {
                    saveTapPointsTotal(Integer.parseInt(s1));
                    tapjoyAwardPointsNotifier.getAwardPointsResponse(s, Integer.parseInt(s1));
                    return true;
                }
                TapjoyLog.e("TapjoyPoints", "Invalid XML: Missing tags.");
            } else
            {
                if (s1 != null && s1.endsWith("false"))
                {
                    s = TapjoyUtil.getNodeTrimValue(s.getElementsByTagName("Message"));
                    TapjoyLog.i("TapjoyPoints", s);
                    tapjoyAwardPointsNotifier.getAwardPointsResponseFailed(s);
                    return true;
                }
                TapjoyLog.e("TapjoyPoints", "Invalid XML: Missing <Success> tag.");
            }
        }
        return false;
    }

    private boolean handleGetPointsResponse(String s)
    {
        this;
        JVM INSTR monitorenter ;
        s = TapjoyUtil.buildDocument(s);
        if (s == null) goto _L2; else goto _L1
_L1:
        String s1 = TapjoyUtil.getNodeTrimValue(s.getElementsByTagName("Success"));
        if (s1 == null) goto _L4; else goto _L3
_L3:
        if (!s1.equals("true")) goto _L4; else goto _L5
_L5:
        s1 = TapjoyUtil.getNodeTrimValue(s.getElementsByTagName("TapPoints"));
        s = TapjoyUtil.getNodeTrimValue(s.getElementsByTagName("CurrencyName"));
        if (s1 == null || s == null) goto _L7; else goto _L6
_L6:
        int i;
        int j;
        i = Integer.parseInt(s1);
        j = getLocalTapPointsTotal();
        if (tapjoyEarnedPointsNotifier == null || j == -9999 || i <= j)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        TapjoyLog.i("TapjoyPoints", (new StringBuilder()).append("earned: ").append(i - j).toString());
        tapjoyEarnedPointsNotifier.earnedTapPoints(i - j);
        saveTapPointsTotal(Integer.parseInt(s1));
        tapjoyNotifier.getUpdatePoints(s, Integer.parseInt(s1));
        boolean flag = true;
_L9:
        this;
        JVM INSTR monitorexit ;
        return flag;
        s;
        TapjoyLog.e("TapjoyPoints", (new StringBuilder()).append("Error parsing XML and calling notifier: ").append(s.toString()).toString());
          goto _L2
_L7:
        TapjoyLog.e("TapjoyPoints", "Invalid XML: Missing tags.");
          goto _L2
        s;
        throw s;
_L4:
        TapjoyLog.e("TapjoyPoints", "Invalid XML: Missing <Success> tag.");
_L2:
        flag = false;
        if (true) goto _L9; else goto _L8
_L8:
    }

    private boolean handleSpendPointsResponse(String s)
    {
        s = TapjoyUtil.buildDocument(s);
        if (s != null)
        {
            String s1 = TapjoyUtil.getNodeTrimValue(s.getElementsByTagName("Success"));
            if (s1 != null && s1.equals("true"))
            {
                s1 = TapjoyUtil.getNodeTrimValue(s.getElementsByTagName("TapPoints"));
                s = TapjoyUtil.getNodeTrimValue(s.getElementsByTagName("CurrencyName"));
                if (s1 != null && s != null)
                {
                    saveTapPointsTotal(Integer.parseInt(s1));
                    tapjoySpendPointsNotifier.getSpendPointsResponse(s, Integer.parseInt(s1));
                    return true;
                }
                TapjoyLog.e("TapjoyPoints", "Invalid XML: Missing tags.");
            } else
            {
                if (s1 != null && s1.endsWith("false"))
                {
                    s = TapjoyUtil.getNodeTrimValue(s.getElementsByTagName("Message"));
                    TapjoyLog.i("TapjoyPoints", s);
                    tapjoySpendPointsNotifier.getSpendPointsResponseFailed(s);
                    return true;
                }
                TapjoyLog.e("TapjoyPoints", "Invalid XML: Missing <Success> tag.");
            }
        }
        return false;
    }

    public void awardTapPoints(int i, TapjoyAwardPointsNotifier tapjoyawardpointsnotifier)
    {
        if (i < 0)
        {
            TapjoyLog.e("TapjoyPoints", "spendTapPoints error: amount must be a positive number");
            return;
        } else
        {
            awardTapPoints = i;
            tapjoyAwardPointsNotifier = tapjoyawardpointsnotifier;
            (new Thread(new Runnable() {

                final TJPoints this$0;

                public void run()
                {
                    boolean flag = false;
                    Object obj = UUID.randomUUID().toString();
                    long l = System.currentTimeMillis() / 1000L;
                    java.util.Map map = TapjoyConnectCore.getGenericURLParams();
                    TapjoyUtil.safePut(map, "tap_points", String.valueOf(awardTapPoints), true);
                    TapjoyUtil.safePut(map, "guid", ((String) (obj)), true);
                    TapjoyUtil.safePut(map, "timestamp", String.valueOf(l), true);
                    TapjoyUtil.safePut(map, "verifier", TapjoyConnectCore.getAwardPointsVerifier(l, awardTapPoints, ((String) (obj))), true);
                    obj = (new TapjoyURLConnection()).getResponseFromURL((new StringBuilder()).append(TapjoyConnectCore.getHostURL()).append("points/award?").toString(), map);
                    if (((TapjoyHttpURLResponse) (obj)).response != null)
                    {
                        flag = handleAwardPointsResponse(((TapjoyHttpURLResponse) (obj)).response);
                    }
                    if (!flag)
                    {
                        TJPoints.tapjoyAwardPointsNotifier.getAwardPointsResponseFailed("Failed to award points.");
                    }
                }

            
            {
                this$0 = TJPoints.this;
                super();
            }
            })).start();
            return;
        }
    }

    public int getLocalTapPointsTotal()
    {
        return context.getSharedPreferences("tjcPrefrences", 0).getInt("last_tap_points", -9999);
    }

    public void getTapPoints(TapjoyNotifier tapjoynotifier)
    {
        tapjoyNotifier = tapjoynotifier;
        (new Thread(new Runnable() {

            final TJPoints this$0;

            public void run()
            {
                boolean flag = false;
                TapjoyHttpURLResponse tapjoyhttpurlresponse = (new TapjoyURLConnection()).getResponseFromURL((new StringBuilder()).append(TapjoyConnectCore.getHostURL()).append("get_vg_store_items/user_account?").toString(), TapjoyConnectCore.getURLParams());
                if (tapjoyhttpurlresponse.response != null)
                {
                    flag = handleGetPointsResponse(tapjoyhttpurlresponse.response);
                }
                if (!flag)
                {
                    TJPoints.tapjoyNotifier.getUpdatePointsFailed("Failed to retrieve points from server");
                }
            }

            
            {
                this$0 = TJPoints.this;
                super();
            }
        })).start();
    }

    public void saveTapPointsTotal(int i)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("tjcPrefrences", 0).edit();
        editor.putInt("last_tap_points", i);
        editor.commit();
    }

    public void setEarnedPointsNotifier(TapjoyEarnedPointsNotifier tapjoyearnedpointsnotifier)
    {
        tapjoyEarnedPointsNotifier = tapjoyearnedpointsnotifier;
    }

    public void spendTapPoints(int i, TapjoySpendPointsNotifier tapjoyspendpointsnotifier)
    {
        if (i < 0)
        {
            TapjoyLog.e("TapjoyPoints", "spendTapPoints error: amount must be a positive number");
            return;
        } else
        {
            spendTapPoints = (new StringBuilder()).append("").append(i).toString();
            tapjoySpendPointsNotifier = tapjoyspendpointsnotifier;
            (new Thread(new Runnable() {

                final TJPoints this$0;

                public void run()
                {
                    boolean flag = false;
                    Object obj = TapjoyConnectCore.getURLParams();
                    TapjoyUtil.safePut(((java.util.Map) (obj)), "tap_points", spendTapPoints, true);
                    obj = (new TapjoyURLConnection()).getResponseFromURL((new StringBuilder()).append(TapjoyConnectCore.getHostURL()).append("points/spend?").toString(), ((java.util.Map) (obj)));
                    if (((TapjoyHttpURLResponse) (obj)).response != null)
                    {
                        flag = handleSpendPointsResponse(((TapjoyHttpURLResponse) (obj)).response);
                    }
                    if (!flag)
                    {
                        TJPoints.tapjoySpendPointsNotifier.getSpendPointsResponseFailed("Failed to spend points.");
                    }
                }

            
            {
                this$0 = TJPoints.this;
                super();
            }
            })).start();
            return;
        }
    }






}
