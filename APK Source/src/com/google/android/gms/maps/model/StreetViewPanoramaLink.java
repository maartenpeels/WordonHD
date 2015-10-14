// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.fo;

// Referenced classes of package com.google.android.gms.maps.model:
//            StreetViewPanoramaLinkCreator

public class StreetViewPanoramaLink
    implements SafeParcelable
{

    public static final StreetViewPanoramaLinkCreator CREATOR = new StreetViewPanoramaLinkCreator();
    public final float bearing;
    public final String panoId;
    private final int xH;

    StreetViewPanoramaLink(int i, String s, float f)
    {
        xH = i;
        panoId = s;
        if ((double)f <= 0.0D)
        {
            f = f % 360F + 360F;
        }
        bearing = f % 360F;
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
        if (!(obj instanceof StreetViewPanoramaLink))
        {
            return false;
        }
        obj = (StreetViewPanoramaLink)obj;
        return panoId.equals(((StreetViewPanoramaLink) (obj)).panoId) && Float.floatToIntBits(bearing) == Float.floatToIntBits(((StreetViewPanoramaLink) (obj)).bearing);
    }

    int getVersionCode()
    {
        return xH;
    }

    public int hashCode()
    {
        return fo.hashCode(new Object[] {
            panoId, Float.valueOf(bearing)
        });
    }

    public String toString()
    {
        return fo.e(this).a("panoId", panoId).a("bearing", Float.valueOf(bearing)).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        StreetViewPanoramaLinkCreator.a(this, parcel, i);
    }

}
