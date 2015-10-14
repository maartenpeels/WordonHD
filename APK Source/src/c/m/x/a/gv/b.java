// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;

// Referenced classes of package c.m.x.a.gv:
//            c, a, d, j

final class b
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new c();
    final int a[];
    final int b;
    final int c;
    final String d;
    final int e;
    final int f;
    final CharSequence g;
    final int h;
    final CharSequence i;

    public b(Parcel parcel)
    {
        a = parcel.createIntArray();
        b = parcel.readInt();
        c = parcel.readInt();
        d = parcel.readString();
        e = parcel.readInt();
        f = parcel.readInt();
        g = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        h = parcel.readInt();
        i = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
    }

    public b(a a1)
    {
        a.a a2 = a1.b;
        int k;
        int l;
        for (k = 0; a2 != null; k = l)
        {
            l = k;
            if (a2.i != null)
            {
                l = k + a2.i.size();
            }
            a2 = a2.a;
        }

        a = new int[a1.d * 7 + k];
        if (!a1.k)
        {
            throw new IllegalStateException("Not on back stack");
        }
        a2 = a1.b;
        k = 0;
        while (a2 != null) 
        {
            int ai[] = a;
            int i1 = k + 1;
            ai[k] = a2.c;
            ai = a;
            int j1 = i1 + 1;
            if (a2.d != null)
            {
                k = a2.d.mIndex;
            } else
            {
                k = -1;
            }
            ai[i1] = k;
            ai = a;
            k = j1 + 1;
            ai[j1] = a2.e;
            ai = a;
            i1 = k + 1;
            ai[k] = a2.f;
            ai = a;
            k = i1 + 1;
            ai[i1] = a2.g;
            ai = a;
            i1 = k + 1;
            ai[k] = a2.h;
            if (a2.i != null)
            {
                int k1 = a2.i.size();
                int ai1[] = a;
                k = i1 + 1;
                ai1[i1] = k1;
                for (i1 = 0; i1 < k1;)
                {
                    a[k] = ((d)a2.i.get(i1)).mIndex;
                    i1++;
                    k++;
                }

            } else
            {
                a[i1] = 0;
                k = i1 + 1;
            }
            a2 = a2.a;
        }
        b = a1.i;
        c = a1.j;
        d = a1.m;
        e = a1.o;
        f = a1.p;
        g = a1.q;
        h = a1.r;
        i = a1.s;
    }

    public final a a(j j1)
    {
        a a1 = new a(j1);
        int i1 = 0;
        for (int l = 0; l < a.length;)
        {
            a.a a2 = new a.a();
            int ai[] = a;
            int k1 = l + 1;
            a2.c = ai[l];
            if (j.a)
            {
                Log.v("FragmentManager", (new StringBuilder("Instantiate ")).append(a1).append(" op #").append(i1).append(" base fragment #").append(a[k1]).toString());
            }
            ai = a;
            int k = k1 + 1;
            l = ai[k1];
            int i2;
            if (l >= 0)
            {
                a2.d = (d)j1.f.get(l);
            } else
            {
                a2.d = null;
            }
            ai = a;
            l = k + 1;
            a2.e = ai[k];
            ai = a;
            k = l + 1;
            a2.f = ai[l];
            ai = a;
            l = k + 1;
            a2.g = ai[k];
            ai = a;
            k1 = l + 1;
            a2.h = ai[l];
            ai = a;
            k = k1 + 1;
            i2 = ai[k1];
            if (i2 > 0)
            {
                a2.i = new ArrayList(i2);
                int l1 = 0;
                do
                {
                    l = k;
                    if (l1 >= i2)
                    {
                        break;
                    }
                    if (j.a)
                    {
                        Log.v("FragmentManager", (new StringBuilder("Instantiate ")).append(a1).append(" set remove fragment #").append(a[k]).toString());
                    }
                    d d1 = (d)j1.f.get(a[k]);
                    a2.i.add(d1);
                    l1++;
                    k++;
                } while (true);
            } else
            {
                l = k;
            }
            a1.a(a2);
            i1++;
        }

        a1.i = b;
        a1.j = c;
        a1.m = d;
        a1.o = e;
        a1.k = true;
        a1.p = f;
        a1.q = g;
        a1.r = h;
        a1.s = i;
        a1.a(1);
        return a1;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int k)
    {
        parcel.writeIntArray(a);
        parcel.writeInt(b);
        parcel.writeInt(c);
        parcel.writeString(d);
        parcel.writeInt(e);
        parcel.writeInt(f);
        TextUtils.writeToParcel(g, parcel, 0);
        parcel.writeInt(h);
        TextUtils.writeToParcel(i, parcel, 0);
    }

}
