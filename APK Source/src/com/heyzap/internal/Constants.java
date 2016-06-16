// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import android.text.TextUtils;
import java.util.ArrayList;

public class Constants
{
    public static final class AdNetworkFetchFailureReason extends Enum
    {

        private static final AdNetworkFetchFailureReason $VALUES[];
        public static final AdNetworkFetchFailureReason BAD_CREDENTIALS;
        public static final AdNetworkFetchFailureReason CONFIGURATION_ERROR;
        public static final AdNetworkFetchFailureReason INTERNAL;
        public static final AdNetworkFetchFailureReason NETWORK_ERROR;
        public static final AdNetworkFetchFailureReason NO_FILL;
        public static final AdNetworkFetchFailureReason REMOTE_ERROR;
        public static final AdNetworkFetchFailureReason SKIPPED;
        public static final AdNetworkFetchFailureReason TIMEOUT;
        public static final AdNetworkFetchFailureReason UNKNOWN;

        public static AdNetworkFetchFailureReason valueOf(String s)
        {
            return (AdNetworkFetchFailureReason)Enum.valueOf(com/heyzap/internal/Constants$AdNetworkFetchFailureReason, s);
        }

        public static AdNetworkFetchFailureReason[] values()
        {
            return (AdNetworkFetchFailureReason[])$VALUES.clone();
        }

        static 
        {
            UNKNOWN = new AdNetworkFetchFailureReason("UNKNOWN", 0);
            INTERNAL = new AdNetworkFetchFailureReason("INTERNAL", 1);
            TIMEOUT = new AdNetworkFetchFailureReason("TIMEOUT", 2);
            NO_FILL = new AdNetworkFetchFailureReason("NO_FILL", 3);
            BAD_CREDENTIALS = new AdNetworkFetchFailureReason("BAD_CREDENTIALS", 4);
            REMOTE_ERROR = new AdNetworkFetchFailureReason("REMOTE_ERROR", 5);
            CONFIGURATION_ERROR = new AdNetworkFetchFailureReason("CONFIGURATION_ERROR", 6);
            SKIPPED = new AdNetworkFetchFailureReason("SKIPPED", 7);
            NETWORK_ERROR = new AdNetworkFetchFailureReason("NETWORK_ERROR", 8);
            $VALUES = (new AdNetworkFetchFailureReason[] {
                UNKNOWN, INTERNAL, TIMEOUT, NO_FILL, BAD_CREDENTIALS, REMOTE_ERROR, CONFIGURATION_ERROR, SKIPPED, NETWORK_ERROR
            });
        }

        private AdNetworkFetchFailureReason(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class AdUnit extends Enum
    {

        private static final AdUnit $VALUES[];
        public static final AdUnit INCENTIVIZED;
        public static final AdUnit INTERSTITIAL;
        public static final AdUnit NATIVE;
        public static final AdUnit UNKNOWN;
        public static final AdUnit VIDEO;

        public static AdUnit valueOf(String s)
        {
            return (AdUnit)Enum.valueOf(com/heyzap/internal/Constants$AdUnit, s);
        }

        public static AdUnit[] values()
        {
            return (AdUnit[])$VALUES.clone();
        }

        static 
        {
            UNKNOWN = new AdUnit("UNKNOWN", 0);
            INTERSTITIAL = new AdUnit("INTERSTITIAL", 1);
            VIDEO = new AdUnit("VIDEO", 2);
            INCENTIVIZED = new AdUnit("INCENTIVIZED", 3);
            NATIVE = new AdUnit("NATIVE", 4);
            $VALUES = (new AdUnit[] {
                UNKNOWN, INTERSTITIAL, VIDEO, INCENTIVIZED, NATIVE
            });
        }

        private AdUnit(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class AuctionType extends Enum
    {

        private static final AuctionType $VALUES[];
        public static final AuctionType CROSS_PROMO;
        public static final AuctionType MONETIZATION;

        public static AuctionType valueOf(String s)
        {
            return (AuctionType)Enum.valueOf(com/heyzap/internal/Constants$AuctionType, s);
        }

        public static AuctionType[] values()
        {
            return (AuctionType[])$VALUES.clone();
        }

        static 
        {
            MONETIZATION = new AuctionType("MONETIZATION", 0);
            CROSS_PROMO = new AuctionType("CROSS_PROMO", 1);
            $VALUES = (new AuctionType[] {
                MONETIZATION, CROSS_PROMO
            });
        }

        private AuctionType(String s, int i)
        {
            super(s, i);
        }
    }

    public static class CreativeType
    {

        public static int INTERSTITIAL = 1;
        public static int NATIVE = 4;
        public static int VIDEO = 2;

        public static boolean contains(int i, int j)
        {
            return (i & j) != j;
        }

        public static String requestString(int i)
        {
            ArrayList arraylist = new ArrayList();
            if ((INTERSTITIAL & i) == INTERSTITIAL)
            {
                arraylist.add("full_screen_interstitial");
                arraylist.add("interstitial");
            }
            if ((VIDEO & i) == VIDEO)
            {
                arraylist.add("interstitial_video");
                arraylist.add("video");
            }
            if ((NATIVE & i) == NATIVE)
            {
                arraylist.add("native");
            }
            return TextUtils.join(",", arraylist);
        }


        public CreativeType()
        {
        }
    }

    public static final class MediationCancellationReason extends Enum
    {

        private static final MediationCancellationReason $VALUES[];
        public static final MediationCancellationReason DISPLAY_TIMEOUT;
        public static final MediationCancellationReason ERROR;
        public static final MediationCancellationReason FETCH_TIMEOUT;
        public static final MediationCancellationReason FINISHED;
        public static final MediationCancellationReason INTERNAL;
        public static final MediationCancellationReason UNKNOWN;
        public static final MediationCancellationReason USER_INITIATED;

        public static MediationCancellationReason valueOf(String s)
        {
            return (MediationCancellationReason)Enum.valueOf(com/heyzap/internal/Constants$MediationCancellationReason, s);
        }

        public static MediationCancellationReason[] values()
        {
            return (MediationCancellationReason[])$VALUES.clone();
        }

        static 
        {
            UNKNOWN = new MediationCancellationReason("UNKNOWN", 0);
            FETCH_TIMEOUT = new MediationCancellationReason("FETCH_TIMEOUT", 1);
            DISPLAY_TIMEOUT = new MediationCancellationReason("DISPLAY_TIMEOUT", 2);
            ERROR = new MediationCancellationReason("ERROR", 3);
            USER_INITIATED = new MediationCancellationReason("USER_INITIATED", 4);
            INTERNAL = new MediationCancellationReason("INTERNAL", 5);
            FINISHED = new MediationCancellationReason("FINISHED", 6);
            $VALUES = (new MediationCancellationReason[] {
                UNKNOWN, FETCH_TIMEOUT, DISPLAY_TIMEOUT, ERROR, USER_INITIATED, INTERNAL, FINISHED
            });
        }

        private MediationCancellationReason(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class MediationFetchMode extends Enum
    {

        private static final MediationFetchMode $VALUES[];
        public static final MediationFetchMode HEYZAP;
        public static final MediationFetchMode MEDIATION;

        public static MediationFetchMode valueOf(String s)
        {
            return (MediationFetchMode)Enum.valueOf(com/heyzap/internal/Constants$MediationFetchMode, s);
        }

        public static MediationFetchMode[] values()
        {
            return (MediationFetchMode[])$VALUES.clone();
        }

        static 
        {
            MEDIATION = new MediationFetchMode("MEDIATION", 0);
            HEYZAP = new MediationFetchMode("HEYZAP", 1);
            $VALUES = (new MediationFetchMode[] {
                MEDIATION, HEYZAP
            });
        }

        private MediationFetchMode(String s, int i)
        {
            super(s, i);
        }
    }


    public static String DEFAULT_TAG = "default";
    public static Integer FETCH_DISPLAY_TTL = Integer.valueOf(5000);
    public static int MINIMUM_SUPPORTED_SDK_VERSION = 9;
    public static String NEEDED_RECEIVER = "com.heyzap.sdk.ads.PackageAddedReceiver";
    public static String REQUIRED_PERMISSIONS[] = {
        "android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"
    };
    public static String SNAKE_PACKAGE = "com.example.android.snake";

    public Constants()
    {
    }

    public static String normalizeTag(String s)
    {
        if (s == null || s.trim().equals(""))
        {
            s = DEFAULT_TAG;
        }
        return s.trim();
    }

}
