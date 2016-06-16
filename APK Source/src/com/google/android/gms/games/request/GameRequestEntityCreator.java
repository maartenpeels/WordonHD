// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.PlayerEntity;

// Referenced classes of package com.google.android.gms.games.request:
//            GameRequestEntity

public class GameRequestEntityCreator
    implements android.os.Parcelable.Creator
{

    public static final int CONTENT_DESCRIPTION = 0;

    public GameRequestEntityCreator()
    {
    }

    static void a(GameRequestEntity gamerequestentity, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.a(parcel, 1, gamerequestentity.getGame(), i, false);
        b.c(parcel, 1000, gamerequestentity.getVersionCode());
        b.a(parcel, 2, gamerequestentity.getSender(), i, false);
        b.a(parcel, 3, gamerequestentity.getData(), false);
        b.a(parcel, 4, gamerequestentity.getRequestId(), false);
        b.b(parcel, 5, gamerequestentity.getRecipients(), false);
        b.c(parcel, 7, gamerequestentity.getType());
        b.a(parcel, 9, gamerequestentity.getCreationTimestamp());
        b.a(parcel, 10, gamerequestentity.getExpirationTimestamp());
        b.a(parcel, 11, gamerequestentity.hK(), false);
        b.c(parcel, 12, gamerequestentity.getStatus());
        b.F(parcel, j);
    }

    public GameRequestEntity createFromParcel(Parcel parcel)
    {
        Object obj;
        Object obj1;
        Object obj2;
        Object obj3;
        PlayerEntity playerentity;
        byte abyte0[];
        int i;
        int j;
        int k;
        int l;
        long l1;
        long l2;
        l = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        j = 0;
        obj = null;
        playerentity = null;
        abyte0 = null;
        obj3 = null;
        obj2 = null;
        k = 0;
        l1 = 0L;
        l2 = 0L;
        obj1 = null;
        i = 0;
_L14:
        int i1;
        if (parcel.dataPosition() >= l)
        {
            break MISSING_BLOCK_LABEL_735;
        }
        i1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(i1);
        JVM INSTR lookupswitch 11: default 156
    //                   1: 241
    //                   2: 330
    //                   3: 379
    //                   4: 422
    //                   5: 469
    //                   7: 519
    //                   9: 562
    //                   10: 601
    //                   11: 644
    //                   12: 692
    //                   1000: 287;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12
_L11:
        break MISSING_BLOCK_LABEL_692;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
        byte abyte1[] = abyte0;
        long l3 = l2;
        Object obj15 = obj3;
        Object obj16 = obj2;
        Object obj17 = obj1;
        abyte0 = ((byte []) (obj));
        obj3 = abyte1;
        obj2 = obj15;
        obj1 = obj16;
        l2 = l1;
        l1 = l3;
        obj = obj17;
_L15:
        long l4 = l1;
        l1 = l2;
        Object obj4 = obj;
        obj = abyte0;
        abyte0 = ((byte []) (obj3));
        obj3 = obj2;
        obj2 = obj1;
        l2 = l4;
        obj1 = obj4;
        if (true) goto _L14; else goto _L13
_L13:
        GameEntity gameentity = (GameEntity)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, GameEntity.CREATOR);
        obj = obj1;
        long l5 = l1;
        obj1 = obj2;
        l1 = l2;
        l2 = l5;
        obj2 = obj3;
        obj3 = abyte0;
        abyte0 = gameentity;
          goto _L15
_L12:
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        long l6 = l1;
        Object obj5 = obj;
        obj = obj1;
        l1 = l2;
        l2 = l6;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = abyte0;
        abyte0 = ((byte []) (obj5));
          goto _L15
_L3:
        playerentity = (PlayerEntity)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, PlayerEntity.CREATOR);
        long l7 = l1;
        Object obj6 = obj;
        obj = obj1;
        l1 = l2;
        l2 = l7;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = abyte0;
        abyte0 = ((byte []) (obj6));
          goto _L15
_L4:
        abyte0 = com.google.android.gms.common.internal.safeparcel.a.q(parcel, i1);
        long l8 = l1;
        Object obj7 = obj;
        obj = obj1;
        l1 = l2;
        l2 = l8;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = abyte0;
        abyte0 = ((byte []) (obj7));
          goto _L15
_L5:
        Object obj8 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        obj3 = abyte0;
        long l9 = l1;
        abyte0 = ((byte []) (obj8));
        obj8 = obj;
        obj = obj1;
        l1 = l2;
        l2 = l9;
        obj1 = obj2;
        obj2 = abyte0;
        abyte0 = ((byte []) (obj8));
          goto _L15
_L6:
        Object obj9 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1, PlayerEntity.CREATOR);
        long l10 = l1;
        obj2 = obj3;
        obj3 = obj9;
        obj9 = obj;
        obj = obj1;
        l1 = l2;
        l2 = l10;
        obj1 = obj3;
        obj3 = abyte0;
        abyte0 = ((byte []) (obj9));
          goto _L15
_L7:
        k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        long l11 = l1;
        Object obj10 = obj;
        obj = obj1;
        l1 = l2;
        l2 = l11;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = abyte0;
        abyte0 = ((byte []) (obj10));
          goto _L15
_L8:
        long l12 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
        l1 = l2;
        l2 = l12;
        Object obj11 = obj;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = abyte0;
        abyte0 = ((byte []) (obj11));
          goto _L15
_L9:
        l2 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
        long l13 = l1;
        Object obj12 = obj;
        obj = obj1;
        l1 = l2;
        l2 = l13;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = abyte0;
        abyte0 = ((byte []) (obj12));
          goto _L15
_L10:
        Object obj13 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
        long l14 = l1;
        obj1 = obj2;
        obj2 = obj13;
        obj13 = obj;
        obj = obj2;
        l1 = l2;
        l2 = l14;
        obj2 = obj3;
        obj3 = abyte0;
        abyte0 = ((byte []) (obj13));
          goto _L15
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        long l15 = l1;
        Object obj14 = obj;
        obj = obj1;
        l1 = l2;
        l2 = l15;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = abyte0;
        abyte0 = ((byte []) (obj14));
          goto _L15
        if (parcel.dataPosition() != l)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(l).toString(), parcel);
        } else
        {
            return new GameRequestEntity(j, ((GameEntity) (obj)), playerentity, abyte0, ((String) (obj3)), ((java.util.ArrayList) (obj2)), k, l1, l2, ((android.os.Bundle) (obj1)), i);
        }
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public GameRequestEntity[] newArray(int i)
    {
        return new GameRequestEntity[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }
}
