// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.push;


// Referenced classes of package com.urbanairship.push:
//            PushManager, PushPreferences, PushRegistrationPayload

public class PushRegistrationBuilder
{

    public PushRegistrationBuilder()
    {
    }

    public static PushRegistrationPayload a()
    {
        Object obj = PushManager.b().g();
        String s = ((PushPreferences) (obj)).i();
        String s1 = ((PushPreferences) (obj)).k();
        if (PushManager.b().l())
        {
            obj = ((PushPreferences) (obj)).j();
        } else
        {
            obj = null;
        }
        return new PushRegistrationPayload(s, s1, ((java.util.Set) (obj)));
    }
}
