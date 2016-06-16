// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.games:
//            PlayerEntity

public class PlayerEntityCreator
    implements android.os.Parcelable.Creator
{

    public PlayerEntityCreator()
    {
    }

    static void a(PlayerEntity playerentity, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.a(parcel, 1, playerentity.getPlayerId(), false);
        b.c(parcel, 1000, playerentity.getVersionCode());
        b.a(parcel, 2, playerentity.getDisplayName(), false);
        b.a(parcel, 3, playerentity.getIconImageUri(), i, false);
        b.a(parcel, 4, playerentity.getHiResImageUri(), i, false);
        b.a(parcel, 5, playerentity.getRetrievedTimestamp());
        b.c(parcel, 6, playerentity.gh());
        b.a(parcel, 7, playerentity.getLastPlayedWithTimestamp());
        b.a(parcel, 8, playerentity.getIconImageUrl(), false);
        b.a(parcel, 9, playerentity.getHiResImageUrl(), false);
        b.F(parcel, j);
    }

    public PlayerEntity[] aT(int i)
    {
        return new PlayerEntity[i];
    }

    public PlayerEntity ao(Parcel parcel)
    {
        Object obj;
        Object obj1;
        Uri uri;
        Object obj2;
        Object obj3;
        Object obj4;
        int i;
        int j;
        int k;
        long l1;
        long l2;
        k = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        j = 0;
        obj = null;
        obj2 = null;
        obj3 = null;
        uri = null;
        l2 = 0L;
        i = 0;
        l1 = 0L;
        obj1 = null;
        obj4 = null;
_L13:
        int l;
        if (parcel.dataPosition() >= k)
        {
            break MISSING_BLOCK_LABEL_561;
        }
        l = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(l);
        JVM INSTR lookupswitch 10: default 144
    //                   1: 197
    //                   2: 264
    //                   3: 293
    //                   4: 336
    //                   5: 375
    //                   6: 412
    //                   7: 449
    //                   8: 486
    //                   9: 528
    //                   1000: 227;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L10:
        break MISSING_BLOCK_LABEL_528;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
        Object obj5 = obj4;
        Object obj15 = obj3;
        obj4 = obj;
        obj3 = obj2;
        obj2 = obj15;
        obj = obj5;
_L14:
        Object obj6 = obj;
        Object obj16 = obj2;
        obj2 = obj3;
        obj = obj4;
        obj3 = obj16;
        obj4 = obj6;
        if (true) goto _L13; else goto _L12
_L12:
        String s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        obj = obj4;
        obj4 = obj2;
        obj2 = obj3;
        obj3 = obj4;
        obj4 = s;
          goto _L14
_L11:
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        Object obj7 = obj4;
        obj4 = obj2;
        Object obj17 = obj;
        obj = obj7;
        obj2 = obj3;
        obj3 = obj4;
        obj4 = obj17;
          goto _L14
_L3:
        Object obj8 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        obj2 = obj3;
        obj3 = obj8;
        obj8 = obj;
        obj = obj4;
        obj4 = obj8;
          goto _L14
_L4:
        obj3 = (Uri)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, Uri.CREATOR);
        Object obj9 = obj4;
        obj4 = obj2;
        Object obj18 = obj;
        obj = obj9;
        obj2 = obj3;
        obj3 = obj4;
        obj4 = obj18;
          goto _L14
_L5:
        uri = (Uri)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, Uri.CREATOR);
        Object obj10 = obj2;
        Object obj19 = obj;
        obj = obj4;
        obj2 = obj3;
        obj3 = obj10;
        obj4 = obj19;
          goto _L14
_L6:
        l2 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, l);
        Object obj11 = obj4;
        obj4 = obj2;
        Object obj20 = obj;
        obj = obj11;
        obj2 = obj3;
        obj3 = obj4;
        obj4 = obj20;
          goto _L14
_L7:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        Object obj12 = obj4;
        obj4 = obj2;
        Object obj21 = obj;
        obj = obj12;
        obj2 = obj3;
        obj3 = obj4;
        obj4 = obj21;
          goto _L14
_L8:
        l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, l);
        Object obj13 = obj4;
        obj4 = obj2;
        Object obj22 = obj;
        obj = obj13;
        obj2 = obj3;
        obj3 = obj4;
        obj4 = obj22;
          goto _L14
_L9:
        Object obj14 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        obj1 = obj4;
        obj4 = obj2;
        obj2 = obj14;
        obj14 = obj;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = obj4;
        obj4 = obj14;
          goto _L14
        String s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        obj4 = obj2;
        Object obj23 = obj;
        obj = s1;
        obj2 = obj3;
        obj3 = obj4;
        obj4 = obj23;
          goto _L14
        if (parcel.dataPosition() != k)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(k).toString(), parcel);
        } else
        {
            return new PlayerEntity(j, ((String) (obj)), ((String) (obj2)), ((Uri) (obj3)), uri, l2, i, l1, ((String) (obj1)), ((String) (obj4)));
        }
    }

    public Object createFromParcel(Parcel parcel)
    {
        return ao(parcel);
    }

    public Object[] newArray(int i)
    {
        return aT(i);
    }
}
