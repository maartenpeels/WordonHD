// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.game;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.b;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.internal.game:
//            ExtendedGame, ExtendedGameEntity, GameBadgeRef

public class ExtendedGameRef extends b
    implements ExtendedGame
{

    private final GameRef LD;
    private final int LE;

    ExtendedGameRef(DataHolder dataholder, int i, int j)
    {
        super(dataholder, i);
        LD = new GameRef(dataholder, i);
        LE = j;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return ExtendedGameEntity.a(this, obj);
    }

    public Object freeze()
    {
        return hg();
    }

    public ArrayList gW()
    {
        if (BB.getString("badge_title", BD, BB.G(BD)) != null) goto _L2; else goto _L1
_L1:
        ArrayList arraylist = new ArrayList(0);
_L4:
        return arraylist;
_L2:
        ArrayList arraylist1 = new ArrayList(LE);
        int i = 0;
        do
        {
            arraylist = arraylist1;
            if (i >= LE)
            {
                continue;
            }
            arraylist1.add(new GameBadgeRef(BB, BD + i));
            i++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int gX()
    {
        return getInteger("availability");
    }

    public boolean gY()
    {
        return getBoolean("owned");
    }

    public int gZ()
    {
        return getInteger("achievement_unlocked_count");
    }

    public Game getGame()
    {
        return LD;
    }

    public long ha()
    {
        return getLong("last_played_server_time");
    }

    public int hashCode()
    {
        return ExtendedGameEntity.a(this);
    }

    public long hb()
    {
        return getLong("price_micros");
    }

    public String hc()
    {
        return getString("formatted_price");
    }

    public long hd()
    {
        return getLong("full_price_micros");
    }

    public String he()
    {
        return getString("formatted_full_price");
    }

    public ExtendedGame hg()
    {
        return new ExtendedGameEntity(this);
    }

    public String toString()
    {
        return com.google.android.gms.games.internal.game.ExtendedGameEntity.b(this);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ((ExtendedGameEntity)hg()).writeToParcel(parcel, i);
    }
}
