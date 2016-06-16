// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.multiplayer.realtime;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.multiplayer.ParticipantEntity;

// Referenced classes of package com.google.android.gms.games.multiplayer.realtime:
//            RoomEntity

public class RoomEntityCreator
    implements android.os.Parcelable.Creator
{

    public RoomEntityCreator()
    {
    }

    static void a(RoomEntity roomentity, Parcel parcel, int i)
    {
        i = b.p(parcel);
        b.a(parcel, 1, roomentity.getRoomId(), false);
        b.c(parcel, 1000, roomentity.getVersionCode());
        b.a(parcel, 2, roomentity.getCreatorId(), false);
        b.a(parcel, 3, roomentity.getCreationTimestamp());
        b.c(parcel, 4, roomentity.getStatus());
        b.a(parcel, 5, roomentity.getDescription(), false);
        b.c(parcel, 6, roomentity.getVariant());
        b.a(parcel, 7, roomentity.getAutoMatchCriteria(), false);
        b.b(parcel, 8, roomentity.getParticipants(), false);
        b.c(parcel, 9, roomentity.getAutoMatchWaitEstimateSeconds());
        b.F(parcel, i);
    }

    public RoomEntity ax(Parcel parcel)
    {
        Object obj;
        Object obj1;
        String s;
        Object obj2;
        Object obj3;
        int i;
        int j;
        int k;
        int l;
        int j1;
        long l1;
        j1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        k = 0;
        obj = null;
        obj3 = null;
        l1 = 0L;
        l = 0;
        s = null;
        i = 0;
        obj2 = null;
        obj1 = null;
        j = 0;
_L13:
        int i1;
        if (parcel.dataPosition() >= j1)
        {
            break MISSING_BLOCK_LABEL_620;
        }
        i1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(i1);
        JVM INSTR lookupswitch 10: default 144
    //                   1: 217
    //                   2: 296
    //                   3: 335
    //                   4: 374
    //                   5: 417
    //                   6: 456
    //                   7: 491
    //                   8: 534
    //                   9: 581
    //                   1000: 253;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L10:
        break MISSING_BLOCK_LABEL_581;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
        i1 = j;
        Object obj15 = obj3;
        Object obj4 = obj2;
        Object obj16 = obj1;
        obj3 = obj;
        obj2 = obj15;
        j = i;
        obj1 = obj4;
        obj = obj16;
        i = i1;
_L14:
        i1 = i;
        i = j;
        Object obj5 = obj;
        obj = obj3;
        obj3 = obj2;
        obj2 = obj1;
        obj1 = obj5;
        j = i1;
        if (true) goto _L13; else goto _L12
_L12:
        String s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        i1 = i;
        obj = obj1;
        i = j;
        obj1 = obj2;
        j = i1;
        obj2 = obj3;
        obj3 = s1;
          goto _L14
_L11:
        i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        k = i;
        Object obj6 = obj;
        i = j;
        obj = obj1;
        obj1 = obj2;
        j = k;
        obj2 = obj3;
        obj3 = obj6;
        k = i1;
          goto _L14
_L3:
        obj3 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        i1 = i;
        Object obj7 = obj;
        i = j;
        obj = obj1;
        obj1 = obj2;
        j = i1;
        obj2 = obj3;
        obj3 = obj7;
          goto _L14
_L4:
        l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
        i1 = i;
        Object obj8 = obj;
        i = j;
        obj = obj1;
        obj1 = obj2;
        j = i1;
        obj2 = obj3;
        obj3 = obj8;
          goto _L14
_L5:
        i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        l = i;
        Object obj9 = obj;
        i = j;
        obj = obj1;
        obj1 = obj2;
        j = l;
        l = i1;
        obj2 = obj3;
        obj3 = obj9;
          goto _L14
_L6:
        s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        i1 = i;
        Object obj10 = obj;
        i = j;
        obj = obj1;
        obj1 = obj2;
        j = i1;
        obj2 = obj3;
        obj3 = obj10;
          goto _L14
_L7:
        i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        i = j;
        j = i1;
        Object obj11 = obj;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = obj11;
          goto _L14
_L8:
        Object obj12 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i1);
        obj2 = obj3;
        obj3 = obj12;
        i1 = i;
        obj12 = obj;
        i = j;
        obj = obj1;
        obj1 = obj3;
        j = i1;
        obj3 = obj12;
          goto _L14
_L9:
        Object obj13 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1, ParticipantEntity.CREATOR);
        obj1 = obj2;
        i1 = i;
        obj2 = obj13;
        obj13 = obj;
        i = j;
        obj = obj2;
        j = i1;
        obj2 = obj3;
        obj3 = obj13;
          goto _L14
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        i1 = i;
        Object obj14 = obj;
        i = j;
        obj = obj1;
        obj1 = obj2;
        j = i1;
        obj2 = obj3;
        obj3 = obj14;
          goto _L14
        if (parcel.dataPosition() != j1)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j1).toString(), parcel);
        } else
        {
            return new RoomEntity(k, ((String) (obj)), ((String) (obj3)), l1, l, s, i, ((android.os.Bundle) (obj2)), ((java.util.ArrayList) (obj1)), j);
        }
    }

    public RoomEntity[] bq(int i)
    {
        return new RoomEntity[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return ax(parcel);
    }

    public Object[] newArray(int i)
    {
        return bq(i);
    }
}
