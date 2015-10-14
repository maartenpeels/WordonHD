// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.drive.query.internal:
//            FilterHolder, ComparisonFilter, FieldOnlyFilter, LogicalFilter, 
//            NotFilter, InFilter, MatchAllFilter

public class d
    implements android.os.Parcelable.Creator
{

    public d()
    {
    }

    static void a(FilterHolder filterholder, Parcel parcel, int i)
    {
        int j = b.p(parcel);
        b.a(parcel, 1, filterholder.GK, i, false);
        b.c(parcel, 1000, filterholder.xH);
        b.a(parcel, 2, filterholder.GL, i, false);
        b.a(parcel, 3, filterholder.GM, i, false);
        b.a(parcel, 4, filterholder.GN, i, false);
        b.a(parcel, 5, filterholder.GO, i, false);
        b.a(parcel, 6, filterholder.GP, i, false);
        b.F(parcel, j);
    }

    public FilterHolder[] aL(int i)
    {
        return new FilterHolder[i];
    }

    public FilterHolder ah(Parcel parcel)
    {
        Object obj;
        Object obj1;
        Object obj2;
        Object obj3;
        Object obj4;
        LogicalFilter logicalfilter;
        int i;
        int j;
        obj = null;
        j = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        i = 0;
        obj3 = null;
        obj2 = null;
        obj1 = null;
        logicalfilter = null;
        obj4 = null;
_L10:
        int k;
        if (parcel.dataPosition() >= j)
        {
            break MISSING_BLOCK_LABEL_444;
        }
        k = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
        com.google.android.gms.common.internal.safeparcel.a.R(k);
        JVM INSTR lookupswitch 7: default 112
    //                   1: 173
    //                   2: 246
    //                   3: 287
    //                   4: 328
    //                   5: 366
    //                   6: 407
    //                   1000: 211;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L7:
        break MISSING_BLOCK_LABEL_407;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
        Object obj5 = obj3;
        obj3 = obj4;
        Object obj12 = obj2;
        obj4 = obj;
        obj2 = obj1;
        obj1 = obj12;
        obj = obj5;
_L11:
        Object obj6 = obj;
        Object obj13 = obj3;
        obj3 = obj1;
        obj = obj4;
        obj4 = obj13;
        obj1 = obj2;
        obj2 = obj3;
        obj3 = obj6;
        if (true) goto _L10; else goto _L9
_L9:
        ComparisonFilter comparisonfilter = (ComparisonFilter)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, ComparisonFilter.CREATOR);
        Object obj14 = obj1;
        obj = obj3;
        obj1 = obj2;
        obj2 = obj14;
        obj3 = obj4;
        obj4 = comparisonfilter;
          goto _L11
_L8:
        i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
        Object obj7 = obj3;
        obj3 = obj4;
        Object obj15 = obj1;
        obj1 = obj2;
        obj4 = obj;
        obj = obj7;
        obj2 = obj15;
          goto _L11
_L3:
        obj4 = (FieldOnlyFilter)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, FieldOnlyFilter.CREATOR);
        Object obj8 = obj1;
        obj1 = obj2;
        Object obj16 = obj;
        obj = obj3;
        obj2 = obj8;
        obj3 = obj4;
        obj4 = obj16;
          goto _L11
_L4:
        logicalfilter = (LogicalFilter)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LogicalFilter.CREATOR);
        Object obj9 = obj;
        obj = obj3;
        obj3 = obj4;
        obj4 = obj1;
        obj1 = obj2;
        obj2 = obj4;
        obj4 = obj9;
          goto _L11
_L5:
        NotFilter notfilter = (NotFilter)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, NotFilter.CREATOR);
        Object obj10 = obj;
        obj1 = obj2;
        obj = obj3;
        obj2 = notfilter;
        obj3 = obj4;
        obj4 = obj10;
          goto _L11
_L6:
        obj2 = (InFilter)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, InFilter.CREATOR);
        Object obj11 = obj;
        Object obj17 = obj1;
        obj = obj3;
        obj1 = obj2;
        obj2 = obj17;
        obj3 = obj4;
        obj4 = obj11;
          goto _L11
        MatchAllFilter matchallfilter = (MatchAllFilter)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, MatchAllFilter.CREATOR);
        obj3 = obj4;
        Object obj18 = obj1;
        obj1 = obj2;
        obj4 = obj;
        obj = matchallfilter;
        obj2 = obj18;
          goto _L11
        if (parcel.dataPosition() != j)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
        } else
        {
            return new FilterHolder(i, ((ComparisonFilter) (obj)), ((FieldOnlyFilter) (obj4)), logicalfilter, ((NotFilter) (obj1)), ((InFilter) (obj2)), ((MatchAllFilter) (obj3)));
        }
    }

    public Object createFromParcel(Parcel parcel)
    {
        return ah(parcel);
    }

    public Object[] newArray(int i)
    {
        return aL(i);
    }
}
