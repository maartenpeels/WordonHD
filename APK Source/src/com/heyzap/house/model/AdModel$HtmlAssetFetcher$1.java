// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.model;

import android.net.Uri;
import com.heyzap.internal.GenericCallback;
import com.heyzap.internal.Logger;
import java.io.IOException;
import java.net.MalformedURLException;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.heyzap.house.model:
//            AdModel

static final class val.callback
    implements Runnable
{

    final GenericCallback val$callback;
    final List val$cssUrls;
    final List val$imgUrls;
    final AdModel val$model;

    public void run()
    {
        boolean flag1 = false;
        Iterator iterator = val$imgUrls.iterator();
        boolean flag = false;
_L14:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        String s = (String)iterator.next();
        Object obj = cess._mth300(s, val$model);
_L3:
        if (obj == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        val$model.setHtmlData(val$model.getHtmlData().replace(s, ((Uri) (obj)).toString()));
        flag = true;
        continue; /* Loop/switch isn't completed */
        obj;
        Logger.trace(((Throwable) (obj)));
        obj = null;
        flag1 = true;
          goto _L3
_L2:
        iterator = val$cssUrls.iterator();
_L12:
        if (!iterator.hasNext()) goto _L5; else goto _L4
_L4:
        obj = (String)iterator.next();
        throw new NullPointerException();
_L8:
        if (true)
        {
            break; /* Loop/switch isn't completed */
        }
        val$model.setHtmlData(val$model.getHtmlData().replace(String.format("\"%s\"", new Object[] {
            obj
        }), null.toString()));
        flag = true;
        break; /* Loop/switch isn't completed */
        Object obj1;
        obj1;
          goto _L6
        obj1;
        Logger.trace(((Throwable) (obj1)));
        if (true) goto _L8; else goto _L7
_L5:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_250;
        }
        if (!flag1) goto _L10; else goto _L9
_L9:
        AdModel.access$402(val$model, 1);
_L11:
        if (val$callback != null)
        {
            val$callback.onCallback(val$model, null);
            return;
        }
        break MISSING_BLOCK_LABEL_283;
_L10:
        AdModel.access$402(val$model, 2);
          goto _L11
_L6:
        erruptException erruptexception;
        try
        {
            Logger.trace(((Throwable) (obj1)));
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (erruptException erruptexception)
        {
            Logger.log("HtmlAssetFetcher interrupted");
        }
        Logger.trace(erruptexception);
        return;
        AdModel.access$402(val$model, 0);
          goto _L11
        MalformedURLException malformedurlexception;
        malformedurlexception;
        malformedurlexception = null;
        flag1 = true;
          goto _L3
_L7:
        flag1 = true;
          goto _L12
        return;
        if (true) goto _L14; else goto _L13
_L13:
    }

    erruptException(List list, AdModel admodel, List list1, GenericCallback genericcallback)
    {
        val$imgUrls = list;
        val$model = admodel;
        val$cssUrls = list1;
        val$callback = genericcallback;
        super();
    }
}
