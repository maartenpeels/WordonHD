// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            fu, fo

public final class fa extends fu
{
    public static final class a
    {

        public final int CR;
        public final int CS;

        public boolean equals(Object obj)
        {
            if (!(obj instanceof a))
            {
                return false;
            }
            if (this == obj)
            {
                return true;
            }
            obj = (a)obj;
            return ((a) (obj)).CR == CR && ((a) (obj)).CS == CS;
        }

        public int hashCode()
        {
            return fo.hashCode(new Object[] {
                Integer.valueOf(CR), Integer.valueOf(CS)
            });
        }

        public a(int i, int j)
        {
            CR = i;
            CS = j;
        }
    }


    public fa()
    {
        super(10);
    }
}
