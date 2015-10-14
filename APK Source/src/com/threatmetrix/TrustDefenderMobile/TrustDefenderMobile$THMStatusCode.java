// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.threatmetrix.TrustDefenderMobile;


// Referenced classes of package com.threatmetrix.TrustDefenderMobile:
//            TrustDefenderMobile

public static final class desc extends Enum
{

    private static final THM_InvalidOrgID $VALUES[];
    public static final THM_InvalidOrgID THM_Connection_Error;
    public static final THM_InvalidOrgID THM_HostNotFound_Error;
    public static final THM_InvalidOrgID THM_HostVerification_Error;
    public static final THM_InvalidOrgID THM_Internal_Error;
    public static final THM_InvalidOrgID THM_Interrupted_Error;
    public static final THM_InvalidOrgID THM_InvalidOrgID;
    public static final THM_InvalidOrgID THM_NetworkTimeout_Error;
    public static final THM_InvalidOrgID THM_NotYet;
    public static final THM_InvalidOrgID THM_OK;
    private String desc;
    private String label;

    public static desc valueOf(String s)
    {
        return (desc)Enum.valueOf(com/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode, s);
    }

    public static desc[] values()
    {
        return (desc[])$VALUES.clone();
    }

    public final String getDesc()
    {
        return desc;
    }

    public final String toString()
    {
        return label;
    }

    static 
    {
        THM_NotYet = new <init>("THM_NotYet", 0, "Not Yet", "Profile request has returned but not yet completed");
        THM_OK = new <init>("THM_OK", 1, "Okay", "Completed, No errors");
        THM_Connection_Error = new <init>("THM_Connection_Error", 2, "Connection Error", "There has been a connection issue, profiling incomplete");
        THM_HostNotFound_Error = new <init>("THM_HostNotFound_Error", 3, "Host Not Found", "Unable to resolve the host name");
        THM_NetworkTimeout_Error = new <init>("THM_NetworkTimeout_Error", 4, "Network Timeout", "Communications layer timed out");
        THM_Internal_Error = new <init>("THM_Internal_Error", 5, "Internal Error", "Internal Error, profiling incomplete or interrupted");
        THM_HostVerification_Error = new <init>("THM_HostVerification_Error", 6, "Host Verification Error", "Host name doesn't match certificate! Potential MITM attack");
        THM_Interrupted_Error = new <init>("THM_Interrupted_Error", 7, "Interrupted", "Request was cancelled");
        THM_InvalidOrgID = new <init>("THM_InvalidOrgID", 8, "Invalid ORG ID", "Request contained an invalid org id");
        $VALUES = (new .VALUES[] {
            THM_NotYet, THM_OK, THM_Connection_Error, THM_HostNotFound_Error, THM_NetworkTimeout_Error, THM_Internal_Error, THM_HostVerification_Error, THM_Interrupted_Error, THM_InvalidOrgID
        });
    }

    private (String s, int i, String s1, String s2)
    {
        super(s, i);
        label = s1;
        desc = s2;
    }
}
