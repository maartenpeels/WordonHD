// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;

import android.graphics.Bitmap;
import java.util.ArrayList;

// Referenced classes of package com.jirbo.adcolony:
//            AdColonyAd, a, ab, AdColonyAdListener, 
//            AdColonyBrowser, AdColonyNativeAdView, AdColonyNativeAdListener, d, 
//            AdColony, l, j, u

public class AdColonyInterstitialAd extends AdColonyAd
{

    AdColonyAdListener v;
    AdColonyNativeAdListener w;
    AdColonyNativeAdView x;
    boolean y;

    public AdColonyInterstitialAd()
    {
        a.u = false;
        com.jirbo.adcolony.a.e();
        j = "interstitial";
        k = "fullscreen";
        y = false;
        l = ab.b();
    }

    public AdColonyInterstitialAd(String s)
    {
        j = "interstitial";
        k = "fullscreen";
        com.jirbo.adcolony.a.e();
        g = s;
        y = false;
        l = ab.b();
    }

    void a()
    {
        j = "interstitial";
        k = "fullscreen";
        if (v != null)
        {
            v.onAdColonyAdAttemptFinished(this);
        } else
        if (w != null)
        {
            if (canceled())
            {
                x.I = true;
            } else
            {
                x.I = false;
            }
            w.onAdColonyNativeAdFinished(true, x);
        }
        com.jirbo.adcolony.a.h();
        System.gc();
        if (!a.u && !AdColonyBrowser.B)
        {
            for (int i = 0; i < a.ad.size(); i++)
            {
                ((Bitmap)a.ad.get(i)).recycle();
            }

            a.ad.clear();
        }
        a.K = null;
        a.v = true;
    }

    boolean a(boolean flag)
    {
        if (g == null)
        {
            g = a.l.e();
            if (g == null)
            {
                return false;
            }
        }
        return a.l.f(g);
    }

    boolean b()
    {
        return false;
    }

    public boolean isReady()
    {
        if (g == null)
        {
            g = a.l.e();
            if (g == null)
            {
                return false;
            }
        }
        if (AdColony.isZoneNative(g))
        {
            a.ac = 12;
            return false;
        } else
        {
            return a.l.f(g);
        }
    }

    public void show()
    {
        a.ac = 0;
        if (y)
        {
            l.d.b("Show attempt on out of date ad object. Please instantiate a new ad object for each ad attempt.");
        } else
        {
            y = true;
            j = "interstitial";
            k = "fullscreen";
            if (!isReady())
            {
                new j(a.l) {

                    final AdColonyInterstitialAd a;

                    void a()
                    {
                        if (a.g != null)
                        {
                            o.d.a(a.g, a);
                        }
                    }

            
            {
                a = AdColonyInterstitialAd.this;
                super(d1);
            }
                };
                f = 2;
                if (v != null)
                {
                    v.onAdColonyAdAttemptFinished(this);
                    return;
                }
            } else
            {
                if (a.v)
                {
                    new j(a.l) {

                        final AdColonyInterstitialAd a;

                        void a()
                        {
                            o.d.a(a.g, a);
                        }

            
            {
                a = AdColonyInterstitialAd.this;
                super(d1);
            }
                    };
                    a.v = false;
                    c();
                    a.J = this;
                    if (!a.l.b(this))
                    {
                        if (v != null)
                        {
                            v.onAdColonyAdAttemptFinished(this);
                        }
                        a.v = true;
                        return;
                    }
                    if (v != null)
                    {
                        v.onAdColonyAdStarted(this);
                    }
                }
                f = 4;
                return;
            }
        }
    }

    public AdColonyInterstitialAd withListener(AdColonyAdListener adcolonyadlistener)
    {
        v = adcolonyadlistener;
        return this;
    }
}
