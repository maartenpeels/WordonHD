// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import com.chartboost.sdk.b;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.UUID;

// Referenced classes of package com.chartboost.sdk.Libraries:
//            c, CBLogging, b

public final class d
{

    private d()
    {
    }

    protected static String a()
    {
        Object obj = b.l();
        try
        {
            obj = AdvertisingIdClient.getAdvertisingIdInfo(((android.content.Context) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            obj = null;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            obj = null;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            obj = null;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            CBLogging.a("CBIdentityAdv", "Security Exception when retrieving AD id", ((Throwable) (obj)));
            obj = null;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            CBLogging.a("CBIdentityAdv", "General Exception when retrieving AD id", ((Throwable) (obj)));
            obj = null;
        }
        if (obj == null)
        {
            c.a(c.a.c);
            return null;
        }
        Object obj1;
        if (((com.google.android.gms.ads.identifier.AdvertisingIdClient.Info) (obj)).isLimitAdTrackingEnabled())
        {
            c.a(c.a.e);
        } else
        {
            c.a(c.a.d);
        }
        try
        {
            obj1 = UUID.fromString(((com.google.android.gms.ads.identifier.AdvertisingIdClient.Info) (obj)).getId());
            ByteBuffer bytebuffer = ByteBuffer.wrap(new byte[16]);
            bytebuffer.putLong(((UUID) (obj1)).getMostSignificantBits());
            bytebuffer.putLong(((UUID) (obj1)).getLeastSignificantBits());
            obj1 = com.chartboost.sdk.Libraries.b.b(bytebuffer.array());
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            com.chartboost.sdk.Libraries.CBLogging.b("CBIdentityAdv", "Exception raised retrieveAdvertisingID", illegalargumentexception);
            return ((com.google.android.gms.ads.identifier.AdvertisingIdClient.Info) (obj)).getId();
        }
        return ((String) (obj1));
    }
}
