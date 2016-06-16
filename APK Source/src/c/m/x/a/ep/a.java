// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.ep;


// Referenced classes of package c.m.x.a.ep:
//            k, j, i, h, 
//            g

public final class a
{

    private static final g a;

    static g a()
    {
        return a;
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            a = new k();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            a = new j();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            a = new i();
        } else
        {
            a = new h();
        }
    }
}
