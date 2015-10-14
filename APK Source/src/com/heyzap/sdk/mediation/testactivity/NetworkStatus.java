// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.mediation.testactivity;

import android.content.Context;
import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import com.heyzap.mediation.FetchRequestStore;
import com.heyzap.mediation.abstr.NetworkAdapter;

public class NetworkStatus
{

    public FetchRequestStore fetchRequestStore;
    private int localStatus;
    private String name;
    private NetworkAdapter networkAdapter;
    private int remoteStatus;

    public NetworkStatus(String s)
    {
        name = s;
    }

    public FetchRequestStore getFetchRequestStore()
    {
        return fetchRequestStore;
    }

    public int getLocalStatus()
    {
        return localStatus;
    }

    public View getLocalTextView(Context context)
    {
        context = new CheckBox(context);
        context.setTextSize(22F);
        context.setClickable(false);
        switch (localStatus)
        {
        default:
            return context;

        case 0: // '\0'
            context.setText("No SDK Detected");
            context.setBackgroundColor(0xffff0000);
            return context;

        case 1: // '\001'
            context.setText("SDK Detected");
            break;
        }
        context.setChecked(true);
        context.setBackgroundColor(0xff00ff00);
        return context;
    }

    public String getName()
    {
        return name;
    }

    public NetworkAdapter getNetworkAdapter()
    {
        return networkAdapter;
    }

    public boolean getNetworkStatus()
    {
        return localStatus == 1 && remoteStatus == 1;
    }

    public int getRemoteStatus()
    {
        return remoteStatus;
    }

    public View getRemoteTextView(Context context)
    {
        LinearLayout linearlayout;
        CheckBox checkbox;
        linearlayout = new LinearLayout(context);
        linearlayout.setOrientation(1);
        checkbox = new CheckBox(context);
        checkbox.setTextSize(20F);
        checkbox.setClickable(false);
        context = new CheckBox(context);
        context.setTextSize(20F);
        context.setClickable(false);
        remoteStatus;
        JVM INSTR tableswitch 0 3: default 88
    //                   0 100
    //                   1 127
    //                   2 164
    //                   3 196;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        linearlayout.addView(checkbox);
        linearlayout.addView(context);
        return linearlayout;
_L2:
        checkbox.setText("No Credentials Found");
        context.setText("Network Not Enabled");
        checkbox.setBackgroundColor(0xffff0000);
        context.setBackgroundColor(0xffff0000);
        continue; /* Loop/switch isn't completed */
_L3:
        checkbox.setText("Credentials Found");
        checkbox.setBackgroundColor(0xff00ff00);
        checkbox.setChecked(true);
        context.setText("Network Enabled");
        context.setBackgroundColor(0xff00ff00);
        context.setChecked(true);
        continue; /* Loop/switch isn't completed */
_L4:
        checkbox.setText("Credentials Found");
        checkbox.setBackgroundColor(0xff00ff00);
        checkbox.setChecked(true);
        context.setText("Network Not Enabled");
        context.setBackgroundColor(0xffff0000);
        continue; /* Loop/switch isn't completed */
_L5:
        checkbox.setText("Network Error");
        checkbox.setBackgroundColor(0xff888888);
        context.setText("Network Error");
        context.setBackgroundColor(0xff888888);
        if (true) goto _L1; else goto _L6
_L6:
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setNetworkAdapter(NetworkAdapter networkadapter)
    {
        networkAdapter = networkadapter;
        int i;
        if (networkadapter == null)
        {
            i = 0;
        } else
        {
            i = 1;
        }
        localStatus = i;
    }

    public void setRemoteStatus(int i)
    {
        remoteStatus = i;
    }
}
