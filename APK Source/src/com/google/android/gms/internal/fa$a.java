// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            fa, fo

public static final class CS
{

    public final int CR;
    public final int CS;

    public boolean equals(Object obj)
    {
        if (!(obj instanceof CS))
        {
            return false;
        }
        if (this == obj)
        {
            return true;
        }
        obj = (CS)obj;
        return ((CS) (obj)).CR == CR && ((CR) (obj)).CS == CS;
    }

    public int hashCode()
    {
        return fo.hashCode(new Object[] {
            Integer.valueOf(CR), Integer.valueOf(CS)
        });
    }

    public (int i, int j)
    {
        CR = i;
        CS = j;
    }
}
