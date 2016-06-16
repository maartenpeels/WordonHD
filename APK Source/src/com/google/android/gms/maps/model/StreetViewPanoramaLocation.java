// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.fo;

// Referenced classes of package com.google.android.gms.maps.model:
//            StreetViewPanoramaLocationCreator, LatLng, StreetViewPanoramaLink

public class StreetViewPanoramaLocation
    implements SafeParcelable
{

    public static final StreetViewPanoramaLocationCreator CREATOR = new StreetViewPanoramaLocationCreator();
    public final StreetViewPanoramaLink links[];
    public final String panoId;
    public final LatLng position;
    private final int xH;

    StreetViewPanoramaLocation(int i, StreetViewPanoramaLink astreetviewpanoramalink[], LatLng latlng, String s)
    {
        xH = i;
        links = astreetviewpanoramalink;
        position = latlng;
        panoId = s;
    }

    public StreetViewPanoramaLocation(StreetViewPanoramaLink astreetviewpanoramalink[], LatLng latlng, String s)
    {
        this(1, astreetviewpanoramalink, latlng, s);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof StreetViewPanoramaLocation))
        {
            return false;
        }
        obj = (StreetViewPanoramaLocation)obj;
        return panoId.equals(((StreetViewPanoramaLocation) (obj)).panoId) && position.equals(((StreetViewPanoramaLocation) (obj)).position);
    }

    int getVersionCode()
    {
        return xH;
    }

    public int hashCode()
    {
        return fo.hashCode(new Object[] {
            position, panoId
        });
    }

    public String toString()
    {
        return fo.e(this).a("panoId", panoId).a("position", position.toString()).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        StreetViewPanoramaLocationCreator.a(this, parcel, i);
    }

}
