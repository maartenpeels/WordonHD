// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.filters;


// Referenced classes of package com.heyzap.mediation.filters:
//            FilterPolicy

class RejectFilterPolicy
    implements FilterPolicy
{

    public RejectFilterPolicy()
    {
    }

    public boolean accept()
    {
        return false;
    }

    public void addDisplay(com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay addisplay)
    {
    }
}
