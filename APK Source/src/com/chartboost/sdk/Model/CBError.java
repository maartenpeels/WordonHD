// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Model;


public final class CBError
{
    public static final class CBClickError extends Enum
    {

        public static final CBClickError AGE_GATE_FAILURE;
        public static final CBClickError INTERNAL;
        public static final CBClickError NO_HOST_ACTIVITY;
        public static final CBClickError URI_INVALID;
        public static final CBClickError URI_UNRECOGNIZED;
        private static final CBClickError a[];

        public static CBClickError valueOf(String s)
        {
            return (CBClickError)Enum.valueOf(com/chartboost/sdk/Model/CBError$CBClickError, s);
        }

        public static CBClickError[] values()
        {
            return (CBClickError[])a.clone();
        }

        static 
        {
            URI_INVALID = new CBClickError("URI_INVALID", 0);
            URI_UNRECOGNIZED = new CBClickError("URI_UNRECOGNIZED", 1);
            AGE_GATE_FAILURE = new CBClickError("AGE_GATE_FAILURE", 2);
            NO_HOST_ACTIVITY = new CBClickError("NO_HOST_ACTIVITY", 3);
            INTERNAL = new CBClickError("INTERNAL", 4);
            a = (new CBClickError[] {
                URI_INVALID, URI_UNRECOGNIZED, AGE_GATE_FAILURE, NO_HOST_ACTIVITY, INTERNAL
            });
        }

        private CBClickError(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class CBImpressionError extends Enum
    {

        public static final CBImpressionError ASSETS_DOWNLOAD_FAILURE;
        public static final CBImpressionError ERROR_CREATING_VIEW;
        public static final CBImpressionError ERROR_DISPLAYING_VIEW;
        public static final CBImpressionError ERROR_PLAYING_VIDEO;
        public static final CBImpressionError FIRST_SESSION_INTERSTITIALS_DISABLED;
        public static final CBImpressionError IMPRESSION_ALREADY_VISIBLE;
        public static final CBImpressionError INTERNAL;
        public static final CBImpressionError INTERNET_UNAVAILABLE;
        public static final CBImpressionError INVALID_LOCATION;
        public static final CBImpressionError INVALID_RESPONSE;
        public static final CBImpressionError NETWORK_FAILURE;
        public static final CBImpressionError NO_AD_FOUND;
        public static final CBImpressionError NO_HOST_ACTIVITY;
        public static final CBImpressionError SESSION_NOT_STARTED;
        public static final CBImpressionError TOO_MANY_CONNECTIONS;
        public static final CBImpressionError USER_CANCELLATION;
        public static final CBImpressionError VIDEO_ID_MISSING;
        public static final CBImpressionError VIDEO_UNAVAILABLE;
        public static final CBImpressionError WRONG_ORIENTATION;
        private static final CBImpressionError a[];

        public static CBImpressionError valueOf(String s)
        {
            return (CBImpressionError)Enum.valueOf(com/chartboost/sdk/Model/CBError$CBImpressionError, s);
        }

        public static CBImpressionError[] values()
        {
            return (CBImpressionError[])a.clone();
        }

        static 
        {
            INTERNAL = new CBImpressionError("INTERNAL", 0);
            INTERNET_UNAVAILABLE = new CBImpressionError("INTERNET_UNAVAILABLE", 1);
            TOO_MANY_CONNECTIONS = new CBImpressionError("TOO_MANY_CONNECTIONS", 2);
            WRONG_ORIENTATION = new CBImpressionError("WRONG_ORIENTATION", 3);
            FIRST_SESSION_INTERSTITIALS_DISABLED = new CBImpressionError("FIRST_SESSION_INTERSTITIALS_DISABLED", 4);
            NETWORK_FAILURE = new CBImpressionError("NETWORK_FAILURE", 5);
            NO_AD_FOUND = new CBImpressionError("NO_AD_FOUND", 6);
            SESSION_NOT_STARTED = new CBImpressionError("SESSION_NOT_STARTED", 7);
            IMPRESSION_ALREADY_VISIBLE = new CBImpressionError("IMPRESSION_ALREADY_VISIBLE", 8);
            NO_HOST_ACTIVITY = new CBImpressionError("NO_HOST_ACTIVITY", 9);
            USER_CANCELLATION = new CBImpressionError("USER_CANCELLATION", 10);
            INVALID_LOCATION = new CBImpressionError("INVALID_LOCATION", 11);
            VIDEO_UNAVAILABLE = new CBImpressionError("VIDEO_UNAVAILABLE", 12);
            VIDEO_ID_MISSING = new CBImpressionError("VIDEO_ID_MISSING", 13);
            ERROR_PLAYING_VIDEO = new CBImpressionError("ERROR_PLAYING_VIDEO", 14);
            INVALID_RESPONSE = new CBImpressionError("INVALID_RESPONSE", 15);
            ASSETS_DOWNLOAD_FAILURE = new CBImpressionError("ASSETS_DOWNLOAD_FAILURE", 16);
            ERROR_CREATING_VIEW = new CBImpressionError("ERROR_CREATING_VIEW", 17);
            ERROR_DISPLAYING_VIEW = new CBImpressionError("ERROR_DISPLAYING_VIEW", 18);
            a = (new CBImpressionError[] {
                INTERNAL, INTERNET_UNAVAILABLE, TOO_MANY_CONNECTIONS, WRONG_ORIENTATION, FIRST_SESSION_INTERSTITIALS_DISABLED, NETWORK_FAILURE, NO_AD_FOUND, SESSION_NOT_STARTED, IMPRESSION_ALREADY_VISIBLE, NO_HOST_ACTIVITY, 
                USER_CANCELLATION, INVALID_LOCATION, VIDEO_UNAVAILABLE, VIDEO_ID_MISSING, ERROR_PLAYING_VIDEO, INVALID_RESPONSE, ASSETS_DOWNLOAD_FAILURE, ERROR_CREATING_VIEW, ERROR_DISPLAYING_VIEW
            });
        }

        private CBImpressionError(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;
        public static final a e;
        public static final a f;
        public static final a g;
        private static final a h[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(com/chartboost/sdk/Model/CBError$a, s);
        }

        public static a[] values()
        {
            return (a[])h.clone();
        }

        static 
        {
            a = new a("MISCELLANEOUS", 0);
            b = new a("INTERNET_UNAVAILABLE", 1);
            c = new a("INVALID_RESPONSE", 2);
            d = new a("UNEXPECTED_RESPONSE", 3);
            e = new a("NETWORK_FAILURE", 4);
            f = new a("PUBLIC_KEY_MISSING", 5);
            g = new a("HTTP_NOT_FOUND", 6);
            h = (new a[] {
                a, b, c, d, e, f, g
            });
        }

        private a(String s, int i)
        {
            super(s, i);
        }
    }


    private a a;
    private String b;
    private boolean c;

    public CBError(a a1, String s)
    {
        a = a1;
        b = s;
        c = true;
    }

    public a a()
    {
        return a;
    }

    public String b()
    {
        return b;
    }

    public CBImpressionError c()
    {
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[a.values().length];
                try
                {
                    a[a.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    a[a.d.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[a.f.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[a.b.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[a.g.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[a.e.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[a.c.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (_cls1.a[a.ordinal()])
        {
        default:
            return CBImpressionError.NETWORK_FAILURE;

        case 1: // '\001'
        case 2: // '\002'
        case 3: // '\003'
            return CBImpressionError.INTERNAL;

        case 4: // '\004'
            return CBImpressionError.INTERNET_UNAVAILABLE;

        case 5: // '\005'
            return CBImpressionError.NO_AD_FOUND;
        }
    }
}
