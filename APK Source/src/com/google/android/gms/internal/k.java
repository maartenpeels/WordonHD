// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

// Referenced classes of package com.google.android.gms.internal:
//            j, e, q, n, 
//            o

public class k extends j
{
    class a
    {

        private String ka;
        private boolean kb;
        final k kc;

        public String getId()
        {
            return ka;
        }

        public boolean isLimitAdTrackingEnabled()
        {
            return kb;
        }

        public a(String s, boolean flag)
        {
            kc = k.this;
            super();
            ka = s;
            kb = flag;
        }
    }


    private k(Context context, n n1, o o)
    {
        super(context, n1, o);
    }

    public static k a(String s, Context context)
    {
        e e1 = new e();
        a(s, context, ((n) (e1)));
        return new k(context, e1, new q(239));
    }

    protected void b(Context context)
    {
        super.b(context);
        context = f(context);
        long l;
        if (context.isLimitAdTrackingEnabled())
        {
            l = 1L;
        } else
        {
            l = 0L;
        }
        try
        {
            a(28, l);
            context = context.getId();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        a(30, context);
        return;
        context;
        a(28, 1L);
        return;
        context;
    }

    a f(Context context)
        throws IOException, GooglePlayServicesNotAvailableException
    {
        com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info;
label0:
        {
            int i = 0;
            String s;
            int l;
            try
            {
                info = AdvertisingIdClient.getAdvertisingIdInfo(context);
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                throw new IOException(context);
            }
            s = info.getId();
            context = s;
            if (s == null)
            {
                break label0;
            }
            context = s;
            if (!s.matches("^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"))
            {
                break label0;
            }
            context = new byte[16];
            l = 0;
            int i1;
            for (; i < s.length(); i = i1 + 2)
            {
label1:
                {
                    if (i != 8 && i != 13 && i != 18)
                    {
                        i1 = i;
                        if (i != 23)
                        {
                            break label1;
                        }
                    }
                    i1 = i + 1;
                }
                context[l] = (byte)((Character.digit(s.charAt(i1), 16) << 4) + Character.digit(s.charAt(i1 + 1), 16));
                l++;
            }

            context = jP.a(context, true);
        }
        return new a(context, info.isLimitAdTrackingEnabled());
    }
}
