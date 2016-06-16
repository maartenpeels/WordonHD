// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.mediation.adapter;

import android.content.Context;
import com.heyzap.internal.ContextReference;
import com.heyzap.internal.Logger;
import com.heyzap.mediation.abstr.NetworkAdapter;
import dalvik.system.DexFile;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

public class AdapterScanner
{

    private final ContextReference contextReference;

    public AdapterScanner(ContextReference contextreference)
    {
        contextReference = contextreference;
    }

    public List scan()
    {
        ArrayList arraylist = new ArrayList();
        Object obj = new DexFile(contextReference.getApp().getPackageCodePath());
        Enumeration enumeration = ((DexFile) (obj)).entries();
_L1:
        Object obj1;
        boolean flag;
        do
        {
            if (!enumeration.hasMoreElements())
            {
                break MISSING_BLOCK_LABEL_116;
            }
            obj1 = (String)enumeration.nextElement();
            flag = ((String) (obj1)).startsWith("com.heyzap.sdk.mediation.adapter");
        } while (!flag);
        obj1 = Class.forName(((String) (obj1)));
        if (com/heyzap/mediation/abstr/NetworkAdapter.isAssignableFrom(((Class) (obj1))))
        {
            arraylist.add(obj1);
        }
          goto _L1
        Throwable throwable;
        throwable;
        Logger.trace(throwable);
          goto _L1
        Exception exception;
        exception;
        try
        {
            ((DexFile) (obj)).close();
            throw exception;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            Logger.trace(((Throwable) (obj)));
        }
        return arraylist;
        ((DexFile) (obj)).close();
        return arraylist;
    }
}
