// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.analytics;

import com.urbanairship.Logger;

class ActivityState
{

    private State a;
    private State b;
    private final String c;
    private int d;
    private int e;
    private boolean f;

    public ActivityState(String s, int i, int j, boolean flag)
    {
        a = State.c;
        b = State.c;
        c = s;
        d = i;
        e = j;
        f = flag;
    }

    final void a(ActivityMonitor.Source source)
    {
        if (source == ActivityMonitor.Source.a)
        {
            if (b == State.a && f)
            {
                Logger.a((new StringBuilder("Activity ")).append(c).append(" already added without being removed first. Call UAirship.shared().getAnalytics().activityStopped in every activity's onStop() method.").toString());
            }
            b = State.a;
            return;
        } else
        {
            a = State.a;
            return;
        }
    }

    final boolean a()
    {
        if (e >= 14)
        {
            return a == State.a;
        }
        return b == State.a;
    }

    final void b(ActivityMonitor.Source source)
    {
        if (source != ActivityMonitor.Source.a) goto _L2; else goto _L1
_L1:
        if (b == State.a || !f) goto _L4; else goto _L3
_L3:
        Logger.a((new StringBuilder("Activity ")).append(c).append(" removed without being manually added first. Call UAirship.shared().getAnalytics().activityStarted in every activity's onStart() method.").toString());
_L5:
        b = State.b;
        return;
_L4:
        if (e >= 14 && a == State.c && f)
        {
            Logger.a((new StringBuilder("Activity ")).append(c).append(" removed in Analytics not during the activity's onStop() method.").toString());
        }
        if (true) goto _L5; else goto _L2
_L2:
        if (d < 14 && b == State.c && f)
        {
            Logger.a((new StringBuilder("Activity ")).append(c).append(" was not manually added during onStart(). Call UAirship.shared().getAnalytics().activityStarted in every activity's onStart() method.").toString());
        }
        a = State.b;
        return;
    }

    private class State extends Enum
    {

        public static final State a;
        public static final State b;
        public static final State c;
        private static final State d[];

        public static State valueOf(String s)
        {
            return (State)Enum.valueOf(com/urbanairship/analytics/ActivityState$State, s);
        }

        public static State[] values()
        {
            return (State[])d.clone();
        }

        static 
        {
            a = new State("STARTED", 0);
            b = new State("STOPPED", 1);
            c = new State("NONE", 2);
            d = (new State[] {
                a, b, c
            });
        }

        private State(String s, int i)
        {
            super(s, i);
        }
    }

}
