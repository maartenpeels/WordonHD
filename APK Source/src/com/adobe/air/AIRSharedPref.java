// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.Context;
import android.content.SharedPreferences;
import com.adobe.air.utils.Utils;

public final class AIRSharedPref
{

    private static final String LOG_TAG = "AIRSharedPref";
    private static String SP_CONFIG_DATA = "AIRSharedPref.ConfigData";
    private static String SP_CONFIG_DATA_DEFAULT = "\n";
    private static String SP_CONFIG_REQUEST_TIME = "AIRSharedPref.ConfigRequestTime";
    private static String SP_CONFIG_REQUEST_TIME_DEFAULT = null;

    public AIRSharedPref()
    {
    }

    public static String getConfigData(Context context)
    {
        String s = SP_CONFIG_DATA_DEFAULT;
        try
        {
            context = context.createPackageContext(Utils.getRuntimePackageName(), 4).getSharedPreferences(getPreferencesKey(), 1).getString(SP_CONFIG_DATA, SP_CONFIG_DATA_DEFAULT);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context = s;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context = s;
        }
        if (context == SP_CONFIG_DATA_DEFAULT);
        return context;
    }

    public static String getConfigRequestTime(Context context)
    {
        String s = SP_CONFIG_REQUEST_TIME_DEFAULT;
        try
        {
            context = context.createPackageContext(Utils.getRuntimePackageName(), 4).getSharedPreferences(getPreferencesKey(), 1).getString(SP_CONFIG_REQUEST_TIME, SP_CONFIG_REQUEST_TIME_DEFAULT);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context = s;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context = s;
        }
        if (context == SP_CONFIG_REQUEST_TIME_DEFAULT);
        return context;
    }

    private static String getPreferencesKey()
    {
        return (new StringBuilder()).append(Utils.getRuntimePackageName()).append(".AIRSharedPref").toString();
    }

    public static boolean setConfigData(Context context, String s)
    {
        context = context.getSharedPreferences(getPreferencesKey(), 1).edit();
        context.putString(SP_CONFIG_DATA, s);
        return context.commit();
    }

    public static boolean setConfigRequestTime(Context context, String s)
    {
        context = context.getSharedPreferences(getPreferencesKey(), 1).edit();
        context.putString(SP_CONFIG_REQUEST_TIME, s);
        return context.commit();
    }

}
