// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.os.Bundle;
import c.m.x.a.gv.v;
import com.facebook.FacebookException;

// Referenced classes of package com.facebook.widget:
//            GraphObjectPagingLoader, SimpleGraphObjectCursor

class this._cls1
    implements c.m.x.a.gv.rategy._cls1
{

    final LoadReset this$1;

    public v onCreateLoader(int i, Bundle bundle)
    {
        return CreateLoader();
    }

    public void onLoadFinished(v v, SimpleGraphObjectCursor simplegraphobjectcursor)
    {
        if (v != ader)
        {
            throw new FacebookException("Received callback for unknown loader.");
        } else
        {
            LoadFinished((GraphObjectPagingLoader)v, simplegraphobjectcursor);
            return;
        }
    }

    public volatile void onLoadFinished(v v, Object obj)
    {
        onLoadFinished(v, (SimpleGraphObjectCursor)obj);
    }

    public void onLoaderReset(v v)
    {
        if (v != ader)
        {
            throw new FacebookException("Received callback for unknown loader.");
        } else
        {
            LoadReset((GraphObjectPagingLoader)v);
            return;
        }
    }

    ()
    {
        this$1 = this._cls1.this;
        super();
    }
}
