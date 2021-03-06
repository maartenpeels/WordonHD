// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.gestures;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import com.adobe.air.AIRWindowSurfaceView;
import com.adobe.air.SystemCapabilities;

public class AIRGestureListener
    implements android.view.GestureDetector.OnGestureListener, android.view.GestureDetector.OnDoubleTapListener, android.view.ScaleGestureDetector.OnScaleGestureListener
{
    private class TouchPoint
    {

        private int pid;
        final AIRGestureListener this$0;
        private float x;
        private float y;

        private void assign(float f, float f1, int i)
        {
            x = f;
            y = f1;
            pid = i;
        }





        TouchPoint()
        {
            this$0 = AIRGestureListener.this;
            super();
            x = 0.0F;
            y = 0.0F;
            pid = 0;
        }

        TouchPoint(float f, float f1, int i)
        {
            this$0 = AIRGestureListener.this;
            super();
            x = f;
            y = f1;
            pid = i;
        }
    }


    private static final String LOG_TAG = "AIRGestureListener";
    private static final int MAX_TOUCH_POINTS = 2;
    private static final float MM_PER_INCH = 25.4F;
    private static final float _FP_GESTURE_PAN_THRESHOLD_MM = 3F;
    private static final float _FP_GESTURE_ROTATION_THRESHOLD_DEGREES = 15F;
    private static final float _FP_GESTURE_SWIPE_PRIMARY_AXIS_MIN_MM = 10F;
    private static final float _FP_GESTURE_SWIPE_SECONDARY_AXIS_MAX_MM = 5F;
    private static final float _FP_GESTURE_ZOOM_PER_AXIS_THRESHOLD_MM = 3F;
    private static final float _FP_GESTURE_ZOOM_THRESHOLD_MM = 8F;
    private static final int kGestureAll = 8;
    private static final int kGestureBegin = 2;
    private static final int kGestureEnd = 4;
    private static final int kGesturePan = 1;
    private static final int kGestureRotate = 2;
    private static final int kGestureSwipe = 5;
    private static final int kGestureTwoFingerTap = 3;
    private static final int kGestureUpdate = 1;
    private static final int kGestureZoom = 0;
    private static int screenPPI = 0;
    private boolean mCheckForSwipe;
    private int mCouldBeTwoFingerTap;
    private TouchPoint mDownTouchPoints[];
    private boolean mInPanTransformGesture;
    private boolean mInRotateTransformGesture;
    private boolean mInZoomTransformGesture;
    private boolean mInZoomTransformGestureX;
    private boolean mInZoomTransformGestureY;
    private float mPreviousAbsoluteRotation;
    private float mPreviousPanLocX;
    private float mPreviousPanLocY;
    private float mPreviousRotateLocX;
    private float mPreviousRotateLocY;
    private float mPreviousZoomLocX;
    private float mPreviousZoomLocY;
    private TouchPoint mSecondaryPointOfTwoFingerTap;
    private AIRWindowSurfaceView mSurfaceView;

    public AIRGestureListener(Context context, AIRWindowSurfaceView airwindowsurfaceview)
    {
        mPreviousAbsoluteRotation = 0.0F;
        mInRotateTransformGesture = false;
        mInZoomTransformGesture = false;
        mInZoomTransformGestureX = false;
        mInZoomTransformGestureY = false;
        mInPanTransformGesture = false;
        mPreviousRotateLocX = 0.0F;
        mPreviousRotateLocY = 0.0F;
        mPreviousZoomLocX = 0.0F;
        mPreviousZoomLocY = 0.0F;
        mPreviousPanLocX = 0.0F;
        mPreviousPanLocY = 0.0F;
        mCouldBeTwoFingerTap = 0;
        mCheckForSwipe = true;
        mSurfaceView = airwindowsurfaceview;
        mDownTouchPoints = new TouchPoint[2];
        for (int i = 0; i < 2; i++)
        {
            mDownTouchPoints[i] = new TouchPoint();
        }

        mSecondaryPointOfTwoFingerTap = new TouchPoint();
        screenPPI = SystemCapabilities.GetScreenDPI(context);
    }

    private double distanceBetweenPoints(TouchPoint touchpoint, TouchPoint touchpoint1)
    {
        return Math.sqrt(Math.pow(touchpoint1.x - touchpoint.x, 2D) + Math.pow(touchpoint1.y - touchpoint.y, 2D));
    }

    private void endPanGesture()
    {
        int i = mSurfaceView.getMultitouchMode();
        mSurfaceView.getClass();
        while (i != 2 || !mInPanTransformGesture) 
        {
            return;
        }
        nativeOnGestureListener(4, 1, true, mPreviousPanLocX, mPreviousPanLocY, 1.0F, 1.0F, 0.0F, 0.0F, 0.0F);
        mInPanTransformGesture = false;
    }

    private void endRotateGesture()
    {
        int i = mSurfaceView.getMultitouchMode();
        mSurfaceView.getClass();
        while (i != 2 || !mInRotateTransformGesture) 
        {
            return;
        }
        nativeOnGestureListener(4, 2, true, mPreviousRotateLocX, mPreviousRotateLocY, 1.0F, 1.0F, 0.0F, 0.0F, 0.0F);
        mInRotateTransformGesture = false;
    }

    private void endZoomGesture()
    {
        int i = mSurfaceView.getMultitouchMode();
        mSurfaceView.getClass();
        while (i != 2 || !mInZoomTransformGesture) 
        {
            return;
        }
        nativeOnGestureListener(4, 0, true, mPreviousZoomLocX, mPreviousZoomLocY, 1.0F, 1.0F, 0.0F, 0.0F, 0.0F);
        mInZoomTransformGesture = false;
        mInZoomTransformGestureX = false;
        mInZoomTransformGestureY = false;
    }

    private float getRotation(TouchPoint touchpoint, TouchPoint touchpoint1, TouchPoint touchpoint2, TouchPoint touchpoint3)
    {
        float f1 = 0.0F;
        float f = f1;
        if (touchpoint.pid == touchpoint2.pid)
        {
            f = f1;
            if (touchpoint1.pid == touchpoint3.pid)
            {
                double d = (Math.atan2(touchpoint1.y - touchpoint.y, touchpoint1.x - touchpoint.x) * 180D) / 3.1415926535897931D;
                f = (float)((Math.atan2(touchpoint3.y - touchpoint2.y, touchpoint3.x - touchpoint2.x) * 180D) / 3.1415926535897931D - d);
            }
        }
        return f;
    }

    private boolean isPanGesture(TouchPoint touchpoint, TouchPoint touchpoint1, TouchPoint touchpoint2, TouchPoint touchpoint3)
    {
        float f = touchpoint2.x - touchpoint.x;
        float f1 = touchpoint2.y - touchpoint.y;
        float f2 = touchpoint3.x - touchpoint1.x;
        float f3 = touchpoint3.y - touchpoint1.y;
        float f4 = Math.min(Math.abs(f), Math.abs(f2));
        float f5 = Math.min(Math.abs(f1), Math.abs(f3));
        double d = Math.sqrt(f4 * f4 + f5 * f5);
        return (f >= 0.0F && f2 >= 0.0F || f <= 0.0F && f2 <= 0.0F) && (f1 >= 0.0F && f3 >= 0.0F || f1 <= 0.0F && f3 <= 0.0F) && (mInPanTransformGesture || d > (double)((3F * (float)screenPPI) / 25.4F));
    }

    private native boolean nativeOnGestureListener(int i, int j, boolean flag, float f, float f1, float f2, float f3, 
            float f4, float f5, float f6);

    public boolean endTwoFingerGesture()
    {
        int i = mSurfaceView.getMultitouchMode();
        mSurfaceView.getClass();
        if (i != 2)
        {
            return true;
        } else
        {
            endRotateGesture();
            endPanGesture();
            return true;
        }
    }

    public boolean getCheckForSwipe()
    {
        return mCheckForSwipe;
    }

    public int getCouldBeTwoFingerTap()
    {
        return mCouldBeTwoFingerTap;
    }

    public TouchPoint getDownTouchPoint(int i)
    {
        if (i >= 0 && i < 2)
        {
            return mDownTouchPoints[i];
        } else
        {
            return null;
        }
    }

    public void mayStartNewTransformGesture()
    {
        mInRotateTransformGesture = false;
        mInZoomTransformGesture = false;
        mInZoomTransformGestureX = false;
        mInZoomTransformGestureY = false;
        mInPanTransformGesture = false;
    }

    public boolean onDoubleTap(MotionEvent motionevent)
    {
        if (motionevent.getPointerCount() == 1)
        {
            return true && mSurfaceView.nativeOnDoubleClickListener(motionevent.getX(0), motionevent.getY(0));
        } else
        {
            return true;
        }
    }

    public boolean onDoubleTapEvent(MotionEvent motionevent)
    {
        return true;
    }

    public boolean onDown(MotionEvent motionevent)
    {
        return true;
    }

    public boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        return true;
    }

    public void onLongPress(MotionEvent motionevent)
    {
    }

    public boolean onScale(ScaleGestureDetector scalegesturedetector)
    {
        int i = mSurfaceView.getMultitouchMode();
        mSurfaceView.getClass();
        if (i != 2)
        {
            return true;
        }
        float f2 = scalegesturedetector.getFocusX();
        float f3 = scalegesturedetector.getFocusY();
        double d2 = scalegesturedetector.getPreviousSpan();
        double d3 = Math.abs((double)scalegesturedetector.getCurrentSpan() - d2);
        double d;
        double d1;
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            d = Math.abs(scalegesturedetector.getCurrentSpanX() - scalegesturedetector.getPreviousSpanX());
            d1 = Math.abs(scalegesturedetector.getCurrentSpanY() - scalegesturedetector.getPreviousSpanY());
        } else
        {
            d = 0.0D;
            d1 = 0.0D;
        }
        if (d2 != 0.0D)
        {
            if (mInZoomTransformGesture || (25.399999618530273D * d3) / (double)screenPPI > 8D)
            {
                byte byte0;
                if (!mInZoomTransformGesture)
                {
                    mInZoomTransformGesture = true;
                    byte0 = 2;
                } else
                {
                    byte0 = 1;
                }
                if (android.os.Build.VERSION.SDK_INT >= 11)
                {
                    float f;
                    float f1;
                    if (scalegesturedetector.getPreviousSpanX() != 0.0F && scalegesturedetector.getCurrentSpanX() != 0.0F && (mInZoomTransformGestureX || (25.399999618530273D * d) / (double)screenPPI > 3D))
                    {
                        f = Math.abs(scalegesturedetector.getCurrentSpanX() / scalegesturedetector.getPreviousSpanX());
                        mInZoomTransformGestureX = true;
                    } else
                    {
                        f = 1.0F;
                    }
                    if (scalegesturedetector.getPreviousSpanY() != 0.0F && scalegesturedetector.getCurrentSpanY() != 0.0F && (mInZoomTransformGestureY || (25.399999618530273D * d1) / (double)screenPPI > 3D))
                    {
                        f1 = Math.abs(scalegesturedetector.getCurrentSpanY() / scalegesturedetector.getPreviousSpanY());
                        mInZoomTransformGestureY = true;
                    } else
                    {
                        f1 = 1.0F;
                    }
                } else
                {
                    f = scalegesturedetector.getScaleFactor();
                    f1 = f;
                }
                mPreviousZoomLocX = f2;
                mPreviousZoomLocY = f3;
                nativeOnGestureListener(byte0, 0, true, f2, f3, f, f1, 0.0F, 0.0F, 0.0F);
                return true;
            } else
            {
                return false;
            }
        } else
        {
            return false;
        }
    }

    public boolean onScaleBegin(ScaleGestureDetector scalegesturedetector)
    {
        if (mInZoomTransformGesture)
        {
            endZoomGesture();
        }
        return true;
    }

    public void onScaleEnd(ScaleGestureDetector scalegesturedetector)
    {
        int i = mSurfaceView.getMultitouchMode();
        mSurfaceView.getClass();
        while (i != 2 || !mInZoomTransformGesture) 
        {
            return;
        }
        float f = scalegesturedetector.getScaleFactor();
        nativeOnGestureListener(4, 0, true, mPreviousZoomLocX, mPreviousZoomLocY, f, f, 0.0F, 0.0F, 0.0F);
    }

    public boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        float f2;
        float f3;
        int i = mSurfaceView.getMultitouchMode();
        mSurfaceView.getClass();
        if (i != 2)
        {
            return true;
        }
        f3 = 0.0F;
        f2 = 0.0F;
        if (motionevent1.getPointerCount() != 2) goto _L2; else goto _L1
_L1:
        float f4;
        float f5;
        boolean flag1;
        boolean flag2;
        int l;
        int i1;
        flag2 = true;
        flag1 = true;
        f4 = (motionevent1.getX(0) + motionevent1.getX(1)) / 2.0F;
        f5 = (motionevent1.getY(0) + motionevent1.getY(1)) / 2.0F;
        motionevent = new TouchPoint[2];
        for (int j = 0; j < 2; j++)
        {
            motionevent[j] = new TouchPoint(motionevent1.getX(j), motionevent1.getY(j), motionevent1.getPointerId(j));
        }

        l = ((TouchPoint) (motionevent[0])).pid;
        i1 = ((TouchPoint) (motionevent[1])).pid;
        if (l < 0 || l >= 2 || i1 < 0 || i1 >= 2) goto _L4; else goto _L3
_L3:
label0:
        {
            byte byte0 = flag2;
            if (mInPanTransformGesture)
            {
                break label0;
            }
            f3 = getRotation(mDownTouchPoints[l], mDownTouchPoints[i1], motionevent[0], motionevent[1]);
            if (Math.abs(f3) > 180F)
            {
                if (f3 > 0.0F)
                {
                    f2 = (360F - f3) * -1F;
                } else
                {
                    f2 = f3 + 360F;
                }
                f3 = f2;
            }
            if (!mInRotateTransformGesture)
            {
                byte0 = flag2;
                if (Math.abs(f3) <= 15F)
                {
                    break label0;
                }
            }
            byte0 = flag1;
            if (!mInRotateTransformGesture)
            {
                byte0 = 2;
                mInRotateTransformGesture = true;
                mPreviousAbsoluteRotation = 0.0F;
            }
            f2 = f3 - mPreviousAbsoluteRotation;
            if (Math.abs(f2) > 180F)
            {
                if (f2 > 0.0F)
                {
                    f2 = (360F - f2) * -1F;
                } else
                {
                    f2 += 360F;
                }
            }
            mPreviousAbsoluteRotation = f3;
            mPreviousRotateLocX = f4;
            mPreviousRotateLocY = f5;
            nativeOnGestureListener(byte0, 2, true, f4, f5, 1.0F, 1.0F, f2, 0.0F, 0.0F);
        }
        if (mInZoomTransformGesture || mInRotateTransformGesture) goto _L4; else goto _L5
_L5:
        if (!isPanGesture(mDownTouchPoints[l], mDownTouchPoints[i1], motionevent[0], motionevent[1])) goto _L7; else goto _L6
_L6:
        if (!mInPanTransformGesture)
        {
            byte0 = 2;
            mInPanTransformGesture = true;
        }
        mPreviousPanLocX = f4;
        mPreviousPanLocY = f5;
        nativeOnGestureListener(byte0, 1, true, f4, f5, 1.0F, 1.0F, 0.0F, -1F * f, -1F * f1);
_L4:
        return true;
_L7:
        if (mInPanTransformGesture)
        {
            endPanGesture();
            setDownTouchPoint(((TouchPoint) (motionevent[0])).x, ((TouchPoint) (motionevent[0])).y, ((TouchPoint) (motionevent[0])).pid);
            setDownTouchPoint(((TouchPoint) (motionevent[1])).x, ((TouchPoint) (motionevent[1])).y, ((TouchPoint) (motionevent[1])).pid);
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (motionevent1.getPointerCount() == 1)
        {
            int k = motionevent1.getPointerId(0);
            if (k >= 0 && k < 2 && mCheckForSwipe && motionevent.getPointerCount() == 1)
            {
                f = motionevent1.getX(0) - mDownTouchPoints[k].x;
                f1 = motionevent1.getY(0) - mDownTouchPoints[k].y;
                boolean flag;
                if ((Math.abs(f) * 25.4F) / (float)screenPPI >= 10F && (Math.abs(f1) * 25.4F) / (float)screenPPI <= 5F)
                {
                    flag = true;
                    if (f > 0.0F)
                    {
                        f = 1.0F;
                    } else
                    {
                        f = -1F;
                    }
                    f1 = 0.0F;
                } else
                if ((Math.abs(f1) * 25.4F) / (float)screenPPI >= 10F && (Math.abs(f) * 25.4F) / (float)screenPPI <= 5F)
                {
                    if (f1 > 0.0F)
                    {
                        f = 1.0F;
                    } else
                    {
                        f = -1F;
                    }
                    f1 = f;
                    f = 0.0F;
                    flag = true;
                } else
                {
                    flag = false;
                    f = f3;
                    f1 = f2;
                }
                if (flag)
                {
                    nativeOnGestureListener(8, 5, true, motionevent.getX(0), motionevent1.getY(0), 1.0F, 1.0F, 0.0F, f, f1);
                    mCheckForSwipe = false;
                }
            }
        }
        if (true) goto _L4; else goto _L8
_L8:
    }

    public void onShowPress(MotionEvent motionevent)
    {
    }

    public boolean onSingleTapConfirmed(MotionEvent motionevent)
    {
        int i = mSurfaceView.getMultitouchMode();
        mSurfaceView.getClass();
        if (i != 2)
        {
            return true;
        }
        if (mCouldBeTwoFingerTap == 3 && motionevent.getPointerCount() == 1 && (motionevent.getAction() & 0xff) == 0)
        {
            float f = (mSecondaryPointOfTwoFingerTap.x + motionevent.getX(0)) / 2.0F;
            float f1 = (mSecondaryPointOfTwoFingerTap.y + motionevent.getY(0)) / 2.0F;
            boolean flag;
            if (true && nativeOnGestureListener(8, 3, false, f, f1, 1.0F, 1.0F, 0.0F, 0.0F, 0.0F))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            mCouldBeTwoFingerTap = 0;
            return flag;
        } else
        {
            return true;
        }
    }

    public boolean onSingleTapUp(MotionEvent motionevent)
    {
        return true;
    }

    public void setCheckForSwipe(boolean flag)
    {
        mCheckForSwipe = flag;
    }

    public void setCouldBeTwoFingerTap(int i)
    {
        mCouldBeTwoFingerTap = i;
    }

    public void setDownTouchPoint(float f, float f1, int i)
    {
        if (i >= 0 && i < 2)
        {
            mDownTouchPoints[i].assign(f, f1, i);
        }
    }

    public void setSecondaryPointOfTwoFingerTap(TouchPoint touchpoint)
    {
        mSecondaryPointOfTwoFingerTap = touchpoint;
    }

}
