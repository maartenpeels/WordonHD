// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.common.data:
//            DataHolder

public class DataHolderCreator
    implements android.os.Parcelable.Creator
{

    public static final int CONTENT_DESCRIPTION = 0;

    public DataHolderCreator()
    {
    }

    static void a(DataHolder dataholder, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.a(parcel, 1, dataholder.er(), false);
        b.c(parcel, 1000, dataholder.getVersionCode());
        b.a(parcel, 2, dataholder.es(), i, false);
        b.c(parcel, 3, dataholder.getStatusCode());
        b.a(parcel, 4, dataholder.getMetadata(), false);
        b.F(parcel, j);
    }

    public DataHolder createFromParcel(Parcel parcel)
    {
        String as[];
        Object obj;
        CursorWindow acursorwindow[];
        int i;
        int j;
        int k;
        k = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        obj = null;
        i = 0;
        acursorwindow = null;
        j = 0;
        as = null;
_L8:
        int l;
        if (parcel.dataPosition() >= k)
        {
            break MISSING_BLOCK_LABEL_208;
        }
        l = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(l);
        JVM INSTR lookupswitch 5: default 88
    //                   1: 113
    //                   2: 148
    //                   3: 173
    //                   4: 192
    //                   1000: 129;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L5:
        break MISSING_BLOCK_LABEL_192;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
        Object obj1 = obj;
        obj = as;
        as = ((String []) (obj1));
_L9:
        Object obj2 = as;
        as = ((String []) (obj));
        obj = obj2;
        if (true) goto _L8; else goto _L7
_L7:
        String as1[] = com.google.android.gms.common.internal.safeparcel.a.z(parcel, l);
        as = ((String []) (obj));
        obj = as1;
          goto _L9
_L6:
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        String as2[] = ((String []) (obj));
        obj = as;
        as = as2;
          goto _L9
_L3:
        acursorwindow = (CursorWindow[])com.google.android.gms.common.internal.safeparcel.a.b(parcel, l, CursorWindow.CREATOR);
        String as3[] = as;
        as = ((String []) (obj));
        obj = as3;
          goto _L9
_L4:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        String as4[] = ((String []) (obj));
        obj = as;
        as = as4;
          goto _L9
        android.os.Bundle bundle = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
        obj = as;
        as = bundle;
          goto _L9
        if (parcel.dataPosition() != k)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(k).toString(), parcel);
        } else
        {
            parcel = new DataHolder(j, as, acursorwindow, i, ((android.os.Bundle) (obj)));
            parcel.validateContents();
            return parcel;
        }
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public DataHolder[] newArray(int i)
    {
        return new DataHolder[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }
}
