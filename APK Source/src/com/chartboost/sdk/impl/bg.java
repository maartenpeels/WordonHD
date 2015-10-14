// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.content.Intent;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.net.Uri;
import android.view.Surface;
import android.view.TextureView;
import com.chartboost.sdk.Libraries.CBLogging;
import java.io.IOException;
import java.util.Map;

public class bg extends TextureView
    implements android.view.TextureView.SurfaceTextureListener, bh.a
{

    android.media.MediaPlayer.OnVideoSizeChangedListener a;
    android.media.MediaPlayer.OnPreparedListener b;
    private String c;
    private Uri d;
    private Map e;
    private int f;
    private int g;
    private int h;
    private Surface i;
    private MediaPlayer j;
    private int k;
    private int l;
    private android.media.MediaPlayer.OnCompletionListener m;
    private android.media.MediaPlayer.OnPreparedListener n;
    private int o;
    private android.media.MediaPlayer.OnErrorListener p;
    private int q;
    private android.media.MediaPlayer.OnCompletionListener r;
    private android.media.MediaPlayer.OnErrorListener s;
    private android.media.MediaPlayer.OnBufferingUpdateListener t;

    public bg(Context context)
    {
        super(context);
        c = "VideoTextureView";
        g = 0;
        h = 0;
        i = null;
        j = null;
        a = new android.media.MediaPlayer.OnVideoSizeChangedListener() {

            final bg a;

            public void onVideoSizeChanged(MediaPlayer mediaplayer, int i1, int j1)
            {
                bg.a(a, mediaplayer.getVideoWidth());
                bg.b(a, mediaplayer.getVideoHeight());
                if (bg.a(a) != 0 && bg.b(a) != 0)
                {
                    a.a(a.getWidth(), a.getHeight());
                }
            }

            
            {
                a = bg.this;
                super();
            }
        };
        b = new android.media.MediaPlayer.OnPreparedListener() {

            final bg a;

            public void onPrepared(MediaPlayer mediaplayer)
            {
                bg.c(a, 2);
                bg.a(a, mediaplayer.getVideoWidth());
                bg.b(a, mediaplayer.getVideoHeight());
                if (bg.c(a) != null)
                {
                    bg.c(a).onPrepared(bg.d(a));
                }
                int i1 = bg.e(a);
                if (i1 != 0)
                {
                    a.a(i1);
                }
                if (bg.f(a) == 3)
                {
                    a.a();
                }
            }

            
            {
                a = bg.this;
                super();
            }
        };
        r = new android.media.MediaPlayer.OnCompletionListener() {

            final bg a;

            public void onCompletion(MediaPlayer mediaplayer)
            {
                bg.d(a, 5);
                if (bg.g(a) != 5)
                {
                    bg.c(a, 5);
                    if (bg.h(a) != null)
                    {
                        bg.h(a).onCompletion(bg.d(a));
                    }
                }
            }

            
            {
                a = bg.this;
                super();
            }
        };
        s = new android.media.MediaPlayer.OnErrorListener() {

            final bg a;

            public boolean onError(MediaPlayer mediaplayer, int i1, int j1)
            {
                CBLogging.a(bg.i(a), (new StringBuilder()).append("Error: ").append(i1).append(",").append(j1).toString());
                bg.c(a, -1);
                bg.d(a, -1);
                return bg.j(a) == null || !bg.j(a).onError(bg.d(a), i1, j1) ? true : true;
            }

            
            {
                a = bg.this;
                super();
            }
        };
        t = new android.media.MediaPlayer.OnBufferingUpdateListener() {

            final bg a;

            public void onBufferingUpdate(MediaPlayer mediaplayer, int i1)
            {
                bg.e(a, i1);
            }

            
            {
                a = bg.this;
                super();
            }
        };
        f();
    }

    static int a(bg bg1)
    {
        return bg1.k;
    }

    static int a(bg bg1, int i1)
    {
        bg1.k = i1;
        return i1;
    }

    private void a(boolean flag)
    {
        if (j != null)
        {
            j.reset();
            j.release();
            j = null;
            g = 0;
            if (flag)
            {
                h = 0;
            }
        }
    }

    static int b(bg bg1)
    {
        return bg1.l;
    }

    static int b(bg bg1, int i1)
    {
        bg1.l = i1;
        return i1;
    }

    static int c(bg bg1, int i1)
    {
        bg1.g = i1;
        return i1;
    }

    static android.media.MediaPlayer.OnPreparedListener c(bg bg1)
    {
        return bg1.n;
    }

    static int d(bg bg1, int i1)
    {
        bg1.h = i1;
        return i1;
    }

    static MediaPlayer d(bg bg1)
    {
        return bg1.j;
    }

    static int e(bg bg1)
    {
        return bg1.q;
    }

    static int e(bg bg1, int i1)
    {
        bg1.o = i1;
        return i1;
    }

    static int f(bg bg1)
    {
        return bg1.h;
    }

    private void f()
    {
        k = 0;
        l = 0;
        setSurfaceTextureListener(this);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        g = 0;
        h = 0;
    }

    static int g(bg bg1)
    {
        return bg1.g;
    }

    private void g()
    {
        if (d == null || i == null)
        {
            return;
        }
        Intent intent = new Intent("com.android.music.musicservicecommand");
        intent.putExtra("command", "pause");
        getContext().sendBroadcast(intent);
        a(false);
        try
        {
            Object obj = new MediaMetadataRetriever();
            ((MediaMetadataRetriever) (obj)).setDataSource(d.toString());
            String s1 = ((MediaMetadataRetriever) (obj)).extractMetadata(19);
            obj = ((MediaMetadataRetriever) (obj)).extractMetadata(18);
            l = (int)Float.parseFloat(s1);
            k = (int)Float.parseFloat(((String) (obj)));
        }
        catch (Exception exception)
        {
            CBLogging.d("play video", "read size error", exception);
        }
        try
        {
            j = new MediaPlayer();
            j.setOnPreparedListener(b);
            j.setOnVideoSizeChangedListener(a);
            f = -1;
            j.setOnCompletionListener(r);
            j.setOnErrorListener(s);
            j.setOnBufferingUpdateListener(t);
            o = 0;
            j.setDataSource(getContext(), d, e);
            j.setSurface(i);
            j.setAudioStreamType(3);
            j.setScreenOnWhilePlaying(true);
            j.prepareAsync();
            g = 1;
            return;
        }
        catch (IOException ioexception)
        {
            CBLogging.d(c, (new StringBuilder()).append("Unable to open content: ").append(d).toString(), ioexception);
            g = -1;
            h = -1;
            s.onError(j, 1, 0);
            return;
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            CBLogging.d(c, (new StringBuilder()).append("Unable to open content: ").append(d).toString(), illegalargumentexception);
        }
        g = -1;
        h = -1;
        s.onError(j, 1, 0);
    }

    static android.media.MediaPlayer.OnCompletionListener h(bg bg1)
    {
        return bg1.m;
    }

    private boolean h()
    {
        return j != null && g != -1 && g != 0 && g != 1;
    }

    static String i(bg bg1)
    {
        return bg1.c;
    }

    static android.media.MediaPlayer.OnErrorListener j(bg bg1)
    {
        return bg1.p;
    }

    public void a()
    {
        if (h())
        {
            j.start();
            g = 3;
        }
        h = 3;
    }

    public void a(int i1)
    {
        if (h())
        {
            j.seekTo(i1);
            q = 0;
            return;
        } else
        {
            q = i1;
            return;
        }
    }

    public void a(int i1, int j1)
    {
        if (k == 0 || l == 0 || i1 == 0 || j1 == 0)
        {
            return;
        } else
        {
            float f1 = Math.min((float)i1 / (float)k, (float)j1 / (float)l);
            float f2 = k;
            float f3 = l;
            Matrix matrix = new Matrix();
            matrix.setScale((f2 * f1) / (float)i1, (f1 * f3) / (float)j1, (float)i1 / 2.0F, (float)j1 / 2.0F);
            setTransform(matrix);
            return;
        }
    }

    public void a(android.media.MediaPlayer.OnCompletionListener oncompletionlistener)
    {
        m = oncompletionlistener;
    }

    public void a(android.media.MediaPlayer.OnErrorListener onerrorlistener)
    {
        p = onerrorlistener;
    }

    public void a(android.media.MediaPlayer.OnPreparedListener onpreparedlistener)
    {
        n = onpreparedlistener;
    }

    public void a(Uri uri)
    {
        a(uri, ((Map) (null)));
    }

    public void a(Uri uri, Map map)
    {
        d = uri;
        e = map;
        q = 0;
        g();
        requestLayout();
        invalidate();
    }

    public void b()
    {
        if (h() && j.isPlaying())
        {
            j.pause();
            g = 4;
        }
        h = 4;
    }

    public int c()
    {
        if (h())
        {
            if (f > 0)
            {
                return f;
            } else
            {
                f = j.getDuration();
                return f;
            }
        } else
        {
            f = -1;
            return f;
        }
    }

    public int d()
    {
        if (h())
        {
            return j.getCurrentPosition();
        } else
        {
            return 0;
        }
    }

    public boolean e()
    {
        return h() && j.isPlaying();
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfacetexture, int i1, int j1)
    {
        i = new Surface(surfacetexture);
        g();
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfacetexture)
    {
        i = null;
        a(true);
        return true;
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfacetexture, int i1, int j1)
    {
        if (h == 3)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        if (j != null && i1 != 0)
        {
            if (q != 0)
            {
                a(q);
            }
            a();
        }
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfacetexture)
    {
    }
}
