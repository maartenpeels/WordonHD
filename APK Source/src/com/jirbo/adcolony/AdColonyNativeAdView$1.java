// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

// Referenced classes of package com.jirbo.adcolony:
//            AdColonyNativeAdView, AdColonyIAPEngagement, a, d, 
//            u

class a
    implements android.view.iew._cls1
{

    final AdColonyNativeAdView a;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        int i = motionevent.getAction();
        if (i != 0) goto _L2; else goto _L1
_L1:
        view = new float[3];
        Color.colorToHSV(a.at, view);
        view[2] = view[2] * 0.8F;
        a.Z.setBackgroundColor(Color.HSVToColor(view));
_L4:
        return true;
_L2:
        if (i == 3)
        {
            a.Z.setBackgroundColor(a.at);
        } else
        if (i == 1)
        {
            if (a.J)
            {
                a.an = AdColonyIAPEngagement.OVERLAY;
                a.u = true;
                return true;
            }
            if (a.ac.equals("install") || a.ac.equals("url"))
            {
                a.l.d.b("native_overlay_click", a.K);
                try
                {
                    view = new Intent("android.intent.action.VIEW", Uri.parse(a.ab));
                    com.jirbo.adcolony.a.b().startActivity(view);
                }
                // Misplaced declaration of an exception variable
                catch (View view)
                {
                    Toast.makeText(com.jirbo.adcolony.a.b(), "Unable to open store.", 0).show();
                }
            }
            a.Z.setBackgroundColor(a.at);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    (AdColonyNativeAdView adcolonynativeadview)
    {
        a = adcolonynativeadview;
        super();
    }
}
