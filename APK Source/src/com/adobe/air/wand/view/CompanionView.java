// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import com.adobe.air.TouchEventData;

// Referenced classes of package com.adobe.air.wand.view:
//            TouchSensor, GestureListener, GestureEventData

public class CompanionView extends View
{

    private static final String LOG_TAG = "CompanionView";
    static final int POST_TOUCH_MESSAGE_AFTER_DELAY = 0;
    public static final int kTouchActionBegin = 2;
    public static final int kTouchActionEnd = 4;
    public static final int kTouchActionMove = 1;
    public static final int kTouchMetaStateIsEraser = 0x4000000;
    public static final int kTouchMetaStateIsPen = 0x2000000;
    public static final int kTouchMetaStateMask = 0xe000000;
    public static final int kTouchMetaStateSideButton1 = 0x8000000;
    public final int kMultitouchGesture;
    public final int kMultitouchNone;
    public final int kMultitouchRaw;
    private int mBoundHeight;
    private int mBoundWidth;
    private int mCurrentOrientation;
    private GestureDetector mGestureDetector;
    private GestureListener mGestureListener;
    private boolean mIsFullScreen;
    private int mMultitouchMode;
    private ScaleGestureDetector mScaleGestureDetector;
    private int mSkipHeightFromTop;
    private TouchSensor mTouchSensor;
    private int mVisibleBoundHeight;
    private int mVisibleBoundWidth;

    public CompanionView(Context context)
    {
        super(context);
        kMultitouchNone = 0;
        kMultitouchRaw = 1;
        kMultitouchGesture = 2;
        mSkipHeightFromTop = 0;
        mBoundHeight = 0;
        mBoundWidth = 0;
        mVisibleBoundWidth = 0;
        mVisibleBoundHeight = 0;
        mMultitouchMode = 2;
        mCurrentOrientation = 0;
        mIsFullScreen = false;
        mTouchSensor = null;
        initView(context);
    }

    public CompanionView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        kMultitouchNone = 0;
        kMultitouchRaw = 1;
        kMultitouchGesture = 2;
        mSkipHeightFromTop = 0;
        mBoundHeight = 0;
        mBoundWidth = 0;
        mVisibleBoundWidth = 0;
        mVisibleBoundHeight = 0;
        mMultitouchMode = 2;
        mCurrentOrientation = 0;
        mIsFullScreen = false;
        mTouchSensor = null;
        initView(context);
    }

    private boolean IsTouchEventHandlingAllowed(int i, float f, float f1)
    {
        return true;
    }

    private void initView(Context context)
    {
        mTouchSensor = new TouchSensor();
        mGestureListener = new GestureListener(context, this);
        mGestureDetector = new GestureDetector(context, mGestureListener, null, false);
        mScaleGestureDetector = new ScaleGestureDetector(context, mGestureListener);
        setWillNotDraw(false);
        setClickable(true);
        setEnabled(true);
        setFocusable(true);
        setFocusableInTouchMode(true);
    }

    public boolean IsLandScape()
    {
        return mCurrentOrientation == 2;
    }

    public boolean IsTouchUpHandlingAllowed()
    {
        return true;
    }

    public int getBoundHeight()
    {
        return mBoundHeight;
    }

    public int getBoundWidth()
    {
        return mBoundWidth;
    }

    public boolean getIsFullScreen()
    {
        return mIsFullScreen;
    }

    public int getMultitouchMode()
    {
        return mMultitouchMode;
    }

    public TouchSensor getTouchSensor()
    {
        return mTouchSensor;
    }

    public int getVisibleBoundHeight()
    {
        return mVisibleBoundHeight;
    }

    public int getVisibleBoundWidth()
    {
        return mVisibleBoundWidth;
    }

    protected void onFocusChanged(boolean flag, int i, Rect rect)
    {
        super.onFocusChanged(flag, i, rect);
    }

    public void onGestureListener(int i, int j, boolean flag, float f, float f1, float f2, float f3, 
            float f4, float f5, float f6)
    {
        GestureEventData gestureeventdata = new GestureEventData(i, j, flag, f, f1, f2, f3, f4, f5, f6);
        mTouchSensor.dispatchEvent(gestureeventdata);
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        return false;
    }

    public boolean onKeyUp(int i, KeyEvent keyevent)
    {
        return false;
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        float f;
        float f1;
        int j;
        int k;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int k2;
        k = motionevent.getAction() & 0xff;
        if (true && mGestureListener != null)
        {
            if (k == 5 || k == 0)
            {
                for (int i = 0; i < motionevent.getPointerCount(); i++)
                {
                    int l = motionevent.getPointerId(i);
                    mGestureListener.setDownTouchPoint(motionevent.getX(i), motionevent.getY(i), l);
                }

            }
            if (k == 0)
            {
                mGestureListener.mayStartNewTransformGesture();
            }
            int j2;
            int l2;
            int i3;
            if (k == 5)
            {
                mGestureListener.setCouldBeTwoFingerTap(1);
                mGestureListener.setSecondaryPointOfTwoFingerTap(mGestureListener.getDownTouchPoint(k >> 8));
            } else
            if (k == 6 && mGestureListener.getCouldBeTwoFingerTap() == 1)
            {
                mGestureListener.setCouldBeTwoFingerTap(2);
            } else
            if (k == 1 && mGestureListener.getCouldBeTwoFingerTap() == 2)
            {
                mGestureListener.setCouldBeTwoFingerTap(3);
            } else
            if (k != 2)
            {
                mGestureListener.setCouldBeTwoFingerTap(0);
            }
        }
        j2 = motionevent.getPointerCount();
        j = 0;
        j1 = 0;
_L14:
        if (j1 >= j2) goto _L2; else goto _L1
_L1:
        f = motionevent.getX(j1);
        f1 = motionevent.getY(j1);
        f1 = (float)mSkipHeightFromTop + f1;
        l1 = 1;
        i2 = motionevent.getAction();
        k2 = motionevent.getPointerId(j1);
        k = motionevent.getMetaState();
        i1 = k;
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            break MISSING_BLOCK_LABEL_938;
        }
        i1 = k & 0xf1ffffff;
        k1 = motionevent.getToolType(j1);
        if (k1 == 4)
        {
            k = i1 | 0x4000000;
        } else
        {
            k = i1;
            if (k1 == 2)
            {
                k = i1 | 0x2000000;
            }
        }
        i1 = k;
        if ((motionevent.getButtonState() & 2) == 0)
        {
            break MISSING_BLOCK_LABEL_938;
        }
        k1 = k | 0x8000000;
_L26:
        if (j == 0) goto _L4; else goto _L3
_L3:
        i1 = 3;
        k = 4;
_L13:
        if (!IsTouchEventHandlingAllowed(k, f, f1)) goto _L6; else goto _L5
_L4:
        if (motionevent.getPointerCount() != 1 && k2 != motionevent.getPointerId((0xff00 & i2) >> 8)) goto _L8; else goto _L7
_L7:
        k = i2 & 0xff;
        i1 = j;
        float f3;
        TouchEventData toucheventdata;
        Exception exception;
        TouchEventData toucheventdata1;
        boolean flag1;
        boolean flag2;
        switch (k)
        {
        case 2: // '\002'
        case 4: // '\004'
        default:
            l1 = 1;
            i1 = k;
            k = l1;
            break;

        case 0: // '\0'
        case 5: // '\005'
            l1 = 2;
            i1 = k;
            k = l1;
            break;

        case 3: // '\003'
            i1 = 1;
            // fall through

        case 1: // '\001'
        case 6: // '\006'
            if (mGestureListener != null)
            {
                mGestureListener.endTwoFingerGesture();
                mGestureListener.setCheckForSwipe(true);
                j = i1;
                l1 = 4;
                i1 = k;
                k = l1;
            } else
            {
                j = i1;
                l1 = 4;
                i1 = k;
                k = l1;
            }
            break;
        }
          goto _L9
_L5:
        float f2 = motionevent.getSize(j1);
        float af[];
        boolean flag;
        if (k2 == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        l2 = motionevent.getHistorySize();
        af = new float[(l2 + 1) * 3];
        i2 = 0;
        for (l1 = 0; l1 < l2;)
        {
            i3 = i2 + 1;
            af[i2] = motionevent.getHistoricalX(j1, l1);
            i2 = i3 + 1;
            af[i3] = motionevent.getHistoricalY(j1, l1);
            af[i2] = motionevent.getHistoricalPressure(j1, l1);
            l1++;
            i2++;
        }

        f3 = motionevent.getPressure(j1);
        af[i2] = f;
        af[i2 + 1] = f1;
        af[i2 + 2] = f3;
        k1 &= -2;
        if (k != 1)
        {
            if (i1 == 3)
            {
                i1 = k1 | 1;
            } else
            {
                i1 = k1;
            }
            toucheventdata1 = new TouchEventData(k, f, f1, f3, k2, f2, f2, flag, null, i1);
            mTouchSensor.dispatchEvent(toucheventdata1);
        } else
        {
            i1 = k1;
        }
        k;
        JVM INSTR tableswitch 1 2: default 752
    //                   1 805
    //                   2 805;
           goto _L10 _L11 _L11
_L10:
        k = 0;
_L15:
        if (k != 0)
        {
            toucheventdata = new TouchEventData(k, f, f1, f3, k2, f2, f2, flag, af, i1);
            mTouchSensor.dispatchEvent(toucheventdata);
        }
          goto _L6
_L9:
        if (true) goto _L13; else goto _L12
_L12:
_L6:
        j1++;
          goto _L14
_L11:
        k = 1;
          goto _L15
_L2:
        if (mScaleGestureDetector == null) goto _L17; else goto _L16
_L16:
        if (false) goto _L19; else goto _L18
_L18:
        try
        {
            flag1 = mScaleGestureDetector.onTouchEvent(motionevent);
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            flag1 = true;
            continue; /* Loop/switch isn't completed */
        }
        if (!flag1) goto _L19; else goto _L20
_L20:
        flag1 = true;
_L25:
        flag2 = flag1;
        if (mGestureDetector == null) goto _L22; else goto _L21
_L21:
        if (!flag1 || !mGestureDetector.onTouchEvent(motionevent)) goto _L24; else goto _L23
_L23:
        flag2 = true;
_L22:
        return flag2;
_L19:
        flag1 = false;
        continue; /* Loop/switch isn't completed */
_L24:
        return false;
_L17:
        flag1 = true;
        if (true) goto _L25; else goto _L8
_L8:
        i1 = i2;
        k = l1;
          goto _L13
        k1 = i1;
          goto _L26
    }

    public void onWindowFocusChanged(boolean flag)
    {
    }

    public View returnThis()
    {
        return this;
    }

    public void setMultitouchMode(int i)
    {
        mMultitouchMode = i;
    }
}
