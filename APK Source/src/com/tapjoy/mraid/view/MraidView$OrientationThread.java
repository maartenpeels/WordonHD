// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.view;


// Referenced classes of package com.tapjoy.mraid.view:
//            MraidView

private class this._cls0
    implements Runnable
{

    final MraidView this$0;

    public void run()
    {
        while (!MraidView.access$2100(MraidView.this)) 
        {
            try
            {
                Thread.sleep(250L);
                MraidView.access$2200(MraidView.this);
            }
            catch (Exception exception) { }
        }
    }

    public ()
    {
        this$0 = MraidView.this;
        super();
    }
}
