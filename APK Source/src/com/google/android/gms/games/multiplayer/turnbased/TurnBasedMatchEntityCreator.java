// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.multiplayer.ParticipantEntity;

// Referenced classes of package com.google.android.gms.games.multiplayer.turnbased:
//            TurnBasedMatchEntity

public class TurnBasedMatchEntityCreator
    implements android.os.Parcelable.Creator
{

    public static final int CONTENT_DESCRIPTION = 0;

    public TurnBasedMatchEntityCreator()
    {
    }

    static void a(TurnBasedMatchEntity turnbasedmatchentity, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.a(parcel, 1, turnbasedmatchentity.getGame(), i, false);
        b.a(parcel, 2, turnbasedmatchentity.getMatchId(), false);
        b.a(parcel, 3, turnbasedmatchentity.getCreatorId(), false);
        b.a(parcel, 4, turnbasedmatchentity.getCreationTimestamp());
        b.a(parcel, 5, turnbasedmatchentity.getLastUpdaterId(), false);
        b.a(parcel, 6, turnbasedmatchentity.getLastUpdatedTimestamp());
        b.a(parcel, 7, turnbasedmatchentity.getPendingParticipantId(), false);
        b.c(parcel, 8, turnbasedmatchentity.getStatus());
        b.c(parcel, 10, turnbasedmatchentity.getVariant());
        b.c(parcel, 11, turnbasedmatchentity.getVersion());
        b.a(parcel, 12, turnbasedmatchentity.getData(), false);
        b.b(parcel, 13, turnbasedmatchentity.getParticipants(), false);
        b.a(parcel, 14, turnbasedmatchentity.getRematchId(), false);
        b.a(parcel, 15, turnbasedmatchentity.getPreviousMatchData(), false);
        b.a(parcel, 17, turnbasedmatchentity.getAutoMatchCriteria(), false);
        b.c(parcel, 16, turnbasedmatchentity.getMatchNumber());
        b.c(parcel, 1000, turnbasedmatchentity.getVersionCode());
        b.a(parcel, 19, turnbasedmatchentity.isLocallyModified());
        b.c(parcel, 18, turnbasedmatchentity.getTurnStatus());
        b.a(parcel, 21, turnbasedmatchentity.getDescriptionParticipantId(), false);
        b.a(parcel, 20, turnbasedmatchentity.getDescription(), false);
        b.F(parcel, j);
    }

    public TurnBasedMatchEntity createFromParcel(Parcel parcel)
    {
        Object obj;
        String s;
        Object obj1;
        Object obj2;
        byte abyte0[];
        Object obj3;
        byte abyte1[];
        Object obj4;
        Object obj5;
        Object obj6;
        String s1;
        Object obj7;
        int i;
        int j;
        int k;
        int l;
        int i1;
        int j1;
        int l1;
        long l2;
        long l3;
        boolean flag;
        l1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        i1 = 0;
        obj = null;
        s1 = null;
        obj1 = null;
        l3 = 0L;
        obj2 = null;
        l2 = 0L;
        obj3 = null;
        k = 0;
        j1 = 0;
        j = 0;
        abyte1 = null;
        obj4 = null;
        obj5 = null;
        abyte0 = null;
        l = 0;
        obj6 = null;
        i = 0;
        flag = false;
        s = null;
        obj7 = null;
_L24:
        int k1;
        if (parcel.dataPosition() >= l1)
        {
            break MISSING_BLOCK_LABEL_2095;
        }
        k1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(k1);
        JVM INSTR lookupswitch 21: default 264
    //                   1: 409
    //                   2: 493
    //                   3: 574
    //                   4: 647
    //                   5: 728
    //                   6: 805
    //                   7: 886
    //                   8: 959
    //                   10: 1044
    //                   11: 1129
    //                   12: 1206
    //                   13: 1287
    //                   14: 1371
    //                   15: 1452
    //                   16: 1610
    //                   17: 1533
    //                   18: 1853
    //                   19: 1772
    //                   20: 2015
    //                   21: 1934
    //                   1000: 1687;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22
_L20:
        break MISSING_BLOCK_LABEL_2015;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, k1);
        Object obj8 = obj7;
        Object obj28 = obj6;
        k1 = l;
        Object obj50 = obj5;
        Object obj73 = obj4;
        byte abyte3[] = abyte0;
        obj7 = obj;
        obj6 = obj1;
        obj5 = obj2;
        obj4 = obj3;
        l = k;
        k = j;
        obj3 = obj73;
        abyte0 = ((byte []) (obj50));
        obj2 = abyte3;
        j = k1;
        obj1 = obj28;
        obj = obj8;
_L25:
        Object obj9 = obj;
        Object obj29 = obj1;
        k1 = j;
        Object obj51 = obj3;
        j = k;
        obj3 = obj4;
        Object obj74 = obj2;
        obj2 = obj5;
        obj1 = obj6;
        obj = obj7;
        k = l;
        obj4 = obj51;
        obj5 = abyte0;
        abyte0 = ((byte []) (obj74));
        l = k1;
        obj6 = obj29;
        obj7 = obj9;
        if (true) goto _L24; else goto _L23
_L23:
        GameEntity gameentity = (GameEntity)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k1, GameEntity.CREATOR);
        Object obj30 = obj6;
        k1 = l;
        l = k;
        k = j;
        obj6 = obj3;
        Object obj52 = obj2;
        Object obj75 = obj1;
        obj = obj7;
        obj1 = obj30;
        j = k1;
        obj2 = abyte0;
        abyte0 = ((byte []) (obj5));
        obj3 = obj4;
        obj4 = obj6;
        obj5 = obj52;
        obj6 = obj75;
        obj7 = gameentity;
          goto _L25
_L3:
        s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k1);
        Object obj10 = obj6;
        k1 = l;
        l = k;
        k = j;
        obj6 = obj3;
        Object obj31 = obj2;
        Object obj53 = obj1;
        Object obj76 = obj;
        obj = obj7;
        obj1 = obj10;
        j = k1;
        obj2 = abyte0;
        abyte0 = ((byte []) (obj5));
        obj3 = obj4;
        obj4 = obj6;
        obj5 = obj31;
        obj6 = obj53;
        obj7 = obj76;
          goto _L25
_L4:
        String s3 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k1);
        obj1 = obj6;
        k1 = l;
        l = k;
        k = j;
        obj6 = obj3;
        Object obj11 = obj2;
        Object obj54 = obj;
        obj = obj7;
        j = k1;
        obj2 = abyte0;
        abyte0 = ((byte []) (obj5));
        obj3 = obj4;
        obj4 = obj6;
        obj5 = obj11;
        obj6 = s3;
        obj7 = obj54;
          goto _L25
_L5:
        l3 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, k1);
        Object obj12 = obj6;
        k1 = l;
        l = k;
        k = j;
        obj6 = obj3;
        Object obj32 = obj2;
        Object obj55 = obj1;
        Object obj77 = obj;
        obj = obj7;
        obj1 = obj12;
        j = k1;
        obj2 = abyte0;
        abyte0 = ((byte []) (obj5));
        obj3 = obj4;
        obj4 = obj6;
        obj5 = obj32;
        obj6 = obj55;
        obj7 = obj77;
          goto _L25
_L6:
        String s2 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k1);
        obj2 = obj6;
        k1 = l;
        l = k;
        k = j;
        obj6 = obj3;
        Object obj33 = obj1;
        Object obj56 = obj;
        obj = obj7;
        obj1 = obj2;
        j = k1;
        obj2 = abyte0;
        abyte0 = ((byte []) (obj5));
        obj3 = obj4;
        obj4 = obj6;
        obj5 = s2;
        obj6 = obj33;
        obj7 = obj56;
          goto _L25
_L7:
        l2 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, k1);
        Object obj13 = obj6;
        k1 = l;
        l = k;
        k = j;
        obj6 = obj3;
        Object obj34 = obj2;
        Object obj57 = obj1;
        Object obj78 = obj;
        obj = obj7;
        obj1 = obj13;
        j = k1;
        obj2 = abyte0;
        abyte0 = ((byte []) (obj5));
        obj3 = obj4;
        obj4 = obj6;
        obj5 = obj34;
        obj6 = obj57;
        obj7 = obj78;
          goto _L25
_L8:
        Object obj14 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k1);
        k1 = l;
        obj3 = obj4;
        l = k;
        k = j;
        obj4 = obj14;
        obj14 = obj2;
        Object obj35 = obj1;
        Object obj58 = obj;
        obj = obj7;
        obj1 = obj6;
        j = k1;
        obj2 = abyte0;
        abyte0 = ((byte []) (obj5));
        obj5 = obj14;
        obj6 = obj35;
        obj7 = obj58;
          goto _L25
_L9:
        k1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
        Object obj15 = obj6;
        k = l;
        l = k1;
        k1 = j;
        obj6 = obj3;
        Object obj36 = obj2;
        Object obj59 = obj1;
        Object obj79 = obj;
        obj = obj7;
        obj1 = obj15;
        j = k;
        obj2 = abyte0;
        abyte0 = ((byte []) (obj5));
        obj3 = obj4;
        k = k1;
        obj4 = obj6;
        obj5 = obj36;
        obj6 = obj59;
        obj7 = obj79;
          goto _L25
_L10:
        k1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
        Object obj16 = obj6;
        j1 = l;
        l = k;
        k = j;
        obj6 = obj3;
        Object obj37 = obj2;
        Object obj60 = obj1;
        Object obj80 = obj;
        obj = obj7;
        obj1 = obj16;
        j = j1;
        obj2 = abyte0;
        abyte0 = ((byte []) (obj5));
        obj3 = obj4;
        j1 = k1;
        obj4 = obj6;
        obj5 = obj37;
        obj6 = obj60;
        obj7 = obj80;
          goto _L25
_L11:
        k1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
        Object obj17 = obj6;
        j = l;
        l = k;
        k = k1;
        obj6 = obj3;
        Object obj38 = obj2;
        Object obj61 = obj1;
        Object obj81 = obj;
        obj = obj7;
        obj1 = obj17;
        obj2 = abyte0;
        abyte0 = ((byte []) (obj5));
        obj3 = obj4;
        obj4 = obj6;
        obj5 = obj38;
        obj6 = obj61;
        obj7 = obj81;
          goto _L25
_L12:
        abyte1 = com.google.android.gms.common.internal.safeparcel.a.q(parcel, k1);
        Object obj18 = obj6;
        k1 = l;
        l = k;
        k = j;
        obj6 = obj3;
        Object obj39 = obj2;
        Object obj62 = obj1;
        Object obj82 = obj;
        obj = obj7;
        obj1 = obj18;
        j = k1;
        obj2 = abyte0;
        abyte0 = ((byte []) (obj5));
        obj3 = obj4;
        obj4 = obj6;
        obj5 = obj39;
        obj6 = obj62;
        obj7 = obj82;
          goto _L25
_L13:
        obj4 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k1, ParticipantEntity.CREATOR);
        Object obj19 = obj6;
        k1 = l;
        l = k;
        k = j;
        obj6 = obj3;
        Object obj40 = obj2;
        Object obj63 = obj1;
        Object obj83 = obj;
        obj = obj7;
        obj1 = obj19;
        j = k1;
        obj2 = abyte0;
        abyte0 = ((byte []) (obj5));
        obj3 = obj4;
        obj4 = obj6;
        obj5 = obj40;
        obj6 = obj63;
        obj7 = obj83;
          goto _L25
_L14:
        obj5 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k1);
        Object obj20 = obj6;
        k1 = l;
        l = k;
        k = j;
        obj6 = obj3;
        Object obj41 = obj2;
        Object obj64 = obj1;
        Object obj84 = obj;
        obj = obj7;
        obj1 = obj20;
        j = k1;
        obj2 = abyte0;
        abyte0 = ((byte []) (obj5));
        obj3 = obj4;
        obj4 = obj6;
        obj5 = obj41;
        obj6 = obj64;
        obj7 = obj84;
          goto _L25
_L15:
        byte abyte2[] = com.google.android.gms.common.internal.safeparcel.a.q(parcel, k1);
        k1 = l;
        abyte0 = ((byte []) (obj5));
        l = k;
        k = j;
        obj5 = obj3;
        obj3 = abyte2;
        Object obj21 = obj2;
        Object obj42 = obj1;
        Object obj65 = obj;
        obj = obj7;
        obj1 = obj6;
        j = k1;
        obj2 = obj3;
        obj3 = obj4;
        obj4 = obj5;
        obj5 = obj21;
        obj6 = obj42;
        obj7 = obj65;
          goto _L25
_L17:
        android.os.Bundle bundle = com.google.android.gms.common.internal.safeparcel.a.p(parcel, k1);
        k1 = l;
        l = k;
        k = j;
        obj6 = obj3;
        Object obj43 = obj2;
        Object obj66 = obj1;
        Object obj85 = obj;
        obj = obj7;
        obj1 = bundle;
        j = k1;
        obj2 = abyte0;
        abyte0 = ((byte []) (obj5));
        obj3 = obj4;
        obj4 = obj6;
        obj5 = obj43;
        obj6 = obj66;
        obj7 = obj85;
          goto _L25
_L16:
        k1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
        Object obj22 = obj6;
        l = k;
        k = j;
        obj6 = obj3;
        Object obj44 = obj2;
        Object obj67 = obj1;
        Object obj86 = obj;
        obj = obj7;
        obj1 = obj22;
        j = k1;
        obj2 = abyte0;
        abyte0 = ((byte []) (obj5));
        obj3 = obj4;
        obj4 = obj6;
        obj5 = obj44;
        obj6 = obj67;
        obj7 = obj86;
          goto _L25
_L22:
        k1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
        Object obj23 = obj6;
        i1 = l;
        l = k;
        k = j;
        obj6 = obj3;
        Object obj45 = obj2;
        Object obj68 = obj1;
        Object obj87 = obj;
        obj = obj7;
        obj1 = obj23;
        j = i1;
        obj2 = abyte0;
        abyte0 = ((byte []) (obj5));
        obj3 = obj4;
        obj4 = obj6;
        obj5 = obj45;
        obj6 = obj68;
        obj7 = obj87;
        i1 = k1;
          goto _L25
_L19:
        flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k1);
        Object obj24 = obj6;
        k1 = l;
        l = k;
        k = j;
        obj6 = obj3;
        Object obj46 = obj2;
        Object obj69 = obj1;
        Object obj88 = obj;
        obj = obj7;
        obj1 = obj24;
        j = k1;
        obj2 = abyte0;
        abyte0 = ((byte []) (obj5));
        obj3 = obj4;
        obj4 = obj6;
        obj5 = obj46;
        obj6 = obj69;
        obj7 = obj88;
          goto _L25
_L18:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k1);
        Object obj25 = obj6;
        k1 = l;
        l = k;
        k = j;
        obj6 = obj3;
        Object obj47 = obj2;
        Object obj70 = obj1;
        Object obj89 = obj;
        obj = obj7;
        obj1 = obj25;
        j = k1;
        obj2 = abyte0;
        abyte0 = ((byte []) (obj5));
        obj3 = obj4;
        obj4 = obj6;
        obj5 = obj47;
        obj6 = obj70;
        obj7 = obj89;
          goto _L25
_L21:
        obj7 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k1);
        Object obj26 = obj6;
        k1 = l;
        l = k;
        k = j;
        obj6 = obj3;
        Object obj48 = obj2;
        Object obj71 = obj1;
        Object obj90 = obj;
        obj = obj7;
        obj1 = obj26;
        j = k1;
        obj2 = abyte0;
        abyte0 = ((byte []) (obj5));
        obj3 = obj4;
        obj4 = obj6;
        obj5 = obj48;
        obj6 = obj71;
        obj7 = obj90;
          goto _L25
        s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, k1);
        Object obj27 = obj6;
        k1 = l;
        l = k;
        k = j;
        obj6 = obj3;
        Object obj49 = obj2;
        Object obj72 = obj1;
        Object obj91 = obj;
        obj = obj7;
        obj1 = obj27;
        j = k1;
        obj2 = abyte0;
        abyte0 = ((byte []) (obj5));
        obj3 = obj4;
        obj4 = obj6;
        obj5 = obj49;
        obj6 = obj72;
        obj7 = obj91;
          goto _L25
        if (parcel.dataPosition() != l1)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(l1).toString(), parcel);
        } else
        {
            return new TurnBasedMatchEntity(i1, ((GameEntity) (obj)), s1, ((String) (obj1)), l3, ((String) (obj2)), l2, ((String) (obj3)), k, j1, j, abyte1, ((java.util.ArrayList) (obj4)), ((String) (obj5)), abyte0, l, ((android.os.Bundle) (obj6)), i, flag, s, ((String) (obj7)));
        }
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public TurnBasedMatchEntity[] newArray(int i)
    {
        return new TurnBasedMatchEntity[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }
}
