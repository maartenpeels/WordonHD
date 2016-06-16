// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public class Connectivity
{

    public static final int NETWORK_TYPE_EHRPD = 14;
    public static final int NETWORK_TYPE_EVDO_B = 12;
    public static final int NETWORK_TYPE_HSPAP = 15;
    public static final int NETWORK_TYPE_IDEN = 11;
    public static final int NETWORK_TYPE_LTE = 13;

    public Connectivity()
    {
    }

    public static String connectionType(Context context)
    {
        context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (context == null)
        {
            return null;
        }
        int i = context.getType();
        int j = context.getSubtype();
        if (i == 1)
        {
            return "wifi";
        }
        if (i == 0)
        {
            switch (j)
            {
            default:
                return null;

            case 7: // '\007'
                return "rtt";

            case 4: // '\004'
                return "cdma";

            case 2: // '\002'
                return "edge";

            case 5: // '\005'
            case 6: // '\006'
                return "evdo";

            case 1: // '\001'
                return "gprs";

            case 8: // '\b'
                return "hsdpa";

            case 10: // '\n'
                return "hspa";

            case 9: // '\t'
                return "hsupa";

            case 3: // '\003'
                return "umts";

            case 14: // '\016'
                return "ehrpd";

            case 12: // '\f'
                return "evdo_b";

            case 15: // '\017'
                return "hspap";

            case 11: // '\013'
                return "iden";

            case 13: // '\r'
                return "lte";
            }
        } else
        {
            return null;
        }
    }

    public static boolean isConnected(Context context)
    {
        context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        return context != null && context.isConnected();
    }

    public static boolean isConnectedFast(Context context)
    {
        context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        return context != null && context.isConnected() && isConnectionFast(context.getType(), context.getSubtype());
    }

    public static boolean isConnectionFast(int i, int j)
    {
        if (i != 1) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (i != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        switch (j)
        {
        default:
            return false;

        case 7: // '\007'
            return false;

        case 4: // '\004'
            return false;

        case 2: // '\002'
            return false;

        case 1: // '\001'
            return false;

        case 15: // '\017'
            return false;

        case 11: // '\013'
            return false;

        case 3: // '\003'
        case 5: // '\005'
        case 6: // '\006'
        case 8: // '\b'
        case 9: // '\t'
        case 10: // '\n'
        case 12: // '\f'
        case 13: // '\r'
        case 14: // '\016'
            break;
        }
        if (true) goto _L1; else goto _L3
_L3:
        return false;
    }
}
