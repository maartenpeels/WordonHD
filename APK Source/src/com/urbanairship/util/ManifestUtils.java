// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.util;

import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageManager;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;

public class ManifestUtils
{

    public ManifestUtils()
    {
    }

    public static ComponentInfo a(Class class1)
    {
        class1 = new ComponentName(UAirship.b(), class1.getCanonicalName());
        try
        {
            class1 = UAirship.c().getServiceInfo(class1, 128);
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            return null;
        }
        return class1;
    }

    public static void a(String s)
    {
        if (-1 == UAirship.c().checkPermission(s, UAirship.b()))
        {
            Logger.e((new StringBuilder("AndroidManifest.xml missing required permission: ")).append(s).toString());
        }
    }

    public static ActivityInfo b(Class class1)
    {
        class1 = new ComponentName(UAirship.b(), class1.getCanonicalName());
        try
        {
            class1 = UAirship.c().getActivityInfo(class1, 128);
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            return null;
        }
        return class1;
    }

    public static ComponentInfo b(String s)
    {
        return UAirship.c().resolveContentProvider(s, 0);
    }

    public static ComponentInfo c(Class class1)
    {
        class1 = new ComponentName(UAirship.b(), class1.getCanonicalName());
        try
        {
            class1 = UAirship.c().getReceiverInfo(class1, 128);
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            return null;
        }
        return class1;
    }
}
