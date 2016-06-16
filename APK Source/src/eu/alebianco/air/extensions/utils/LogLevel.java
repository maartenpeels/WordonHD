// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.alebianco.air.extensions.utils;


public final class LogLevel extends Enum
{

    private static final LogLevel $VALUES[];
    public static final LogLevel DEBUG;
    public static final LogLevel ERROR;
    public static final LogLevel FATAL;
    public static final LogLevel INFO;
    public static final LogLevel WARN;
    private final String name;
    private final int priority;

    private LogLevel(String s, int i, String s1, int j)
    {
        super(s, i);
        name = s1;
        priority = j;
    }

    public static LogLevel valueOf(String s)
    {
        return (LogLevel)Enum.valueOf(eu/alebianco/air/extensions/utils/LogLevel, s);
    }

    public static LogLevel[] values()
    {
        return (LogLevel[])$VALUES.clone();
    }

    public String getName()
    {
        return name;
    }

    public int getPriority()
    {
        return priority;
    }

    static 
    {
        INFO = new LogLevel("INFO", 0, "INFO", 4);
        DEBUG = new LogLevel("DEBUG", 1, "DEBUG", 3);
        WARN = new LogLevel("WARN", 2, "WARN", 5);
        ERROR = new LogLevel("ERROR", 3, "ERROR", 6);
        FATAL = new LogLevel("FATAL", 4, "FATAL", 6);
        $VALUES = (new LogLevel[] {
            INFO, DEBUG, WARN, ERROR, FATAL
        });
    }
}
