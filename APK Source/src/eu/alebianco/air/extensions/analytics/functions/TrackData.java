// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.alebianco.air.extensions.analytics.functions;

import com.adobe.fre.FREASErrorException;
import com.adobe.fre.FREArray;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREInvalidObjectException;
import com.adobe.fre.FRENoSuchNameException;
import com.adobe.fre.FREObject;
import com.adobe.fre.FRETypeMismatchException;
import com.adobe.fre.FREWrongThreadException;
import com.google.analytics.tracking.android.GoogleAnalytics;
import com.google.analytics.tracking.android.Tracker;
import com.google.analytics.tracking.android.Transaction;
import com.stackoverflow.util.StackTraceInfo;
import eu.alebianco.air.extensions.utils.FREUtils;
import eu.alebianco.air.extensions.utils.LogLevel;

public class TrackData
    implements FREFunction
{
    private static final class HitType extends Enum
    {

        private static final HitType $VALUES[];
        public static final HitType EVENT;
        public static final HitType EXCEPTION;
        public static final HitType SOCIAL;
        public static final HitType TIMING;
        public static final HitType TRANSACTION;
        public static final HitType VIEW;

        public static HitType valueOf(String s)
        {
            return (HitType)Enum.valueOf(eu/alebianco/air/extensions/analytics/functions/TrackData$HitType, s);
        }

        public static HitType[] values()
        {
            return (HitType[])$VALUES.clone();
        }

        static 
        {
            VIEW = new HitType("VIEW", 0);
            EVENT = new HitType("EVENT", 1);
            EXCEPTION = new HitType("EXCEPTION", 2);
            TIMING = new HitType("TIMING", 3);
            SOCIAL = new HitType("SOCIAL", 4);
            TRANSACTION = new HitType("TRANSACTION", 5);
            $VALUES = (new HitType[] {
                VIEW, EVENT, EXCEPTION, TIMING, SOCIAL, TRANSACTION
            });
        }

        private HitType(String s, int i)
        {
            super(s, i);
        }
    }


    public TrackData()
    {
    }

    private com.google.analytics.tracking.android.Transaction.Item getProductAt(long l, FREArray frearray)
        throws FREWrongThreadException, FREInvalidObjectException, FRETypeMismatchException, FREASErrorException, FRENoSuchNameException
    {
        frearray = frearray.getObjectAt(l);
        Object obj = frearray.getProperty("sku").getAsString();
        String s = frearray.getProperty("name").getAsString();
        double d = frearray.getProperty("price").getAsDouble();
        l = frearray.getProperty("quantity").getAsInt();
        try
        {
            frearray = frearray.getProperty("category").getAsString();
        }
        // Misplaced declaration of an exception variable
        catch (FREArray frearray)
        {
            frearray = null;
        }
        obj = new com.google.analytics.tracking.android.Transaction.Item.Builder(((String) (obj)), s, (long)(Double.valueOf(d).doubleValue() * 1000000D), Long.valueOf(l).longValue());
        if (frearray != null)
        {
            ((com.google.analytics.tracking.android.Transaction.Item.Builder) (obj)).setProductCategory(frearray);
        }
        return ((com.google.analytics.tracking.android.Transaction.Item.Builder) (obj)).build();
    }

    private FREObject trackEvent(FREContext frecontext, Tracker tracker, FREObject freobject)
    {
        String s;
        String s1;
        String s2;
        long l;
        try
        {
            s1 = freobject.getProperty("category").getAsString();
            s2 = freobject.getProperty("action").getAsString();
        }
        // Misplaced declaration of an exception variable
        catch (Tracker tracker)
        {
            FREUtils.logEvent(frecontext, LogLevel.FATAL, "Unable to read a property. (Exception:[name:%s, reason:%s, method:%s:%s])", new Object[] {
                FREUtils.stripPackageFromClassName(tracker.toString()), tracker.getMessage(), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentMethodName())
            });
            return FREUtils.createRuntimeException("ArgumentError", 0, "Unable to read a property on method '%s:%s'.", new Object[] {
                FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentMethodName())
            });
        }
        try
        {
            s = freobject.getProperty("label").getAsString();
        }
        catch (Exception exception)
        {
            FREUtils.logEvent(frecontext, LogLevel.INFO, "Unable to read a property, falling back to default value. (Exception:[name:%s, reason:%s, method:%s:%s])", new Object[] {
                FREUtils.stripPackageFromClassName(exception.toString()), exception.getMessage(), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentMethodName())
            });
            exception = null;
        }
        l = freobject.getProperty("value").getAsInt();
        frecontext = Long.valueOf(l);
_L2:
        tracker.send("event", tracker.constructEvent(s1, s2, s, frecontext));
        return null;
        freobject;
        FREUtils.logEvent(frecontext, LogLevel.INFO, "Unable to read a property, falling back to default value. (Exception:[name:%s, reason:%s, method:%s:%s])", new Object[] {
            FREUtils.stripPackageFromClassName(freobject.toString()), freobject.getMessage(), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentMethodName())
        });
        frecontext = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private FREObject trackException(FREContext frecontext, Tracker tracker, FREObject freobject)
    {
        boolean flag;
        try
        {
            flag = freobject.getProperty("fatal").getAsBool();
        }
        // Misplaced declaration of an exception variable
        catch (Tracker tracker)
        {
            FREUtils.logEvent(frecontext, LogLevel.FATAL, "Unable to read a property. (Exception:[name:%s, reason:%s, method:%s:%s])", new Object[] {
                FREUtils.stripPackageFromClassName(tracker.toString()), tracker.getMessage(), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentMethodName())
            });
            return FREUtils.createRuntimeException("ArgumentError", 0, "Unable to read a property on method '%s:%s'.", new Object[] {
                FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentMethodName())
            });
        }
        freobject = freobject.getProperty("description").getAsString();
        frecontext = freobject;
_L2:
        tracker.send("exception", tracker.constructException(frecontext, Boolean.valueOf(flag).booleanValue()));
        return null;
        freobject;
        FREUtils.logEvent(frecontext, LogLevel.INFO, "Unable to read a property, falling back to default value. (Exception:[name:%s, reason:%s, method:%s:%s])", new Object[] {
            FREUtils.stripPackageFromClassName(freobject.toString()), freobject.getMessage(), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentMethodName())
        });
        frecontext = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private FREObject trackSocial(FREContext frecontext, Tracker tracker, FREObject freobject)
    {
        String s;
        String s1;
        try
        {
            s = freobject.getProperty("network").getAsString();
            s1 = freobject.getProperty("action").getAsString();
        }
        // Misplaced declaration of an exception variable
        catch (Tracker tracker)
        {
            FREUtils.logEvent(frecontext, LogLevel.FATAL, "Unable to read a property. (Exception:[name:%s, reason:%s, method:%s:%s])", new Object[] {
                FREUtils.stripPackageFromClassName(tracker.toString()), tracker.getMessage(), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentMethodName())
            });
            return FREUtils.createRuntimeException("ArgumentError", 0, "Unable to read a property on method '%s:%s'.", new Object[] {
                FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentMethodName())
            });
        }
        freobject = freobject.getProperty("content").getAsString();
        frecontext = freobject;
_L2:
        tracker.send("social", tracker.constructSocial(s, s1, frecontext));
        return null;
        freobject;
        FREUtils.logEvent(frecontext, LogLevel.INFO, "Unable to read a property, falling back to default value. (Exception:[name:%s, reason:%s, method:%s:%s])", new Object[] {
            FREUtils.stripPackageFromClassName(freobject.toString()), freobject.getMessage(), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentMethodName())
        });
        frecontext = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private FREObject trackTiming(FREContext frecontext, Tracker tracker, FREObject freobject)
    {
        String s;
        String s1;
        long l;
        try
        {
            s1 = freobject.getProperty("category").getAsString();
            l = freobject.getProperty("interval").getAsInt();
        }
        // Misplaced declaration of an exception variable
        catch (Tracker tracker)
        {
            FREUtils.logEvent(frecontext, LogLevel.FATAL, "Unable to read a property. (Exception:[name:%s, reason:%s, method:%s:%s])", new Object[] {
                FREUtils.stripPackageFromClassName(tracker.toString()), tracker.getMessage(), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentMethodName())
            });
            return FREUtils.createRuntimeException("ArgumentError", 0, "Unable to read a property on method '%s:%s'.", new Object[] {
                FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentMethodName())
            });
        }
        try
        {
            s = freobject.getProperty("name").getAsString();
        }
        catch (Exception exception)
        {
            FREUtils.logEvent(frecontext, LogLevel.INFO, "Unable to read a property, falling back to default value. (Exception:[name:%s, reason:%s, method:%s:%s])", new Object[] {
                FREUtils.stripPackageFromClassName(exception.toString()), exception.getMessage(), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentMethodName())
            });
            exception = null;
        }
        freobject = freobject.getProperty("label").getAsString();
        frecontext = freobject;
_L2:
        tracker.send("timing", tracker.constructTiming(s1, Long.valueOf(l).longValue(), s, frecontext));
        return null;
        freobject;
        FREUtils.logEvent(frecontext, LogLevel.INFO, "Unable to read a property, falling back to default value. (Exception:[name:%s, reason:%s, method:%s:%s])", new Object[] {
            FREUtils.stripPackageFromClassName(freobject.toString()), freobject.getMessage(), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentMethodName())
        });
        frecontext = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private FREObject trackTransaction(FREContext frecontext, Tracker tracker, FREObject freobject)
    {
        double d;
        double d1;
        String s;
        Double double1;
        FREArray frearray;
        Object obj;
        long l;
        long l1;
        try
        {
            obj = freobject.getProperty("id").getAsString();
            d = freobject.getProperty("cost").getAsDouble();
            frearray = (FREArray)freobject.getProperty("products");
            l1 = frearray.getLength();
        }
        // Misplaced declaration of an exception variable
        catch (Tracker tracker)
        {
            FREUtils.logEvent(frecontext, LogLevel.FATAL, "Unable to read a property. (Exception:[name:%s, reason:%s, method:%s:%s])", new Object[] {
                FREUtils.stripPackageFromClassName(tracker.toString()), tracker.getMessage(), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentMethodName())
            });
            return FREUtils.createRuntimeException("ArgumentError", 0, "Unable to read a property on method '%s:%s'.", new Object[] {
                FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentMethodName())
            });
        }
        try
        {
            s = freobject.getProperty("affiliation").getAsString();
        }
        catch (Exception exception)
        {
            FREUtils.logEvent(frecontext, LogLevel.INFO, "Unable to read a property, falling back to default value. (Exception:[name:%s, reason:%s, method:%s:%s])", new Object[] {
                FREUtils.stripPackageFromClassName(exception.toString()), exception.getMessage(), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentMethodName())
            });
            exception = null;
        }
        try
        {
            d1 = freobject.getProperty("shipping").getAsDouble();
        }
        catch (Exception exception1)
        {
            FREUtils.logEvent(frecontext, LogLevel.INFO, "Unable to read a property, falling back to default value. (Exception:[name:%s, reason:%s, method:%s:%s])", new Object[] {
                FREUtils.stripPackageFromClassName(exception1.toString()), exception1.getMessage(), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentMethodName())
            });
            exception1 = null;
            continue; /* Loop/switch isn't completed */
        }
        double1 = Double.valueOf(d1);
_L3:
        d1 = freobject.getProperty("tax").getAsDouble();
        freobject = Double.valueOf(d1);
_L1:
        obj = new com.google.analytics.tracking.android.Transaction.Builder(((String) (obj)), (long)(Double.valueOf(d).doubleValue() * 1000000D));
        if (s != null)
        {
            ((com.google.analytics.tracking.android.Transaction.Builder) (obj)).setAffiliation(s);
        }
        if (double1 != null)
        {
            ((com.google.analytics.tracking.android.Transaction.Builder) (obj)).setShippingCostInMicros((long)(double1.doubleValue() * 1000000D));
        }
        if (freobject != null)
        {
            ((com.google.analytics.tracking.android.Transaction.Builder) (obj)).setShippingCostInMicros((long)(freobject.doubleValue() * 1000000D));
        }
        freobject = ((com.google.analytics.tracking.android.Transaction.Builder) (obj)).build();
        l = 0L;
        do
        {
            try
            {
                if (l >= Long.valueOf(l1).longValue())
                {
                    break;
                }
                freobject.addItem(getProductAt(l, frearray));
            }
            // Misplaced declaration of an exception variable
            catch (Tracker tracker)
            {
                FREUtils.logEvent(frecontext, LogLevel.FATAL, "Unable to read a property. (Exception:[name:%s, reason:%s, method:%s:%s])", new Object[] {
                    FREUtils.stripPackageFromClassName(tracker.toString()), tracker.getMessage(), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentMethodName())
                });
                return FREUtils.createRuntimeException("ArgumentError", 0, "Unable to read a property on method '%s:%s'.", new Object[] {
                    FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentMethodName())
                });
            }
            l++;
        } while (true);
        break MISSING_BLOCK_LABEL_537;
        freobject;
        FREUtils.logEvent(frecontext, LogLevel.INFO, "Unable to read a property, falling back to default value. (Exception:[name:%s, reason:%s, method:%s:%s])", new Object[] {
            FREUtils.stripPackageFromClassName(freobject.toString()), freobject.getMessage(), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentMethodName())
        });
        freobject = null;
          goto _L1
        tracker.sendTransaction(freobject);
        return null;
        if (true) goto _L3; else goto _L2
_L2:
    }

    private FREObject trackView(FREContext frecontext, Tracker tracker, FREObject freobject)
    {
        try
        {
            freobject = freobject.getProperty("screen").getAsString();
        }
        // Misplaced declaration of an exception variable
        catch (Tracker tracker)
        {
            FREUtils.logEvent(frecontext, LogLevel.FATAL, "Unable to read a property. (Exception:[name:%s, reason:%s, method:%s:%s])", new Object[] {
                FREUtils.stripPackageFromClassName(tracker.toString()), tracker.getMessage(), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentMethodName())
            });
            return FREUtils.createRuntimeException("ArgumentError", 0, "Unable to read a property on method '%s:%s'.", new Object[] {
                FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentMethodName())
            });
        }
        tracker.sendView(freobject);
        return null;
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        static class _cls1
        {

            static final int $SwitchMap$eu$alebianco$air$extensions$analytics$functions$TrackData$HitType[];

            static 
            {
                $SwitchMap$eu$alebianco$air$extensions$analytics$functions$TrackData$HitType = new int[HitType.values().length];
                try
                {
                    $SwitchMap$eu$alebianco$air$extensions$analytics$functions$TrackData$HitType[HitType.VIEW.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    $SwitchMap$eu$alebianco$air$extensions$analytics$functions$TrackData$HitType[HitType.EVENT.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$eu$alebianco$air$extensions$analytics$functions$TrackData$HitType[HitType.EXCEPTION.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$eu$alebianco$air$extensions$analytics$functions$TrackData$HitType[HitType.TIMING.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$eu$alebianco$air$extensions$analytics$functions$TrackData$HitType[HitType.SOCIAL.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$eu$alebianco$air$extensions$analytics$functions$TrackData$HitType[HitType.TRANSACTION.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        String s;
        Object obj;
        try
        {
            obj = afreobject[0].getAsString();
        }
        // Misplaced declaration of an exception variable
        catch (FREObject afreobject[])
        {
            FREUtils.logEvent(frecontext, LogLevel.FATAL, "Unable to read the 'trackingId' parameter. [Exception:(type:%s, method:%s)].", new Object[] {
                FREUtils.stripPackageFromClassName(afreobject.toString()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName())
            });
            return FREUtils.createRuntimeException("ArgumentError", 0, "Unable to read the 'trackingId' parameter on method '%s'.", new Object[] {
                FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName())
            });
        }
        try
        {
            s = afreobject[1].getAsString();
        }
        // Misplaced declaration of an exception variable
        catch (FREObject afreobject[])
        {
            FREUtils.logEvent(frecontext, LogLevel.FATAL, "Unable to read the 'type' parameter. [Exception:(type:%s, method:%s)].", new Object[] {
                FREUtils.stripPackageFromClassName(afreobject.toString()), FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName())
            });
            return FREUtils.createRuntimeException("ArgumentError", 0, "Unable to read the 'type' parameter on method '%s'.", new Object[] {
                FREUtils.stripPackageFromClassName(StackTraceInfo.getCurrentClassName())
            });
        }
        obj = GoogleAnalytics.getInstance(frecontext.getActivity()).getTracker(((String) (obj)));
        afreobject = afreobject[2];
        switch (_cls1..SwitchMap.eu.alebianco.air.extensions.analytics.functions.TrackData.HitType[HitType.valueOf(s).ordinal()])
        {
        default:
            FREUtils.logEvent(frecontext, LogLevel.WARN, "Hit type not recognized: {0}", new Object[] {
                s
            });
            return null;

        case 1: // '\001'
            return trackView(frecontext, ((Tracker) (obj)), afreobject);

        case 2: // '\002'
            return trackEvent(frecontext, ((Tracker) (obj)), afreobject);

        case 3: // '\003'
            return trackException(frecontext, ((Tracker) (obj)), afreobject);

        case 4: // '\004'
            return trackTiming(frecontext, ((Tracker) (obj)), afreobject);

        case 5: // '\005'
            return trackSocial(frecontext, ((Tracker) (obj)), afreobject);

        case 6: // '\006'
            return trackTransaction(frecontext, ((Tracker) (obj)), afreobject);
        }
    }
}
