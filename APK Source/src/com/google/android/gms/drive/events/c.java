// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.events;

import com.google.android.gms.drive.DriveId;

public class c
{

    public static boolean a(int i, DriveId driveid)
    {
        return driveid != null || (4L & (long)(1 << i)) != 0L;
    }
}
