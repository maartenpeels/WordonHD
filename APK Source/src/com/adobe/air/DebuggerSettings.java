// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


public final class DebuggerSettings
{

    private int debuggerPort;
    private String host;
    private boolean listenForConn;

    DebuggerSettings()
    {
        debuggerPort = -1;
        host = null;
        listenForConn = false;
    }

    DebuggerSettings(int i, String s, boolean flag)
    {
        debuggerPort = -1;
        host = null;
        listenForConn = false;
        debuggerPort = i;
        host = s;
        listenForConn = flag;
    }

    public int getDebuggerPort()
    {
        return debuggerPort;
    }

    public String getHost()
    {
        return host;
    }

    public void setDebugerPort(int i)
    {
        debuggerPort = i;
    }

    public void setHost(String s)
    {
        host = s;
    }

    public void setListen(boolean flag)
    {
        listenForConn = flag;
    }

    public boolean shouldListen()
    {
        return listenForConn;
    }
}
