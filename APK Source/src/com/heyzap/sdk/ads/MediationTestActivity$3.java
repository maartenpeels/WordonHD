// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.ads;

import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;

// Referenced classes of package com.heyzap.sdk.ads:
//            MediationTestActivity

class val.elements
    implements android.widget.istener
{

    final MediationTestActivity this$0;
    final ArrayAdapter val$elements;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        makeSecondaryUI((String)val$elements.getItem(i));
    }

    ner()
    {
        this$0 = final_mediationtestactivity;
        val$elements = ArrayAdapter.this;
        super();
    }
}
