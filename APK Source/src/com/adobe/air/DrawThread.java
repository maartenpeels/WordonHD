// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.SurfaceHolder;
import java.util.concurrent.Semaphore;

// Referenced classes of package com.adobe.air:
//            DrawRequest, AIRWindowThreadedSurfaceView

class DrawThread extends Thread
{

    private Handler mHandler;
    private Looper mLooper;
    private boolean mRun;
    private AIRWindowThreadedSurfaceView mView;

    public DrawThread(AIRWindowThreadedSurfaceView airwindowthreadedsurfaceview, SurfaceHolder surfaceholder, Context context)
    {
        mView = null;
        mRun = false;
        mHandler = null;
        mLooper = null;
        mView = airwindowthreadedsurfaceview;
    }

    private void draw(DrawRequest drawrequest)
    {
        if (drawrequest.scale)
        {
            mView.drawScaled(drawrequest.x, drawrequest.y, drawrequest.wd, drawrequest.ht, drawrequest.bm, drawrequest.dstX, drawrequest.dstY, drawrequest.dstWd, drawrequest.dstHt, drawrequest.fullsc, drawrequest.bgColor);
            return;
        } else
        {
            mView.draw(drawrequest.x, drawrequest.y, drawrequest.wd, drawrequest.ht, drawrequest.bm);
            return;
        }
    }

    public void requestDraw(int i, int j, int k, int l, Bitmap bitmap)
    {
        Message message = new Message();
        message.what = 1009;
        message.obj = new DrawRequest(i, j, k, l, bitmap);
        mHandler.sendMessage(message);
    }

    public void requestDraw(int i, int j, int k, int l, Bitmap bitmap, int i1, int j1, 
            int k1, int l1, boolean flag, int i2)
    {
        Message message = new Message();
        message.what = 1009;
        message.obj = new DrawRequest(i, j, k, l, bitmap, i1, j1, k1, l1, flag, i2);
        mHandler.sendMessage(message);
    }

    public void run()
    {
        Looper.prepare();
        mHandler = new Handler() {

            final DrawThread this$0;

            public void handleMessage(Message message)
            {
                if (message.what == 1009)
                {
                    draw((DrawRequest)message.obj);
                    mView.drawSemaphore.release();
                }
            }

            
            {
                this$0 = DrawThread.this;
                super();
            }
        };
        mLooper = Looper.myLooper();
        Looper.loop();
    }

    public void setRunning(boolean flag)
    {
        mRun = flag;
        if (!mRun)
        {
            mLooper.quit();
        }
    }


}
