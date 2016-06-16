// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.DialogInterface;
import android.util.SparseBooleanArray;
import android.widget.ExpandableListAdapter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.adobe.air:
//            AIRExpandableFileChooser, FileChooserStub

class this._cls0
    implements android.content.ener
{

    final AIRExpandableFileChooser this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        AIRExpandableFileChooser.access$800(AIRExpandableFileChooser.this).clear();
        int k = AIRExpandableFileChooser.access$500(AIRExpandableFileChooser.this).size();
        for (i = 0; i < k; i++)
        {
            int l = ((List)AIRExpandableFileChooser.access$400(AIRExpandableFileChooser.this).get(i)).size();
            for (int j = 0; j < l; j++)
            {
                int i1 = AIRExpandableFileChooser.access$100(AIRExpandableFileChooser.this, i, j);
                if (AIRExpandableFileChooser.access$300(AIRExpandableFileChooser.this).get(i1))
                {
                    dialoginterface = (HashMap)AIRExpandableFileChooser.access$1100(AIRExpandableFileChooser.this).getChild(i, j);
                    AIRExpandableFileChooser.access$800(AIRExpandableFileChooser.this).add(((leInfo)dialoginterface.get("FILEINFO")).mFilePath);
                }
            }

        }

        AIRExpandableFileChooser.access$600(AIRExpandableFileChooser.this).SetUserAction("done");
    }

    leInfo()
    {
        this$0 = AIRExpandableFileChooser.this;
        super();
    }
}
