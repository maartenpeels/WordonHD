// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.multiplayer;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.PlayerEntity;

// Referenced classes of package com.google.android.gms.games.multiplayer:
//            ParticipantEntity, ParticipantResult

public class ParticipantEntityCreator
    implements android.os.Parcelable.Creator
{

    public ParticipantEntityCreator()
    {
    }

    static void a(ParticipantEntity participantentity, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.a(parcel, 1, participantentity.getParticipantId(), false);
        b.a(parcel, 2, participantentity.getDisplayName(), false);
        b.a(parcel, 3, participantentity.getIconImageUri(), i, false);
        b.a(parcel, 4, participantentity.getHiResImageUri(), i, false);
        b.c(parcel, 5, participantentity.getStatus());
        b.a(parcel, 6, participantentity.gi(), false);
        b.a(parcel, 7, participantentity.isConnectedToRoom());
        b.a(parcel, 8, participantentity.getPlayer(), i, false);
        b.c(parcel, 9, participantentity.getCapabilities());
        b.a(parcel, 10, participantentity.getResult(), i, false);
        b.a(parcel, 11, participantentity.getIconImageUrl(), false);
        b.a(parcel, 12, participantentity.getHiResImageUrl(), false);
        b.c(parcel, 1000, participantentity.getVersionCode());
        b.F(parcel, j);
    }

    public ParticipantEntity av(Parcel parcel)
    {
        Object obj;
        Object obj1;
        Object obj2;
        PlayerEntity playerentity;
        Uri uri;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        int i;
        int j;
        int k;
        int l;
        boolean flag;
        l = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        k = 0;
        obj = null;
        obj5 = null;
        obj2 = null;
        uri = null;
        j = 0;
        obj6 = null;
        flag = false;
        playerentity = null;
        i = 0;
        obj3 = null;
        obj1 = null;
        obj4 = null;
_L16:
        int i1;
        if (parcel.dataPosition() >= l)
        {
            break MISSING_BLOCK_LABEL_744;
        }
        i1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(i1);
        JVM INSTR lookupswitch 13: default 176
    //                   1: 241
    //                   2: 275
    //                   3: 312
    //                   4: 351
    //                   5: 394
    //                   6: 431
    //                   7: 472
    //                   8: 509
    //                   9: 552
    //                   10: 589
    //                   11: 632
    //                   12: 674
    //                   1000: 707;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14
_L14:
        break MISSING_BLOCK_LABEL_707;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
        Object obj7 = obj4;
        obj4 = obj5;
        Object obj20 = obj3;
        obj5 = obj;
        obj3 = obj2;
        obj2 = obj20;
        obj = obj7;
_L17:
        Object obj8 = obj;
        Object obj21 = obj4;
        obj4 = obj2;
        obj2 = obj3;
        obj = obj5;
        obj5 = obj21;
        obj3 = obj4;
        obj4 = obj8;
        if (true) goto _L16; else goto _L15
_L15:
        String s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        obj = obj4;
        obj4 = obj5;
        Object obj9 = obj3;
        obj3 = obj2;
        obj5 = s1;
        obj2 = obj9;
          goto _L17
_L3:
        obj5 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        Object obj10 = obj4;
        obj4 = obj5;
        Object obj22 = obj3;
        obj3 = obj2;
        obj5 = obj;
        obj = obj10;
        obj2 = obj22;
          goto _L17
_L4:
        Uri uri1 = (Uri)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, Uri.CREATOR);
        obj2 = obj3;
        Object obj23 = obj;
        obj = obj4;
        obj3 = uri1;
        obj4 = obj5;
        obj5 = obj23;
          goto _L17
_L5:
        uri = (Uri)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, Uri.CREATOR);
        Object obj24 = obj3;
        obj3 = obj2;
        Object obj11 = obj;
        obj = obj4;
        obj2 = obj24;
        obj4 = obj5;
        obj5 = obj11;
          goto _L17
_L6:
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        Object obj12 = obj4;
        obj4 = obj5;
        Object obj25 = obj3;
        obj3 = obj2;
        obj5 = obj;
        obj = obj12;
        obj2 = obj25;
          goto _L17
_L7:
        String s2 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        obj6 = obj4;
        obj4 = obj5;
        Object obj13 = obj3;
        obj3 = obj2;
        obj5 = obj;
        obj = obj6;
        obj2 = obj13;
        obj6 = s2;
          goto _L17
_L8:
        flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, i1);
        Object obj14 = obj4;
        obj4 = obj5;
        Object obj26 = obj3;
        obj3 = obj2;
        obj5 = obj;
        obj = obj14;
        obj2 = obj26;
          goto _L17
_L9:
        playerentity = (PlayerEntity)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, PlayerEntity.CREATOR);
        Object obj27 = obj3;
        Object obj15 = obj;
        obj3 = obj2;
        obj = obj4;
        obj2 = obj27;
        obj4 = obj5;
        obj5 = obj15;
          goto _L17
_L10:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        Object obj16 = obj4;
        obj4 = obj5;
        Object obj28 = obj3;
        obj3 = obj2;
        obj5 = obj;
        obj = obj16;
        obj2 = obj28;
          goto _L17
_L11:
        obj3 = (ParticipantResult)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, ParticipantResult.CREATOR);
        Object obj17 = obj;
        Object obj29 = obj2;
        obj = obj4;
        obj2 = obj3;
        obj3 = obj29;
        obj4 = obj5;
        obj5 = obj17;
          goto _L17
_L12:
        String s3 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        obj1 = obj4;
        obj4 = obj5;
        Object obj18 = obj3;
        obj3 = obj2;
        obj2 = s3;
        obj5 = obj;
        obj = obj1;
        obj1 = obj2;
        obj2 = obj18;
          goto _L17
_L13:
        String s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, i1);
        obj4 = obj5;
        Object obj30 = obj3;
        obj3 = obj2;
        obj5 = obj;
        obj = s;
        obj2 = obj30;
          goto _L17
        k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
        Object obj19 = obj4;
        obj4 = obj5;
        Object obj31 = obj3;
        obj3 = obj2;
        obj5 = obj;
        obj = obj19;
        obj2 = obj31;
          goto _L17
        if (parcel.dataPosition() != l)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(l).toString(), parcel);
        } else
        {
            return new ParticipantEntity(k, ((String) (obj)), ((String) (obj5)), ((Uri) (obj2)), uri, j, ((String) (obj6)), flag, playerentity, i, ((ParticipantResult) (obj3)), ((String) (obj1)), ((String) (obj4)));
        }
    }

    public ParticipantEntity[] bo(int i)
    {
        return new ParticipantEntity[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return av(parcel);
    }

    public Object[] newArray(int i)
    {
        return bo(i);
    }
}
