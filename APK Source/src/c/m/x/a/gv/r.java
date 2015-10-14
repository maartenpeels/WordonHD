// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;

import android.os.Bundle;

// Referenced classes of package c.m.x.a.gv:
//            v

public abstract class r
{
    public static interface a
    {

        public abstract v onCreateLoader(int i, Bundle bundle);

        public abstract void onLoadFinished(v v, Object obj);

        public abstract void onLoaderReset(v v);
    }


    public r()
    {
    }

    public abstract v a(a a1);

    public boolean a()
    {
        return false;
    }
}
