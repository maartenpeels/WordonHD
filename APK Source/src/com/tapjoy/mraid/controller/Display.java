// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.controller;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.webkit.URLUtil;
import com.tapjoy.TapjoyLog;
import com.tapjoy.mraid.util.ConfigBroadcastReceiver;
import com.tapjoy.mraid.view.MraidView;
import java.lang.reflect.Field;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tapjoy.mraid.controller:
//            Abstract

public class Display extends Abstract
{

    private static final String TAG = "MRAID Display";
    private boolean bMaxSizeSet;
    private Context context;
    private ConfigBroadcastReceiver mBroadCastReceiver;
    private float mDensity;
    private int mMaxHeight;
    private int mMaxWidth;
    private WindowManager mWindowManager;

    public Display(MraidView mraidview, Context context1)
    {
        super(mraidview, context1);
        bMaxSizeSet = false;
        mMaxWidth = -1;
        mMaxHeight = -1;
        context = context1;
        mraidview = new DisplayMetrics();
        mWindowManager = (WindowManager)context1.getSystemService("window");
        mWindowManager.getDefaultDisplay().getMetrics(mraidview);
        mDensity = ((DisplayMetrics) (mraidview)).density;
    }

    private Abstract.Dimensions getDeviceDimensions(Abstract.Dimensions dimensions1)
    {
        dimensions1.width = (int)Math.ceil(mDensity * (float)dimensions1.width);
        dimensions1.height = (int)Math.ceil(mDensity * (float)dimensions1.height);
        dimensions1.x = (int)((float)dimensions1.x * mDensity);
        dimensions1.y = (int)((float)dimensions1.y * mDensity);
        if (dimensions1.height < 0)
        {
            dimensions1.height = mMraidView.getHeight();
        }
        if (dimensions1.width < 0)
        {
            dimensions1.width = mMraidView.getWidth();
        }
        int ai[] = new int[2];
        mMraidView.getLocationInWindow(ai);
        if (dimensions1.x < 0)
        {
            dimensions1.x = ai[0];
        }
        if (dimensions1.y < 0)
        {
            dimensions1.y = ai[1] - 0;
        }
        return dimensions1;
    }

    public void close()
    {
        TapjoyLog.d("MRAID Display", "close");
        mMraidView.close();
    }

    public String dimensions()
    {
        return (new StringBuilder()).append("{ \"top\" :").append((int)((float)mMraidView.getTop() / mDensity)).append(",").append("\"left\" :").append((int)((float)mMraidView.getLeft() / mDensity)).append(",").append("\"bottom\" :").append((int)((float)mMraidView.getBottom() / mDensity)).append(",").append("\"right\" :").append((int)((float)mMraidView.getRight() / mDensity)).append("}").toString();
    }

    public void expand(String s, String s1)
    {
        TapjoyLog.d("MRAID Display", (new StringBuilder()).append("expand: properties: ").append(s1).append(" url: ").append(s).toString());
        try
        {
            Object obj = new JSONObject(s1);
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("width", ((JSONObject) (obj)).get("width"));
            jsonobject.put("height", ((JSONObject) (obj)).get("height"));
            jsonobject.put("x", 0);
            jsonobject.put("y", 0);
            obj = (Abstract.Dimensions)getFromJSON(jsonobject, com/tapjoy/mraid/controller/Abstract$Dimensions);
            mMraidView.expand(getDeviceDimensions(((Abstract.Dimensions) (obj))), s, (Abstract.Properties)getFromJSON(new JSONObject(s1), com/tapjoy/mraid/controller/Abstract$Properties));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
    }

    public String getMaxSize()
    {
        if (bMaxSizeSet)
        {
            return (new StringBuilder()).append("{ width: ").append(mMaxWidth).append(", ").append("height: ").append(mMaxHeight).append("}").toString();
        } else
        {
            return getScreenSize();
        }
    }

    public int getOrientation()
    {
        char c;
        int i;
        i = mWindowManager.getDefaultDisplay().getOrientation();
        c = '\uFFFF';
        i;
        JVM INSTR tableswitch 0 3: default 48
    //                   0 74
    //                   1 79
    //                   2 85
    //                   3 92;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        TapjoyLog.d("MRAID Display", (new StringBuilder()).append("getOrientation: ").append(c).toString());
        return c;
_L2:
        c = '\0';
        continue; /* Loop/switch isn't completed */
_L3:
        c = 'Z';
        continue; /* Loop/switch isn't completed */
_L4:
        c = '\264';
        continue; /* Loop/switch isn't completed */
_L5:
        c = '\u010E';
        if (true) goto _L1; else goto _L6
_L6:
    }

    public String getScreenSize()
    {
        DisplayMetrics displaymetrics = new DisplayMetrics();
        mWindowManager.getDefaultDisplay().getMetrics(displaymetrics);
        return (new StringBuilder()).append("{ width: ").append((int)Math.ceil((float)displaymetrics.widthPixels / displaymetrics.density)).append(", ").append("height: ").append((int)Math.ceil((float)displaymetrics.heightPixels / displaymetrics.density)).append("}").toString();
    }

    public String getSize()
    {
        return mMraidView.getSize();
    }

    public void hide()
    {
        TapjoyLog.d("MRAID Display", "hide");
        mMraidView.hide();
    }

    public boolean isVisible()
    {
        return mMraidView.getVisibility() == 0;
    }

    public void logHTML(String s)
    {
        TapjoyLog.d("MRAID Display", s);
    }

    public void onOrientationChanged(int i)
    {
        String s = (new StringBuilder()).append("window.mraidview.fireChangeEvent({ orientation: ").append(i).append("});").toString();
        TapjoyLog.d("MRAID Display", s);
        mMraidView.injectMraidJavaScript(s);
    }

    public void open(String s, boolean flag, boolean flag1, boolean flag2)
    {
        TapjoyLog.i("MRAID Display", (new StringBuilder()).append("open: url: ").append(s).append(" back: ").append(flag).append(" forward: ").append(flag1).append(" refresh: ").append(flag2).toString());
        if (!URLUtil.isValidUrl(s))
        {
            TapjoyLog.i("MRAID Display", "invalid URL");
            s = new Intent("android.intent.action.VIEW", Uri.parse(s));
            List list = context.getPackageManager().queryIntentActivities(s, 0);
            if (list.size() == 1)
            {
                context.startActivity(s);
                return;
            }
            if (list.size() > 1)
            {
                s = Intent.createChooser(s, "Select");
                ((Activity)context).startActivity(s);
                return;
            } else
            {
                mMraidView.raiseError("Invalid url", "open");
                return;
            }
        } else
        {
            mMraidView.open(s, flag, flag1, flag2);
            return;
        }
    }

    public void openMap(String s, boolean flag)
    {
        TapjoyLog.d("MRAID Display", (new StringBuilder()).append("openMap: url: ").append(s).toString());
        mMraidView.openMap(s, flag);
    }

    public void playAudio(String s, boolean flag, boolean flag1, boolean flag2, boolean flag3, String s1, String s2)
    {
        TapjoyLog.d("MRAID Display", (new StringBuilder()).append("playAudio: url: ").append(s).append(" autoPlay: ").append(flag).append(" controls: ").append(flag1).append(" loop: ").append(flag2).append(" position: ").append(flag3).append(" startStyle: ").append(s1).append(" stopStyle: ").append(s2).toString());
        if (!URLUtil.isValidUrl(s))
        {
            mMraidView.raiseError("Invalid url", "playAudio");
            return;
        } else
        {
            mMraidView.playAudio(s, flag, flag1, flag2, flag3, s1, s2);
            return;
        }
    }

    public void playVideo(String s, boolean flag, boolean flag1, boolean flag2, boolean flag3, int ai[], String s1, 
            String s2)
    {
        int i;
        TapjoyLog.d("MRAID Display", (new StringBuilder()).append("playVideo: url: ").append(s).append(" audioMuted: ").append(flag).append(" autoPlay: ").append(flag1).append(" controls: ").append(flag2).append(" loop: ").append(flag3).append(" x: ").append(ai[0]).append(" y: ").append(ai[1]).append(" width: ").append(ai[2]).append(" height: ").append(ai[3]).append(" startStyle: ").append(s1).append(" stopStyle: ").append(s2).toString());
        s1 = null;
        if (ai[0] != -1)
        {
            s1 = new Abstract.Dimensions();
            s1.x = ai[0];
            s1.y = ai[1];
            s1.width = ai[2];
            s1.height = ai[3];
            s1 = getDeviceDimensions(s1);
        }
        i = 0;
        ai = s;
        if (!s.contains("android.resource")) goto _L2; else goto _L1
_L1:
        s = s.substring(s.lastIndexOf("/") + 1, s.lastIndexOf("."));
        int j = android/R$raw.getField(s).getInt(null);
        i = j;
_L4:
        s = mContext.getPackageName();
        ai = (new StringBuilder()).append("android.resource://").append(s).append("/").append(i).toString();
_L2:
        mMraidView.playVideo(ai, false, true, true, false, s1, "fullscreen", "exit");
        return;
        s;
        s.printStackTrace();
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void resize(String s)
    {
        String s1;
        Object obj;
        int i;
        int j;
        int k;
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        boolean flag;
        j1 = 0;
        k1 = 0;
        i1 = 0;
        l1 = 0;
        obj = null;
        flag = true;
        l = i1;
        k = l1;
        s1 = obj;
        j = k1;
        i = j1;
        JSONObject jsonobject = new JSONObject(s);
        l = i1;
        k = l1;
        s1 = obj;
        j = k1;
        i = j1;
        j1 = jsonobject.getInt("width");
        l = i1;
        k = l1;
        s1 = obj;
        j = k1;
        i = j1;
        k1 = jsonobject.getInt("height");
        l = i1;
        k = l1;
        s1 = obj;
        j = k1;
        i = j1;
        i1 = jsonobject.getInt("offsetX");
        l = i1;
        k = l1;
        s1 = obj;
        j = k1;
        i = j1;
        l1 = jsonobject.getInt("offsetY");
        l = i1;
        k = l1;
        s1 = obj;
        j = k1;
        i = j1;
        s = jsonobject.getString("customClosePosition");
        l = i1;
        k = l1;
        s1 = s;
        j = k1;
        i = j1;
        boolean flag1 = jsonobject.getBoolean("allowOffScreen");
        flag = flag1;
        i = j1;
        j = k1;
        k = l1;
        l = i1;
_L2:
        mMraidView.resize((int)(mDensity * (float)i), (int)(mDensity * (float)j), l, k, s, flag);
        return;
        s;
        s = s1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void setMaxSize(int i, int j)
    {
        TapjoyLog.i("MRAID Display", (new StringBuilder()).append("setMaxSize: ").append(i).append("x").append(j).toString());
        bMaxSizeSet = true;
        mMaxWidth = i;
        mMaxHeight = j;
    }

    public void setOrientationProperties(boolean flag, String s)
    {
        TapjoyLog.d("MRAID Display", (new StringBuilder()).append("setOrientationProperties: allowOrientationChange: ").append(Boolean.toString(flag)).append(" forceOrientation: ").append(s).toString());
        mMraidView.setOrientationProperties(flag, s);
    }

    public void show()
    {
        TapjoyLog.d("MRAID Display", "show");
        mMraidView.show();
    }

    public void startConfigurationListener()
    {
        try
        {
            if (mBroadCastReceiver == null)
            {
                mBroadCastReceiver = new ConfigBroadcastReceiver(this);
            }
            mContext.registerReceiver(mBroadCastReceiver, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void stopAllListeners()
    {
        stopConfigurationListener();
        mBroadCastReceiver = null;
    }

    public void stopConfigurationListener()
    {
        try
        {
            mContext.unregisterReceiver(mBroadCastReceiver);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void useCustomClose(boolean flag)
    {
        if (flag)
        {
            mMraidView.removeCloseImageButton();
        } else
        if (!flag)
        {
            mMraidView.showCloseImageButton();
            return;
        }
    }
}
