// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.stackoverflow.util;


public class StackTraceInfo
{

    private static final int CLIENT_CODE_STACK_INDEX;

    public StackTraceInfo()
    {
    }

    public static String getCurrentClassName()
    {
        return getCurrentClassName(1);
    }

    private static String getCurrentClassName(int i)
    {
        return Thread.currentThread().getStackTrace()[CLIENT_CODE_STACK_INDEX + i].getClassName();
    }

    public static String getCurrentFileName()
    {
        return getCurrentFileName(1);
    }

    private static String getCurrentFileName(int i)
    {
        String s = Thread.currentThread().getStackTrace()[CLIENT_CODE_STACK_INDEX + i].getFileName();
        i = Thread.currentThread().getStackTrace()[CLIENT_CODE_STACK_INDEX + i].getLineNumber();
        return (new StringBuilder()).append(s).append(":").append(i).toString();
    }

    public static String getCurrentFileNameFqn()
    {
        String s = getCurrentMethodNameFqn(1);
        String s1 = getCurrentFileName(1);
        return (new StringBuilder()).append(s).append("(").append(s1).append(")").toString();
    }

    public static String getCurrentMethodName()
    {
        return getCurrentMethodName(1);
    }

    private static String getCurrentMethodName(int i)
    {
        return Thread.currentThread().getStackTrace()[CLIENT_CODE_STACK_INDEX + i].getMethodName();
    }

    public static String getCurrentMethodNameFqn()
    {
        return getCurrentMethodNameFqn(1);
    }

    private static String getCurrentMethodNameFqn(int i)
    {
        String s = getCurrentClassName(i + 1);
        String s1 = getCurrentMethodName(i + 1);
        return (new StringBuilder()).append(s).append(".").append(s1).toString();
    }

    public static String getInvokingClassName()
    {
        return getInvokingClassName(2);
    }

    private static String getInvokingClassName(int i)
    {
        return getCurrentClassName(i + 1);
    }

    public static String getInvokingFileName()
    {
        return getInvokingFileName(2);
    }

    private static String getInvokingFileName(int i)
    {
        return getCurrentFileName(i + 1);
    }

    public static String getInvokingFileNameFqn()
    {
        String s = getInvokingMethodNameFqn(2);
        String s1 = getInvokingFileName(2);
        return (new StringBuilder()).append(s).append("(").append(s1).append(")").toString();
    }

    public static String getInvokingMethodName()
    {
        return getInvokingMethodName(2);
    }

    private static String getInvokingMethodName(int i)
    {
        return getCurrentMethodName(i + 1);
    }

    public static String getInvokingMethodNameFqn()
    {
        return getInvokingMethodNameFqn(2);
    }

    private static String getInvokingMethodNameFqn(int i)
    {
        String s = getInvokingClassName(i + 1);
        String s1 = getInvokingMethodName(i + 1);
        return (new StringBuilder()).append(s).append(".").append(s1).toString();
    }

    static 
    {
        int i = 0;
        StackTraceElement astacktraceelement[] = Thread.currentThread().getStackTrace();
        int l = astacktraceelement.length;
        int j = 0;
        do
        {
label0:
            {
                int k = i;
                if (j < l)
                {
                    StackTraceElement stacktraceelement = astacktraceelement[j];
                    i++;
                    if (!stacktraceelement.getClassName().equals(com/stackoverflow/util/StackTraceInfo.getName()))
                    {
                        break label0;
                    }
                    k = i;
                }
                CLIENT_CODE_STACK_INDEX = k;
                return;
            }
            j++;
        } while (true);
    }
}
