// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.DialogInterface;
import android.content.Intent;

// Referenced classes of package com.adobe.air:
//            AIRUpdateDialog, AndroidActivityWrapper

class this._cls0
    implements android.content.ClickListener
{

    final AIRUpdateDialog this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface = getIntent().getStringExtra("airDownloadURL");
        AIRUpdateDialog.access$000(AIRUpdateDialog.this).LaunchMarketPlaceForAIR(dialoginterface);
        finish();
    }

    pper()
    {
        this$0 = AIRUpdateDialog.this;
        super();
    }
}
