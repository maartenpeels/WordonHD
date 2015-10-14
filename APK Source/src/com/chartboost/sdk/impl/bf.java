// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.chartboost.sdk.Libraries.CBLogging;
import java.io.IOException;
import java.util.Map;

public class bf extends SurfaceView
    implements bh.a
{

    android.media.MediaPlayer.OnVideoSizeChangedListener a;
    android.media.MediaPlayer.OnPreparedListener b;
    android.view.SurfaceHolder.Callback c;
    private String d;
    private Uri e;
    private Map f;
    private int g;
    private int h;
    private int i;
    private SurfaceHolder j;
    private MediaPlayer k;
    private int l;
    private int m;
    private int n;
    private int o;
    private android.media.MediaPlayer.OnCompletionListener p;
    private android.media.MediaPlayer.OnPreparedListener q;
    private int r;
    private android.media.MediaPlayer.OnErrorListener s;
    private int t;
    private android.media.MediaPlayer.OnCompletionListener u;
    private android.media.MediaPlayer.OnErrorListener v;
    private android.media.MediaPlayer.OnBufferingUpdateListener w;

    public bf(Context context)
    {
        super(context);
        d = "VideoSurfaceView";
        h = 0;
        i = 0;
        j = null;
        k = null;
        a = new android.media.MediaPlayer.OnVideoSizeChangedListener() {

            final bf a;

            public void onVideoSizeChanged(MediaPlayer mediaplayer, int i1, int j1)
            {
                bf.a(a, mediaplayer.getVideoWidth());
                bf.b(a, mediaplayer.getVideoHeight());
                if (bf.a(a) != 0 && bf.b(a) != 0)
                {
                    a.getHolder().setFixedSize(bf.a(a), bf.b(a));
                }
            }

            
            {
                a = bf.this;
                super();
            }
        };
        b = new android.media.MediaPlayer.OnPreparedListener() {

            final bf a;

            public void onPrepared(MediaPlayer mediaplayer)
            {
                bf.c(a, 2);
                bf.a(a, mediaplayer.getVideoWidth());
                bf.b(a, mediaplayer.getVideoHeight());
                if (bf.c(a) != null)
                {
                    bf.c(a).onPrepared(bf.d(a));
                }
                int i1 = bf.e(a);
                if (i1 != 0)
                {
                    a.a(i1);
                }
                if (bf.a(a) != 0 && bf.b(a) != 0)
                {
                    a.getHolder().setFixedSize(bf.a(a), bf.b(a));
                    if (bf.f(a) == bf.a(a) && bf.g(a) == bf.b(a) && bf.h(a) == 3)
                    {
                        a.a();
                    }
                } else
                if (bf.h(a) == 3)
                {
                    a.a();
                    return;
                }
            }

            
            {
                a = bf.this;
                super();
            }
        };
        u = new android.media.MediaPlayer.OnCompletionListener() {

            final bf a;

            public void onCompletion(MediaPlayer mediaplayer)
            {
                bf.d(a, 5);
                if (bf.i(a) != 5)
                {
                    bf.c(a, 5);
                    if (bf.j(a) != null)
                    {
                        bf.j(a).onCompletion(bf.d(a));
                    }
                }
            }

            
            {
                a = bf.this;
                super();
            }
        };
        v = new android.media.MediaPlayer.OnErrorListener() {

            final bf a;

            public boolean onError(MediaPlayer mediaplayer, int i1, int j1)
            {
                CBLogging.a(bf.k(a), (new StringBuilder()).append("Error: ").append(i1).append(",").append(j1).toString());
                bf.c(a, -1);
                bf.d(a, -1);
                return bf.l(a) == null || !bf.l(a).onError(bf.d(a), i1, j1) ? true : true;
            }

            
            {
                a = bf.this;
                super();
            }
        };
        w = new android.media.MediaPlayer.OnBufferingUpdateListener() {

            final bf a;

            public void onBufferingUpdate(MediaPlayer mediaplayer, int i1)
            {
                bf.e(a, i1);
            }

            
            {
                a = bf.this;
                super();
            }
        };
        c = new android.view.SurfaceHolder.Callback() {

            final bf a;

            public void surfaceChanged(SurfaceHolder surfaceholder, int i1, int j1, int k1)
            {
                bf.f(a, j1);
                bf.g(a, k1);
                if (bf.h(a) == 3)
                {
                    i1 = 1;
                } else
                {
                    i1 = 0;
                }
                if (bf.a(a) == j1 && bf.b(a) == k1)
                {
                    j1 = 1;
                } else
                {
                    j1 = 0;
                }
                if (bf.d(a) != null && i1 != 0 && j1 != 0)
                {
                    if (bf.e(a) != 0)
                    {
                        a.a(bf.e(a));
                    }
                    a.a();
                }
            }

            public void surfaceCreated(SurfaceHolder surfaceholder)
            {
                bf.a(a, surfaceholder);
                bf.m(a);
            }

            public void surfaceDestroyed(SurfaceHolder surfaceholder)
            {
                bf.a(a, null);
                bf.a(a, true);
            }

            
            {
                a = bf.this;
                super();
            }
        };
        f();
    }

    static int a(bf bf1)
    {
        return bf1.l;
    }

    static int a(bf bf1, int i1)
    {
        bf1.l = i1;
        return i1;
    }

    static SurfaceHolder a(bf bf1, SurfaceHolder surfaceholder)
    {
        bf1.j = surfaceholder;
        return surfaceholder;
    }

    static void a(bf bf1, boolean flag)
    {
        bf1.a(flag);
    }

    private void a(boolean flag)
    {
        if (k != null)
        {
            k.reset();
            k.release();
            k = null;
            h = 0;
            if (flag)
            {
                i = 0;
            }
        }
    }

    static int b(bf bf1)
    {
        return bf1.m;
    }

    static int b(bf bf1, int i1)
    {
        bf1.m = i1;
        return i1;
    }

    static int c(bf bf1, int i1)
    {
        bf1.h = i1;
        return i1;
    }

    static android.media.MediaPlayer.OnPreparedListener c(bf bf1)
    {
        return bf1.q;
    }

    static int d(bf bf1, int i1)
    {
        bf1.i = i1;
        return i1;
    }

    static MediaPlayer d(bf bf1)
    {
        return bf1.k;
    }

    static int e(bf bf1)
    {
        return bf1.t;
    }

    static int e(bf bf1, int i1)
    {
        bf1.r = i1;
        return i1;
    }

    static int f(bf bf1)
    {
        return bf1.n;
    }

    static int f(bf bf1, int i1)
    {
        bf1.n = i1;
        return i1;
    }

    private void f()
    {
        l = 0;
        m = 0;
        getHolder().addCallback(c);
        getHolder().setType(3);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        h = 0;
        i = 0;
    }

    static int g(bf bf1)
    {
        return bf1.o;
    }

    static int g(bf bf1, int i1)
    {
        bf1.o = i1;
        return i1;
    }

    private void g()
    {
        if (e == null || j == null)
        {
            return;
        }
        Intent intent = new Intent("com.android.music.musicservicecommand");
        intent.putExtra("command", "pause");
        getContext().sendBroadcast(intent);
        a(false);
        try
        {
            k = new MediaPlayer();
            k.setOnPreparedListener(b);
            k.setOnVideoSizeChangedListener(a);
            g = -1;
            k.setOnCompletionListener(u);
            k.setOnErrorListener(v);
            k.setOnBufferingUpdateListener(w);
            r = 0;
            k.setDataSource(getContext(), e, f);
            k.setDisplay(j);
            k.setAudioStreamType(3);
            k.setScreenOnWhilePlaying(true);
            k.prepareAsync();
            h = 1;
            return;
        }
        catch (IOException ioexception)
        {
            CBLogging.d(d, (new StringBuilder()).append("Unable to open content: ").append(e).toString(), ioexception);
            h = -1;
            i = -1;
            v.onError(k, 1, 0);
            return;
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            CBLogging.d(d, (new StringBuilder()).append("Unable to open content: ").append(e).toString(), illegalargumentexception);
        }
        h = -1;
        i = -1;
        v.onError(k, 1, 0);
    }

    static int h(bf bf1)
    {
        return bf1.i;
    }

    private boolean h()
    {
        return k != null && h != -1 && h != 0 && h != 1;
    }

    static int i(bf bf1)
    {
        return bf1.h;
    }

    static android.media.MediaPlayer.OnCompletionListener j(bf bf1)
    {
        return bf1.p;
    }

    static String k(bf bf1)
    {
        return bf1.d;
    }

    static android.media.MediaPlayer.OnErrorListener l(bf bf1)
    {
        return bf1.s;
    }

    static void m(bf bf1)
    {
        bf1.g();
    }

    public void a()
    {
        if (h())
        {
            k.start();
            h = 3;
        }
        i = 3;
    }

    public void a(int i1)
    {
        if (h())
        {
            k.seekTo(i1);
            t = 0;
            return;
        } else
        {
            t = i1;
            return;
        }
    }

    public void a(int i1, int j1)
    {
    }

    public void a(android.media.MediaPlayer.OnCompletionListener oncompletionlistener)
    {
        p = oncompletionlistener;
    }

    public void a(android.media.MediaPlayer.OnErrorListener onerrorlistener)
    {
        s = onerrorlistener;
    }

    public void a(android.media.MediaPlayer.OnPreparedListener onpreparedlistener)
    {
        q = onpreparedlistener;
    }

    public void a(Uri uri)
    {
        a(uri, ((Map) (null)));
    }

    public void a(Uri uri, Map map)
    {
        e = uri;
        f = map;
        t = 0;
        g();
        requestLayout();
        invalidate();
    }

    public void b()
    {
        if (h() && k.isPlaying())
        {
            k.pause();
            h = 4;
        }
        i = 4;
    }

    public int c()
    {
        if (h())
        {
            if (g > 0)
            {
                return g;
            } else
            {
                g = k.getDuration();
                return g;
            }
        } else
        {
            g = -1;
            return g;
        }
    }

    public int d()
    {
        if (h())
        {
            return k.getCurrentPosition();
        } else
        {
            return 0;
        }
    }

    public boolean e()
    {
        return h() && k.isPlaying();
    }

    protected void onMeasure(int i1, int j1)
    {
        i1 = getDefaultSize(0, i1);
        j1 = getDefaultSize(0, j1);
        int k1;
        if (l > 0 && m > 0)
        {
            k1 = Math.min(j1, Math.round(((float)m / (float)l) * (float)i1));
            float f1 = (float)l / (float)m;
            j1 = Math.min(i1, Math.round((float)j1 * f1));
            i1 = k1;
            k1 = j1;
            j1 = i1;
        } else
        {
            k1 = i1;
        }
        setMeasuredDimension(k1, j1);
    }
}
