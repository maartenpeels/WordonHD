// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.GameEntity;

// Referenced classes of package com.google.android.gms.games.multiplayer:
//            InvitationEntity, ParticipantEntity

public class InvitationEntityCreator
    implements android.os.Parcelable.Creator
{

    public InvitationEntityCreator()
    {
    }

    static void a(InvitationEntity invitationentity, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.a(parcel, 1, invitationentity.getGame(), i, false);
        b.c(parcel, 1000, invitationentity.getVersionCode());
        b.a(parcel, 2, invitationentity.getInvitationId(), false);
        b.a(parcel, 3, invitationentity.getCreationTimestamp());
        b.c(parcel, 4, invitationentity.getInvitationType());
        b.a(parcel, 5, invitationentity.getInviter(), i, false);
        b.b(parcel, 6, invitationentity.getParticipants(), false);
        b.c(parcel, 7, invitationentity.getVariant());
        b.c(parcel, 8, invitationentity.getAvailableAutoMatchSlots());
        b.F(parcel, j);
    }

    public InvitationEntity au(Parcel parcel)
    {
        Object obj;
        ParticipantEntity participantentity;
        Object obj1;
        Object obj2;
        int i;
        int j;
        int k;
        int l;
        int k1;
        long l1;
        k1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        l = 0;
        obj = null;
        obj2 = null;
        l1 = 0L;
        j = 0;
        participantentity = null;
        obj1 = null;
        i = 0;
        k = 0;
_L12:
        int i1;
        if (parcel.dataPosition() >= k1)
        {
            break MISSING_BLOCK_LABEL_585;
        }
        i1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(i1);
        JVM INSTR lookupswitch 9: default 132
    //                   1: 205
    //                   2: 298
    //                   3: 339
    //                   4: 380
    //                   5: 425
    //                   6: 471
    //                   7: 511
    //                   8: 548
    //                   1000: 253;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10
_L9:
        break MISSING_BLOCK_LABEL_548;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
        i1 = k;
        Object obj12 = obj2;
        Object obj3 = obj1;
        obj2 = obj;
        obj1 = obj12;
        k = j;
        obj = obj3;
        j = i;
        i = i1;
_L13:
        i1 = i;
        Object obj4 = obj1;
        obj1 = obj;
        i = j;
        obj = obj2;
        obj2 = obj4;
        j = k;
        k = i1;
        if (true) goto _L12; else goto _L11
_L11:
        GameEntity gameentity = (GameEntity)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, GameEntity.CREATOR);
        i1 = i;
        obj = obj1;
        int j1 = j;
        i = k;
        j = i1;
        k = j1;
        obj1 = obj2;
        obj2 = gameentity;
          goto _L13
_L10:
        i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        l = k;
        k = j;
        j = i;
        Object obj5 = obj;
        i = l;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj5;
        l = i1;
          goto _L13
_L3:
        obj2 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        i1 = k;
        k = j;
        j = i;
        Object obj6 = obj;
        i = i1;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj6;
          goto _L13
_L4:
        l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
        i1 = k;
        k = j;
        j = i;
        Object obj7 = obj;
        i = i1;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj7;
          goto _L13
_L5:
        i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        j = k;
        k = i1;
        i1 = i;
        Object obj8 = obj;
        i = j;
        j = i1;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj8;
          goto _L13
_L6:
        participantentity = (ParticipantEntity)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, ParticipantEntity.CREATOR);
        i1 = k;
        k = j;
        j = i;
        Object obj9 = obj;
        i = i1;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj9;
          goto _L13
_L7:
        java.util.ArrayList arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1, ParticipantEntity.CREATOR);
        i1 = k;
        obj1 = obj2;
        k = j;
        j = i;
        obj2 = obj;
        i = i1;
        obj = arraylist;
          goto _L13
_L8:
        i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        i = k;
        k = j;
        j = i1;
        Object obj10 = obj;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj10;
          goto _L13
        i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        k = j;
        j = i;
        Object obj11 = obj;
        i = i1;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj11;
          goto _L13
        if (parcel.dataPosition() != k1)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(k1).toString(), parcel);
        } else
        {
            return new InvitationEntity(l, ((GameEntity) (obj)), ((String) (obj2)), l1, j, participantentity, ((java.util.ArrayList) (obj1)), i, k);
        }
    }

    public InvitationEntity[] bn(int i)
    {
        return new InvitationEntity[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return au(parcel);
    }

    public Object[] newArray(int i)
    {
        return bn(i);
    }
}
