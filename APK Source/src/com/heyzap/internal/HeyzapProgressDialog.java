// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.internal;

import android.app.ProgressDialog;
import android.content.Context;

// Referenced classes of package com.heyzap.internal:
//            Logger

public class HeyzapProgressDialog extends ProgressDialog
{

    public HeyzapProgressDialog(Context context)
    {
        super(context);
    }

    public HeyzapProgressDialog(Context context, int i)
    {
        super(context, i);
    }

    public static ProgressDialog show(Context context, CharSequence charsequence, CharSequence charsequence1)
    {
        return show(context, charsequence, charsequence1, false);
    }

    public static HeyzapProgressDialog show(Context context, CharSequence charsequence, CharSequence charsequence1, boolean flag)
    {
        return show(context, charsequence, charsequence1, flag, false, null);
    }

    public static HeyzapProgressDialog show(Context context, CharSequence charsequence, CharSequence charsequence1, boolean flag, boolean flag1)
    {
        return show(context, charsequence, charsequence1, flag, flag1, null);
    }

    public static HeyzapProgressDialog show(Context context, CharSequence charsequence, CharSequence charsequence1, boolean flag, boolean flag1, android.content.DialogInterface.OnCancelListener oncancellistener)
    {
        context = new HeyzapProgressDialog(context);
        context.setTitle(charsequence);
        context.setMessage(charsequence1);
        context.setIndeterminate(flag);
        context.setCancelable(flag1);
        context.setOnCancelListener(oncancellistener);
        context.show();
        return context;
    }

    public void dismiss()
    {
        try
        {
            super.dismiss();
            return;
        }
        catch (RuntimeException runtimeexception)
        {
            Logger.trace(runtimeexception);
        }
    }

    public void hide()
    {
        try
        {
            super.hide();
            return;
        }
        catch (RuntimeException runtimeexception)
        {
            Logger.trace(runtimeexception);
        }
    }

    public void show()
    {
        try
        {
            super.show();
            return;
        }
        catch (RuntimeException runtimeexception)
        {
            Logger.trace(runtimeexception);
        }
    }
}
