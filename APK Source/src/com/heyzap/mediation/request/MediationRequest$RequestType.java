// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.request;

import com.heyzap.internal.Constants;

// Referenced classes of package com.heyzap.mediation.request:
//            MediationRequest

public static class tag
{

    public final com.heyzap.internal.uestType.tag adUnit;
    public final String tag;

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (obj == null || getClass() != obj.getClass())
        {
            return false;
        }
        obj = (tag)obj;
        if (adUnit != ((adUnit) (obj)).adUnit)
        {
            return false;
        }
        return tag == null ? ((tag) (obj)).tag != null : !tag.equals(((tag) (obj)).tag);
    }

    public com.heyzap.internal.uestType getAdUnit()
    {
        return adUnit;
    }

    public String getTag()
    {
        if (tag == null)
        {
            return Constants.DEFAULT_TAG;
        } else
        {
            return tag;
        }
    }

    public int hashCode()
    {
        int i;
        int j;
        if (adUnit != null)
        {
            i = adUnit.adUnit();
        } else
        {
            i = 0;
        }
        if (tag != null)
        {
            j = tag.hashCode();
        } else
        {
            j = 0;
        }
        return i * 31 + j;
    }

    public String toString()
    {
        return String.format("RequestType<adUnit: %s,tag: %s>", new Object[] {
            adUnit, tag
        });
    }

    public (com.heyzap.internal.uestType uesttype, String s)
    {
        adUnit = uesttype;
        tag = s;
    }
}
