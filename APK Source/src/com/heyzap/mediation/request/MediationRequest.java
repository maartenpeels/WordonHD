// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.request;

import com.heyzap.internal.Constants;
import com.heyzap.internal.Utils;
import com.heyzap.mediation.MediationManager;

public class MediationRequest
{
    public static class RequestType
    {

        public final com.heyzap.internal.Constants.AdUnit adUnit;
        public final String tag;

        public boolean equals(Object obj)
        {
            if (this == obj)
            {
                return true;
            }
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            obj = (RequestType)obj;
            if (adUnit != ((RequestType) (obj)).adUnit)
            {
                return false;
            }
            return tag == null ? ((RequestType) (obj)).tag != null : !tag.equals(((RequestType) (obj)).tag);
        }

        public com.heyzap.internal.Constants.AdUnit getAdUnit()
        {
            return adUnit;
        }

        public String getTag()
        {
            if (tag == null)
            {
                return Constants.DEFAULT_TAG;
            } else
            {
                return tag;
            }
        }

        public int hashCode()
        {
            int i;
            int j;
            if (adUnit != null)
            {
                i = adUnit.hashCode();
            } else
            {
                i = 0;
            }
            if (tag != null)
            {
                j = tag.hashCode();
            } else
            {
                j = 0;
            }
            return i * 31 + j;
        }

        public String toString()
        {
            return String.format("RequestType<adUnit: %s,tag: %s>", new Object[] {
                adUnit, tag
            });
        }

        public RequestType(com.heyzap.internal.Constants.AdUnit adunit, String s)
        {
            adUnit = adunit;
            tag = s;
        }
    }


    private final Integer DEFAULT_TIMEOUT;
    private MediationManager manager;
    private RequestType requestType;
    private long startedAt;
    private Integer timeoutMilli;

    public MediationRequest(com.heyzap.internal.Constants.AdUnit adunit, String s)
    {
        this(new RequestType(adunit, s));
    }

    public MediationRequest(RequestType requesttype)
    {
        DEFAULT_TIMEOUT = Integer.valueOf(1500);
        timeoutMilli = DEFAULT_TIMEOUT;
        startedAt = 0L;
        manager = null;
        requestType = requesttype;
        startedAt = System.currentTimeMillis();
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (obj == null || getClass() != obj.getClass())
        {
            return false;
        } else
        {
            return ((MediationRequest)obj).equals(getRequestType());
        }
    }

    public com.heyzap.internal.Constants.AdUnit getAdUnit()
    {
        return getRequestType().getAdUnit();
    }

    public MediationManager getManager()
    {
        return manager;
    }

    public long getRemainingTtl()
    {
        long l = System.currentTimeMillis();
        long l1 = startedAt;
        return Math.max(0L, (long)timeoutMilli.intValue() - (l - l1));
    }

    public RequestType getRequestType()
    {
        return requestType;
    }

    public String getTag()
    {
        return getRequestType().getTag();
    }

    public Long getTimeStartedAt()
    {
        return Long.valueOf(startedAt);
    }

    public int hashCode()
    {
        return getRequestType().hashCode();
    }

    public Boolean isStarted()
    {
        boolean flag;
        if (startedAt > 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return Boolean.valueOf(flag);
    }

    public Boolean isTimedOut()
    {
        if (isStarted().booleanValue())
        {
            return Utils.isExpired(Long.valueOf(startedAt), timeoutMilli);
        } else
        {
            return Boolean.valueOf(false);
        }
    }

    public void setManager(MediationManager mediationmanager)
    {
        manager = mediationmanager;
    }

    public void setTimeoutMilli(int i)
    {
        timeoutMilli = Integer.valueOf(i);
    }
}
