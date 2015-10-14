// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.f;
import com.google.android.gms.internal.fq;
import com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate;
import com.google.android.gms.maps.internal.c;
import com.google.android.gms.maps.internal.u;
import com.google.android.gms.maps.model.RuntimeRemoteException;

// Referenced classes of package com.google.android.gms.maps:
//            StreetViewPanorama, StreetViewPanoramaOptions

public class StreetViewPanoramaView extends FrameLayout
{
    static class a extends com.google.android.gms.dynamic.a
    {

        protected f RV;
        private final ViewGroup Sa;
        private final StreetViewPanoramaOptions St;
        private final Context mContext;

        protected void a(f f1)
        {
            RV = f1;
            ip();
        }

        public void ip()
        {
            if (RV == null || fW() != null)
            {
                break MISSING_BLOCK_LABEL_59;
            }
            IStreetViewPanoramaViewDelegate istreetviewpanoramaviewdelegate = u.A(mContext).a(e.h(mContext), St);
            RV.a(new b(Sa, istreetviewpanoramaviewdelegate));
            return;
            Object obj;
            obj;
            throw new RuntimeRemoteException(((RemoteException) (obj)));
            obj;
        }

        a(ViewGroup viewgroup, Context context, StreetViewPanoramaOptions streetviewpanoramaoptions)
        {
            Sa = viewgroup;
            mContext = context;
            St = streetviewpanoramaoptions;
        }
    }

    static class b
        implements LifecycleDelegate
    {

        private final ViewGroup RX;
        private final IStreetViewPanoramaViewDelegate Su;
        private View Sv;

        public IStreetViewPanoramaViewDelegate iw()
        {
            return Su;
        }

        public void onCreate(Bundle bundle)
        {
            try
            {
                Su.onCreate(bundle);
                Sv = (View)e.d(Su.getView());
                RX.removeAllViews();
                RX.addView(Sv);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Bundle bundle)
            {
                throw new RuntimeRemoteException(bundle);
            }
        }

        public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
        {
            throw new UnsupportedOperationException("onCreateView not allowed on StreetViewPanoramaViewDelegate");
        }

        public void onDestroy()
        {
            try
            {
                Su.onDestroy();
                return;
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeRemoteException(remoteexception);
            }
        }

        public void onDestroyView()
        {
            throw new UnsupportedOperationException("onDestroyView not allowed on StreetViewPanoramaViewDelegate");
        }

        public void onInflate(Activity activity, Bundle bundle, Bundle bundle1)
        {
            throw new UnsupportedOperationException("onInflate not allowed on StreetViewPanoramaViewDelegate");
        }

        public void onLowMemory()
        {
            try
            {
                Su.onLowMemory();
                return;
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeRemoteException(remoteexception);
            }
        }

        public void onPause()
        {
            try
            {
                Su.onPause();
                return;
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeRemoteException(remoteexception);
            }
        }

        public void onResume()
        {
            try
            {
                Su.onResume();
                return;
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeRemoteException(remoteexception);
            }
        }

        public void onSaveInstanceState(Bundle bundle)
        {
            try
            {
                Su.onSaveInstanceState(bundle);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Bundle bundle)
            {
                throw new RuntimeRemoteException(bundle);
            }
        }

        public void onStart()
        {
        }

        public void onStop()
        {
        }

        public b(ViewGroup viewgroup, IStreetViewPanoramaViewDelegate istreetviewpanoramaviewdelegate)
        {
            Su = (IStreetViewPanoramaViewDelegate)fq.f(istreetviewpanoramaviewdelegate);
            RX = (ViewGroup)fq.f(viewgroup);
        }
    }


    private StreetViewPanorama Sj;
    private final a Ss;

    public StreetViewPanoramaView(Context context)
    {
        super(context);
        Ss = new a(this, context, null);
    }

    public StreetViewPanoramaView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        Ss = new a(this, context, null);
    }

    public StreetViewPanoramaView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        Ss = new a(this, context, null);
    }

    public StreetViewPanoramaView(Context context, StreetViewPanoramaOptions streetviewpanoramaoptions)
    {
        super(context);
        Ss = new a(this, context, streetviewpanoramaoptions);
    }

    public final StreetViewPanorama getStreetViewPanorama()
    {
        if (Sj != null)
        {
            return Sj;
        }
        Ss.ip();
        if (Ss.fW() == null)
        {
            return null;
        }
        try
        {
            Sj = new StreetViewPanorama(((b)Ss.fW()).iw().getStreetViewPanorama());
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return Sj;
    }

    public final void onCreate(Bundle bundle)
    {
        Ss.onCreate(bundle);
        if (Ss.fW() == null)
        {
            bundle = Ss;
            a.b(this);
        }
    }

    public final void onDestroy()
    {
        Ss.onDestroy();
    }

    public final void onLowMemory()
    {
        Ss.onLowMemory();
    }

    public final void onPause()
    {
        Ss.onPause();
    }

    public final void onResume()
    {
        Ss.onResume();
    }

    public final void onSaveInstanceState(Bundle bundle)
    {
        Ss.onSaveInstanceState(bundle);
    }
}
