// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.fragment;

import android.app.Fragment;
import android.content.res.Resources;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.a;
import com.google.android.gms.dynamic.f;
import com.google.android.gms.internal.jh;

// Referenced classes of package com.google.android.gms.wallet.fragment:
//            WalletFragment, WalletFragmentOptions, WalletFragmentStyle

private class <init> extends a
    implements android.view.ner
{

    final WalletFragment acN;

    protected void a(FrameLayout framelayout)
    {
        Button button;
        button = new Button(com.google.android.gms.wallet.fragment.WalletFragment.a(acN).getActivity());
        button.setText(com.google.android.gms.uy_button_place_holder);
        if (WalletFragment.e(acN) == null) goto _L2; else goto _L1
_L1:
        WalletFragmentStyle walletfragmentstyle = WalletFragment.e(acN).getFragmentStyle();
        if (walletfragmentstyle == null) goto _L2; else goto _L3
_L3:
        int i;
        int j;
        android.util.DisplayMetrics displaymetrics = com.google.android.gms.wallet.fragment.WalletFragment.a(acN).getResources().getDisplayMetrics();
        i = walletfragmentstyle.a("buyButtonWidth", displaymetrics, -1);
        j = walletfragmentstyle.a("buyButtonHeight", displaymetrics, -2);
_L5:
        button.setLayoutParams(new android.view.arams(i, j));
        button.setOnClickListener(this);
        framelayout.addView(button);
        return;
_L2:
        i = -1;
        j = -2;
        if (true) goto _L5; else goto _L4
_L4:
    }

    protected void a(f f1)
    {
        Object obj = com.google.android.gms.wallet.fragment.WalletFragment.a(acN).getActivity();
        if (WalletFragment.b(acN) == null && WalletFragment.c(acN) && obj != null)
        {
            try
            {
                obj = jh.a(((android.app.Activity) (obj)), WalletFragment.d(acN), WalletFragment.e(acN), com.google.android.gms.wallet.fragment.WalletFragment.f(acN));
                com.google.android.gms.wallet.fragment.WalletFragment.a(acN, new <init>(((com.google.android.gms.internal.iz) (obj)), null));
                com.google.android.gms.wallet.fragment.WalletFragment.a(acN, null);
            }
            // Misplaced declaration of an exception variable
            catch (f f1)
            {
                return;
            }
            f1.a(WalletFragment.b(acN));
            if (WalletFragment.g(acN) != null)
            {
                com.google.android.gms.wallet.fragment.a(WalletFragment.b(acN), WalletFragment.g(acN));
                com.google.android.gms.wallet.fragment.WalletFragment.a(acN, null);
            }
            if (WalletFragment.h(acN) != null)
            {
                com.google.android.gms.wallet.fragment.a(WalletFragment.b(acN), WalletFragment.h(acN));
                com.google.android.gms.wallet.fragment.WalletFragment.a(acN, null);
            }
            if (WalletFragment.i(acN) != null)
            {
                com.google.android.gms.wallet.fragment.a(WalletFragment.b(acN), WalletFragment.i(acN).booleanValue());
                com.google.android.gms.wallet.fragment.WalletFragment.a(acN, null);
            }
        }
    }

    public void onClick(View view)
    {
        view = com.google.android.gms.wallet.fragment.WalletFragment.a(acN).getActivity();
        GooglePlayServicesUtil.showErrorDialogFragment(GooglePlayServicesUtil.isGooglePlayServicesAvailable(view), view, -1);
    }

    private ableException(WalletFragment walletfragment)
    {
        acN = walletfragment;
        super();
    }

    acN(WalletFragment walletfragment, acN acn)
    {
        this(walletfragment);
    }
}
