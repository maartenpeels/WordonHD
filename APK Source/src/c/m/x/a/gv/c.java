// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;

import android.os.Parcel;

// Referenced classes of package c.m.x.a.gv:
//            b

final class c
    implements android.os.Parcelable.Creator
{

    c()
    {
    }

    public final Object createFromParcel(Parcel parcel)
    {
        return new b(parcel);
    }

    public final volatile Object[] newArray(int i)
    {
        return new b[i];
    }
}
