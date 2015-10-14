// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.adobe.air.telephony.AndroidTelephonyManager;
import com.adobe.air.utils.Utils;
import com.adobe.flashplayer.HDMIUtils;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

// Referenced classes of package com.adobe.air:
//            DebuggerSettings, Entrypoints, AndroidIdleState, AIRWindowSurfaceView, 
//            AndroidCameraView, OrientationManager, ResourceFileManager, ApplicationFileManager, 
//            ListenErrorDialog, RemoteDebuggerListenerDialog, RemoteDebuggerDialog, AIRUpdateDialog, 
//            FlashEGL, DeviceProfiling, ConfigDownloadListener

public class AndroidActivityWrapper
{
    static interface ActivityResultCallback
    {

        public abstract void onActivityResult(int i, int j, Intent intent);
    }

    public static final class ActivityState extends Enum
    {

        private static final ActivityState $VALUES[];
        public static final ActivityState DESTROYED;
        public static final ActivityState PAUSED;
        public static final ActivityState RESTARTED;
        public static final ActivityState RESUMED;
        public static final ActivityState STARTED;
        public static final ActivityState STOPPED;

        public static ActivityState valueOf(String s)
        {
            return (ActivityState)Enum.valueOf(com/adobe/air/AndroidActivityWrapper$ActivityState, s);
        }

        public static ActivityState[] values()
        {
            return (ActivityState[])$VALUES.clone();
        }

        static 
        {
            STARTED = new ActivityState("STARTED", 0);
            RESTARTED = new ActivityState("RESTARTED", 1);
            RESUMED = new ActivityState("RESUMED", 2);
            PAUSED = new ActivityState("PAUSED", 3);
            STOPPED = new ActivityState("STOPPED", 4);
            DESTROYED = new ActivityState("DESTROYED", 5);
            $VALUES = (new ActivityState[] {
                STARTED, RESTARTED, RESUMED, PAUSED, STOPPED, DESTROYED
            });
        }

        private ActivityState(String s, int i)
        {
            super(s, i);
        }
    }

    private static final class DebugMode extends Enum
    {

        private static final DebugMode $VALUES[];
        public static final DebugMode ConflictMode;
        public static final DebugMode ConnectMode;
        public static final DebugMode ListenMode;
        public static final DebugMode None;

        public static DebugMode valueOf(String s)
        {
            return (DebugMode)Enum.valueOf(com/adobe/air/AndroidActivityWrapper$DebugMode, s);
        }

        public static DebugMode[] values()
        {
            return (DebugMode[])$VALUES.clone();
        }

        static 
        {
            None = new DebugMode("None", 0);
            ConnectMode = new DebugMode("ConnectMode", 1);
            ListenMode = new DebugMode("ListenMode", 2);
            ConflictMode = new DebugMode("ConflictMode", 3);
            $VALUES = (new DebugMode[] {
                None, ConnectMode, ListenMode, ConflictMode
            });
        }

        private DebugMode(String s, int i)
        {
            super(s, i);
        }
    }

    static interface InputEventCallback
    {

        public abstract boolean onGenericMotionEvent(MotionEvent motionevent);

        public abstract boolean onKeyEvent(KeyEvent keyevent);
    }

    public static class PlaneID
    {

        public static final int PLANE_CAMERA = 5;
        public static final int PLANE_COUNT = 8;
        public static final int PLANE_FLASH = 3;
        public static final int PLANE_OVERLAY = 2;
        public static final int PLANE_STAGE3D = 6;
        public static final int PLANE_STAGETEXT = 1;
        public static final int PLANE_STAGEVIDEO = 7;
        public static final int PLANE_STAGEVIDEOAUTOMATIC = 4;
        public static final int PLANE_STAGEWEBVIEW = 0;

        public PlaneID()
        {
        }
    }

    static interface StateChangeCallback
    {

        public abstract void onActivityStateChanged(ActivityState activitystate);

        public abstract void onConfigurationChanged(Configuration configuration);
    }


    private static final String ADOBE_COM = "adobe.com";
    private static final int ASPECT_RATIO_ANY = 3;
    private static final int ASPECT_RATIO_LANDSCAPE = 2;
    private static final int ASPECT_RATIO_PORTRAIT = 1;
    public static final int IMAGE_PICKER_REQUEST_CODE = 2;
    private static final int INVOKE_EVENT_OPEN_URL = 1;
    private static final int INVOKE_EVENT_STANDARD = 0;
    private static final String LOG_TAG = "AndroidActivityWrapper";
    public static final int STILL_PICTURE_REQUEST_CODE = 3;
    public static final int VIDEO_CAPTURE_REQUEST_CODE = 4;
    public static final int WEBVIEW_UPLOAD_FILE_CHOOSER_CODE = 5;
    private static final String WWW_ADOBE_COM = "www.adobe.com";
    private static AndroidActivityWrapper sActivityWrapper = null;
    private static AndroidTelephonyManager sAndroidTelephonyManager = null;
    private static boolean sApplicationLaunched = false;
    private static boolean sDepthAndStencil = false;
    private static Entrypoints sEntryPoint = null;
    private static String sGamePreviewHost = "";
    private static boolean sHasCaptiveRuntime = false;
    private static AndroidIdleState sIdleStateManager = null;
    private static boolean sIsSwfPreviewMode = false;
    private static boolean sRuntimeLibrariesLoaded = false;
    private int debuggerPort;
    private KeyguardManager keyGuardManager;
    private boolean mActivateEventPending;
    private List mActivityResultListeners;
    private ActivityState mActivityState;
    private List mActivityStateListeners;
    private ConfigDownloadListener mConfigDownloadListener;
    private boolean mContainsVideo;
    private DebuggerSettings mDebuggerSettings;
    private boolean mDisplayWaitingDialog;
    private String mExtraArgs;
    private boolean mFullScreenSetFromMetaData;
    private int mHardKeyboardHidden;
    private int mHardKeyboardType;
    private List mInputEventListeners;
    private boolean mInvokeEventPendingFromOnCreate;
    private boolean mIsADL;
    private boolean mIsDebuggerMode;
    private boolean mIsFullScreen;
    private String mLibCorePath;
    private OrientationManager mOrientationManager;
    private boolean mRGB565Override;
    private String mRootDir;
    private boolean mScreenOn;
    private boolean mShowDebuggerDialog;
    private String mXmlPath;
    private Activity m_activity;
    private Application m_application;
    private AndroidCameraView m_cameraView;
    private FlashEGL m_flashEGL;
    private FrameLayout m_layout;
    private AIRWindowSurfaceView m_mainView;
    private Condition m_newActivityCondition;
    private Lock m_newActivityLock;
    private RelativeLayout m_overlaysLayout;
    private boolean m_planeBreakCascade;
    private boolean m_planeCascadeInit;
    private int m_planeCascadeStep;
    private List m_planes;
    private Context m_runtimeContext;
    private boolean m_skipKickCascade;
    private SurfaceView m_videoView;

    private AndroidActivityWrapper(Activity activity)
    {
        m_activity = null;
        mConfigDownloadListener = null;
        m_application = null;
        mActivityResultListeners = null;
        m_mainView = null;
        m_videoView = null;
        m_cameraView = null;
        m_layout = null;
        m_flashEGL = null;
        mXmlPath = null;
        mRootDir = null;
        mExtraArgs = null;
        mIsADL = false;
        mRGB565Override = false;
        mIsDebuggerMode = false;
        mHardKeyboardHidden = 2;
        mHardKeyboardType = 0;
        mShowDebuggerDialog = false;
        mDisplayWaitingDialog = false;
        debuggerPort = -1;
        mInvokeEventPendingFromOnCreate = false;
        mActivateEventPending = false;
        mActivityStateListeners = null;
        mInputEventListeners = null;
        mFullScreenSetFromMetaData = false;
        mIsFullScreen = false;
        mContainsVideo = false;
        mLibCorePath = null;
        m_runtimeContext = null;
        m_overlaysLayout = null;
        m_newActivityLock = null;
        m_newActivityCondition = null;
        mOrientationManager = null;
        keyGuardManager = null;
        mScreenOn = true;
        mDebuggerSettings = new DebuggerSettings();
        mActivityState = ActivityState.STARTED;
        m_planes = null;
        m_planeCascadeStep = 0;
        m_planeBreakCascade = false;
        m_planeCascadeInit = false;
        m_skipKickCascade = true;
        m_activity = activity;
        m_newActivityLock = new ReentrantLock();
        m_newActivityCondition = m_newActivityLock.newCondition();
        m_application = activity.getApplication();
        LoadRuntimeLibraries();
        keyGuardManager = (KeyguardManager)(KeyguardManager)activity.getSystemService("keyguard");
    }

    public static AndroidActivityWrapper CreateAndroidActivityWrapper(Activity activity)
    {
        return CreateAndroidActivityWrapper(activity, Boolean.valueOf(false));
    }

    public static AndroidActivityWrapper CreateAndroidActivityWrapper(Activity activity, Boolean boolean1)
    {
        sHasCaptiveRuntime = boolean1.booleanValue();
        if (boolean1.booleanValue())
        {
            Utils.setRuntimePackageName(activity.getApplicationContext().getPackageName());
        } else
        {
            Utils.setRuntimePackageName("com.adobe.air");
        }
        if (sActivityWrapper == null)
        {
            sActivityWrapper = new AndroidActivityWrapper(activity);
        }
        return sActivityWrapper;
    }

    public static AndroidActivityWrapper GetAndroidActivityWrapper()
    {
        return sActivityWrapper;
    }

    public static boolean GetDepthAndStencilForGamePreview()
    {
        return sDepthAndStencil;
    }

    public static boolean GetHasCaptiveRuntime()
    {
        return sHasCaptiveRuntime;
    }

    public static boolean IsGamePreviewMode()
    {
        return sIsSwfPreviewMode;
    }

    private void LaunchApplication(Activity activity, AIRWindowSurfaceView airwindowsurfaceview, String s, String s1, String s2, boolean flag, boolean flag1)
    {
        if (sApplicationLaunched)
        {
            return;
        }
        if (!flag) goto _L2; else goto _L1
_L1:
        Object obj = activity.getIntent().getStringExtra("args");
        if (obj == null) goto _L4; else goto _L3
_L3:
        String as[] = ((String) (obj)).split(" ");
        obj = as[0];
        s1 = as[1];
        if (as.length < 2) goto _L6; else goto _L5
_L5:
        s = (new StringBuilder()).append(as[2]).append(" ").toString();
_L14:
        int i = 3;
_L8:
        if (i >= as.length)
        {
            break; /* Loop/switch isn't completed */
        }
        s2 = (new StringBuilder()).append(s).append(as[i]).append(" ").toString();
        s = s2;
        i++;
        if (true) goto _L8; else goto _L7
_L7:
        s2 = s;
        s = s1;
        s1 = ((String) (obj));
_L15:
        obj = s1;
        s1 = s;
        s = ((String) (obj));
_L10:
        String s6;
        int j;
        byte byte0;
        int k;
        boolean flag2;
        try
        {
            obj = getApplicationContext();
            sEntryPoint = new Entrypoints();
            sEntryPoint.EntryMain(s, s1, s2, Utils.getRuntimePackageName(), airwindowsurfaceview, activity.getApplication(), activity.getApplicationInfo(), obj, this, flag, flag1);
            sIdleStateManager = AndroidIdleState.GetIdleStateManager(((Context) (obj)));
            sApplicationLaunched = true;
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Activity activity)
        {
            return;
        }
_L2:
        flag2 = sIsSwfPreviewMode;
        if (!flag2) goto _L10; else goto _L9
_L9:
        obj = activity.getIntent().getDataString();
        if (obj == null) goto _L10; else goto _L11
_L11:
        if (((String) (obj)).indexOf("?") <= 0) goto _L10; else goto _L12
_L12:
        obj = ((String) (obj)).substring(((String) (obj)).indexOf("?") + 1).split("&");
        k = obj.length;
        byte0 = -1;
        j = 0;
_L16:
        if (j >= k)
        {
            break MISSING_BLOCK_LABEL_536;
        }
        s6 = obj[j];
        if (!s6.substring(0, s6.indexOf("=")).equalsIgnoreCase("depthAndStencil"))
        {
            break MISSING_BLOCK_LABEL_366;
        }
        if (!s6.substring(s6.indexOf("=") + 1).equalsIgnoreCase("true"))
        {
            break MISSING_BLOCK_LABEL_355;
        }
        sDepthAndStencil = true;
        i = byte0;
        break MISSING_BLOCK_LABEL_648;
        sDepthAndStencil = false;
        i = byte0;
        break MISSING_BLOCK_LABEL_648;
        if (!s6.substring(0, s6.indexOf("=")).equalsIgnoreCase("autoorients"))
        {
            break MISSING_BLOCK_LABEL_437;
        }
        if (!s6.substring(s6.indexOf("=") + 1).equalsIgnoreCase("true"))
        {
            break MISSING_BLOCK_LABEL_425;
        }
        setAutoOrients(true);
        i = byte0;
        break MISSING_BLOCK_LABEL_648;
        setAutoOrients(false);
        i = byte0;
        break MISSING_BLOCK_LABEL_648;
        i = byte0;
        if (!s6.substring(0, s6.indexOf("=")).equalsIgnoreCase("aspectratio"))
        {
            break MISSING_BLOCK_LABEL_648;
        }
        s6 = s6.substring(s6.indexOf("=") + 1);
        if (s6.equalsIgnoreCase("portrait"))
        {
            i = 1;
            break MISSING_BLOCK_LABEL_648;
        }
        if (s6.equalsIgnoreCase("landscape"))
        {
            i = 2;
            break MISSING_BLOCK_LABEL_648;
        }
        i = byte0;
        if (s6.equalsIgnoreCase("any"))
        {
            i = 3;
        }
        break MISSING_BLOCK_LABEL_648;
        Exception exception;
        if (byte0 != -1)
        {
            try
            {
                setAspectRatio(byte0);
            }
            catch (Exception exception1) { }
        }
          goto _L10
        s;
        s = s2;
        s2 = ((String) (obj));
        obj = s1;
        s1 = s;
        s = ((String) (obj));
          goto _L13
        s2;
        s2 = ((String) (obj));
        obj = s1;
        s1 = s;
        s = ((String) (obj));
          goto _L13
_L6:
        s = s2;
          goto _L14
_L4:
        String s3 = s;
        s = s1;
        s1 = s3;
          goto _L15
        exception;
        String s4 = s2;
        s2 = s;
        s = s1;
        s1 = s4;
_L13:
        String s5 = s1;
        s1 = s;
        s = s2;
        s2 = s5;
          goto _L10
        j++;
        byte0 = i;
          goto _L16
    }

    private void LoadRuntimeLibraries()
    {
        if (sRuntimeLibrariesLoaded)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        System.load(Utils.GetLibSTLPath(m_application));
        System.load(GetLibCorePath());
        sRuntimeLibrariesLoaded = true;
        return;
        UnsatisfiedLinkError unsatisfiedlinkerror;
        unsatisfiedlinkerror;
    }

    private void SetVisible(boolean flag)
    {
        if (flag)
        {
            if (isSurfaceValid() && mScreenOn && mActivityState != ActivityState.STOPPED && mActivityState != ActivityState.DESTROYED)
            {
                nativeSetVisible(true);
            }
        } else
        if (isApplicationLaunched())
        {
            nativeSetVisible(false);
            return;
        }
    }

    public static boolean ShouldShowGamePreviewWatermark()
    {
        Boolean boolean1;
label0:
        {
            Boolean boolean2 = Boolean.valueOf(sIsSwfPreviewMode);
            boolean1 = boolean2;
            if (!boolean2.booleanValue())
            {
                break label0;
            }
            if (!sGamePreviewHost.equalsIgnoreCase("www.adobe.com"))
            {
                boolean1 = boolean2;
                if (!sGamePreviewHost.equalsIgnoreCase("adobe.com"))
                {
                    break label0;
                }
            }
            boolean1 = Boolean.valueOf(false);
        }
        return boolean1.booleanValue();
    }

    private void SignalNewActivityCreated()
    {
        m_newActivityLock.lock();
        m_newActivityCondition.signalAll();
        m_newActivityLock.unlock();
    }

    private void afterOnCreate()
    {
        if (m_planes != null)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        m_planes = new ArrayList(8);
        int i = 0;
        while (i < 8) 
        {
            Context context;
            Object obj;
            try
            {
                m_planes.add(i, null);
            }
            catch (Exception exception)
            {
                return;
            }
            i++;
        }
        context = getApplicationContext();
        m_layout = new FrameLayout(context);
        m_mainView = new AIRWindowSurfaceView(context, this);
        if (m_cameraView == null && m_runtimeContext.checkCallingOrSelfPermission("android.permission.CAMERA") == 0)
        {
            m_cameraView = new AndroidCameraView(context, this);
        }
        if (m_cameraView != null)
        {
            m_layout.addView(m_cameraView, 8, 16);
        }
        obj = m_activity.getPackageManager().getActivityInfo(m_activity.getComponentName(), 128).metaData;
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_212;
        }
        obj = (Boolean)((Bundle) (obj)).get("containsVideo");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_212;
        }
        if (((Boolean) (obj)).booleanValue())
        {
            mContainsVideo = ((Boolean) (obj)).booleanValue();
            m_videoView = m_mainView.getVideoView();
            m_layout.addView(m_videoView, 0);
        }
        m_layout.addView(m_mainView);
        if (m_overlaysLayout != null)
        {
            m_layout.addView(m_overlaysLayout);
        }
        m_activity.setContentView(m_layout);
        if ((mIsADL || mShowDebuggerDialog) && m_activity != null && m_activity.getCurrentFocus() != m_mainView)
        {
            m_mainView.requestFocus();
            m_mainView.onWindowFocusChanged(true);
        }
        if (!mFullScreenSetFromMetaData)
        {
            setFullScreenFromMetaData();
        }
        mFullScreenSetFromMetaData = true;
        if (getIsFullScreen())
        {
            m_mainView.setFullScreen();
        }
        mHardKeyboardHidden = m_activity.getResources().getConfiguration().hardKeyboardHidden;
        mHardKeyboardType = m_activity.getResources().getConfiguration().keyboard;
        mOrientationManager = OrientationManager.getOrientationManager();
        mOrientationManager.onActivityCreated(m_activity, m_mainView);
        callActivityStateListeners();
        HDMIUtils.initHelper(context);
        return;
    }

    private void callActivityResultListeners(int i, int j, Intent intent)
    {
        if (mActivityResultListeners != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int k;
        int l;
        try
        {
            l = mActivityResultListeners.size();
        }
        // Misplaced declaration of an exception variable
        catch (Intent intent)
        {
            return;
        }
        k = 0;
        if (k >= l)
        {
            continue; /* Loop/switch isn't completed */
        }
        ((ActivityResultCallback)mActivityResultListeners.get(k)).onActivityResult(i, j, intent);
        k++;
        if (true) goto _L4; else goto _L3
_L3:
        break MISSING_BLOCK_LABEL_56;
_L4:
        break MISSING_BLOCK_LABEL_22;
        if (true) goto _L1; else goto _L5
_L5:
    }

    private void callActivityStateListeners()
    {
        if (mActivityStateListeners != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i;
        int j;
        try
        {
            j = mActivityStateListeners.size();
        }
        catch (Exception exception)
        {
            return;
        }
        i = 0;
        if (i >= j)
        {
            continue; /* Loop/switch isn't completed */
        }
        ((StateChangeCallback)mActivityStateListeners.get(i)).onActivityStateChanged(mActivityState);
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        break MISSING_BLOCK_LABEL_50;
_L4:
        break MISSING_BLOCK_LABEL_20;
        if (true) goto _L1; else goto _L5
_L5:
    }

    private void callActivityStateListeners(Configuration configuration)
    {
        if (mActivityStateListeners != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i;
        int j;
        try
        {
            j = mActivityStateListeners.size();
        }
        // Misplaced declaration of an exception variable
        catch (Configuration configuration)
        {
            return;
        }
        i = 0;
        if (i >= j)
        {
            continue; /* Loop/switch isn't completed */
        }
        ((StateChangeCallback)mActivityStateListeners.get(i)).onConfigurationChanged(configuration);
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        break MISSING_BLOCK_LABEL_47;
_L4:
        break MISSING_BLOCK_LABEL_20;
        if (true) goto _L1; else goto _L5
_L5:
    }

    private boolean callInputEventListeners(KeyEvent keyevent)
    {
        boolean flag;
        if (mInputEventListeners == null)
        {
            return false;
        }
        int i;
        int j;
        boolean flag1;
        try
        {
            j = mInputEventListeners.size();
        }
        // Misplaced declaration of an exception variable
        catch (KeyEvent keyevent)
        {
            return false;
        }
        i = 0;
        flag = false;
        if (i >= j) goto _L2; else goto _L1
_L1:
        if (flag) goto _L4; else goto _L3
_L3:
        try
        {
            flag1 = ((InputEventCallback)mInputEventListeners.get(i)).onKeyEvent(keyevent);
        }
        // Misplaced declaration of an exception variable
        catch (KeyEvent keyevent)
        {
            return flag;
        }
        if (!flag1) goto _L5; else goto _L4
_L4:
        flag = true;
_L6:
        i++;
        continue; /* Loop/switch isn't completed */
_L5:
        flag = false;
        if (true) goto _L6; else goto _L2
_L2:
        return flag;
        if (true) goto _L8; else goto _L7
_L8:
        break MISSING_BLOCK_LABEL_24;
_L7:
    }

    private boolean callInputEventListeners(MotionEvent motionevent)
    {
        boolean flag;
        if (mInputEventListeners == null)
        {
            return false;
        }
        int i;
        int j;
        boolean flag1;
        try
        {
            j = mInputEventListeners.size();
        }
        // Misplaced declaration of an exception variable
        catch (MotionEvent motionevent)
        {
            return false;
        }
        i = 0;
        flag = false;
        if (i >= j) goto _L2; else goto _L1
_L1:
        if (flag) goto _L4; else goto _L3
_L3:
        try
        {
            flag1 = ((InputEventCallback)mInputEventListeners.get(i)).onGenericMotionEvent(motionevent);
        }
        // Misplaced declaration of an exception variable
        catch (MotionEvent motionevent)
        {
            return flag;
        }
        if (!flag1) goto _L5; else goto _L4
_L4:
        flag = true;
_L6:
        i++;
        continue; /* Loop/switch isn't completed */
_L5:
        flag = false;
        if (true) goto _L6; else goto _L2
_L2:
        return flag;
        if (true) goto _L8; else goto _L7
_L8:
        break MISSING_BLOCK_LABEL_24;
_L7:
    }

    private void checkForDebuggerAndLaunchDialog()
    {
        if (mIsADL) goto _L2; else goto _L1
_L1:
        Object obj;
        Object obj1;
        Object obj2;
        obj = new ResourceFileManager(m_activity);
        obj2 = DebugMode.None;
        obj1 = obj2;
        if (!((ResourceFileManager) (obj)).resExists(((ResourceFileManager) (obj)).lookupResId("raw.debuginfo"))) goto _L4; else goto _L3
_L3:
        String s;
        obj1 = Utils.parseKeyValuePairFile(((ResourceFileManager) (obj)).getFileStreamFromRawRes(((ResourceFileManager) (obj)).lookupResId("raw.debuginfo")), "=");
        s = (String)((HashMap) (obj1)).get("incomingDebugPort");
        obj = obj2;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        static class _cls2
        {

            static final int $SwitchMap$com$adobe$air$AndroidActivityWrapper$DebugMode[];

            static 
            {
                $SwitchMap$com$adobe$air$AndroidActivityWrapper$DebugMode = new int[DebugMode.values().length];
                try
                {
                    $SwitchMap$com$adobe$air$AndroidActivityWrapper$DebugMode[DebugMode.ListenMode.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$adobe$air$AndroidActivityWrapper$DebugMode[DebugMode.ConnectMode.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$adobe$air$AndroidActivityWrapper$DebugMode[DebugMode.None.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$adobe$air$AndroidActivityWrapper$DebugMode[DebugMode.ConflictMode.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        Exception exception1;
        boolean flag;
        try
        {
            debuggerPort = Integer.parseInt(s);
            obj = DebugMode.ListenMode;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            obj = obj2;
        }
        obj2 = (String)((HashMap) (obj1)).get("outgoingDebugHost");
        obj1 = obj;
        if (obj2 == null) goto _L4; else goto _L5
_L5:
        if (obj == DebugMode.ListenMode)
        {
            obj = DebugMode.ConflictMode;
            throw new Exception("listen and connect are mutually exclusive.");
        }
        obj1 = DebugMode.ConnectMode;
        obj = obj2;
_L24:
        _cls2..SwitchMap.com.adobe.air.AndroidActivityWrapper.DebugMode[((DebugMode) (obj1)).ordinal()];
        JVM INSTR tableswitch 1 4: default 172
    //                   1 173
    //                   2 395
    //                   3 421
    //                   4 462;
           goto _L6 _L7 _L8 _L9 _L10
_L10:
        break; /* Loop/switch isn't completed */
_L6:
        return;
_L7:
        obj = new ServerSocket(debuggerPort, 1, InetAddress.getLocalHost());
        ((ServerSocket) (obj)).close();
        if (obj == null) goto _L12; else goto _L11
_L11:
        ((ServerSocket) (obj)).close();
_L12:
        flag = true;
_L13:
        boolean flag1;
        boolean flag2;
        if (flag)
        {
            mDisplayWaitingDialog = true;
            afterOnCreate();
        } else
        {
            showDialogUnableToListenOnPort(debuggerPort);
        }
        obj = mDebuggerSettings;
        if (obj1 == DebugMode.ListenMode)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        ((DebuggerSettings) (obj)).setListen(flag2);
        mDebuggerSettings.setDebugerPort(debuggerPort);
        return;
        obj;
        flag = true;
          goto _L13
        obj;
        obj = null;
_L23:
        if (obj == null) goto _L15; else goto _L14
_L14:
        ((ServerSocket) (obj)).close();
_L15:
        flag = false;
          goto _L13
        obj;
        flag = false;
          goto _L13
        obj;
        obj = null;
_L22:
        if (obj == null) goto _L17; else goto _L16
_L16:
        ((ServerSocket) (obj)).close();
_L17:
        flag = false;
          goto _L13
        obj;
        flag = false;
          goto _L13
        obj2;
        obj = null;
_L21:
        flag2 = obj2.getClass().getName().equals("android.os.NetworkOnMainThreadException");
        if (flag2)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        flag = flag1;
        if (obj == null) goto _L13; else goto _L18
_L18:
        ((ServerSocket) (obj)).close();
        flag = flag1;
          goto _L13
        obj;
        flag = flag1;
          goto _L13
        exception1;
        obj = null;
_L20:
        if (obj != null)
        {
            try
            {
                ((ServerSocket) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj) { }
        }
        throw exception1;
_L8:
        if (!Utils.nativeConnectDebuggerSocket(((String) (obj))))
        {
            showDialogforIpAddress(((String) (obj)));
            return;
        } else
        {
            mDebuggerSettings.setHost(((String) (obj)));
            afterOnCreate();
            return;
        }
_L9:
        afterOnCreate();
        return;
        exception1;
        continue; /* Loop/switch isn't completed */
        exception1;
        if (true) goto _L20; else goto _L19
_L19:
        obj2;
          goto _L21
        obj2;
          goto _L22
        obj2;
          goto _L23
_L4:
        obj = null;
        if (true) goto _L24; else goto _L2
        Exception exception;
        exception;
_L2:
    }

    private void closeDialogWaitingForConnection()
    {
        Context context = getApplicationContext();
        try
        {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.MAIN");
            intent.addCategory("RemoteDebuggerListenerDialogClose");
            intent.putExtra("debuggerPort", debuggerPort);
            context.sendBroadcast(intent);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    private void initializeAndroidAppVars(ApplicationInfo applicationinfo)
    {
        ApplicationFileManager.setAndroidPackageName(applicationinfo.packageName);
        ApplicationFileManager.setAndroidAPKPath(applicationinfo.sourceDir);
        ApplicationFileManager.processAndroidDataPath(m_application.getCacheDir().getAbsolutePath());
    }

    public static boolean isGingerbread()
    {
        return android.os.Build.VERSION.SDK_INT >= 9;
    }

    public static boolean isHoneycomb()
    {
        return android.os.Build.VERSION.SDK_INT >= 11;
    }

    public static boolean isIceCreamSandwich()
    {
        return android.os.Build.VERSION.SDK_INT >= 14;
    }

    public static boolean isJellybean()
    {
        return android.os.Build.VERSION.SDK_INT >= 16;
    }

    private native void nativeActivateEvent();

    private native void nativeDeactivateEvent();

    private native void nativeLowMemoryEvent();

    private native void nativeOnFocusListener(boolean flag);

    private native void nativeSendInvokeEventWithData(String s, String s1, int i);

    private native void nativeSetVisible(boolean flag);

    private void parseArgs(Activity activity, String as[])
    {
        String s;
        String s1;
        String s2;
        String s3;
        String s4;
        String s5;
        s1 = "false";
        s2 = as[0];
        s3 = as[1];
        s4 = as[2];
        s = as[3];
        s5 = as[4];
        if (as.length >= 6)
        {
            activity = as[5];
            s1 = as[6];
            as = activity;
            activity = s1;
        } else
        {
            activity = "";
            as = s1;
        }
        mExtraArgs = s4;
        mIsADL = Boolean.valueOf(s).booleanValue();
        mIsDebuggerMode = Boolean.valueOf(s5).booleanValue();
        sIsSwfPreviewMode = Boolean.valueOf(as).booleanValue();
        sGamePreviewHost = activity;
        initializeAndroidAppVars(m_activity.getApplicationInfo());
        if (mIsADL)
        {
            mXmlPath = s2;
            mRootDir = s3;
            return;
        } else
        {
            mXmlPath = ApplicationFileManager.getAppXMLRoot();
            mRootDir = ApplicationFileManager.getAppRoot();
            return;
        }
_L2:
        as = "false";
        activity = "";
        break MISSING_BLOCK_LABEL_51;
        activity;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private boolean planeRemovedSuccessfully(SurfaceView surfaceview)
    {
        if (!surfaceview.getHolder().getSurface().isValid())
        {
            return true;
        }
        return (Build.MODEL.equals("LT18i") || Build.MODEL.equals("LT15i") || Build.MODEL.equals("Arc")) && isIceCreamSandwich() && m_layout.indexOfChild(surfaceview) < 0;
    }

    private void setFullScreenFromMetaData()
    {
        Object obj = m_activity.getPackageManager().getActivityInfo(m_activity.getComponentName(), 128).metaData;
        if (obj == null)
        {
            return;
        }
        obj = (Boolean)((Bundle) (obj)).get("fullScreen");
        if (obj != null)
        {
            try
            {
                if (((Boolean) (obj)).booleanValue())
                {
                    m_mainView.setFullScreen();
                    return;
                }
            }
            catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception) { }
        }
        return;
    }

    private void setMainView(View view)
    {
        while (!sApplicationLaunched || sEntryPoint == null || !isResumed()) 
        {
            return;
        }
        try
        {
            sEntryPoint.setMainView(view);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (View view)
        {
            return;
        }
    }

    private void showDialogUnableToListenOnPort(int i)
    {
        (new ListenErrorDialog(m_activity, i)).createAndShowDialog();
    }

    private void showDialogWaitingForConnection(final int aDebuggerPort)
    {
        getApplicationContext();
        if (sHasCaptiveRuntime)
        {
            (new Thread(new Runnable() {

                final AndroidActivityWrapper this$0;
                final int val$aDebuggerPort;

                public void run()
                {
                    try
                    {
                        Thread.sleep(30000L);
                        (new Socket(InetAddress.getLocalHost(), aDebuggerPort)).close();
                        return;
                    }
                    catch (Exception exception1)
                    {
                        return;
                    }
                }

            
            {
                this$0 = AndroidActivityWrapper.this;
                aDebuggerPort = i;
                super();
            }
            })).start();
            return;
        }
        try
        {
            Intent intent = new Intent(m_runtimeContext, com/adobe/air/RemoteDebuggerListenerDialog);
            intent.setAction("android.intent.action.MAIN");
            intent.addCategory("RemoteDebuggerListenerDialog");
            intent.putExtra("debuggerPort", aDebuggerPort);
            m_activity.startActivity(intent);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    private void showDialogforIpAddress(String s)
    {
        getApplicationContext();
        (new RemoteDebuggerDialog(m_activity)).createAndShowDialog(s);
    }

    public void BroadcastIntent(String s, String s1)
    {
        try
        {
            getDefaultContext().startActivity(Intent.parseUri(s1, 0).setAction(s).addFlags(getDefaultIntentFlags()));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
    }

    public String GetAppCacheDirectory()
    {
        return m_application.getCacheDir().getAbsolutePath();
    }

    public String GetAppDataDirectory()
    {
        return m_application.getApplicationInfo().dataDir;
    }

    public DebuggerSettings GetDebuggerSettings()
    {
        return mDebuggerSettings;
    }

    public String GetLibCorePath()
    {
        if (mLibCorePath == null)
        {
            mLibCorePath = Utils.GetLibCorePath(m_application);
        }
        return mLibCorePath;
    }

    public String GetRuntimeDataDirectory()
    {
        return (new StringBuilder()).append(m_runtimeContext.getApplicationInfo().dataDir).append("/").toString();
    }

    public void LaunchMarketPlaceForAIR(String s)
    {
        if (s == null)
        {
            s = (new StringBuilder()).append("market://details?id=").append(Utils.getRuntimePackageName()).toString();
        }
        try
        {
            BroadcastIntent("android.intent.action.VIEW", s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
    }

    public void SendIntentToRuntime(Class class1, String s, String s1)
    {
        try
        {
            class1 = new Intent(m_runtimeContext, class1);
            class1.setAction(s);
            class1.addCategory(s1);
            m_activity.startActivity(class1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            return;
        }
    }

    public void SendIntentToRuntime(Class class1, String s, String s1, String s2, String s3)
    {
        try
        {
            class1 = new Intent(m_runtimeContext, class1);
            class1.setAction(s);
            class1.addCategory(s1);
            class1.putExtra(s2, s3);
            m_activity.startActivity(class1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            return;
        }
    }

    public void SendInvokeEvent()
    {
        Intent intent = m_activity.getIntent();
        String s = intent.getDataString();
        int i = 0;
        if (s != null)
        {
            i = 1;
        }
        nativeSendInvokeEventWithData(s, intent.getAction(), i);
    }

    public void ShowImmediateUpdateDialog()
    {
        String s;
        s = null;
        Object obj;
        try
        {
            obj = m_activity.getPackageManager().getActivityInfo(m_activity.getComponentName(), 128).metaData;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (obj == null) goto _L2; else goto _L1
_L1:
        obj = (String)((Bundle) (obj)).get("airDownloadURL");
        s = ((String) (obj));
_L4:
        if (s != null)
        {
            SendIntentToRuntime(com/adobe/air/AIRUpdateDialog, "android.intent.action.MAIN", "AIRUpdateDialog", "airDownloadURL", s);
            return;
        } else
        {
            SendIntentToRuntime(com/adobe/air/AIRUpdateDialog, "android.intent.action.MAIN", "AIRUpdateDialog");
            return;
        }
_L2:
        s = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void StartDownloadConfigService()
    {
        Intent intent = new Intent();
        intent.setPackage(Utils.getRuntimePackageName());
        intent.setAction("com.adobe.air.DownloadConfig");
        try
        {
            getApplicationContext().startService(intent);
            return;
        }
        catch (SecurityException securityexception)
        {
            return;
        }
    }

    public Activity WaitForNewActivity()
    {
        m_newActivityLock.lock();
        if (m_activity == null)
        {
            m_newActivityCondition.await();
        }
        m_newActivityLock.unlock();
_L2:
        return m_activity;
        Object obj;
        obj;
        m_newActivityLock.unlock();
        if (true) goto _L2; else goto _L1
_L1:
        obj;
        m_newActivityLock.unlock();
        throw obj;
    }

    public void addActivityResultListener(ActivityResultCallback activityresultcallback)
    {
        if (mActivityResultListeners == null)
        {
            mActivityResultListeners = new ArrayList();
        }
        if (!mActivityResultListeners.contains(activityresultcallback))
        {
            mActivityResultListeners.add(activityresultcallback);
        }
    }

    public void addActivityStateChangeListner(StateChangeCallback statechangecallback)
    {
        if (mActivityStateListeners == null)
        {
            mActivityStateListeners = new ArrayList();
        }
        if (!mActivityStateListeners.contains(statechangecallback))
        {
            mActivityStateListeners.add(statechangecallback);
        }
    }

    public void addInputEventListner(InputEventCallback inputeventcallback)
    {
        if (mInputEventListeners == null)
        {
            mInputEventListeners = new ArrayList();
        }
        if (!mInputEventListeners.contains(inputeventcallback))
        {
            mInputEventListeners.add(inputeventcallback);
        }
    }

    public void applyDownloadedConfig()
    {
        if (sEntryPoint != null)
        {
            sEntryPoint.EntryApplyDownloadedConfig();
        }
    }

    public void didRemoveOverlay()
    {
        if (m_overlaysLayout != null && m_overlaysLayout.getChildCount() == 0)
        {
            m_layout.removeView(m_overlaysLayout);
            m_overlaysLayout = null;
        }
    }

    public boolean dispatchGenericMotionEvent(MotionEvent motionevent, boolean flag)
    {
        return callInputEventListeners(motionevent);
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent, boolean flag)
    {
        return callInputEventListeners(keyevent);
    }

    public void ensureZOrder()
    {
        for (int i = 7; i >= 0; i--)
        {
            if (m_planes.get(i) != null && m_layout.indexOfChild((View)m_planes.get(i)) >= 0)
            {
                m_layout.bringChildToFront((View)m_planes.get(i));
            }
        }

    }

    public void finish()
    {
        if (m_activity != null)
        {
            m_activity.finish();
        }
    }

    public void finishActivityFromChild(Activity activity, int i)
    {
    }

    public void finishFromChild(Activity activity)
    {
    }

    public Activity getActivity()
    {
        return m_activity;
    }

    public Application getApplication()
    {
        return m_application;
    }

    public Context getApplicationContext()
    {
        return m_application;
    }

    public boolean getAutoOrients()
    {
        return mOrientationManager.getAutoOrients();
    }

    public AndroidCameraView getCameraView()
    {
        return m_cameraView;
    }

    public Context getDefaultContext()
    {
        if (m_activity != null)
        {
            return m_activity;
        } else
        {
            return m_application;
        }
    }

    public int getDefaultIntentFlags()
    {
        return m_activity == null ? 0x10000000 : 0;
    }

    public int getDeviceOrientation()
    {
        return mOrientationManager.getDeviceOrientation();
    }

    public FlashEGL getEgl()
    {
        if (m_flashEGL == null)
        {
            m_flashEGL = new FlashEGL();
        }
        return m_flashEGL;
    }

    public int getHardKeyboardType()
    {
        return mHardKeyboardType;
    }

    protected boolean getIsFullScreen()
    {
        return mIsFullScreen;
    }

    public int getOrientation()
    {
        return mOrientationManager.getOrientation();
    }

    public RelativeLayout getOverlaysLayout(boolean flag)
    {
        if (flag && m_overlaysLayout == null)
        {
            m_overlaysLayout = new RelativeLayout(m_activity);
            m_layout.addView(m_overlaysLayout);
        }
        return m_overlaysLayout;
    }

    public Context getRuntimeContext()
    {
        return m_runtimeContext;
    }

    public boolean getSpeakerphoneOn()
    {
        return ((AudioManager)getActivity().getSystemService("audio")).isSpeakerphoneOn();
    }

    public int[] getSupportedOrientations()
    {
        return mOrientationManager.getSupportedOrientations();
    }

    public View getView()
    {
        return m_mainView;
    }

    public void gotResultFromDialog(boolean flag, String s)
    {
        boolean flag1;
        if (flag)
        {
            if (s.length() != 0)
            {
                flag1 = Utils.nativeConnectDebuggerSocket(s);
            } else
            {
                flag1 = false;
            }
            if (!flag1)
            {
                showDialogforIpAddress(s);
            } else
            {
                mDebuggerSettings.setHost(s);
                mDebuggerSettings.setListen(false);
                mShowDebuggerDialog = true;
            }
        } else
        {
            flag1 = false;
        }
        if (flag1 || !flag)
        {
            afterOnCreate();
        }
    }

    public void initCallStateListener()
    {
        if (sAndroidTelephonyManager == null)
        {
            sAndroidTelephonyManager = AndroidTelephonyManager.CreateAndroidTelephonyManager(getApplicationContext());
            sAndroidTelephonyManager.listen(true);
        }
    }

    public boolean isApplicationLaunched()
    {
        return sApplicationLaunched;
    }

    public boolean isHardKeyboardHidden()
    {
        return mHardKeyboardHidden == 2;
    }

    public boolean isResumed()
    {
        return mActivityState == ActivityState.RESUMED;
    }

    public boolean isScreenLocked()
    {
        return keyGuardManager.inKeyguardRestrictedInputMode();
    }

    public boolean isScreenOn()
    {
        return mScreenOn;
    }

    public boolean isStarted()
    {
        return mActivityState == ActivityState.STARTED || mActivityState == ActivityState.RESTARTED;
    }

    public boolean isSurfaceValid()
    {
        return m_mainView != null && m_mainView.isSurfaceValid();
    }

    public boolean needsCompositingSurface()
    {
        return m_runtimeContext.checkCallingOrSelfPermission("android.permission.CAMERA") == 0;
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        callActivityResultListeners(i, j, intent);
    }

    public void onApplyThemeResource(android.content.res.Resources.Theme theme, int i, boolean flag)
    {
    }

    public void onAttachedToWindow()
    {
    }

    public void onBackPressed()
    {
    }

    public void onChildTitleChanged(Activity activity, CharSequence charsequence)
    {
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        mHardKeyboardHidden = configuration.hardKeyboardHidden;
        mHardKeyboardType = configuration.keyboard;
        mOrientationManager.onConfigurationChanged(configuration);
        callActivityStateListeners(configuration);
    }

    public void onContentChanged()
    {
    }

    public boolean onContextItemSelected(MenuItem menuitem, boolean flag)
    {
        return flag;
    }

    public void onContextMenuClosed(Menu menu)
    {
    }

    public void onCreate(Activity activity, String as[])
    {
        m_activity = activity;
        mActivityState = ActivityState.STARTED;
        parseArgs(activity, as);
        SignalNewActivityCreated();
        try
        {
            m_runtimeContext = m_activity.createPackageContext(Utils.getRuntimePackageName(), 4);
        }
        // Misplaced declaration of an exception variable
        catch (Activity activity) { }
        if (mIsDebuggerMode && !mIsADL && !sApplicationLaunched && !DeviceProfiling.checkAndInitiateProfiler(m_activity))
        {
            checkForDebuggerAndLaunchDialog();
        } else
        {
            afterOnCreate();
        }
        mInvokeEventPendingFromOnCreate = true;
        mConfigDownloadListener = ConfigDownloadListener.GetConfigDownloadListener();
    }

    public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
    }

    public CharSequence onCreateDescription(CharSequence charsequence)
    {
        return charsequence;
    }

    public Dialog onCreateDialog(int i, Dialog dialog)
    {
        return dialog;
    }

    public Dialog onCreateDialog(int i, Bundle bundle, Dialog dialog)
    {
        return dialog;
    }

    public boolean onCreateOptionsMenu(Menu menu, boolean flag)
    {
        return flag;
    }

    public boolean onCreatePanelMenu(int i, Menu menu, boolean flag)
    {
        return flag;
    }

    public View onCreatePanelView(int i, View view)
    {
        return view;
    }

    public boolean onCreateThumbnail(Bitmap bitmap, Canvas canvas, boolean flag)
    {
        return flag;
    }

    public View onCreateView(String s, Context context, AttributeSet attributeset, View view)
    {
        return view;
    }

    public void onDestroy()
    {
        mActivityState = ActivityState.DESTROYED;
        callActivityStateListeners();
        if (mOrientationManager != null)
        {
            mOrientationManager.onActivityDestroyed();
        }
        for (int i = 0; i < 8; i++)
        {
            if (m_planes.get(i) != null)
            {
                m_layout.removeView((View)m_planes.get(i));
            }
        }

        if (m_overlaysLayout != null)
        {
            m_layout.removeView(m_overlaysLayout);
        }
        m_activity = null;
        m_cameraView = null;
        m_mainView = null;
        m_layout = null;
        setMainView(null);
        HDMIUtils.closeHelper();
    }

    public void onDetachedFromWindow()
    {
    }

    public boolean onKeyDown(int i, KeyEvent keyevent, boolean flag)
    {
        return flag;
    }

    public boolean onKeyLongPress(int i, KeyEvent keyevent, boolean flag)
    {
        return flag;
    }

    public boolean onKeyMultiple(int i, int j, KeyEvent keyevent, boolean flag)
    {
        return flag;
    }

    public boolean onKeyUp(int i, KeyEvent keyevent, boolean flag)
    {
        return flag;
    }

    public void onLowMemory()
    {
        nativeLowMemoryEvent();
    }

    public boolean onMenuItemSelected(int i, MenuItem menuitem, boolean flag)
    {
        return flag;
    }

    public boolean onMenuOpened(int i, Menu menu, boolean flag)
    {
        return flag;
    }

    public void onNewIntent(Intent intent)
    {
        m_activity.setIntent(intent);
        SendInvokeEvent();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem, boolean flag)
    {
        return flag;
    }

    public void onOptionsMenuClosed(Menu menu)
    {
    }

    public void onPanelClosed(int i, Menu menu)
    {
    }

    public void onPause()
    {
        mActivityState = ActivityState.PAUSED;
        callActivityStateListeners();
        if (m_mainView != null)
        {
            m_mainView.forceSoftKeyboardDown();
        }
        if (mOrientationManager != null)
        {
            mOrientationManager.onActivityPaused();
        }
        if (sIdleStateManager != null)
        {
            sIdleStateManager.releaseLock();
        }
        if (isApplicationLaunched())
        {
            nativeOnFocusListener(false);
            nativeDeactivateEvent();
        }
        planeBreakCascade();
    }

    public void onPostCreate(Bundle bundle)
    {
    }

    public void onPostResume()
    {
    }

    public void onPrepareDialog(int i, Dialog dialog)
    {
    }

    public void onPrepareDialog(int i, Dialog dialog, Bundle bundle)
    {
    }

    public boolean onPrepareOptionsMenu(Menu menu, boolean flag)
    {
        return flag;
    }

    public boolean onPreparePanel(int i, View view, Menu menu, boolean flag)
    {
        return flag;
    }

    public void onRestart()
    {
        mActivityState = ActivityState.RESTARTED;
        callActivityStateListeners();
        if (m_mainView != null)
        {
            m_mainView.HideSoftKeyboardOnWindowFocusChange();
        }
        SetVisible(true);
    }

    public void onRestoreInstanceState(Bundle bundle)
    {
    }

    public void onResume()
    {
        mActivityState = ActivityState.RESUMED;
        callActivityStateListeners();
        if (mOrientationManager != null)
        {
            mOrientationManager.onActivityResumed();
        }
        if (sIdleStateManager != null)
        {
            sIdleStateManager.acquireLock();
        }
        if (isApplicationLaunched())
        {
            nativeActivateEvent();
            nativeOnFocusListener(true);
        } else
        {
            mActivateEventPending = true;
        }
        m_skipKickCascade = true;
        planeBreakCascade();
    }

    public Object onRetainNonConfigurationInstance(Object obj)
    {
        return obj;
    }

    public void onSaveInstanceState(Bundle bundle)
    {
    }

    public void onScreenStateChanged(boolean flag)
    {
        mScreenOn = flag;
        SetVisible(flag);
        if (flag)
        {
            m_skipKickCascade = false;
            planeBreakCascade();
        }
    }

    public boolean onSearchRequested(boolean flag)
    {
        return flag;
    }

    public void onStop()
    {
        mActivityState = ActivityState.STOPPED;
        callActivityStateListeners();
        SetVisible(false);
    }

    public void onSurfaceDestroyed()
    {
        SetVisible(false);
    }

    public void onSurfaceInitialized()
    {
        setMainView(m_mainView);
        SetVisible(true);
        if (mDisplayWaitingDialog)
        {
            showDialogWaitingForConnection(debuggerPort);
            mDisplayWaitingDialog = false;
        }
        LaunchApplication(m_activity, m_mainView, mXmlPath, mRootDir, mExtraArgs, mIsADL, mIsDebuggerMode);
        if (mInvokeEventPendingFromOnCreate)
        {
            if (!mIsADL)
            {
                SendInvokeEvent();
            }
            mInvokeEventPendingFromOnCreate = false;
        }
        if (mActivateEventPending)
        {
            nativeActivateEvent();
            mActivateEventPending = false;
        }
        planeCleanCascade();
    }

    public void onTitleChanged(CharSequence charsequence, int i)
    {
    }

    public boolean onTouchEvent(MotionEvent motionevent, boolean flag)
    {
        return flag;
    }

    public boolean onTrackballEvent(MotionEvent motionevent, boolean flag)
    {
        return flag;
    }

    public void onUserInteraction()
    {
    }

    public void onUserLeaveHint()
    {
    }

    public void onWindowAttributesChanged(android.view.WindowManager.LayoutParams layoutparams)
    {
    }

    public void onWindowFocusChanged(boolean flag)
    {
    }

    public void planeBreakCascade()
    {
        int i = 0;
        int j;
        int k;
        for (j = 0; i < 8; j = k)
        {
            k = j;
            if (m_planes.get(i) != null)
            {
                k = j + 1;
            }
            i++;
        }

        if (j > 1)
        {
            m_planeBreakCascade = true;
        }
    }

    public void planeCleanCascade()
    {
        if (!m_planeCascadeInit)
        {
            m_planeCascadeInit = true;
            planeBreakCascade();
        }
    }

    public void planeKickCascade()
    {
        if ((!isHoneycomb() || !m_skipKickCascade) && (!isJellybean() || !mContainsVideo)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        planeCleanCascade();
        if (m_layout == null) goto _L1; else goto _L3
_L3:
        int j;
        if (!m_planeBreakCascade)
        {
            continue; /* Loop/switch isn't completed */
        }
        for (int i = 0; i < 8; i++)
        {
            if (m_planes.get(i) != null && m_layout.indexOfChild((View)m_planes.get(i)) >= 0)
            {
                m_layout.removeView((View)m_planes.get(i));
            }
        }

        m_planeBreakCascade = false;
        j = 0;
_L5:
        if (j < 8)
        {
            if (m_planes.get(j) == null || planeRemovedSuccessfully((SurfaceView)m_planes.get(j)))
            {
                break MISSING_BLOCK_LABEL_193;
            }
            m_planeBreakCascade = true;
        }
        m_planeCascadeStep = 0;
        if (m_planeCascadeStep != 0) goto _L1; else goto _L4
_L4:
        planeStepCascade();
        m_mainView.requestFocus();
        return;
        j++;
          goto _L5
    }

    public void planeStepCascade()
    {
        m_skipKickCascade = false;
        break MISSING_BLOCK_LABEL_5;
        if (m_layout != null && !m_planeBreakCascade)
        {
            while (m_planeCascadeStep < 8) 
            {
                if (m_planes.get(m_planeCascadeStep) != null)
                {
                    if (m_layout.indexOfChild((View)m_planes.get(m_planeCascadeStep)) < 0)
                    {
                        m_layout.addView((View)m_planes.get(m_planeCascadeStep), 0);
                    }
                    m_planeCascadeStep = m_planeCascadeStep + 1;
                    return;
                }
                m_planeCascadeStep = m_planeCascadeStep + 1;
            }
        }
        return;
    }

    public void registerPlane(SurfaceView surfaceview, int i)
    {
        m_planes.set(i, surfaceview);
        planeBreakCascade();
    }

    public void removeActivityResultListener(ActivityResultCallback activityresultcallback)
    {
        if (mActivityResultListeners != null)
        {
            mActivityResultListeners.remove(activityresultcallback);
        }
    }

    public void removeActivityStateChangeListner(StateChangeCallback statechangecallback)
    {
        if (mActivityStateListeners != null)
        {
            mActivityStateListeners.remove(statechangecallback);
        }
    }

    public void removeInputEventListner(InputEventCallback inputeventcallback)
    {
        if (mInputEventListeners != null)
        {
            mInputEventListeners.remove(inputeventcallback);
        }
    }

    public void setAspectRatio(int i)
    {
        mOrientationManager.setAspectRatio(i);
    }

    public void setAutoOrients(boolean flag)
    {
        mOrientationManager.setAutoOrients(flag);
    }

    protected void setIsFullScreen(boolean flag)
    {
        mIsFullScreen = flag;
    }

    public void setOrientation(int i)
    {
        mOrientationManager.setOrientation(i);
    }

    public void setSpeakerphoneOn(boolean flag)
    {
        ((AudioManager)getActivity().getSystemService("audio")).setSpeakerphoneOn(flag);
    }

    public void setUseRGB565(Boolean boolean1)
    {
        mRGB565Override = boolean1.booleanValue();
    }

    public void unregisterPlane(int i)
    {
        m_planes.set(i, null);
        planeBreakCascade();
    }

    public boolean useRGB565()
    {
        if (mIsADL)
        {
            return mRGB565Override;
        }
        ResourceFileManager resourcefilemanager = new ResourceFileManager(m_activity);
        return !resourcefilemanager.resExists(resourcefilemanager.lookupResId("raw.rgba8888"));
    }

}