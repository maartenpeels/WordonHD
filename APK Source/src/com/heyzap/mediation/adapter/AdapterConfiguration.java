// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.adapter;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import org.json.JSONObject;

public class AdapterConfiguration
{
    public class AdapterConfigurationError extends Exception
    {

        private static final long serialVersionUID = 1L;
        final AdapterConfiguration this$0;

        public AdapterConfigurationError(String s)
        {
            this$0 = AdapterConfiguration.this;
            super(s);
        }
    }


    private EnumSet adUnits;
    private String adapterClassName;
    private LinkedList classNames;
    private Map data;
    private String networkName;

    public AdapterConfiguration(String s, String s1, Map map)
        throws AdapterConfigurationError
    {
        classNames = new LinkedList();
        adUnits = null;
        initialize(s, s1, map);
    }

    public AdapterConfiguration(JSONObject jsonobject)
        throws AdapterConfigurationError
    {
        classNames = new LinkedList();
        adUnits = null;
        String s = jsonobject.optString("name", null);
        String s1 = jsonobject.optString("custom_class", null);
        HashMap hashmap = new HashMap();
        jsonobject = jsonobject.optJSONObject("data");
        if (jsonobject != null)
        {
            Iterator iterator = jsonobject.keys();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                String s2 = (String)iterator.next();
                String s3 = jsonobject.optString(s2, null);
                if (s3 != null)
                {
                    hashmap.put(s2, s3);
                }
            } while (true);
        }
        initialize(s, s1, hashmap);
    }

    private void initialize(String s, String s1, Map map)
        throws AdapterConfigurationError
    {
        if (s == null)
        {
            throw new AdapterConfigurationError("No canonical name.");
        } else
        {
            adapterClassName = s1;
            networkName = s;
            data = map;
            return;
        }
    }

    public String getAdapterClassName()
    {
        return adapterClassName;
    }

    public String getCanonicalName()
    {
        return networkName;
    }

    public String getValue(String s)
    {
        if (data.containsKey(s))
        {
            return (String)data.get(s);
        } else
        {
            return null;
        }
    }

    public Boolean isCapableOfAdUnit(com.heyzap.internal.Constants.AdUnit adunit)
    {
        if (adUnits != null)
        {
            return Boolean.valueOf(adUnits.contains(adunit));
        } else
        {
            return Boolean.valueOf(false);
        }
    }

    public Boolean isHeyzap()
    {
        return Boolean.valueOf(getCanonicalName().equals("heyzap"));
    }

    public void setCapableAdUnits(EnumSet enumset)
    {
        adUnits = enumset;
    }

    public void setClassName(String s)
    {
        adapterClassName = s;
    }

    public String toString()
    {
        return String.format("<AdapterConfiguration name: %s, kl: %s>", new Object[] {
            getCanonicalName(), getAdapterClassName()
        });
    }
}
