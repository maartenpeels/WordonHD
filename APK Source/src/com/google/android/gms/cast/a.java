// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.cast;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.cast:
//            ApplicationMetadata

public class a
    implements android.os.Parcelable.Creator
{

    public a()
    {
    }

    static void a(ApplicationMetadata applicationmetadata, Parcel parcel, int i)
    {
        int k = b.p(parcel);
        b.c(parcel, 1, applicationmetadata.getVersionCode());
        b.a(parcel, 2, applicationmetadata.getApplicationId(), false);
        b.a(parcel, 3, applicationmetadata.getName(), false);
        b.b(parcel, 4, applicationmetadata.getImages(), false);
        b.a(parcel, 5, applicationmetadata.xK, false);
        b.a(parcel, 6, applicationmetadata.getSenderAppIdentifier(), false);
        b.a(parcel, 7, applicationmetadata.dz(), i, false);
        b.F(parcel, k);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return j(parcel);
    }

    public ApplicationMetadata j(Parcel parcel)
    {
        Object obj;
        Object obj1;
        Object obj2;
        String s;
        Object obj3;
        Object obj4;
        int i;
        int k;
        obj = null;
        k = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        i = 0;
        obj3 = null;
        obj1 = null;
        obj2 = null;
        obj4 = null;
        s = null;
_L10:
        int l;
        if (parcel.dataPosition() >= k)
        {
            break MISSING_BLOCK_LABEL_275;
        }
        l = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(l);
        JVM INSTR tableswitch 1 7: default 88
    //                   1 117
    //                   2 138
    //                   3 156
    //                   4 177
    //                   5 205
    //                   6 230
    //                   7 252;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L8:
        break MISSING_BLOCK_LABEL_252;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
        Object obj5 = obj3;
        obj3 = obj;
        obj = obj5;
_L11:
        Object obj6 = obj;
        obj = obj3;
        obj3 = obj6;
        if (true) goto _L10; else goto _L9
_L9:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        Object obj7 = obj3;
        obj3 = obj;
        obj = obj7;
          goto _L11
_L3:
        String s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        obj = obj3;
        obj3 = s1;
          goto _L11
_L4:
        s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        Object obj8 = obj3;
        obj3 = obj;
        obj = obj8;
          goto _L11
_L5:
        java.util.ArrayList arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l, WebImage.CREATOR);
        obj4 = obj3;
        obj3 = obj;
        obj = obj4;
        obj4 = arraylist;
          goto _L11
_L6:
        java.util.ArrayList arraylist1 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, l);
        obj2 = obj3;
        obj3 = obj;
        obj = obj2;
        obj2 = arraylist1;
          goto _L11
_L7:
        String s2 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        obj1 = obj3;
        obj3 = obj;
        obj = obj1;
        obj1 = s2;
          goto _L11
        Uri uri = (Uri)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, Uri.CREATOR);
        obj3 = obj;
        obj = uri;
          goto _L11
        if (parcel.dataPosition() != k)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a((new StringBuilder()).append("Overread allowed size end=").append(k).toString(), parcel);
        } else
        {
            return new ApplicationMetadata(i, ((String) (obj)), s, ((java.util.List) (obj4)), ((java.util.List) (obj2)), ((String) (obj1)), ((Uri) (obj3)));
        }
    }

    public Object[] newArray(int i)
    {
        return w(i);
    }

    public ApplicationMetadata[] w(int i)
    {
        return new ApplicationMetadata[i];
    }
}
