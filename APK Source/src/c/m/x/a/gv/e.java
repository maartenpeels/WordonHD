// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;

import android.view.View;

// Referenced classes of package c.m.x.a.gv:
//            h, d

final class e
    implements h
{

    final d a;

    e(d d1)
    {
        a = d1;
        super();
    }

    public final View a(int i)
    {
        if (a.mView == null)
        {
            throw new IllegalStateException("Fragment does not have a view");
        } else
        {
            return a.mView.findViewById(i);
        }
    }
}
