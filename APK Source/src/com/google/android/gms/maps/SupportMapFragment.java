// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.f;
import com.google.android.gms.internal.fq;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.IMapFragmentDelegate;
import com.google.android.gms.maps.internal.c;
import com.google.android.gms.maps.internal.t;
import com.google.android.gms.maps.internal.u;
import com.google.android.gms.maps.model.RuntimeRemoteException;

// Referenced classes of package com.google.android.gms.maps:
//            GoogleMap, GoogleMapOptions, MapsInitializer

public class SupportMapFragment extends Fragment
{
    static class a
        implements LifecycleDelegate
    {

        private final Fragment Hz;
        private final IMapFragmentDelegate RU;

        public IMapFragmentDelegate io()
        {
            return RU;
        }

        public void onCreate(Bundle bundle)
        {
            Bundle bundle1;
            bundle1 = bundle;
            if (bundle != null)
            {
                break MISSING_BLOCK_LABEL_14;
            }
            bundle1 = new Bundle();
            bundle = Hz.getArguments();
            if (bundle == null)
            {
                break MISSING_BLOCK_LABEL_47;
            }
            if (bundle.containsKey("MapOptions"))
            {
                t.a(bundle1, "MapOptions", bundle.getParcelable("MapOptions"));
            }
            RU.onCreate(bundle1);
            return;
            bundle;
            throw new RuntimeRemoteException(bundle);
        }

        public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
        {
            try
            {
                layoutinflater = RU.onCreateView(e.h(layoutinflater), e.h(viewgroup), bundle);
            }
            // Misplaced declaration of an exception variable
            catch (LayoutInflater layoutinflater)
            {
                throw new RuntimeRemoteException(layoutinflater);
            }
            return (View)e.d(layoutinflater);
        }

        public void onDestroy()
        {
            try
            {
                RU.onDestroy();
                return;
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeRemoteException(remoteexception);
            }
        }

        public void onDestroyView()
        {
            try
            {
                RU.onDestroyView();
                return;
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeRemoteException(remoteexception);
            }
        }

        public void onInflate(Activity activity, Bundle bundle, Bundle bundle1)
        {
            bundle = (GoogleMapOptions)bundle.getParcelable("MapOptions");
            try
            {
                RU.onInflate(e.h(activity), bundle, bundle1);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Activity activity)
            {
                throw new RuntimeRemoteException(activity);
            }
        }

        public void onLowMemory()
        {
            try
            {
                RU.onLowMemory();
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
                RU.onPause();
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
                RU.onResume();
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
                RU.onSaveInstanceState(bundle);
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

        public a(Fragment fragment, IMapFragmentDelegate imapfragmentdelegate)
        {
            RU = (IMapFragmentDelegate)fq.f(imapfragmentdelegate);
            Hz = (Fragment)fq.f(fragment);
        }
    }

    static class b extends com.google.android.gms.dynamic.a
    {

        private final Fragment Hz;
        protected f RV;
        private Activity nS;

        static void a(b b1, Activity activity)
        {
            b1.setActivity(activity);
        }

        private void setActivity(Activity activity)
        {
            nS = activity;
            ip();
        }

        protected void a(f f1)
        {
            RV = f1;
            ip();
        }

        public void ip()
        {
            if (nS == null || RV == null || fW() != null)
            {
                break MISSING_BLOCK_LABEL_70;
            }
            MapsInitializer.initialize(nS);
            IMapFragmentDelegate imapfragmentdelegate = u.A(nS).h(e.h(nS));
            RV.a(new a(Hz, imapfragmentdelegate));
            return;
            Object obj;
            obj;
            throw new RuntimeRemoteException(((RemoteException) (obj)));
            obj;
        }

        b(Fragment fragment)
        {
            Hz = fragment;
        }
    }


    private GoogleMap RT;
    private final b Sw = new b(this);

    public SupportMapFragment()
    {
    }

    public static SupportMapFragment newInstance()
    {
        return new SupportMapFragment();
    }

    public static SupportMapFragment newInstance(GoogleMapOptions googlemapoptions)
    {
        SupportMapFragment supportmapfragment = new SupportMapFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("MapOptions", googlemapoptions);
        supportmapfragment.setArguments(bundle);
        return supportmapfragment;
    }

    public final GoogleMap getMap()
    {
        Object obj = io();
        if (obj == null)
        {
            return null;
        }
        try
        {
            obj = ((IMapFragmentDelegate) (obj)).getMap();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new RuntimeRemoteException(((RemoteException) (obj)));
        }
        if (obj == null)
        {
            return null;
        }
        if (RT == null || RT._mthif().asBinder() != ((IGoogleMapDelegate) (obj)).asBinder())
        {
            RT = new GoogleMap(((IGoogleMapDelegate) (obj)));
        }
        return RT;
    }

    protected IMapFragmentDelegate io()
    {
        Sw.ip();
        if (Sw.fW() == null)
        {
            return null;
        } else
        {
            return ((a)Sw.fW()).io();
        }
    }

    public void onActivityCreated(Bundle bundle)
    {
        if (bundle != null)
        {
            bundle.setClassLoader(com/google/android/gms/maps/SupportMapFragment.getClassLoader());
        }
        super.onActivityCreated(bundle);
    }

    public void onAttach(Activity activity)
    {
        super.onAttach(activity);
        b.a(Sw, activity);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Sw.onCreate(bundle);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return Sw.onCreateView(layoutinflater, viewgroup, bundle);
    }

    public void onDestroy()
    {
        Sw.onDestroy();
        super.onDestroy();
    }

    public void onDestroyView()
    {
        Sw.onDestroyView();
        super.onDestroyView();
    }

    public void onInflate(Activity activity, AttributeSet attributeset, Bundle bundle)
    {
        super.onInflate(activity, attributeset, bundle);
        b.a(Sw, activity);
        attributeset = GoogleMapOptions.createFromAttributes(activity, attributeset);
        Bundle bundle1 = new Bundle();
        bundle1.putParcelable("MapOptions", attributeset);
        Sw.onInflate(activity, bundle1, bundle);
    }

    public void onLowMemory()
    {
        Sw.onLowMemory();
        super.onLowMemory();
    }

    public void onPause()
    {
        Sw.onPause();
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
        Sw.onResume();
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        if (bundle != null)
        {
            bundle.setClassLoader(com/google/android/gms/maps/SupportMapFragment.getClassLoader());
        }
        super.onSaveInstanceState(bundle);
        Sw.onSaveInstanceState(bundle);
    }

    public void setArguments(Bundle bundle)
    {
        super.setArguments(bundle);
    }
}
