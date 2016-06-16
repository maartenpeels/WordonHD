// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import android.app.Activity;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.google.android.gms.internal.gr;
import java.lang.ref.WeakReference;

// Referenced classes of package com.google.android.gms.games.internal:
//            PopupManager, GamesClientImpl, GamesLog

private static final class Iz extends PopupManager
    implements android.view.r, android.view.Listener
{

    private boolean Iz;
    private WeakReference JO;

    private void h(View view)
    {
        int i;
        if (gr.fz())
        {
            Object obj = view.getDisplay();
            int ai[];
            int j;
            int k;
            if (obj != null)
            {
                i = ((Display) (obj)).getDisplayId();
            } else
            {
                i = -1;
            }
        } else
        {
            i = -1;
        }
        obj = view.getWindowToken();
        ai = new int[2];
        view.getLocationInWindow(ai);
        j = view.getWidth();
        k = view.getHeight();
        JL.JN = i;
        JL.JM = ((android.os.IBinder) (obj));
        JL.left = ai[0];
        JL.top = ai[1];
        JL.right = ai[0] + j;
        JL.bottom = ai[1] + k;
        if (Iz)
        {
            gS();
            Iz = false;
        }
    }

    protected void bc(int i)
    {
        JL = new <init>(i, null, null);
    }

    public void g(View view)
    {
        JK.gF();
        if (JO != null)
        {
            View view1 = (View)JO.get();
            android.content.Context context1 = JK.getContext();
            Object obj = view1;
            if (view1 == null)
            {
                obj = view1;
                if (context1 instanceof Activity)
                {
                    obj = ((Activity)context1).getWindow().getDecorView();
                }
            }
            if (obj != null)
            {
                ((View) (obj)).removeOnAttachStateChangeListener(this);
                obj = ((View) (obj)).getViewTreeObserver();
                android.content.Context context;
                if (gr.fy())
                {
                    ((ViewTreeObserver) (obj)).removeOnGlobalLayoutListener(this);
                } else
                {
                    ((ViewTreeObserver) (obj)).removeGlobalOnLayoutListener(this);
                }
            }
        }
        JO = null;
        context = JK.getContext();
        if (view == null && (context instanceof Activity))
        {
            obj = ((Activity)context).findViewById(0x1020002);
            view = ((View) (obj));
            if (obj == null)
            {
                view = ((Activity)context).getWindow().getDecorView();
            }
            GamesLog.g("PopupManager", "You have not specified a View to use as content view for popups. Falling back to the Activity content view which may not work properly in future versions of the API. Use setViewForPopups() to set your content view.");
        }
        if (view != null)
        {
            h(view);
            JO = new WeakReference(view);
            view.addOnAttachStateChangeListener(this);
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
            return;
        } else
        {
            GamesLog.h("PopupManager", "No content view usable to display popups. Popups will not be displayed in response to this client's calls. Use setViewForPopups() to set your content view.");
            return;
        }
    }

    public void gS()
    {
        if (JL.JM != null)
        {
            super.gS();
            return;
        }
        boolean flag;
        if (JO != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Iz = flag;
    }

    public void onGlobalLayout()
    {
        View view;
        if (JO != null)
        {
            if ((view = (View)JO.get()) != null)
            {
                h(view);
                return;
            }
        }
    }

    public void onViewAttachedToWindow(View view)
    {
        h(view);
    }

    public void onViewDetachedFromWindow(View view)
    {
        JK.gF();
        view.removeOnAttachStateChangeListener(this);
    }

    protected (GamesClientImpl gamesclientimpl, int i)
    {
        super(gamesclientimpl, i, null);
        Iz = false;
    }
}
