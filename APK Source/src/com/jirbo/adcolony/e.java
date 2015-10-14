// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.MediaController;
import java.io.FileDescriptor;
import java.io.IOException;

// Referenced classes of package com.jirbo.adcolony:
//            AdColony

class e extends SurfaceView
    implements android.widget.MediaController.MediaPlayerControl
{

    static final int e = -1;
    static final int f = 0;
    static final int g = 1;
    static final int h = 2;
    static final int i = 3;
    static final int j = 4;
    static final int k = 5;
    static final int l = 6;
    static final int m = 7;
    static final int n = 8;
    android.media.MediaPlayer.OnErrorListener A;
    int B;
    boolean C;
    boolean D;
    boolean E;
    boolean F;
    int G;
    android.media.MediaPlayer.OnVideoSizeChangedListener H = new android.media.MediaPlayer.OnVideoSizeChangedListener() {

        final e a;

        public void onVideoSizeChanged(MediaPlayer mediaplayer, int i1, int j1)
        {
            a.s = mediaplayer.getVideoWidth();
            a.t = mediaplayer.getVideoHeight();
            if (a.s != 0 && a.t != 0)
            {
                a.getHolder().setFixedSize(a.s, a.t);
            }
        }

            
            {
                a = e.this;
                super();
            }
    };
    android.media.MediaPlayer.OnPreparedListener I = new android.media.MediaPlayer.OnPreparedListener() {

        final e a;

        public void onPrepared(MediaPlayer mediaplayer)
        {
            int i1;
            a.o = 2;
            e e1 = a;
            e e2 = a;
            a.E = true;
            e2.D = true;
            e1.C = true;
            if (a.y != null)
            {
                a.y.onPrepared(a.r);
            }
            if (a.w != null)
            {
                a.w.setEnabled(true);
            }
            a.s = mediaplayer.getVideoWidth();
            a.t = mediaplayer.getVideoHeight();
            i1 = a.B;
            if (i1 != 0)
            {
                a.seekTo(i1);
            }
            if (a.s == 0 || a.t == 0) goto _L2; else goto _L1
_L1:
            a.getHolder().setFixedSize(a.s, a.t);
            if (a.u != a.s || a.v != a.t) goto _L4; else goto _L3
_L3:
            if (a.p != 3) goto _L6; else goto _L5
_L5:
            a.start();
            if (a.w != null)
            {
                a.w.show();
            }
_L4:
            return;
_L6:
            if (!a.isPlaying() && (i1 != 0 || a.getCurrentPosition() > 0) && a.w != null)
            {
                a.w.show(0);
                return;
            }
            continue; /* Loop/switch isn't completed */
_L2:
            if (a.p == 3)
            {
                a.start();
                return;
            }
            if (true) goto _L4; else goto _L7
_L7:
        }

            
            {
                a = e.this;
                super();
            }
    };
    android.view.SurfaceHolder.Callback J = new android.view.SurfaceHolder.Callback() {

        final e a;

        public void surfaceChanged(SurfaceHolder surfaceholder, int i1, int j1, int k1)
        {
            a.u = j1;
            a.v = k1;
            if (a.p == 3)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            if (a.s == j1 && a.t == k1)
            {
                j1 = 1;
            } else
            {
                j1 = 0;
            }
            if (a.r != null && i1 != 0 && j1 != 0)
            {
                if (a.B != 0)
                {
                    a.seekTo(a.B);
                }
                a.start();
                if (a.w != null)
                {
                    a.w.show();
                }
            }
        }

        public void surfaceCreated(SurfaceHolder surfaceholder)
        {
            a.q = surfaceholder;
            if (a.r != null && a.o == 6 && a.p == 7)
            {
                a.r.setDisplay(a.q);
                a.d();
                return;
            } else
            {
                e.a(a);
                return;
            }
        }

        public void surfaceDestroyed(SurfaceHolder surfaceholder)
        {
            a.q = null;
            if (a.w != null)
            {
                a.w.hide();
            }
            if (a.o != 6)
            {
                e.a(a, true);
            }
        }

            
            {
                a = e.this;
                super();
            }
    };
    private android.media.MediaPlayer.OnCompletionListener K = new android.media.MediaPlayer.OnCompletionListener() {

        final e a;

        public void onCompletion(MediaPlayer mediaplayer)
        {
            a.o = 5;
            a.p = 5;
            if (a.w != null)
            {
                a.w.hide();
            }
            if (a.x != null)
            {
                a.x.onCompletion(a.r);
            }
        }

            
            {
                a = e.this;
                super();
            }
    };
    private android.media.MediaPlayer.OnErrorListener L = new android.media.MediaPlayer.OnErrorListener() {

        final e a;

        public boolean onError(MediaPlayer mediaplayer, int i1, int j1)
        {
            Log.d(a.a, (new StringBuilder()).append("Error: ").append(i1).append(",").append(j1).toString());
            a.o = -1;
            a.p = -1;
            if (a.w != null)
            {
                a.w.hide();
            }
            if (a.A != null && a.A.onError(a.r, i1, j1))
            {
                return true;
            }
            if (a.getWindowToken() != null)
            {
                a.b().getResources();
                if (i1 == 200)
                {
                    mediaplayer = "Invalid progressive playback";
                } else
                {
                    mediaplayer = "Unknown error";
                }
                (new android.app.AlertDialog.Builder(a.b())).setTitle("ERROR").setMessage(mediaplayer).setPositiveButton("OKAY", new android.content.DialogInterface.OnClickListener(this) {

                    final _cls4 a;

                    public void onClick(DialogInterface dialoginterface, int i1)
                    {
                        if (a.a.x != null)
                        {
                            a.a.x.onCompletion(a.a.r);
                        }
                    }

            
            {
                a = _pcls4;
                super();
            }
                }).setCancelable(false).show();
            }
            return true;
        }

            
            {
                a = e.this;
                super();
            }
    };
    private android.media.MediaPlayer.OnBufferingUpdateListener M = new android.media.MediaPlayer.OnBufferingUpdateListener() {

        final e a;

        public void onBufferingUpdate(MediaPlayer mediaplayer, int i1)
        {
            a.z = i1;
        }

            
            {
                a = e.this;
                super();
            }
    };
    String a;
    Uri b;
    FileDescriptor c;
    int d;
    int o;
    int p;
    SurfaceHolder q;
    MediaPlayer r;
    int s;
    int t;
    int u;
    int v;
    MediaController w;
    android.media.MediaPlayer.OnCompletionListener x;
    android.media.MediaPlayer.OnPreparedListener y;
    int z;

    e(Context context)
    {
        super(context);
        a = "ADCCustomVideoView";
        o = 0;
        p = 0;
        q = null;
        r = null;
        e();
    }

    public e(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
        e();
    }

    public e(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        a = "ADCCustomVideoView";
        o = 0;
        p = 0;
        q = null;
        r = null;
        e();
    }

    e(Context context, boolean flag)
    {
        super(context);
        a = "ADCCustomVideoView";
        o = 0;
        p = 0;
        q = null;
        r = null;
        F = flag;
        e();
    }

    static void a(e e1)
    {
        e1.f();
    }

    static void a(e e1, boolean flag)
    {
        e1.a(flag);
    }

    private void a(boolean flag)
    {
        if (r != null)
        {
            r.reset();
            r.release();
            r = null;
            o = 0;
            if (flag)
            {
                p = 0;
            }
        }
    }

    private void e()
    {
        s = 0;
        t = 0;
        getHolder().addCallback(J);
        getHolder().setType(3);
        setFocusable(true);
        setFocusableInTouchMode(true);
        if (F)
        {
            requestFocus();
        }
        o = 0;
        p = 0;
    }

    private void f()
    {
        if (b == null && c == null || q == null)
        {
            return;
        }
        Intent intent = new Intent("com.android.music.musicservicecommand");
        intent.putExtra("command", "pause");
        b().sendBroadcast(intent);
        a(false);
        r = new MediaPlayer();
        r.setOnPreparedListener(I);
        r.setOnVideoSizeChangedListener(H);
        d = -1;
        r.setOnCompletionListener(K);
        r.setOnErrorListener(L);
        r.setOnBufferingUpdateListener(M);
        z = 0;
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_266;
        }
        r.setDataSource(b(), b);
_L1:
        Object obj;
        r.setDisplay(q);
        r.setAudioStreamType(3);
        r.setScreenOnWhilePlaying(true);
        r.prepare();
        o = 1;
        g();
        return;
        try
        {
            r.setDataSource(c);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            if (b != null)
            {
                Log.w(a, (new StringBuilder()).append("Unable to open content: ").append(b).toString(), ((Throwable) (obj)));
            } else
            {
                Log.w(a, "Unable to open content");
            }
            o = -1;
            p = -1;
            L.onError(r, 1, 0);
            ((IOException) (obj)).printStackTrace();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            if (b != null)
            {
                Log.w(a, (new StringBuilder()).append("Unable to open content: ").append(b).toString(), ((Throwable) (obj)));
            } else
            {
                Log.w(a, "Unable to open content");
            }
            o = -1;
            p = -1;
            L.onError(r, 1, 0);
            ((IllegalArgumentException) (obj)).printStackTrace();
            return;
        }
          goto _L1
    }

    private void g()
    {
        if (r != null && w != null)
        {
            w.setMediaPlayer(this);
            Object obj;
            if (getParent() instanceof View)
            {
                obj = (View)getParent();
            } else
            {
                obj = this;
            }
            w.setAnchorView(((View) (obj)));
            w.setEnabled(i());
        }
    }

    private void h()
    {
        if (w.isShowing())
        {
            w.hide();
            return;
        } else
        {
            w.show();
            return;
        }
    }

    private boolean i()
    {
        return r != null && o != -1 && o != 0 && o != 1;
    }

    public int a(int i1, int j1)
    {
        int k1 = android.view.View.MeasureSpec.getMode(j1);
        j1 = android.view.View.MeasureSpec.getSize(j1);
        switch (k1)
        {
        default:
            return i1;

        case 0: // '\0'
            return i1;

        case -2147483648: 
            return Math.min(i1, j1);

        case 1073741824: 
            return j1;
        }
    }

    public void a()
    {
        if (r != null)
        {
            r.stop();
            r.release();
            r = null;
            o = 0;
            p = 0;
        }
    }

    public void a(android.media.MediaPlayer.OnCompletionListener oncompletionlistener)
    {
        x = oncompletionlistener;
    }

    public void a(android.media.MediaPlayer.OnErrorListener onerrorlistener)
    {
        A = onerrorlistener;
    }

    public void a(android.media.MediaPlayer.OnPreparedListener onpreparedlistener)
    {
        y = onpreparedlistener;
    }

    public void a(Uri uri)
    {
        b = uri;
        B = 0;
        f();
        requestLayout();
        invalidate();
    }

    public void a(MediaController mediacontroller)
    {
        if (w != null)
        {
            w.hide();
        }
        w = mediacontroller;
        g();
    }

    public void a(FileDescriptor filedescriptor)
    {
        c = filedescriptor;
        B = 0;
        f();
        requestLayout();
        invalidate();
    }

    public void a(String s1)
    {
        a(Uri.parse(s1));
    }

    Activity b()
    {
        return AdColony.activity();
    }

    public void c()
    {
        if (i())
        {
            r.stop();
            G = o;
            o = 6;
            p = 6;
        }
    }

    public boolean canPause()
    {
        return C;
    }

    public boolean canSeekBackward()
    {
        return D;
    }

    public boolean canSeekForward()
    {
        return E;
    }

    public void d()
    {
        if (q == null && o == 6)
        {
            p = 7;
        } else
        {
            if (r != null && o == 6)
            {
                r.start();
                o = G;
                p = G;
                return;
            }
            if (o == 8)
            {
                f();
                return;
            }
        }
    }

    public int getAudioSessionId()
    {
        return 0;
    }

    public int getBufferPercentage()
    {
        if (r != null)
        {
            return z;
        } else
        {
            return 0;
        }
    }

    public int getCurrentPosition()
    {
        if (i())
        {
            return r.getCurrentPosition();
        } else
        {
            return 0;
        }
    }

    public int getDuration()
    {
        if (i())
        {
            if (d > 0)
            {
                return d;
            } else
            {
                d = r.getDuration();
                return d;
            }
        } else
        {
            d = -1;
            return d;
        }
    }

    public boolean isPlaying()
    {
        return i() && r.isPlaying();
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        boolean flag;
        if (i1 != 4 && i1 != 24 && i1 != 25 && i1 != 82 && i1 != 5 && i1 != 6)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (i() && flag && w != null)
        {
            if (i1 == 79 || i1 == 85)
            {
                if (r.isPlaying())
                {
                    pause();
                    w.show();
                } else
                {
                    start();
                    w.hide();
                }
                return true;
            }
            if (i1 == 86 && r.isPlaying())
            {
                pause();
                w.show();
            } else
            {
                h();
            }
        }
        return super.onKeyDown(i1, keyevent);
    }

    protected void onMeasure(int i1, int j1)
    {
        i1 = getDefaultSize(s, i1);
        j1 = getDefaultSize(t, j1);
        if (s <= 0 || t <= 0) goto _L2; else goto _L1
_L1:
        if (s * j1 <= t * i1) goto _L4; else goto _L3
_L3:
        int k1 = (t * i1) / s;
        j1 = i1;
        i1 = k1;
_L6:
        setMeasuredDimension(j1, i1);
        return;
_L4:
        if (s * j1 < t * i1)
        {
            int l1 = (s * j1) / t;
            i1 = j1;
            j1 = l1;
            continue; /* Loop/switch isn't completed */
        }
_L2:
        int i2 = i1;
        i1 = j1;
        j1 = i2;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (i() && w != null)
        {
            h();
        }
        return false;
    }

    public boolean onTrackballEvent(MotionEvent motionevent)
    {
        if (i() && w != null)
        {
            h();
        }
        return false;
    }

    public void pause()
    {
        if (i() && r.isPlaying())
        {
            r.pause();
            o = 4;
        }
        p = 4;
    }

    public void seekTo(int i1)
    {
        if (i())
        {
            r.seekTo(i1);
            B = 0;
            return;
        } else
        {
            B = i1;
            return;
        }
    }

    public void start()
    {
        if (i())
        {
            r.start();
            o = 3;
        }
        p = 3;
    }
}
