// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            ki

public class kj
    implements android.os.Parcelable.Creator
{

    public kj()
    {
    }

    static void a(ki ki1, Parcel parcel, int i)
    {
        i = b.p(parcel);
        b.c(parcel, 1, ki1.xH);
        b.c(parcel, 2, ki1.fA());
        b.a(parcel, 3, ki1.getPath(), false);
        b.a(parcel, 4, ki1.getData(), false);
        b.a(parcel, 5, ki1.getSource(), false);
        b.F(parcel, i);
    }

    public ki by(Parcel parcel)
    {
        byte abyte0[];
        Object obj;
        Object obj1;
        int i;
        int j;
        int k;
        i = 0;
        k = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        obj = null;
        abyte0 = null;
        obj1 = null;
        j = 0;
_L8:
        int l;
        if (parcel.dataPosition() >= k)
        {
            break MISSING_BLOCK_LABEL_192;
        }
        l = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(l);
        JVM INSTR tableswitch 1 5: default 72
    //                   1 97
    //                   2 116
    //                   3 135
    //                   4 158
    //                   5 174;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L6:
        break MISSING_BLOCK_LABEL_174;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
        Object obj2 = obj;
        obj = abyte0;
        abyte0 = ((byte []) (obj2));
_L9:
        byte abyte1[] = abyte0;
        abyte0 = ((byte []) (obj));
        obj = abyte1;
        if (true) goto _L8; else goto _L7
_L7:
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        byte abyte2[] = abyte0;
        abyte0 = ((byte []) (obj));
        obj = abyte2;
          goto _L9
_L3:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        byte abyte3[] = abyte0;
        abyte0 = ((byte []) (obj));
        obj = abyte3;
          goto _L9
_L4:
        String s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        obj1 = abyte0;
        abyte0 = ((byte []) (obj));
        obj = obj1;
        obj1 = s;
          goto _L9
_L5:
        byte abyte4[] = com.google.android.gms.common.internal.safeparcel.a.q(parcel, l);
        abyte0 = ((byte []) (obj));
        obj = abyte4;
          goto _L9
        obj = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        byte abyte5[] = abyte0;
        abyte0 = ((byte []) (obj));
        obj = abyte5;
          goto _L9
        if (parcel.dataPosition() != k)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(k).toString(), parcel);
        } else
        {
            return new ki(j, i, ((String) (obj1)), abyte0, ((String) (obj)));
        }
    }

    public ki[] cN(int i)
    {
        return new ki[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return by(parcel);
    }

    public Object[] newArray(int i)
    {
        return cN(i);
    }
}
