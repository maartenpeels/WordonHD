// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.abstr;

import com.heyzap.internal.Logger;
import com.heyzap.mediation.adapter.AdapterConfiguration;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

// Referenced classes of package com.heyzap.mediation.abstr:
//            NetworkAdapter

public class NetworkAdapterFactory
{

    public NetworkAdapterFactory()
    {
    }

    public static NetworkAdapter build(AdapterConfiguration adapterconfiguration)
        throws NetworkAdapter.ConfigurationError
    {
        String s = adapterconfiguration.getAdapterClassName();
        if (s == null)
        {
            try
            {
                throw new ClassNotFoundException("No adapter class name provided.");
            }
            // Misplaced declaration of an exception variable
            catch (AdapterConfiguration adapterconfiguration)
            {
                Logger.trace(adapterconfiguration);
            }
            // Misplaced declaration of an exception variable
            catch (AdapterConfiguration adapterconfiguration)
            {
                Logger.trace(adapterconfiguration);
            }
            // Misplaced declaration of an exception variable
            catch (AdapterConfiguration adapterconfiguration)
            {
                Logger.trace(adapterconfiguration);
            }
            // Misplaced declaration of an exception variable
            catch (AdapterConfiguration adapterconfiguration)
            {
                Logger.trace(adapterconfiguration);
            }
            // Misplaced declaration of an exception variable
            catch (AdapterConfiguration adapterconfiguration)
            {
                Logger.trace(adapterconfiguration);
            }
            // Misplaced declaration of an exception variable
            catch (AdapterConfiguration adapterconfiguration)
            {
                Logger.trace(adapterconfiguration);
            }
            throw new NetworkAdapter.ConfigurationError("No adapter available or network classes not onboard.");
        }
        adapterconfiguration = (NetworkAdapter)Class.forName(s).getConstructor(new Class[] {
            com/heyzap/mediation/adapter/AdapterConfiguration
        }).newInstance(new Object[] {
            adapterconfiguration
        });
        return adapterconfiguration;
    }
}
