// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package c.m.x.a.gv:
//            n, o, b

final class m
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new n();
    o a[];
    int b[];
    b c[];

    public m()
    {
    }

    public m(Parcel parcel)
    {
        a = (o[])parcel.createTypedArray(o.CREATOR);
        b = parcel.createIntArray();
        c = (b[])parcel.createTypedArray(b.CREATOR);
    }

    public final int describeContents()
    {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeTypedArray(a, i);
        parcel.writeIntArray(b);
        parcel.writeTypedArray(c, i);
    }

}
