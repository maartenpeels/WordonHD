// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.Context;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.ViewTreeObserver;

// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper

public class AIRStage3DSurfaceView extends SurfaceView
    implements android.view.SurfaceHolder.Callback
{

    private static final String TAG = "com.adobe.air";
    private AndroidActivityWrapper mActivityWrapper;
    private long mFPInstance;
    private boolean mInit;
    private boolean mSurfaceValid;
    private int mXmax;
    private int mXmin;
    private int mYmax;
    private int mYmin;
    private android.view.ViewTreeObserver.OnGlobalLayoutListener m_layOutListener;

    public AIRStage3DSurfaceView(Context context, AndroidActivityWrapper androidactivitywrapper, long l)
    {
        super(context);
        mActivityWrapper = null;
        mFPInstance = 0L;
        mInit = false;
        mSurfaceValid = false;
        mXmin = 0;
        mYmin = 0;
        mXmax = 16;
        mYmax = 16;
        m_layOutListener = null;
        setFPInstance(context, androidactivitywrapper, l);
        setWillNotDraw(false);
        setEnabled(true);
        setClickable(false);
        setFocusable(false);
        setFocusableInTouchMode(false);
        setLayoutParams(new android.view.ViewGroup.LayoutParams(-2, -2));
        if (AndroidActivityWrapper.isGingerbread())
        {
            getHolder().setFormat(2);
        } else
        {
            getHolder().setFormat(1);
        }
        getHolder().addCallback(this);
        setZOrderOnTop(false);
        mActivityWrapper.registerPlane(this, 6);
    }

    private native void nativeSurfaceChanged(long l, int i, int j);

    private native void nativeSurfaceCreated(long l);

    private native void nativeSurfaceLayoutChanged(long l);

    private native void nativeSurfaceLost(long l);

    protected void onMeasure(int i, int j)
    {
        setMeasuredDimension(mXmax - mXmin, mYmax - mYmin);
    }

    public boolean setFPInstance(Context context, AndroidActivityWrapper androidactivitywrapper, long l)
    {
        mActivityWrapper = androidactivitywrapper;
        mFPInstance = l;
        if (mFPInstance != 0L)
        {
            mActivityWrapper.registerPlane(this, 6);
        } else
        {
            mActivityWrapper.unregisterPlane(6);
        }
        return mSurfaceValid;
    }

    public void setPlanePosition(int i, int j, int k, int l)
    {
        mXmin = i;
        mYmin = j;
        mXmax = k;
        mYmax = l;
        layout(i, j, k, l);
    }

    public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
    {
        if (mFPInstance != 0L)
        {
            nativeSurfaceChanged(mFPInstance, j, k);
        }
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        mSurfaceValid = true;
        if (mFPInstance != 0L)
        {
            nativeSurfaceCreated(mFPInstance);
        }
        mActivityWrapper.planeStepCascade();
        surfaceholder = getViewTreeObserver();
        if (surfaceholder.isAlive())
        {
            if (m_layOutListener == null)
            {
                m_layOutListener = new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                    final AIRStage3DSurfaceView this$0;

                    public void onGlobalLayout()
                    {
                        if (mFPInstance != 0L)
                        {
                            nativeSurfaceLayoutChanged(mFPInstance);
                        }
                    }

            
            {
                this$0 = AIRStage3DSurfaceView.this;
                super();
            }
                };
            }
            if (m_layOutListener != null)
            {
                surfaceholder.addOnGlobalLayoutListener(m_layOutListener);
            }
        }
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        mSurfaceValid = false;
        if (mFPInstance != 0L)
        {
            nativeSurfaceLost(mFPInstance);
        }
        mActivityWrapper.planeBreakCascade();
        surfaceholder = getViewTreeObserver();
        if (surfaceholder.isAlive() && m_layOutListener != null)
        {
            surfaceholder.removeGlobalOnLayoutListener(m_layOutListener);
        }
    }


}
