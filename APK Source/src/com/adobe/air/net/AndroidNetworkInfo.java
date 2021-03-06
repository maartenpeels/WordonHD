// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.net;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.DhcpInfo;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.format.Formatter;
import java.util.Vector;

// Referenced classes of package com.adobe.air.net:
//            NetworkInterface, InterfaceAddress

class AndroidNetworkInfo
{

    private static final String LOG_TAG = "AndroidNetworkInfo";
    private static AndroidNetworkInfo sAndroidNetworkInfo = null;
    private Context mContext;
    private Vector mInterfaces;

    private AndroidNetworkInfo(Context context)
    {
        mContext = context;
        mInterfaces = new Vector();
    }

    public static AndroidNetworkInfo GetAndroidNetworkInfo(Context context)
    {
        if (sAndroidNetworkInfo == null)
        {
            sAndroidNetworkInfo = new AndroidNetworkInfo(context);
        }
        return sAndroidNetworkInfo;
    }

    private void enumerateNetworkInterfaces()
    {
        NetworkInfo anetworkinfo[] = ((ConnectivityManager)mContext.getSystemService("connectivity")).getAllNetworkInfo();
        int i = 0;
_L3:
        if (i >= anetworkinfo.length)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        Object obj = anetworkinfo[i];
        switch (((NetworkInfo) (obj)).getType())
        {
        default:
            obj = getDefaultData(((NetworkInfo) (obj)));
            break;

        case 1: // '\001'
            break MISSING_BLOCK_LABEL_74;
        }
_L1:
        mInterfaces.add(obj);
        i++;
        continue; /* Loop/switch isn't completed */
        obj = getWifiData(((NetworkInfo) (obj)));
          goto _L1
        Exception exception;
        exception;
        mInterfaces.clear();
        return;
        if (true) goto _L3; else goto _L2
_L2:
    }

    public NetworkInterface GetNetworkInterface(int i)
    {
        if (i < 0 || i >= mInterfaces.size())
        {
            return null;
        } else
        {
            return (NetworkInterface)mInterfaces.elementAt(i);
        }
    }

    public int GetNetworkInterfacesCount()
    {
        mInterfaces.clear();
        enumerateNetworkInterfaces();
        return mInterfaces.size();
    }

    public void InterfacesReadComplete()
    {
        mInterfaces.clear();
    }

    InterfaceAddress getAddress(NetworkInfo networkinfo)
    {
        InterfaceAddress interfaceaddress = new InterfaceAddress();
        if (!networkinfo.isConnected())
        {
            return null;
        }
        networkinfo = (WifiManager)mContext.getSystemService("wifi");
        if (networkinfo == null)
        {
            return null;
        }
        DhcpInfo dhcpinfo = networkinfo.getDhcpInfo();
        if (dhcpinfo != null)
        {
            interfaceaddress.address = Formatter.formatIpAddress(dhcpinfo.ipAddress);
            interfaceaddress.prefixLength = Integer.bitCount(dhcpinfo.netmask);
            int i = dhcpinfo.ipAddress;
            interfaceaddress.broadcast = Formatter.formatIpAddress(~dhcpinfo.netmask | i);
            interfaceaddress.ipVersion = "IPv4";
            return interfaceaddress;
        }
        networkinfo = networkinfo.getConnectionInfo();
        if (networkinfo == null)
        {
            return null;
        } else
        {
            interfaceaddress.address = Formatter.formatIpAddress(networkinfo.getIpAddress());
            interfaceaddress.ipVersion = "IPv4";
            return interfaceaddress;
        }
    }

    NetworkInterface getDefaultData(NetworkInfo networkinfo)
    {
        NetworkInterface networkinterface = new NetworkInterface();
        networkinterface.active = networkinfo.isConnected();
        networkinterface.displayName = networkinfo.getTypeName();
        networkinterface.name = networkinfo.getTypeName();
        return networkinterface;
    }

    NetworkInterface getWifiData(NetworkInfo networkinfo)
    {
        NetworkInterface networkinterface = new NetworkInterface();
        Object obj = (WifiManager)mContext.getSystemService("wifi");
        if (obj != null);
        obj = ((WifiManager) (obj)).getConnectionInfo();
        if (obj != null);
        networkinterface.active = networkinfo.isConnected();
        networkinterface.displayName = networkinfo.getTypeName();
        networkinterface.name = networkinfo.getTypeName();
        if (obj != null)
        {
            String s = ((WifiInfo) (obj)).getMacAddress();
            obj = s;
            if (s == null)
            {
                obj = "";
            }
            networkinterface.hardwareAddress = ((String) (obj));
        }
        networkinterface.addAddress(getAddress(networkinfo));
        return networkinterface;
    }

}
