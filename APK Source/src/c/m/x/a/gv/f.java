// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;

import android.os.Parcel;

final class f
    implements android.os.Parcelable.Creator
{

    f()
    {
    }

    public final Object createFromParcel(Parcel parcel)
    {
        return new d.b(parcel);
    }

    public final volatile Object[] newArray(int i)
    {
        return new d.b[i];
    }
}
