// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PixelFormat;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.ResultReceiver;
import android.text.ClipboardManager;
import android.text.util.Linkify;
import android.view.ContextMenu;
import android.view.Display;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.air.gestures.AIRGestureListener;
import com.adobe.air.utils.AIRLogger;
import com.adobe.air.utils.Utils;
import com.adobe.flashruntime.air.VideoViewAIR;
import com.adobe.flashruntime.shared.VideoView;

// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper, AndroidInputConnection, AndroidWebView, AndroidLocale, 
//            TouchEventData, Entrypoints, AndroidStageText, OrientationManager, 
//            FlashEGL

public class AIRWindowSurfaceView extends SurfaceView
    implements android.view.SurfaceHolder.Callback
{
    class CheckLongPress
        implements Runnable
    {

        final AIRWindowSurfaceView this$0;

        public void run()
        {
            performLongClick();
        }

        CheckLongPress()
        {
            this$0 = AIRWindowSurfaceView.this;
            super();
        }
    }

    class HoverTimeoutHandler extends Handler
    {

        static final int INTERVAL = 500;
        private AIRWindowSurfaceView mAIRWindowSurfaceView;
        private long mLastMove;
        final AIRWindowSurfaceView this$0;

        public void handleMessage(Message message)
        {
            if (System.currentTimeMillis() - mLastMove >= 500L)
            {
                mHoverInProgress = false;
                Entrypoints.registerTouchCallback(0, new TouchEventData(32, mAIRWindowSurfaceView.mLastTouchedXCoord, mAIRWindowSurfaceView.mLastTouchedYCoord, 0.0F, 0, 0.0F, 0.0F, true, null, mAIRWindowSurfaceView.mHoverMetaState), null);
                return;
            } else
            {
                mHoverTimeoutHandler.sendEmptyMessageDelayed(0, 500L);
                return;
            }
        }

        public void setLastMove(long l)
        {
            mLastMove = l;
        }

        public HoverTimeoutHandler(AIRWindowSurfaceView airwindowsurfaceview1)
        {
            this$0 = AIRWindowSurfaceView.this;
            super();
            mAIRWindowSurfaceView = airwindowsurfaceview1;
        }
    }

    class InputMethodReceiver extends ResultReceiver
    {

        final AIRWindowSurfaceView this$0;

        protected void onReceiveResult(int i, Bundle bundle)
        {
            if (i == 1 || i == 3)
            {
                nativeShowOriginalRect();
                return;
            } else
            {
                nativeSetKeyboardVisible(true);
                return;
            }
        }

        public InputMethodReceiver()
        {
            this$0 = AIRWindowSurfaceView.this;
            super(getHandler());
        }
    }

    private class MenuHandler
        implements android.view.MenuItem.OnMenuItemClickListener
    {

        final AIRWindowSurfaceView this$0;

        public boolean onMenuItemClick(MenuItem menuitem)
        {
            return onTextBoxContextMenuItem(menuitem.getItemId());
        }

        private MenuHandler()
        {
            this$0 = AIRWindowSurfaceView.this;
            super();
        }

    }

    private static final class MetaKeyState extends Enum
    {

        private static final MetaKeyState $VALUES[];
        public static final MetaKeyState ACTIVE;
        public static final MetaKeyState INACTIVE;
        public static final MetaKeyState LOCKED;
        public static final MetaKeyState PRESSED;

        public static MetaKeyState valueOf(String s)
        {
            return (MetaKeyState)Enum.valueOf(com/adobe/air/AIRWindowSurfaceView$MetaKeyState, s);
        }

        public static MetaKeyState[] values()
        {
            return (MetaKeyState[])$VALUES.clone();
        }

        static 
        {
            INACTIVE = new MetaKeyState("INACTIVE", 0);
            ACTIVE = new MetaKeyState("ACTIVE", 1);
            PRESSED = new MetaKeyState("PRESSED", 2);
            LOCKED = new MetaKeyState("LOCKED", 3);
            $VALUES = (new MetaKeyState[] {
                INACTIVE, ACTIVE, PRESSED, LOCKED
            });
        }

        private MetaKeyState(String s, int i)
        {
            super(s, i);
        }
    }


    static final int CURSOR_POS_END_DOCUMENT = 3;
    static final int CURSOR_POS_END_LINE = 1;
    static final int CURSOR_POS_START_DOCUMENT = 2;
    static final int CURSOR_POS_START_LINE = 0;
    static final int ID_COPY = 3;
    static final int ID_COPY_ALL = 4;
    static final int ID_CUT = 1;
    static final int ID_CUT_ALL = 2;
    static final int ID_PASTE = 5;
    static final int ID_SELECT_ALL = 0;
    static final int ID_START_SELECTING = 7;
    static final int ID_STOP_SELECTING = 8;
    static final int ID_SWITCH_INPUT_METHOD = 6;
    private static final String LOG_TAG = "AIRWindowSurfaceView";
    static final int LONG_PRESS_DELAY = 500;
    static final int MAX_MOVE_ACTION_ALLOWED = 4;
    static final int POST_TOUCH_MESSAGE_AFTER_DELAY = 0;
    private static final int kDefaultBitsPerPixel = 32;
    private static final int kMotionEventButtonSecondary = 2;
    private static final int kMotionEventToolTypeEraser = 4;
    private static final int kMotionEventToolTypeStylus = 2;
    private static final int kTouchActionBegin = 2;
    private static final int kTouchActionEnd = 4;
    private static final int kTouchActionHoverBegin = 16;
    private static final int kTouchActionHoverEnd = 32;
    private static final int kTouchActionHoverMove = 8;
    private static final int kTouchActionMove = 1;
    private static final int kTouchMetaStateIsEraser = 0x4000000;
    private static final int kTouchMetaStateIsPen = 0x2000000;
    private static final int kTouchMetaStateMask = 0xe000000;
    private static final int kTouchMetaStateSideButton1 = 0x8000000;
    private boolean inTouch;
    public final int kMultitouchGesture = 2;
    public final int kMultitouchNone = 0;
    public final int kMultitouchRaw = 1;
    private final float kSampleSize = 4F;
    private AndroidActivityWrapper mActivityWrapper;
    private int mBoundHeight;
    private int mBoundWidth;
    private boolean mContextMenuVisible;
    private int mCurrentOrientation;
    private int mCurrentSurfaceFormat;
    private boolean mDispatchUserTriggeredSkDeactivate;
    private float mDownX;
    private float mDownY;
    private boolean mEatTouchRelease;
    protected FlashEGL mFlashEGL;
    private AndroidStageText mFocusedStageText;
    private AndroidWebView mFocusedWebView;
    private GestureDetector mGestureDetector;
    private AIRGestureListener mGestureListener;
    private boolean mHideSoftKeyboardOnWindowFocusChange;
    private boolean mHoverInProgress;
    private int mHoverMetaState;
    private HoverTimeoutHandler mHoverTimeoutHandler;
    private int mHt;
    private AndroidInputConnection mInputConnection;
    InputMethodReceiver mInputMethodReceiver;
    private boolean mIsFullScreen;
    private float mLastTouchedXCoord;
    private float mLastTouchedYCoord;
    private CheckLongPress mLongPressCheck;
    private boolean mMaliWorkaround;
    private MetaKeyState mMetaAltState;
    private MetaKeyState mMetaShiftState;
    private int mMultitouchMode;
    private boolean mNeedsCompositingSurface;
    private Paint mPaint;
    private Paint mPaintScaled;
    private AndroidStageText mResizedStageText;
    private AndroidWebView mResizedWebView;
    private ScaleGestureDetector mScaleGestureDetector;
    private int mScaledTouchSlop;
    private int mSkipHeightFromTop;
    private boolean mSurfaceChangedForSoftKeyboard;
    protected SurfaceHolder mSurfaceHolder;
    private boolean mSurfaceValid;
    private Rect mTextBoxBounds;
    private boolean mTrackBallPressed;
    private VideoView mVideoView;
    private int mVisibleBoundHeight;
    private int mVisibleBoundWidth;
    private int mWd;
    private boolean mWindowHasFocus;

    public AIRWindowSurfaceView(Context context, AndroidActivityWrapper androidactivitywrapper)
    {
        super(context);
        mWd = 0;
        mHt = 0;
        mSurfaceValid = false;
        mSkipHeightFromTop = 0;
        mSurfaceHolder = null;
        mFlashEGL = null;
        mBoundHeight = 0;
        mBoundWidth = 0;
        mVisibleBoundWidth = 0;
        mVisibleBoundHeight = 0;
        mMultitouchMode = 0;
        mPaint = null;
        mPaintScaled = null;
        mMaliWorkaround = false;
        mHoverInProgress = false;
        mHoverMetaState = 0;
        mCurrentOrientation = 0;
        mEatTouchRelease = false;
        mContextMenuVisible = false;
        mLongPressCheck = null;
        mIsFullScreen = false;
        mSurfaceChangedForSoftKeyboard = false;
        mDispatchUserTriggeredSkDeactivate = true;
        mHideSoftKeyboardOnWindowFocusChange = false;
        mTrackBallPressed = false;
        mWindowHasFocus = true;
        mNeedsCompositingSurface = false;
        mCurrentSurfaceFormat = -1;
        mFocusedWebView = null;
        mResizedWebView = null;
        mFocusedStageText = null;
        mResizedStageText = null;
        inTouch = false;
        mMetaShiftState = MetaKeyState.INACTIVE;
        mMetaAltState = MetaKeyState.INACTIVE;
        mHoverTimeoutHandler = new HoverTimeoutHandler(this);
        mInputMethodReceiver = new InputMethodReceiver();
        mSurfaceHolder = getHolder();
        mActivityWrapper = androidactivitywrapper;
        setSurfaceFormat(false);
        mGestureListener = new AIRGestureListener(context, this);
        mGestureDetector = new GestureDetector(context, mGestureListener, null, false);
        mScaleGestureDetector = new ScaleGestureDetector(context, mGestureListener);
        setWillNotDraw(false);
        setClickable(true);
        setEnabled(true);
        setFocusable(true);
        setFocusableInTouchMode(true);
        mScaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        mSurfaceHolder.addCallback(this);
        setZOrderMediaOverlay(true);
        mActivityWrapper.registerPlane(this, 3);
    }

    private boolean AllowOSToHandleKeys(int i)
    {
        switch (i)
        {
        default:
            return false;

        case 24: // '\030'
        case 25: // '\031'
        case 26: // '\032'
            return true;
        }
    }

    private void DoSetOnSystemUiVisibilityChangeListener()
    {
        setOnSystemUiVisibilityChangeListener(new android.view.View.OnSystemUiVisibilityChangeListener() {

            final AIRWindowSurfaceView this$0;
            final AIRWindowSurfaceView val$theThis;

            public void onSystemUiVisibilityChange(int i)
            {
                theThis.setOnSystemUiVisibilityChangeListener(null);
                if (theThis.getIsFullScreen())
                {
                    theThis.nativeDispatchFullScreenEvent(true);
                    return;
                } else
                {
                    theThis.nativeDispatchFullScreenEvent(false);
                    return;
                }
            }

            
            {
                this$0 = AIRWindowSurfaceView.this;
                theThis = airwindowsurfaceview1;
                super();
            }
        });
    }

    private MetaKeyState GetMetaKeyState(MetaKeyState metakeystate, boolean flag, boolean flag1)
    {
        static class _cls5
        {

            static final int $SwitchMap$com$adobe$air$AIRWindowSurfaceView$MetaKeyState[];

            static 
            {
                $SwitchMap$com$adobe$air$AIRWindowSurfaceView$MetaKeyState = new int[MetaKeyState.values().length];
                try
                {
                    $SwitchMap$com$adobe$air$AIRWindowSurfaceView$MetaKeyState[MetaKeyState.INACTIVE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$adobe$air$AIRWindowSurfaceView$MetaKeyState[MetaKeyState.PRESSED.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$adobe$air$AIRWindowSurfaceView$MetaKeyState[MetaKeyState.ACTIVE.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$adobe$air$AIRWindowSurfaceView$MetaKeyState[MetaKeyState.LOCKED.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        if (flag1)
        {
            switch (_cls5..SwitchMap.com.adobe.air.AIRWindowSurfaceView.MetaKeyState[metakeystate.ordinal()])
            {
            default:
                return MetaKeyState.INACTIVE;

            case 1: // '\001'
            case 2: // '\002'
                if (flag)
                {
                    return MetaKeyState.PRESSED;
                } else
                {
                    return MetaKeyState.INACTIVE;
                }

            case 3: // '\003'
                if (flag)
                {
                    return MetaKeyState.PRESSED;
                } else
                {
                    return MetaKeyState.INACTIVE;
                }

            case 4: // '\004'
                return MetaKeyState.LOCKED;
            }
        }
        if (flag)
        {
            switch (_cls5..SwitchMap.com.adobe.air.AIRWindowSurfaceView.MetaKeyState[metakeystate.ordinal()])
            {
            default:
                return MetaKeyState.INACTIVE;

            case 1: // '\001'
            case 2: // '\002'
                return MetaKeyState.ACTIVE;

            case 3: // '\003'
                return MetaKeyState.LOCKED;
            }
        } else
        {
            return MetaKeyState.INACTIVE;
        }
    }

    private void HandleMetaKeyAction(KeyEvent keyevent)
    {
        keyevent.getKeyCode();
        JVM INSTR tableswitch 57 60: default 36
    //                   57 96
    //                   58 96
    //                   59 71
    //                   60 71;
           goto _L1 _L2 _L2 _L3 _L3
_L1:
        mMetaShiftState = GetMetaKeyState(mMetaShiftState, keyevent.isShiftPressed(), true);
        mMetaAltState = GetMetaKeyState(mMetaAltState, keyevent.isAltPressed(), true);
_L5:
        return;
_L3:
        if (keyevent.getRepeatCount() == 0)
        {
            mMetaShiftState = GetMetaKeyState(mMetaShiftState, keyevent.isShiftPressed(), false);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (keyevent.getRepeatCount() == 0)
        {
            mMetaAltState = GetMetaKeyState(mMetaAltState, keyevent.isAltPressed(), false);
            return;
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    private boolean HandleShortCuts(int i, KeyEvent keyevent)
    {
        if (i == 23)
        {
            if (!mTrackBallPressed && !mContextMenuVisible)
            {
                mTrackBallPressed = true;
                postCheckLongPress();
                return false;
            } else
            {
                return true;
            }
        }
        if (keyevent.isAltPressed())
        {
            switch (i)
            {
            default:
                return false;

            case 67: // 'C'
                nativeDeleteTextLine();
                return true;

            case 21: // '\025'
                nativeMoveCursor(0);
                return true;

            case 22: // '\026'
                nativeMoveCursor(1);
                return true;

            case 19: // '\023'
                nativeMoveCursor(2);
                return true;

            case 20: // '\024'
                nativeMoveCursor(3);
                return true;
            }
        } else
        {
            return false;
        }
    }

    private boolean IsIMEInFullScreen()
    {
        return getInputMethodManager().isFullscreenMode();
    }

    private boolean IsPointInTextBox(float f, float f1, int i)
    {
        if (i == 2)
        {
            mTextBoxBounds = nativeGetTextBoxBounds();
        }
        boolean flag;
        if (mTextBoxBounds != null && (int)f > mTextBoxBounds.left && (int)f < mTextBoxBounds.right && (int)f1 > mTextBoxBounds.top && (int)f1 < mTextBoxBounds.bottom)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (i == 4)
        {
            mTextBoxBounds = null;
        }
        return flag;
    }

    private boolean IsTouchEventHandlingAllowed(int i, float f, float f1)
    {
        boolean flag = IsPointInTextBox(f, f1, i);
        if (i == 2)
        {
            mDownX = f;
            mDownY = f1;
            mEatTouchRelease = false;
            if (flag)
            {
                postCheckLongPress();
                return true;
            }
        } else
        if (i == 1)
        {
            if (flag)
            {
                if (IsTouchMove(f, f1))
                {
                    if (mLongPressCheck != null)
                    {
                        removeCallbacks(mLongPressCheck);
                        return true;
                    }
                } else
                {
                    return false;
                }
            }
        } else
        if (i == 4 && mLongPressCheck != null)
        {
            removeCallbacks(mLongPressCheck);
        }
        return true;
    }

    private boolean IsTouchMove(float f, float f1)
    {
        f = mDownX - f;
        f1 = mDownY - f1;
        return (float)Math.sqrt(f * f + f1 * f1) >= (float)mScaledTouchSlop;
    }

    private boolean hasStatusBar(Window window)
    {
        Rect rect = new Rect();
        window.getDecorView().getWindowVisibleDisplayFrame(rect);
        return rect.top > 0;
    }

    private native void nativeCutText(boolean flag);

    private native void nativeDeleteTextLine();

    private native void nativeDispatchFullScreenEvent(boolean flag);

    private native void nativeDispatchSelectionChangeEvent(boolean flag);

    private native void nativeForceReDraw();

    private native int nativeGetMultitouchMode();

    private native String nativeGetSelectedText();

    private native Rect nativeGetTextBoxBounds();

    private native void nativeInsertText(String s);

    private native boolean nativeIsEditable();

    private native boolean nativeIsFullScreenInteractive();

    private native boolean nativeIsMultiLineTextField();

    private native boolean nativeIsPasswordField();

    private native boolean nativeIsTextFieldInSelectionMode();

    private native boolean nativeIsTextFieldSelectable();

    private native void nativeMoveCursor(int i);

    private native void nativeOnFormatChangeListener(int i);

    private native void nativeOnSizeChangedListener(int i, int j, boolean flag);

    private native boolean nativePerformWindowPanning(int i, int j);

    private native void nativeSelectAllText();

    private native void nativeSetKeyboardVisible(boolean flag);

    private native void nativeSurfaceCreated();

    private void postCheckLongPress()
    {
        if (mLongPressCheck == null)
        {
            mLongPressCheck = new CheckLongPress();
        }
        postDelayed(mLongPressCheck, 500L);
    }

    private void setSurfaceFormatImpl(boolean flag, final int format)
    {
        if (flag)
        {
            post(new Runnable() {

                final AIRWindowSurfaceView this$0;
                final int val$format;

                public void run()
                {
                    mSurfaceHolder.setFormat(format);
                    mCurrentSurfaceFormat = format;
                }

            
            {
                this$0 = AIRWindowSurfaceView.this;
                format = i;
                super();
            }
            });
            return;
        } else
        {
            mSurfaceHolder.setFormat(format);
            mCurrentSurfaceFormat = format;
            return;
        }
    }

    private static boolean supportsSystemUiFlags()
    {
        return android.os.Build.VERSION.SDK_INT >= 14;
    }

    private static boolean supportsSystemUiVisibilityAPI()
    {
        return android.os.Build.VERSION.SDK_INT >= 11;
    }

    public void DispatchSoftKeyboardEventOnBackKey()
    {
        if (mIsFullScreen && !mSurfaceChangedForSoftKeyboard || mFlashEGL != null || IsIMEInFullScreen() || !mSurfaceChangedForSoftKeyboard && !nativeIsEditable())
        {
            nativeDispatchUserTriggeredSkDeactivateEvent();
            if (!mSurfaceChangedForSoftKeyboard && !nativeIsEditable())
            {
                nativeShowOriginalRect();
            }
        }
    }

    int GetMetaKeyCharacter(KeyEvent keyevent)
    {
        int j;
label0:
        {
            int i = 0;
            if (mMetaShiftState == MetaKeyState.LOCKED || mMetaShiftState == MetaKeyState.ACTIVE)
            {
                i = false | true;
            }
            if (mMetaAltState != MetaKeyState.LOCKED)
            {
                j = i;
                if (mMetaAltState != MetaKeyState.ACTIVE)
                {
                    break label0;
                }
            }
            j = i | 2;
        }
        return keyevent.getUnicodeChar(j);
    }

    public void HideSoftKeyboardOnWindowFocusChange()
    {
        mHideSoftKeyboardOnWindowFocusChange = true;
    }

    public boolean IsLandScape()
    {
        return mCurrentOrientation == 2;
    }

    public boolean IsPasswordVisibleSettingEnabled()
    {
        int i;
        try
        {
            i = android.provider.Settings.System.getInt(getContext().getContentResolver(), "show_password");
        }
        catch (Exception exception)
        {
            return false;
        }
        return i == 1;
    }

    public boolean IsSurfaceChangedForSoftKeyboard()
    {
        return mSurfaceChangedForSoftKeyboard;
    }

    public boolean IsTouchUpHandlingAllowed()
    {
        return !mEatTouchRelease;
    }

    public void RestartInput()
    {
        mMetaShiftState = MetaKeyState.INACTIVE;
        mMetaAltState = MetaKeyState.INACTIVE;
        InputMethodManager inputmethodmanager = getInputMethodManager();
        if (inputmethodmanager != null)
        {
            inputmethodmanager.restartInput(this);
        }
        if (mInputConnection != null)
        {
            mInputConnection.Reset();
        }
    }

    public void SetSelectionMode(boolean flag)
    {
        nativeDispatchSelectionChangeEvent(flag);
    }

    public void SetSurfaceChangedForSoftKeyboard(boolean flag)
    {
        mSurfaceChangedForSoftKeyboard = flag;
    }

    public void clearFullScreen()
    {
        mIsFullScreen = false;
        mActivityWrapper.setIsFullScreen(mIsFullScreen);
        if (supportsSystemUiVisibilityAPI())
        {
            if (!supportsSystemUiFlags());
            DoSetOnSystemUiVisibilityChangeListener();
            setSystemUiVisibility(0);
        }
        Activity activity = mActivityWrapper.getActivity();
        if (activity != null)
        {
            activity.getWindow().clearFlags(1024);
        }
        mActivityWrapper.planeBreakCascade();
    }

    protected void draw(int i, int j, int k, int l, Bitmap bitmap)
    {
        if (mSurfaceValid) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Rect rect;
        rect = new Rect(i, j, i + k, j + l);
        i = mSkipHeightFromTop;
        if (i == 0) goto _L4; else goto _L3
_L3:
        Object obj = new Rect(0, i, mWd, mHt);
        if (!Rect.intersects(rect, ((Rect) (obj)))) goto _L1; else goto _L5
_L5:
        rect = new Rect(rect);
        rect.intersect(((Rect) (obj)));
        rect.top = rect.top - i;
        rect.bottom = rect.bottom - i;
        if (mIsFullScreen)
        {
            rect.union(new Rect(0, rect.bottom, mWd, mHt));
        }
        obj = mSurfaceHolder.lockCanvas(rect);
        if (!mIsFullScreen && rect.bottom > mHt - i)
        {
            rect.bottom = mHt - i;
        }
_L8:
        SurfaceHolder surfaceholder = mSurfaceHolder;
        surfaceholder;
        JVM INSTR monitorenter ;
        ((Canvas) (obj)).clipRect(rect);
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_221;
        }
        if (mIsFullScreen)
        {
            ((Canvas) (obj)).drawColor(0xff000000);
        }
        if (!mMaliWorkaround) goto _L7; else goto _L6
_L6:
        mPaint = null;
        ((Canvas) (obj)).drawColor(0, android.graphics.PorterDuff.Mode.CLEAR);
_L10:
        ((Canvas) (obj)).drawBitmap(bitmap, 0.0F, -i, mPaint);
        surfaceholder;
        JVM INSTR monitorexit ;
        if (obj != null)
        {
            mSurfaceHolder.unlockCanvasAndPost(((Canvas) (obj)));
        }
_L12:
        if (mInputConnection != null)
        {
            mInputConnection.updateIMEText();
            return;
        }
          goto _L1
_L4:
        obj = mSurfaceHolder.lockCanvas(rect);
          goto _L8
_L7:
        if (mPaint != null || mCurrentSurfaceFormat == 4) goto _L10; else goto _L9
_L9:
        mPaint = new Paint();
        mPaint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC));
        mPaint.setFilterBitmap(false);
          goto _L10
        bitmap;
        surfaceholder;
        JVM INSTR monitorexit ;
        try
        {
            throw bitmap;
        }
        // Misplaced declaration of an exception variable
        catch (Bitmap bitmap) { }
        finally
        {
            if (obj == null) goto _L0; else goto _L0
        }
        if (obj == null) goto _L12; else goto _L11
_L11:
        mSurfaceHolder.unlockCanvasAndPost(((Canvas) (obj)));
        if (true) goto _L12; else goto _L13
_L13:
        mSurfaceHolder.unlockCanvasAndPost(((Canvas) (obj)));
        throw bitmap;
          goto _L8
    }

    public void drawBitmap(int i, int j, int k, int l, Bitmap bitmap)
    {
        draw(i, j, k, l, bitmap);
    }

    public void drawBitmap(int i, int j, int k, int l, Bitmap bitmap, int i1, int j1, 
            int k1, int l1, boolean flag, int i2)
    {
        drawScaled(i, j, k, l, bitmap, i1, j1, k1, l1, flag, i2);
    }

    protected void drawScaled(int i, int j, int k, int l, Bitmap bitmap, int i1, int j1, 
            int k1, int l1, boolean flag, int i2)
    {
        if (mSurfaceValid) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Canvas canvas;
        SurfaceHolder surfaceholder;
        surfaceholder = null;
        canvas = surfaceholder;
        Rect rect = new Rect(i1, j1, i1 + k1, j1 + l1);
        if (!flag) goto _L4; else goto _L3
_L3:
        canvas = surfaceholder;
        Object obj = new Rect(0, 0, mWd, mHt);
_L9:
        canvas = surfaceholder;
        if (mSkipHeightFromTop == 0) goto _L6; else goto _L5
_L5:
        canvas = surfaceholder;
        i1 = mSkipHeightFromTop;
        canvas = surfaceholder;
        Rect rect1 = new Rect(0, i1, mWd, mHt);
        canvas = surfaceholder;
        boolean flag1 = Rect.intersects(rect, rect1);
        if (flag1) goto _L8; else goto _L7
_L7:
        if (false)
        {
            mSurfaceHolder.unlockCanvasAndPost(null);
            return;
        }
          goto _L1
_L4:
        canvas = surfaceholder;
        obj = new Rect(i1, j1, i1 + k1, j1 + l1);
          goto _L9
_L14:
        if (mInputConnection != null)
        {
            mInputConnection.updateIMEText();
            return;
        }
          goto _L1
_L8:
        canvas = surfaceholder;
        rect = new Rect(rect);
        canvas = surfaceholder;
        rect.intersect(rect1);
        canvas = surfaceholder;
        rect.top = rect.top - i1;
        canvas = surfaceholder;
        rect.bottom = rect.bottom - i1;
        if (!flag)
        {
            obj = rect;
        }
        if (flag) goto _L6; else goto _L10
_L10:
        canvas = surfaceholder;
        if (rect.bottom <= mHt - i1) goto _L6; else goto _L11
_L11:
        canvas = surfaceholder;
        rect.bottom = mHt - i1;
_L6:
        canvas = surfaceholder;
        rect1 = new Rect(i, j, i + k, j + l);
        canvas = surfaceholder;
        obj = mSurfaceHolder.lockCanvas(((Rect) (obj)));
        canvas = ((Canvas) (obj));
        surfaceholder = mSurfaceHolder;
        canvas = ((Canvas) (obj));
        surfaceholder;
        JVM INSTR monitorenter ;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_401;
        }
        ((Canvas) (obj)).drawRGB(Color.red(i2), Color.green(i2), Color.blue(i2));
        if (!mMaliWorkaround) goto _L13; else goto _L12
_L12:
        mPaint = null;
        ((Canvas) (obj)).drawColor(0, android.graphics.PorterDuff.Mode.CLEAR);
_L16:
        ((Canvas) (obj)).drawBitmap(bitmap, rect1, rect, mPaintScaled);
        surfaceholder;
        JVM INSTR monitorexit ;
        if (obj != null)
        {
            mSurfaceHolder.unlockCanvasAndPost(((Canvas) (obj)));
        }
          goto _L14
_L13:
        if (mPaintScaled != null || mCurrentSurfaceFormat == 4) goto _L16; else goto _L15
_L15:
        mPaintScaled = new Paint();
        mPaintScaled.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC));
          goto _L16
        bitmap;
        surfaceholder;
        JVM INSTR monitorexit ;
        canvas = ((Canvas) (obj));
        try
        {
            throw bitmap;
        }
        // Misplaced declaration of an exception variable
        catch (Bitmap bitmap)
        {
            if (canvas != null)
            {
                mSurfaceHolder.unlockCanvasAndPost(canvas);
            }
        }
        finally { }
          goto _L14
_L18:
        if (obj != null)
        {
            mSurfaceHolder.unlockCanvasAndPost(((Canvas) (obj)));
        }
        throw bitmap;
        bitmap;
        obj = null;
        if (true) goto _L18; else goto _L17
_L17:
    }

    public void forceSoftKeyboardDown()
    {
        nativeShowOriginalRect();
        setScrollTo(0);
        if (mDispatchUserTriggeredSkDeactivate && mSurfaceChangedForSoftKeyboard)
        {
            nativeDispatchUserTriggeredSkDeactivateEvent();
        }
        nativeSetKeyboardVisible(false);
        mDispatchUserTriggeredSkDeactivate = true;
        mSurfaceChangedForSoftKeyboard = false;
    }

    public boolean gatherTransparentRegion(Region region)
    {
        int ai[] = new int[2];
        getLocationInWindow(ai);
        region.op(ai[0], ai[1], mVisibleBoundWidth, mVisibleBoundHeight, android.graphics.Region.Op.REPLACE);
        return false;
    }

    public AndroidActivityWrapper getActivityWrapper()
    {
        return mActivityWrapper;
    }

    public int getAppSpecifiedPixelFormat()
    {
        return !mActivityWrapper.useRGB565() ? 32 : 16;
    }

    public int getBoundHeight()
    {
        return mBoundHeight;
    }

    public int getBoundWidth()
    {
        return mBoundWidth;
    }

    public int getColorDepth()
    {
        byte byte0;
        if (mCurrentSurfaceFormat == 4)
        {
            byte0 = 16;
        } else
        {
            byte0 = 32;
            Object obj = mActivityWrapper.getActivity();
            if (obj != null)
            {
                obj = ((WindowManager)((Activity) (obj)).getSystemService("window")).getDefaultDisplay();
                PixelFormat pixelformat = new PixelFormat();
                PixelFormat.getPixelFormatInfo(((Display) (obj)).getPixelFormat(), pixelformat);
                return pixelformat.bitsPerPixel;
            }
        }
        return byte0;
    }

    public InputMethodManager getInputMethodManager()
    {
        return (InputMethodManager)getContext().getSystemService("input_method");
    }

    public boolean getIsFullScreen()
    {
        return mIsFullScreen;
    }

    public int getKeyboardHeight()
    {
        return mHt - getVisibleBoundHeight();
    }

    public int getMultitouchMode()
    {
        return mMultitouchMode;
    }

    public VideoView getVideoView()
    {
        if (mVideoView == null)
        {
            mVideoView = new VideoViewAIR(getContext(), mActivityWrapper);
        }
        return mVideoView;
    }

    public int getVisibleBoundHeight()
    {
        return mVisibleBoundHeight;
    }

    public int getVisibleBoundWidth()
    {
        return mVisibleBoundWidth;
    }

    public boolean isStageTextInFocus()
    {
        return mFocusedStageText != null;
    }

    public boolean isStageWebViewInFocus()
    {
        if (mFocusedWebView != null)
        {
            return mFocusedWebView.isInTextEditingMode();
        } else
        {
            return false;
        }
    }

    public boolean isSurfaceValid()
    {
        return mSurfaceValid;
    }

    public native void nativeDispatchUserTriggeredSkDeactivateEvent();

    public native ExtractedText nativeGetTextContent();

    public native int nativeGetTextContentLength();

    public native boolean nativeIsTextSelected();

    public native boolean nativeOnDoubleClickListener(float f, float f1);

    public native boolean nativeOnKeyListener(int i, int j, int k, boolean flag, boolean flag1, boolean flag2);

    public native void nativeShowOriginalRect();

    public boolean onCheckIsTextEditor()
    {
        return true;
    }

    protected void onCreateContextMenu(ContextMenu contextmenu)
    {
        super.onCreateContextMenu(contextmenu);
        if (!mIsFullScreen || nativeIsFullScreenInteractive())
        {
            ClipboardManager clipboardmanager = (ClipboardManager)getContext().getSystemService("clipboard");
            MenuHandler menuhandler = new MenuHandler();
            boolean flag1 = nativeIsEditable();
            boolean flag2 = nativeIsTextFieldSelectable();
            if (flag2 || flag1)
            {
                if (flag2)
                {
                    boolean flag;
                    if (nativeGetTextContentLength() > 0)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    if (flag)
                    {
                        contextmenu.add(0, 0, 0, AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_SELECT_ALL)).setOnMenuItemClickListener(menuhandler).setAlphabeticShortcut('a');
                        boolean flag3;
                        if (nativeIsTextFieldInSelectionMode())
                        {
                            contextmenu.add(0, 8, 0, AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_STOP_SELECTING_TEXT)).setOnMenuItemClickListener(menuhandler);
                        } else
                        {
                            contextmenu.add(0, 7, 0, AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_SELECT_TEXT)).setOnMenuItemClickListener(menuhandler);
                        }
                    }
                    if (!nativeIsPasswordField() && flag)
                    {
                        flag3 = nativeIsTextSelected();
                        if (flag1)
                        {
                            if (flag3)
                            {
                                contextmenu.add(0, 1, 0, AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_CUT_STRING)).setOnMenuItemClickListener(menuhandler).setAlphabeticShortcut('x');
                            } else
                            {
                                contextmenu.add(0, 2, 0, AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_CUT_ALL_STRING)).setOnMenuItemClickListener(menuhandler);
                            }
                        }
                        if (flag3)
                        {
                            contextmenu.add(0, 3, 0, AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_COPY_STRING)).setOnMenuItemClickListener(menuhandler).setAlphabeticShortcut('c');
                        } else
                        {
                            contextmenu.add(0, 4, 0, AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_COPY_ALL_STRING)).setOnMenuItemClickListener(menuhandler);
                        }
                    }
                }
                if (flag1)
                {
                    if (clipboardmanager != null && clipboardmanager.hasText())
                    {
                        contextmenu.add(0, 5, 0, AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_PASTE_STRING)).setOnMenuItemClickListener(menuhandler).setAlphabeticShortcut('v');
                    }
                    contextmenu.add(0, 6, 0, AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_INPUT_METHOD_STRING)).setOnMenuItemClickListener(menuhandler);
                }
                mEatTouchRelease = true;
                mContextMenuVisible = true;
                contextmenu.setHeaderTitle(AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_CONTEXT_MENU_TITLE_STRING));
                return;
            }
        }
    }

    public InputConnection onCreateInputConnection(EditorInfo editorinfo)
    {
        if (mActivityWrapper.isApplicationLaunched() && nativeIsEditable())
        {
            editorinfo.imeOptions = editorinfo.imeOptions | 0x40000000;
            editorinfo.imeOptions = editorinfo.imeOptions | 6;
            editorinfo.inputType = editorinfo.inputType | 1;
            if (nativeIsPasswordField())
            {
                editorinfo.inputType = editorinfo.inputType | 0x80;
            }
            if (nativeIsMultiLineTextField())
            {
                editorinfo.inputType = editorinfo.inputType | 0x20000;
            }
            mInputConnection = new AndroidInputConnection(this);
            editorinfo.initialSelStart = -1;
            editorinfo.initialSelEnd = -1;
            editorinfo.initialCapsMode = 0;
        } else
        {
            mInputConnection = null;
        }
        return mInputConnection;
    }

    protected void onFocusChanged(boolean flag, int i, Rect rect)
    {
        AIRLogger.d("AIRWindowSurfaceView", "*** *** onFocusChanged: AIR");
        if (flag && mFocusedStageText != null && !inTouch)
        {
            mDispatchUserTriggeredSkDeactivate = true;
            forceSoftKeyboardDown();
        }
        super.onFocusChanged(flag, i, rect);
    }

    public boolean onGenericMotionEvent(MotionEvent motionevent)
    {
        if (motionevent.getAction() == 9 || motionevent.getAction() == 10 || motionevent.getAction() == 7)
        {
            return onTouchEvent(motionevent);
        } else
        {
            return false;
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        boolean flag;
        if (AllowOSToHandleKeys(i))
        {
            flag = false;
        } else
        {
            int j = keyevent.getUnicodeChar();
            if (mMetaShiftState == MetaKeyState.ACTIVE || mMetaShiftState == MetaKeyState.LOCKED || mMetaAltState == MetaKeyState.ACTIVE || mMetaAltState == MetaKeyState.LOCKED)
            {
                j = GetMetaKeyCharacter(keyevent);
            }
            HandleMetaKeyAction(keyevent);
            if (!mTrackBallPressed && mLongPressCheck != null)
            {
                removeCallbacks(mLongPressCheck);
            }
            if (mActivityWrapper.isApplicationLaunched() && !HandleShortCuts(i, keyevent))
            {
                boolean flag1 = nativeOnKeyListener(keyevent.getAction(), i, j, keyevent.isAltPressed(), keyevent.isShiftPressed(), keyevent.isSymPressed());
                flag = flag1;
                if (mInputConnection != null)
                {
                    mInputConnection.updateIMEText();
                    return flag1;
                }
            } else
            {
                return false;
            }
        }
        return flag;
    }

    public boolean onKeyPreIme(int i, KeyEvent keyevent)
    {
        if (i == 4 && keyevent.getAction() == 0)
        {
            DispatchSoftKeyboardEventOnBackKey();
        }
        return false;
    }

    public boolean onKeyUp(int i, KeyEvent keyevent)
    {
        boolean flag;
        if (AllowOSToHandleKeys(i))
        {
            flag = false;
        } else
        {
            int j = keyevent.getUnicodeChar();
            if (mMetaShiftState == MetaKeyState.ACTIVE || mMetaShiftState == MetaKeyState.LOCKED || mMetaAltState == MetaKeyState.ACTIVE || mMetaAltState == MetaKeyState.LOCKED)
            {
                j = GetMetaKeyCharacter(keyevent);
            }
            if (mLongPressCheck != null)
            {
                removeCallbacks(mLongPressCheck);
            }
            if (i == 23)
            {
                mTrackBallPressed = false;
            }
            if (mActivityWrapper.isApplicationLaunched())
            {
                boolean flag1 = nativeOnKeyListener(keyevent.getAction(), i, j, keyevent.isAltPressed(), keyevent.isShiftPressed(), keyevent.isSymPressed());
                if (mInputConnection != null)
                {
                    mInputConnection.updateIMEText();
                }
                flag = flag1;
                if (!flag1)
                {
                    flag = flag1;
                    if (keyevent.getKeyCode() == 4)
                    {
                        flag = flag1;
                        if (keyevent.isTracking())
                        {
                            flag = flag1;
                            if (!keyevent.isCanceled())
                            {
                                mActivityWrapper.getActivity().moveTaskToBack(false);
                                return true;
                            }
                        }
                    }
                }
            } else
            {
                return false;
            }
        }
        return flag;
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
    }

    public boolean onTextBoxContextMenuItem(int i)
    {
        ClipboardManager clipboardmanager = (ClipboardManager)getContext().getSystemService("clipboard");
        i;
        JVM INSTR tableswitch 0 8: default 68
    //                   0 70
    //                   1 207
    //                   2 249
    //                   3 90
    //                   4 127
    //                   5 165
    //                   6 292
    //                   7 191
    //                   8 199;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10
_L1:
        return false;
_L2:
        nativeSelectAllText();
_L12:
        if (mInputConnection != null)
        {
            mInputConnection.updateIMEText();
        }
        return true;
_L5:
        String s2 = nativeGetSelectedText();
        if (s2 != null)
        {
            String s = s2;
            if (nativeIsPasswordField())
            {
                s = Utils.ReplaceTextContentWithStars(s2);
            }
            clipboardmanager.setText(s);
        }
        SetSelectionMode(false);
        continue; /* Loop/switch isn't completed */
_L6:
        CharSequence charsequence1 = nativeGetTextContent().text;
        if (charsequence1 != null)
        {
            Object obj = charsequence1;
            if (nativeIsPasswordField())
            {
                obj = Utils.ReplaceTextContentWithStars(charsequence1.toString());
            }
            clipboardmanager.setText(((CharSequence) (obj)));
        }
        continue; /* Loop/switch isn't completed */
_L7:
        CharSequence charsequence = clipboardmanager.getText();
        if (charsequence != null)
        {
            nativeInsertText(charsequence.toString());
        }
        SetSelectionMode(false);
        continue; /* Loop/switch isn't completed */
_L9:
        SetSelectionMode(true);
        continue; /* Loop/switch isn't completed */
_L10:
        SetSelectionMode(false);
        continue; /* Loop/switch isn't completed */
_L3:
        String s3 = nativeGetSelectedText();
        if (s3 != null)
        {
            nativeCutText(false);
            String s1 = s3;
            if (nativeIsPasswordField())
            {
                s1 = Utils.ReplaceTextContentWithStars(s3);
            }
            clipboardmanager.setText(s1);
        }
        SetSelectionMode(false);
        continue; /* Loop/switch isn't completed */
_L4:
        CharSequence charsequence2 = nativeGetTextContent().text;
        if (charsequence2 != null)
        {
            nativeCutText(true);
            Object obj1 = charsequence2;
            if (nativeIsPasswordField())
            {
                obj1 = Utils.ReplaceTextContentWithStars(charsequence2.toString());
            }
            clipboardmanager.setText(((CharSequence) (obj1)));
        }
        continue; /* Loop/switch isn't completed */
_L8:
        InputMethodManager inputmethodmanager = getInputMethodManager();
        if (inputmethodmanager != null)
        {
            inputmethodmanager.showInputMethodPicker();
        }
        if (true) goto _L12; else goto _L11
_L11:
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        float f;
        float f1;
        float f2;
        float af[];
        int i;
        int j;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        int i3;
        boolean flag;
        inTouch = true;
        j = motionevent.getAction() & 0xff;
        if (j == 9 || j == 10 || j == 7)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        if (!hasFocus() && i == 0)
        {
            RelativeLayout relativelayout = mActivityWrapper.getOverlaysLayout(false);
            if (relativelayout != null)
            {
                requestFocus();
                relativelayout.clearFocus();
                int k = relativelayout.getChildCount();
                for (i = 0; i < k; i++)
                {
                    View view = relativelayout.getChildAt(i);
                    if (view != null)
                    {
                        view.clearFocus();
                    }
                }

            }
        }
        if (j == 5 || j == 0)
        {
            for (i = 0; i < motionevent.getPointerCount(); i++)
            {
                int l = motionevent.getPointerId(i);
                mGestureListener.setDownTouchPoint(motionevent.getX(i), motionevent.getY(i), l);
            }

        }
        if (j == 0)
        {
            mGestureListener.mayStartNewTransformGesture();
        }
        int l2;
        int j3;
        int k3;
        if (j == 5)
        {
            mGestureListener.setCouldBeTwoFingerTap(1);
            mGestureListener.setSecondaryPointOfTwoFingerTap(mGestureListener.getDownTouchPoint(j >> 8));
        } else
        if (j == 6 && mGestureListener.getCouldBeTwoFingerTap() == 1)
        {
            mGestureListener.setCouldBeTwoFingerTap(2);
        } else
        if (j == 1 && mGestureListener.getCouldBeTwoFingerTap() == 2)
        {
            mGestureListener.setCouldBeTwoFingerTap(3);
        } else
        if (j != 2)
        {
            mGestureListener.setCouldBeTwoFingerTap(0);
        }
        if (!mActivityWrapper.isApplicationLaunched()) goto _L2; else goto _L1
_L1:
        l2 = motionevent.getPointerCount();
        j2 = 0;
        k1 = 1;
        i = 0;
_L27:
        if (j2 >= l2) goto _L4; else goto _L3
_L3:
        f = motionevent.getX(j2);
        f1 = motionevent.getY(j2);
        f1 = (float)mSkipHeightFromTop + f1;
        mLastTouchedXCoord = f;
        mLastTouchedYCoord = f1;
        i1 = motionevent.getAction();
        i3 = motionevent.getPointerId(j2);
        j = motionevent.getMetaState();
        l1 = j;
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            j1 = j & 0xf1ffffff;
            l1 = motionevent.getToolType(j2);
            if (l1 == 4)
            {
                j = j1 | 0x4000000;
            } else
            {
                j = j1;
                if (l1 == 2)
                {
                    j = j1 | 0x2000000;
                }
            }
            l1 = j;
            if ((motionevent.getButtonState() & 2) != 0)
            {
                l1 = j | 0x8000000;
            }
        }
        if (i == 0) goto _L6; else goto _L5
_L5:
        j = 3;
        j1 = 4;
        i1 = 0;
_L18:
        i2 = k1;
        if (!IsTouchEventHandlingAllowed(j1, f, f1)) goto _L8; else goto _L7
_L6:
        if (motionevent.getPointerCount() != 1 && i3 != motionevent.getPointerId((0xff00 & i1) >> 8)) goto _L10; else goto _L9
_L9:
        j = i1 & 0xff;
        i1 = i;
        j;
        JVM INSTR tableswitch 0 10: default 712
    //                   0 809
    //                   1 821
    //                   2 712
    //                   3 818
    //                   4 712
    //                   5 809
    //                   6 821
    //                   7 751
    //                   8 712
    //                   9 731
    //                   10 741;
           goto _L11 _L12 _L13 _L11 _L14 _L11 _L12 _L13 _L15 _L11 _L16 _L17
_L11:
        mHoverTimeoutHandler.setLastMove(System.currentTimeMillis());
        j1 = 1;
        i1 = 0;
          goto _L18
_L16:
        j1 = 16;
        i1 = 0;
          goto _L18
_L17:
        j1 = 32;
        i1 = 0;
          goto _L18
_L15:
        if (android.os.Build.VERSION.SDK_INT >= 14) goto _L20; else goto _L19
_L19:
        mHoverTimeoutHandler.setLastMove(System.currentTimeMillis());
        mHoverMetaState = l1;
        if (mHoverInProgress) goto _L20; else goto _L21
_L21:
        mHoverTimeoutHandler.sendEmptyMessageDelayed(0, 500L);
        mHoverInProgress = true;
        j1 = 8;
        i1 = 1;
          goto _L18
_L12:
        j1 = 2;
        i1 = 0;
          goto _L18
_L14:
        i1 = 1;
_L13:
        mGestureListener.endTwoFingerGesture();
        mGestureListener.setCheckForSwipe(true);
        j1 = 4;
        i = i1;
        i1 = 0;
          goto _L18
_L7:
        float f3;
        f2 = motionevent.getSize(j2);
        if (i3 == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        j3 = motionevent.getHistorySize();
        af = new float[(j3 + 1) * 3];
        k2 = 0;
        for (i2 = 0; i2 < j3;)
        {
            k3 = k2 + 1;
            af[k2] = motionevent.getHistoricalX(j2, i2);
            k2 = k3 + 1;
            af[k3] = motionevent.getHistoricalY(j2, i2);
            af[k2] = motionevent.getHistoricalPressure(j2, i2);
            i2++;
            k2++;
        }

        f3 = motionevent.getPressure(j2);
        af[k2] = f;
        af[k2 + 1] = f1;
        af[k2 + 2] = f3;
        k2 = l1 & -2;
        l1 = 0;
        j1;
        JVM INSTR lookupswitch 3: default 932
    //                   1: 1115
    //                   2: 1115
    //                   8: 1080;
           goto _L22 _L23 _L23 _L24
_L22:
        i1 = k1;
        if (l1 != 0)
        {
            TouchEventData toucheventdata = new TouchEventData(l1, f, f1, f3, i3, f2, f2, flag, af, k2);
            if (k1 != 0 && Entrypoints.registerTouchCallback(0, toucheventdata, null))
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
        }
        i2 = i1;
        if (j1 == 8) goto _L8; else goto _L25
_L25:
        i2 = i1;
        if (j1 == 1) goto _L8; else goto _L26
_L26:
        k1 = k2;
        if (j == 3)
        {
            k1 = k2 | 1;
        }
        toucheventdata = new TouchEventData(j1, f, f1, f3, i3, f2, f2, flag, null, k1);
        if (i1 != 0 && Entrypoints.registerTouchCallback(0, toucheventdata, null))
        {
            j = 1;
        } else
        {
            j = 0;
        }
_L33:
        j2++;
        k1 = j;
          goto _L27
_L24:
        i2 = 8;
        l1 = i2;
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            l1 = i2;
            if (i1 != 0)
            {
                l1 = 8 | 0x10;
            }
        }
          goto _L22
_L23:
        l1 = 1;
          goto _L22
_L4:
        i = k1;
_L31:
        if (i == 0) goto _L29; else goto _L28
_L28:
        flag = mScaleGestureDetector.onTouchEvent(motionevent);
        if (!flag) goto _L29; else goto _L30
_L30:
        i = 1;
_L32:
        boolean flag1;
        if (i != 0 && mGestureDetector.onTouchEvent(motionevent))
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        inTouch = false;
        return flag1;
_L2:
        i = 0;
          goto _L31
_L29:
        i = 0;
          goto _L32
        Exception exception;
        exception;
          goto _L32
_L8:
        j = i2;
          goto _L33
_L20:
        j1 = 8;
        i1 = 0;
          goto _L18
_L10:
        j = i1;
        j1 = 1;
        i1 = 0;
          goto _L18
    }

    public void onWindowFocusChanged(boolean flag)
    {
        mWindowHasFocus = flag;
        if (mLongPressCheck != null)
        {
            removeCallbacks(mLongPressCheck);
        }
        if (mHideSoftKeyboardOnWindowFocusChange)
        {
            InputMethodManager inputmethodmanager = getInputMethodManager();
            if (inputmethodmanager != null)
            {
                inputmethodmanager.hideSoftInputFromWindow(getWindowToken(), 0);
            }
            mHideSoftKeyboardOnWindowFocusChange = false;
        }
        if (flag)
        {
            mContextMenuVisible = false;
        }
    }

    public long panStageTextInFocus()
    {
        if (mFocusedStageText == null)
        {
            return 0L;
        } else
        {
            mResizedStageText = mFocusedStageText;
            return mFocusedStageText.updateViewBoundsWithKeyboard(mHt);
        }
    }

    public long panStageWebViewInFocus()
    {
        if (mFocusedWebView == null)
        {
            return 0L;
        } else
        {
            mResizedWebView = mFocusedWebView;
            return mFocusedWebView.updateViewBoundsWithKeyboard(mHt);
        }
    }

    public boolean performLongClick()
    {
        if (mWindowHasFocus)
        {
            Rect rect = nativeGetTextBoxBounds();
            if (rect != null && (mLastTouchedXCoord > (float)rect.left && mLastTouchedXCoord < (float)rect.right && mLastTouchedYCoord > (float)rect.top && mLastTouchedYCoord < (float)rect.bottom || mTrackBallPressed))
            {
                mTrackBallPressed = false;
                if (super.performLongClick())
                {
                    return true;
                }
            }
        }
        return false;
    }

    public View returnThis()
    {
        return this;
    }

    public void setCompositingHint(boolean flag)
    {
        mNeedsCompositingSurface = flag;
        if (flag && mCurrentSurfaceFormat == 1 || !flag && mCurrentSurfaceFormat == 2)
        {
            return;
        } else
        {
            setSurfaceFormat(true);
            return;
        }
    }

    public void setFlashEGL(FlashEGL flashegl)
    {
        mFlashEGL = flashegl;
    }

    public void setFullScreen()
    {
        if (!mIsFullScreen)
        {
            mIsFullScreen = true;
            mActivityWrapper.setIsFullScreen(mIsFullScreen);
            if (supportsSystemUiVisibilityAPI())
            {
                if (!supportsSystemUiFlags());
                DoSetOnSystemUiVisibilityChangeListener();
                setSystemUiVisibility(1);
            }
            mActivityWrapper.planeBreakCascade();
        }
        Object obj = mActivityWrapper.getActivity();
        if (obj != null)
        {
            obj = ((Activity) (obj)).getWindow();
            if (!supportsSystemUiVisibilityAPI() || hasStatusBar(((Window) (obj))))
            {
                ((Window) (obj)).setFlags(1024, 1024);
            }
        }
    }

    public void setInputConnection(AndroidInputConnection androidinputconnection)
    {
        mInputConnection = androidinputconnection;
    }

    public void setMultitouchMode(int i)
    {
        mMultitouchMode = i;
    }

    public boolean setScrollTo(final int height)
    {
        mSkipHeightFromTop = height;
        final RelativeLayout overlays = mActivityWrapper.getOverlaysLayout(false);
        if (overlays != null)
        {
            post(new Runnable() {

                final AIRWindowSurfaceView this$0;
                final int val$height;
                final RelativeLayout val$overlays;

                public void run()
                {
                    if (height == 0 && mResizedWebView != null)
                    {
                        mResizedWebView.resetGlobalBounds();
                        mResizedWebView = null;
                    }
                    if (height == 0 && mResizedStageText != null)
                    {
                        mResizedStageText.resetGlobalBounds();
                        mResizedStageText = null;
                    }
                    overlays.setPadding(0, -height, 0, 0);
                    overlays.requestLayout();
                }

            
            {
                this$0 = AIRWindowSurfaceView.this;
                height = i;
                overlays = relativelayout;
                super();
            }
            });
        }
        return true;
    }

    public void setSurfaceFormat(boolean flag)
    {
label0:
        {
label1:
            {
                if (mActivityWrapper.useRGB565())
                {
                    break label0;
                }
                if (!mNeedsCompositingSurface && !mActivityWrapper.needsCompositingSurface())
                {
                    AndroidActivityWrapper androidactivitywrapper = mActivityWrapper;
                    if (AndroidActivityWrapper.isGingerbread())
                    {
                        break label1;
                    }
                }
                setSurfaceFormatImpl(flag, 1);
                return;
            }
            setSurfaceFormatImpl(flag, 2);
            return;
        }
        if (mNeedsCompositingSurface)
        {
            setSurfaceFormatImpl(flag, 1);
            return;
        } else
        {
            setSurfaceFormatImpl(flag, 4);
            return;
        }
    }

    public void showActionScript2Warning()
    {
        Object obj = mActivityWrapper.getActivity();
        if (obj != null)
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(((Context) (obj)));
            obj = new TextView(((Context) (obj)));
            ((TextView) (obj)).setText("Your application is attempting to run ActionScript2.0, which is not supported on smart phone profile. \nSee the Adobe Developer Connection for more info www.adobe.com/devnet");
            Linkify.addLinks(((TextView) (obj)), 1);
            builder.setView(((View) (obj)));
            builder.setTitle("Action Script 2.0");
            builder.setNeutralButton("OK", new android.content.DialogInterface.OnClickListener() {

                final AIRWindowSurfaceView this$0;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                }

            
            {
                this$0 = AIRWindowSurfaceView.this;
                super();
            }
            });
            builder.show();
        }
    }

    public void showSoftKeyboard(boolean flag)
    {
        showSoftKeyboard(flag, ((View) (this)));
    }

    public void showSoftKeyboard(boolean flag, View view)
    {
        AIRLogger.d("AIRWindowSurfaceView", (new StringBuilder()).append("showSoftKeyboard show: ").append(flag).toString());
        InputMethodManager inputmethodmanager = getInputMethodManager();
        if (!flag)
        {
            if (mSurfaceChangedForSoftKeyboard)
            {
                mDispatchUserTriggeredSkDeactivate = false;
            }
            inputmethodmanager.hideSoftInputFromWindow(getWindowToken(), 0);
            if (mInputConnection != null)
            {
                mInputConnection.Reset();
            }
            nativeSetKeyboardVisible(false);
            return;
        } else
        {
            inputmethodmanager.showSoftInput(view, 0, mInputMethodReceiver);
            return;
        }
    }

    public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
    {
label0:
        {
label1:
            {
label2:
                {
                    surfaceholder = ((WindowManager)mActivityWrapper.getActivity().getSystemService("window")).getDefaultDisplay();
                    mBoundHeight = surfaceholder.getHeight();
                    mBoundWidth = surfaceholder.getWidth();
                    mVisibleBoundHeight = k;
                    mVisibleBoundWidth = j;
                    nativeOnFormatChangeListener(i);
                    if (!mSurfaceValid)
                    {
                        mSurfaceValid = true;
                        mActivityWrapper.onSurfaceInitialized();
                        setMultitouchMode(nativeGetMultitouchMode());
                    }
                    if (mSurfaceValid)
                    {
                        i = getResources().getConfiguration().orientation;
                        if (i != mCurrentOrientation)
                        {
                            break label1;
                        }
                        if (i != 1 && i != 2 || k >= mHt)
                        {
                            break label0;
                        }
                        if (k != 0)
                        {
                            break label2;
                        }
                    }
                    return;
                }
                if (nativePerformWindowPanning(i, mHt - k))
                {
                    mSurfaceChangedForSoftKeyboard = true;
                    return;
                }
                break label0;
            }
            showSoftKeyboard(false);
            nativeDispatchUserTriggeredSkDeactivateEvent();
            mDispatchUserTriggeredSkDeactivate = false;
        }
        boolean flag;
        if (mCurrentOrientation != i)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        mCurrentOrientation = i;
        mWd = j;
        mHt = k;
        nativeOnSizeChangedListener(mWd, mHt, flag);
        surfaceholder = OrientationManager.getOrientationManager();
        if (((OrientationManager) (surfaceholder)).mDispatchOrientationChangePending)
        {
            surfaceholder.nativeOrientationChanged(((OrientationManager) (surfaceholder)).mBeforeOrientation, ((OrientationManager) (surfaceholder)).mAfterOrientation);
            surfaceholder.mDispatchOrientationChangePending = false;
        }
        nativeForceReDraw();
        forceSoftKeyboardDown();
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        mActivityWrapper.planeStepCascade();
        if (mIsFullScreen)
        {
            setFullScreen();
        }
        if (mActivityWrapper.isStarted() || mActivityWrapper.isResumed() || Build.MANUFACTURER.equalsIgnoreCase("SAMSUNG") && Build.MODEL.equalsIgnoreCase("GT-I9300"))
        {
            nativeSurfaceCreated();
        }
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        mSurfaceValid = false;
        if (mFlashEGL != null)
        {
            mFlashEGL.DestroyWindowSurface();
        }
        mActivityWrapper.onSurfaceDestroyed();
        mActivityWrapper.planeBreakCascade();
    }

    public void updateFocusedStageText(AndroidStageText androidstagetext, boolean flag)
    {
        if (flag)
        {
            mFocusedStageText = androidstagetext;
        } else
        if (mFocusedStageText == androidstagetext)
        {
            mFocusedStageText = null;
            return;
        }
    }

    public void updateFocusedStageWebView(AndroidWebView androidwebview, boolean flag)
    {
        if (flag)
        {
            mFocusedWebView = androidwebview;
        } else
        if (mFocusedWebView == androidwebview)
        {
            mFocusedWebView = null;
            return;
        }
    }


/*
    static boolean access$002(AIRWindowSurfaceView airwindowsurfaceview, boolean flag)
    {
        airwindowsurfaceview.mHoverInProgress = flag;
        return flag;
    }

*/








/*
    static AndroidWebView access$602(AIRWindowSurfaceView airwindowsurfaceview, AndroidWebView androidwebview)
    {
        airwindowsurfaceview.mResizedWebView = androidwebview;
        return androidwebview;
    }

*/



/*
    static AndroidStageText access$702(AIRWindowSurfaceView airwindowsurfaceview, AndroidStageText androidstagetext)
    {
        airwindowsurfaceview.mResizedStageText = androidstagetext;
        return androidstagetext;
    }

*/


/*
    static int access$802(AIRWindowSurfaceView airwindowsurfaceview, int i)
    {
        airwindowsurfaceview.mCurrentSurfaceFormat = i;
        return i;
    }

*/

}
