// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.game;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.GameEntity;

// Referenced classes of package com.google.android.gms.games.internal.game:
//            ExtendedGameEntity, GameBadgeEntity

public class ExtendedGameEntityCreator
    implements android.os.Parcelable.Creator
{

    public ExtendedGameEntityCreator()
    {
    }

    static void a(ExtendedGameEntity extendedgameentity, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.a(parcel, 1, extendedgameentity.hf(), i, false);
        b.c(parcel, 1000, extendedgameentity.getVersionCode());
        b.c(parcel, 2, extendedgameentity.gX());
        b.a(parcel, 3, extendedgameentity.gY());
        b.c(parcel, 4, extendedgameentity.gZ());
        b.a(parcel, 5, extendedgameentity.ha());
        b.a(parcel, 6, extendedgameentity.hb());
        b.a(parcel, 7, extendedgameentity.hc(), false);
        b.a(parcel, 8, extendedgameentity.hd());
        b.a(parcel, 9, extendedgameentity.he(), false);
        b.b(parcel, 10, extendedgameentity.gW(), false);
        b.F(parcel, j);
    }

    public ExtendedGameEntity aq(Parcel parcel)
    {
        Object obj;
        String s;
        String s1;
        Object obj1;
        int i;
        int j;
        int k;
        int l;
        long l1;
        long l2;
        long l3;
        boolean flag;
        l = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        k = 0;
        obj = null;
        j = 0;
        flag = false;
        i = 0;
        l1 = 0L;
        l2 = 0L;
        s1 = null;
        l3 = 0L;
        s = null;
        obj1 = null;
_L14:
        int i1;
        if (parcel.dataPosition() >= l)
        {
            break MISSING_BLOCK_LABEL_573;
        }
        i1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(i1);
        JVM INSTR lookupswitch 11: default 156
    //                   1: 209
    //                   2: 278
    //                   3: 311
    //                   4: 344
    //                   5: 377
    //                   6: 406
    //                   7: 439
    //                   8: 472
    //                   9: 505
    //                   10: 537
    //                   1000: 245;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12
_L11:
        break MISSING_BLOCK_LABEL_537;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
        Object obj2 = obj1;
        long l4 = l3;
        obj1 = obj;
        l3 = l1;
        l1 = l4;
        obj = obj2;
_L15:
        Object obj3 = obj;
        long l5 = l1;
        l1 = l3;
        obj = obj1;
        l3 = l5;
        obj1 = obj3;
        if (true) goto _L14; else goto _L13
_L13:
        GameEntity gameentity = (GameEntity)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, GameEntity.CREATOR);
        long l6 = l1;
        obj = obj1;
        l1 = l3;
        l3 = l6;
        obj1 = gameentity;
          goto _L15
_L12:
        k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        long l7 = l1;
        Object obj4 = obj;
        obj = obj1;
        l1 = l3;
        l3 = l7;
        obj1 = obj4;
          goto _L15
_L3:
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        long l8 = l1;
        Object obj5 = obj;
        obj = obj1;
        l1 = l3;
        l3 = l8;
        obj1 = obj5;
          goto _L15
_L4:
        flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1);
        long l9 = l1;
        Object obj6 = obj;
        obj = obj1;
        l1 = l3;
        l3 = l9;
        obj1 = obj6;
          goto _L15
_L5:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        long l10 = l1;
        Object obj7 = obj;
        obj = obj1;
        l1 = l3;
        l3 = l10;
        obj1 = obj7;
          goto _L15
_L6:
        long l11 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
        l1 = l3;
        l3 = l11;
        Object obj8 = obj;
        obj = obj1;
        obj1 = obj8;
          goto _L15
_L7:
        l2 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
        long l12 = l1;
        Object obj9 = obj;
        obj = obj1;
        l1 = l3;
        l3 = l12;
        obj1 = obj9;
          goto _L15
_L8:
        s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        long l13 = l1;
        Object obj10 = obj;
        obj = obj1;
        l1 = l3;
        l3 = l13;
        obj1 = obj10;
          goto _L15
_L9:
        l3 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
        long l14 = l1;
        Object obj11 = obj;
        obj = obj1;
        l1 = l3;
        l3 = l14;
        obj1 = obj11;
          goto _L15
_L10:
        s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        long l15 = l1;
        Object obj12 = obj;
        obj = obj1;
        l1 = l3;
        l3 = l15;
        obj1 = obj12;
          goto _L15
        obj1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1, GameBadgeEntity.CREATOR);
        long l16 = l1;
        Object obj13 = obj;
        obj = obj1;
        l1 = l3;
        l3 = l16;
        obj1 = obj13;
          goto _L15
        if (parcel.dataPosition() != l)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(l).toString(), parcel);
        } else
        {
            return new ExtendedGameEntity(k, ((GameEntity) (obj)), j, flag, i, l1, l2, s1, l3, s, ((java.util.ArrayList) (obj1)));
        }
    }

    public ExtendedGameEntity[] be(int i)
    {
        return new ExtendedGameEntity[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return aq(parcel);
    }

    public Object[] newArray(int i)
    {
        return be(i);
    }
}
