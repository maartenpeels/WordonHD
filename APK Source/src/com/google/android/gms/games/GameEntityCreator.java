// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.games:
//            GameEntity

public class GameEntityCreator
    implements android.os.Parcelable.Creator
{

    public GameEntityCreator()
    {
    }

    static void a(GameEntity gameentity, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.a(parcel, 1, gameentity.getApplicationId(), false);
        b.a(parcel, 2, gameentity.getDisplayName(), false);
        b.a(parcel, 3, gameentity.getPrimaryCategory(), false);
        b.a(parcel, 4, gameentity.getSecondaryCategory(), false);
        b.a(parcel, 5, gameentity.getDescription(), false);
        b.a(parcel, 6, gameentity.getDeveloperName(), false);
        b.a(parcel, 7, gameentity.getIconImageUri(), i, false);
        b.a(parcel, 8, gameentity.getHiResImageUri(), i, false);
        b.a(parcel, 9, gameentity.getFeaturedImageUri(), i, false);
        b.a(parcel, 10, gameentity.gb());
        b.a(parcel, 11, gameentity.gd());
        b.a(parcel, 12, gameentity.ge(), false);
        b.c(parcel, 13, gameentity.gf());
        b.c(parcel, 14, gameentity.getAchievementTotalCount());
        b.c(parcel, 15, gameentity.getLeaderboardCount());
        b.a(parcel, 17, gameentity.isTurnBasedMultiplayerEnabled());
        b.a(parcel, 16, gameentity.isRealTimeMultiplayerEnabled());
        b.c(parcel, 1000, gameentity.getVersionCode());
        b.a(parcel, 19, gameentity.getHiResImageUrl(), false);
        b.a(parcel, 18, gameentity.getIconImageUrl(), false);
        b.a(parcel, 21, gameentity.isMuted());
        b.a(parcel, 20, gameentity.getFeaturedImageUrl(), false);
        b.a(parcel, 22, gameentity.gc());
        b.F(parcel, j);
    }

    public GameEntity[] aS(int i)
    {
        return new GameEntity[i];
    }

    public GameEntity an(Parcel parcel)
    {
        Object obj;
        Object obj1;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        Object obj8;
        Object obj9;
        Object obj10;
        Object obj11;
        Object obj12;
        int i;
        int j;
        int k;
        int l;
        int j1;
        boolean flag;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        boolean flag5;
        j1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        l = 0;
        obj = null;
        obj12 = null;
        obj1 = null;
        obj10 = null;
        obj3 = null;
        obj8 = null;
        obj4 = null;
        obj7 = null;
        obj5 = null;
        flag2 = false;
        flag5 = false;
        obj6 = null;
        j = 0;
        k = 0;
        i = 0;
        flag3 = false;
        flag1 = false;
        obj9 = null;
        obj2 = null;
        obj11 = null;
        flag = false;
        flag4 = false;
_L26:
        int i1;
        if (parcel.dataPosition() >= j1)
        {
            break MISSING_BLOCK_LABEL_3014;
        }
        i1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(i1);
        JVM INSTR lookupswitch 23: default 288
    //                   1: 525
    //                   2: 629
    //                   3: 736
    //                   4: 840
    //                   5: 947
    //                   6: 1046
    //                   7: 1153
    //                   8: 1270
    //                   9: 1391
    //                   10: 1512
    //                   11: 1623
    //                   12: 1734
    //                   13: 1837
    //                   14: 1940
    //                   15: 2047
    //                   16: 2265
    //                   17: 2154
    //                   18: 2594
    //                   19: 2483
    //                   20: 2808
    //                   21: 2705
    //                   22: 2911
    //                   1000: 2372;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24
_L23:
        break MISSING_BLOCK_LABEL_2911;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
        boolean flag6 = flag4;
        Object obj104 = obj12;
        Object obj13 = obj11;
        Object obj105 = obj10;
        Object obj35 = obj9;
        Object obj106 = obj8;
        Object obj83 = obj7;
        i1 = k;
        Object obj59 = obj6;
        Object obj107 = obj5;
        Object obj108 = obj2;
        obj12 = obj;
        obj11 = obj104;
        obj10 = obj1;
        obj9 = obj105;
        obj8 = obj3;
        obj7 = obj106;
        obj6 = obj4;
        obj5 = obj83;
        obj4 = obj107;
        flag4 = flag2;
        obj3 = obj59;
        k = j;
        j = i1;
        flag2 = flag1;
        obj2 = obj35;
        obj1 = obj108;
        obj = obj13;
        flag1 = flag;
        flag = flag6;
_L27:
        boolean flag7 = flag;
        Object obj14 = obj11;
        obj11 = obj;
        Object obj36 = obj9;
        i1 = j;
        boolean flag31 = flag4;
        obj9 = obj3;
        j = k;
        Object obj60 = obj4;
        obj4 = obj6;
        flag = flag2;
        obj3 = obj8;
        Object obj84 = obj1;
        obj1 = obj10;
        flag4 = flag1;
        obj = obj12;
        obj12 = obj14;
        obj10 = obj36;
        obj8 = obj7;
        obj7 = obj5;
        obj5 = obj60;
        flag2 = flag31;
        obj6 = obj9;
        k = i1;
        flag1 = flag;
        obj9 = obj2;
        obj2 = obj84;
        flag = flag4;
        flag4 = flag7;
        if (true) goto _L26; else goto _L25
_L25:
        String s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        boolean flag8 = flag4;
        obj = obj11;
        flag4 = flag2;
        Object obj61 = obj6;
        i1 = j;
        obj6 = obj4;
        flag2 = flag1;
        obj11 = obj3;
        Object obj37 = obj1;
        flag1 = flag;
        flag = flag8;
        obj1 = obj2;
        obj2 = obj9;
        j = k;
        k = i1;
        obj3 = obj61;
        obj4 = obj5;
        obj5 = obj7;
        obj7 = obj8;
        obj8 = obj11;
        obj9 = obj10;
        obj10 = obj37;
        obj11 = obj12;
        obj12 = s;
          goto _L27
_L3:
        obj12 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        boolean flag9 = flag4;
        flag4 = flag2;
        Object obj85 = obj6;
        i1 = j;
        obj6 = obj4;
        flag2 = flag1;
        Object obj38 = obj3;
        Object obj62 = obj1;
        flag1 = flag;
        Object obj15 = obj;
        flag = flag9;
        obj = obj11;
        obj1 = obj2;
        obj2 = obj9;
        j = k;
        k = i1;
        obj3 = obj85;
        obj4 = obj5;
        obj5 = obj7;
        obj7 = obj8;
        obj8 = obj38;
        obj9 = obj10;
        obj10 = obj62;
        obj11 = obj12;
        obj12 = obj15;
          goto _L27
_L4:
        String s3 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        boolean flag10 = flag4;
        flag4 = flag2;
        Object obj86 = obj6;
        i1 = j;
        obj6 = obj4;
        flag2 = flag1;
        Object obj39 = obj3;
        obj1 = obj2;
        flag1 = flag;
        Object obj16 = obj;
        flag = flag10;
        obj = obj11;
        obj2 = obj9;
        j = k;
        k = i1;
        obj3 = obj86;
        obj4 = obj5;
        obj5 = obj7;
        obj7 = obj8;
        obj8 = obj39;
        obj9 = obj10;
        obj10 = s3;
        obj11 = obj12;
        obj12 = obj16;
          goto _L27
_L5:
        obj10 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        boolean flag11 = flag4;
        flag4 = flag2;
        Object obj87 = obj6;
        i1 = j;
        obj6 = obj4;
        flag2 = flag1;
        Object obj40 = obj3;
        Object obj63 = obj1;
        flag1 = flag;
        Object obj17 = obj;
        flag = flag11;
        obj = obj11;
        obj1 = obj2;
        obj2 = obj9;
        j = k;
        k = i1;
        obj3 = obj87;
        obj4 = obj5;
        obj5 = obj7;
        obj7 = obj8;
        obj8 = obj40;
        obj9 = obj10;
        obj10 = obj63;
        obj11 = obj12;
        obj12 = obj17;
          goto _L27
_L6:
        String s2 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        boolean flag12 = flag4;
        flag4 = flag2;
        obj3 = obj6;
        i1 = j;
        obj6 = obj4;
        flag2 = flag1;
        Object obj64 = obj1;
        flag1 = flag;
        Object obj18 = obj;
        flag = flag12;
        obj = obj11;
        obj1 = obj2;
        obj2 = obj9;
        j = k;
        k = i1;
        obj4 = obj5;
        obj5 = obj7;
        obj7 = obj8;
        obj8 = s2;
        obj9 = obj10;
        obj10 = obj64;
        obj11 = obj12;
        obj12 = obj18;
          goto _L27
_L7:
        obj8 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        boolean flag13 = flag4;
        flag4 = flag2;
        Object obj88 = obj6;
        i1 = j;
        obj6 = obj4;
        flag2 = flag1;
        Object obj41 = obj3;
        Object obj65 = obj1;
        flag1 = flag;
        Object obj19 = obj;
        flag = flag13;
        obj = obj11;
        obj1 = obj2;
        obj2 = obj9;
        j = k;
        k = i1;
        obj3 = obj88;
        obj4 = obj5;
        obj5 = obj7;
        obj7 = obj8;
        obj8 = obj41;
        obj9 = obj10;
        obj10 = obj65;
        obj11 = obj12;
        obj12 = obj19;
          goto _L27
_L8:
        Uri uri = (Uri)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, Uri.CREATOR);
        boolean flag14 = flag2;
        i1 = j;
        obj4 = obj5;
        Object obj42 = obj;
        flag2 = flag;
        boolean flag32 = flag1;
        Object obj66 = obj3;
        Object obj89 = obj1;
        flag = flag4;
        flag1 = flag2;
        obj = obj11;
        obj1 = obj2;
        obj2 = obj9;
        flag2 = flag32;
        j = k;
        k = i1;
        obj3 = obj6;
        flag4 = flag14;
        obj5 = obj7;
        obj6 = uri;
        obj7 = obj8;
        obj8 = obj66;
        obj9 = obj10;
        obj10 = obj89;
        obj11 = obj12;
        obj12 = obj42;
          goto _L27
_L9:
        obj7 = (Uri)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, Uri.CREATOR);
        Object obj43 = obj11;
        Object obj67 = obj9;
        boolean flag15 = flag4;
        flag4 = flag2;
        Object obj90 = obj6;
        i1 = j;
        obj6 = obj4;
        flag2 = flag1;
        obj9 = obj3;
        obj11 = obj1;
        flag1 = flag;
        Object obj20 = obj;
        flag = flag15;
        obj = obj43;
        obj1 = obj2;
        obj2 = obj67;
        j = k;
        k = i1;
        obj3 = obj90;
        obj4 = obj5;
        obj5 = obj7;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = obj10;
        obj10 = obj11;
        obj11 = obj12;
        obj12 = obj20;
          goto _L27
_L10:
        obj5 = (Uri)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, Uri.CREATOR);
        i1 = j;
        j = k;
        boolean flag16 = flag2;
        Object obj91 = obj6;
        Object obj21 = obj;
        flag2 = flag;
        obj6 = obj4;
        boolean flag33 = flag1;
        Object obj44 = obj3;
        Object obj68 = obj1;
        flag = flag4;
        flag1 = flag2;
        obj = obj11;
        obj1 = obj2;
        obj2 = obj9;
        flag2 = flag33;
        k = i1;
        obj3 = obj91;
        flag4 = flag16;
        obj4 = obj5;
        obj5 = obj7;
        obj7 = obj8;
        obj8 = obj44;
        obj9 = obj10;
        obj10 = obj68;
        obj11 = obj12;
        obj12 = obj21;
          goto _L27
_L11:
        boolean flag17 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1);
        flag2 = flag4;
        flag4 = flag17;
        Object obj92 = obj6;
        i1 = j;
        obj6 = obj4;
        flag17 = flag1;
        Object obj45 = obj3;
        Object obj69 = obj1;
        flag1 = flag;
        Object obj22 = obj;
        flag = flag2;
        obj = obj11;
        obj1 = obj2;
        obj2 = obj9;
        flag2 = flag17;
        j = k;
        k = i1;
        obj3 = obj92;
        obj4 = obj5;
        obj5 = obj7;
        obj7 = obj8;
        obj8 = obj45;
        obj9 = obj10;
        obj10 = obj69;
        obj11 = obj12;
        obj12 = obj22;
          goto _L27
_L12:
        boolean flag18 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1);
        flag5 = flag4;
        flag4 = flag2;
        Object obj93 = obj6;
        i1 = j;
        obj6 = obj4;
        flag2 = flag1;
        Object obj46 = obj3;
        Object obj70 = obj1;
        flag1 = flag;
        Object obj23 = obj;
        flag = flag5;
        obj = obj11;
        obj1 = obj2;
        obj2 = obj9;
        j = k;
        k = i1;
        obj3 = obj93;
        flag5 = flag18;
        obj4 = obj5;
        obj5 = obj7;
        obj7 = obj8;
        obj8 = obj46;
        obj9 = obj10;
        obj10 = obj70;
        obj11 = obj12;
        obj12 = obj23;
          goto _L27
_L13:
        String s4 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        boolean flag19 = flag4;
        flag4 = flag2;
        i1 = j;
        obj6 = obj4;
        flag2 = flag1;
        Object obj47 = obj3;
        Object obj71 = obj1;
        flag1 = flag;
        Object obj24 = obj;
        flag = flag19;
        obj = obj11;
        obj1 = obj2;
        obj2 = obj9;
        j = k;
        k = i1;
        obj3 = s4;
        obj4 = obj5;
        obj5 = obj7;
        obj7 = obj8;
        obj8 = obj47;
        obj9 = obj10;
        obj10 = obj71;
        obj11 = obj12;
        obj12 = obj24;
          goto _L27
_L14:
        i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        boolean flag20 = flag4;
        j = k;
        flag4 = flag2;
        Object obj94 = obj6;
        k = i1;
        obj6 = obj4;
        flag2 = flag1;
        Object obj48 = obj3;
        Object obj72 = obj1;
        flag1 = flag;
        Object obj25 = obj;
        flag = flag20;
        obj = obj11;
        obj1 = obj2;
        obj2 = obj9;
        obj3 = obj94;
        obj4 = obj5;
        obj5 = obj7;
        obj7 = obj8;
        obj8 = obj48;
        obj9 = obj10;
        obj10 = obj72;
        obj11 = obj12;
        obj12 = obj25;
          goto _L27
_L15:
        k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        boolean flag21 = flag4;
        flag4 = flag2;
        Object obj95 = obj6;
        i1 = j;
        obj6 = obj4;
        flag2 = flag1;
        Object obj49 = obj3;
        Object obj73 = obj1;
        flag1 = flag;
        Object obj26 = obj;
        flag = flag21;
        obj = obj11;
        obj1 = obj2;
        obj2 = obj9;
        j = k;
        k = i1;
        obj3 = obj95;
        obj4 = obj5;
        obj5 = obj7;
        obj7 = obj8;
        obj8 = obj49;
        obj9 = obj10;
        obj10 = obj73;
        obj11 = obj12;
        obj12 = obj26;
          goto _L27
_L16:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        boolean flag22 = flag4;
        flag4 = flag2;
        Object obj96 = obj6;
        i1 = j;
        obj6 = obj4;
        flag2 = flag1;
        Object obj50 = obj3;
        Object obj74 = obj1;
        flag1 = flag;
        Object obj27 = obj;
        flag = flag22;
        obj = obj11;
        obj1 = obj2;
        obj2 = obj9;
        j = k;
        k = i1;
        obj3 = obj96;
        obj4 = obj5;
        obj5 = obj7;
        obj7 = obj8;
        obj8 = obj50;
        obj9 = obj10;
        obj10 = obj74;
        obj11 = obj12;
        obj12 = obj27;
          goto _L27
_L18:
        boolean flag23 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1);
        flag1 = flag4;
        flag4 = flag2;
        Object obj97 = obj6;
        i1 = j;
        obj6 = obj4;
        flag2 = flag23;
        Object obj51 = obj3;
        Object obj75 = obj1;
        flag23 = flag;
        Object obj28 = obj;
        flag = flag1;
        flag1 = flag23;
        obj = obj11;
        obj1 = obj2;
        obj2 = obj9;
        j = k;
        k = i1;
        obj3 = obj97;
        obj4 = obj5;
        obj5 = obj7;
        obj7 = obj8;
        obj8 = obj51;
        obj9 = obj10;
        obj10 = obj75;
        obj11 = obj12;
        obj12 = obj28;
          goto _L27
_L17:
        flag3 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1);
        boolean flag24 = flag4;
        flag4 = flag2;
        Object obj98 = obj6;
        i1 = j;
        obj6 = obj4;
        flag2 = flag1;
        Object obj52 = obj3;
        Object obj76 = obj1;
        flag1 = flag;
        Object obj29 = obj;
        flag = flag24;
        obj = obj11;
        obj1 = obj2;
        obj2 = obj9;
        j = k;
        k = i1;
        obj3 = obj98;
        obj4 = obj5;
        obj5 = obj7;
        obj7 = obj8;
        obj8 = obj52;
        obj9 = obj10;
        obj10 = obj76;
        obj11 = obj12;
        obj12 = obj29;
          goto _L27
_L24:
        i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        boolean flag25 = flag4;
        flag4 = flag2;
        Object obj99 = obj6;
        l = j;
        obj6 = obj4;
        flag2 = flag1;
        Object obj53 = obj3;
        Object obj77 = obj1;
        flag1 = flag;
        Object obj30 = obj;
        flag = flag25;
        obj = obj11;
        obj1 = obj2;
        obj2 = obj9;
        j = k;
        k = l;
        obj3 = obj99;
        obj4 = obj5;
        obj5 = obj7;
        obj7 = obj8;
        obj8 = obj53;
        obj9 = obj10;
        obj10 = obj77;
        obj11 = obj12;
        obj12 = obj30;
        l = i1;
          goto _L27
_L20:
        Object obj31 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        boolean flag26 = flag4;
        obj2 = obj9;
        flag4 = flag2;
        Object obj78 = obj6;
        i1 = j;
        obj6 = obj4;
        flag2 = flag1;
        obj9 = obj3;
        obj3 = obj31;
        Object obj54 = obj1;
        flag1 = flag;
        obj31 = obj;
        flag = flag26;
        obj = obj11;
        obj1 = obj3;
        j = k;
        k = i1;
        obj3 = obj78;
        obj4 = obj5;
        obj5 = obj7;
        obj7 = obj8;
        obj8 = obj9;
        obj9 = obj10;
        obj10 = obj54;
        obj11 = obj12;
        obj12 = obj31;
          goto _L27
_L19:
        Object obj32 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        boolean flag27 = flag4;
        obj9 = obj10;
        obj10 = obj32;
        flag4 = flag2;
        Object obj100 = obj6;
        i1 = j;
        obj6 = obj4;
        flag2 = flag1;
        Object obj55 = obj3;
        Object obj79 = obj1;
        flag1 = flag;
        obj32 = obj;
        flag = flag27;
        obj = obj11;
        obj1 = obj2;
        obj2 = obj10;
        j = k;
        k = i1;
        obj3 = obj100;
        obj4 = obj5;
        obj5 = obj7;
        obj7 = obj8;
        obj8 = obj55;
        obj10 = obj79;
        obj11 = obj12;
        obj12 = obj32;
          goto _L27
_L22:
        boolean flag28 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1);
        flag = flag4;
        flag4 = flag2;
        Object obj101 = obj6;
        i1 = j;
        obj6 = obj4;
        flag2 = flag1;
        Object obj56 = obj3;
        Object obj80 = obj1;
        flag1 = flag28;
        Object obj33 = obj;
        obj = obj11;
        obj1 = obj2;
        obj2 = obj9;
        j = k;
        k = i1;
        obj3 = obj101;
        obj4 = obj5;
        obj5 = obj7;
        obj7 = obj8;
        obj8 = obj56;
        obj9 = obj10;
        obj10 = obj80;
        obj11 = obj12;
        obj12 = obj33;
          goto _L27
_L21:
        String s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        boolean flag29 = flag4;
        obj11 = obj12;
        flag4 = flag2;
        Object obj102 = obj6;
        i1 = j;
        obj6 = obj4;
        flag2 = flag1;
        Object obj57 = obj3;
        Object obj81 = obj1;
        flag1 = flag;
        obj12 = obj;
        flag = flag29;
        obj = s1;
        obj1 = obj2;
        obj2 = obj9;
        j = k;
        k = i1;
        obj3 = obj102;
        obj4 = obj5;
        obj5 = obj7;
        obj7 = obj8;
        obj8 = obj57;
        obj9 = obj10;
        obj10 = obj81;
          goto _L27
        boolean flag30 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1);
        flag4 = flag2;
        Object obj103 = obj6;
        i1 = j;
        obj6 = obj4;
        flag2 = flag1;
        Object obj58 = obj3;
        Object obj82 = obj1;
        flag1 = flag;
        Object obj34 = obj;
        flag = flag30;
        obj = obj11;
        obj1 = obj2;
        obj2 = obj9;
        j = k;
        k = i1;
        obj3 = obj103;
        obj4 = obj5;
        obj5 = obj7;
        obj7 = obj8;
        obj8 = obj58;
        obj9 = obj10;
        obj10 = obj82;
        obj11 = obj12;
        obj12 = obj34;
          goto _L27
        if (parcel.dataPosition() != j1)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j1).toString(), parcel);
        } else
        {
            return new GameEntity(l, ((String) (obj)), ((String) (obj12)), ((String) (obj1)), ((String) (obj10)), ((String) (obj3)), ((String) (obj8)), ((Uri) (obj4)), ((Uri) (obj7)), ((Uri) (obj5)), flag2, flag5, ((String) (obj6)), j, k, i, flag3, flag1, ((String) (obj9)), ((String) (obj2)), ((String) (obj11)), flag, flag4);
        }
    }

    public Object createFromParcel(Parcel parcel)
    {
        return an(parcel);
    }

    public Object[] newArray(int i)
    {
        return aS(i);
    }
}
