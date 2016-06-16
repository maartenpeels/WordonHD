// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;

// Referenced classes of package c.m.x.a.gv:
//            p, d, g, j

final class o
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new p();
    final String a;
    final int b;
    final boolean c;
    final int d;
    final int e;
    final String f;
    final boolean g;
    final boolean h;
    final Bundle i;
    Bundle j;
    d k;

    public o(Parcel parcel)
    {
        a = parcel.readString();
        b = parcel.readInt();
        boolean flag;
        if (parcel.readInt() != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c = flag;
        d = parcel.readInt();
        e = parcel.readInt();
        f = parcel.readString();
        if (parcel.readInt() != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        g = flag;
        if (parcel.readInt() != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        h = flag;
        i = parcel.readBundle();
        j = parcel.readBundle();
    }

    public o(d d1)
    {
        a = d1.getClass().getName();
        b = d1.mIndex;
        c = d1.mFromLayout;
        d = d1.mFragmentId;
        e = d1.mContainerId;
        f = d1.mTag;
        g = d1.mRetainInstance;
        h = d1.mDetached;
        i = d1.mArguments;
    }

    public final d a(g g1, d d1)
    {
        if (k != null)
        {
            return k;
        }
        if (i != null)
        {
            i.setClassLoader(g1.getClassLoader());
        }
        k = c.m.x.a.gv.d.instantiate(g1, a, i);
        if (j != null)
        {
            j.setClassLoader(g1.getClassLoader());
            k.mSavedFragmentState = j;
        }
        k.setIndex(b, d1);
        k.mFromLayout = c;
        k.mRestored = true;
        k.mFragmentId = d;
        k.mContainerId = e;
        k.mTag = f;
        k.mRetainInstance = g;
        k.mDetached = h;
        k.mFragmentManager = g1.b;
        if (j.a)
        {
            Log.v("FragmentManager", (new StringBuilder("Instantiated fragment ")).append(k).toString());
        }
        return k;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int l)
    {
        parcel.writeString(a);
        parcel.writeInt(b);
        if (c)
        {
            l = 1;
        } else
        {
            l = 0;
        }
        parcel.writeInt(l);
        parcel.writeInt(d);
        parcel.writeInt(e);
        parcel.writeString(f);
        if (g)
        {
            l = 1;
        } else
        {
            l = 0;
        }
        parcel.writeInt(l);
        if (h)
        {
            l = 1;
        } else
        {
            l = 0;
        }
        parcel.writeInt(l);
        parcel.writeBundle(i);
        parcel.writeBundle(j);
    }

}
