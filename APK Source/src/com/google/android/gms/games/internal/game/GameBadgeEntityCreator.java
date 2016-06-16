// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.games.internal.game:
//            GameBadgeEntity

public class GameBadgeEntityCreator
    implements android.os.Parcelable.Creator
{

    public GameBadgeEntityCreator()
    {
    }

    static void a(GameBadgeEntity gamebadgeentity, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.c(parcel, 1, gamebadgeentity.getType());
        b.c(parcel, 1000, gamebadgeentity.getVersionCode());
        b.a(parcel, 2, gamebadgeentity.getTitle(), false);
        b.a(parcel, 3, gamebadgeentity.getDescription(), false);
        b.a(parcel, 4, gamebadgeentity.getIconImageUri(), i, false);
        b.F(parcel, j);
    }

    public GameBadgeEntity ar(Parcel parcel)
    {
        Object obj;
        Object obj1;
        Object obj2;
        int i;
        int j;
        int k;
        i = 0;
        k = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        obj1 = null;
        obj = null;
        obj2 = null;
        j = 0;
_L8:
        int l;
        if (parcel.dataPosition() >= k)
        {
            break MISSING_BLOCK_LABEL_214;
        }
        l = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(l);
        JVM INSTR lookupswitch 5: default 88
    //                   1: 113
    //                   2: 151
    //                   3: 174
    //                   4: 190
    //                   1000: 132;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L5:
        break MISSING_BLOCK_LABEL_190;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
        Object obj3 = obj1;
        obj1 = obj;
        obj = obj3;
_L9:
        Object obj4 = obj;
        obj = obj1;
        obj1 = obj4;
        if (true) goto _L8; else goto _L7
_L7:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        Object obj5 = obj;
        obj = obj1;
        obj1 = obj5;
          goto _L9
_L6:
        j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
        Object obj6 = obj;
        obj = obj1;
        obj1 = obj6;
          goto _L9
_L3:
        String s = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        obj2 = obj;
        obj = obj1;
        obj1 = obj2;
        obj2 = s;
          goto _L9
_L4:
        String s1 = com.google.android.gms.common.internal.safeparcel.a.n(parcel, l);
        obj = obj1;
        obj1 = s1;
          goto _L9
        obj1 = (Uri)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, Uri.CREATOR);
        Object obj7 = obj;
        obj = obj1;
        obj1 = obj7;
          goto _L9
        if (parcel.dataPosition() != k)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(k).toString(), parcel);
        } else
        {
            return new GameBadgeEntity(j, i, ((String) (obj2)), ((String) (obj)), ((Uri) (obj1)));
        }
    }

    public GameBadgeEntity[] bg(int i)
    {
        return new GameBadgeEntity[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return ar(parcel);
    }

    public Object[] newArray(int i)
    {
        return bg(i);
    }
}
