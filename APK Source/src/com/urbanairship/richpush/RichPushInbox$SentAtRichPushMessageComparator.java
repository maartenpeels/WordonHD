// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.richpush;

import java.util.Comparator;
import java.util.Date;

// Referenced classes of package com.urbanairship.richpush:
//            RichPushMessage

class 
    implements Comparator
{

    public int compare(Object obj, Object obj1)
    {
        obj = (RichPushMessage)obj;
        return ((RichPushMessage)obj1).c().compareTo(((RichPushMessage) (obj)).c());
    }

    ()
    {
    }
}
