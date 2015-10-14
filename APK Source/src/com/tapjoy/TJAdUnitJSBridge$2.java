// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.content.DialogInterface;

// Referenced classes of package com.tapjoy:
//            TJAdUnitJSBridge

class val.callbackID
    implements android.content.lickListener
{

    final TJAdUnitJSBridge this$0;
    final String val$callbackID;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        boolean flag = false;
        i;
        JVM INSTR tableswitch -3 -1: default 28
    //                   -3 58
    //                   -2 53
    //                   -1 63;
           goto _L1 _L2 _L3 _L4
_L4:
        break MISSING_BLOCK_LABEL_63;
_L1:
        i = ((flag) ? 1 : 0);
_L5:
        try
        {
            invokeJSCallback(val$callbackID, new Object[] {
                Integer.valueOf(i)
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (DialogInterface dialoginterface)
        {
            dialoginterface.printStackTrace();
        }
        break MISSING_BLOCK_LABEL_73;
_L3:
        i = 0;
          goto _L5
_L2:
        i = 1;
          goto _L5
        i = 2;
          goto _L5
    }

    e()
    {
        this$0 = final_tjadunitjsbridge;
        val$callbackID = String.this;
        super();
    }
}
