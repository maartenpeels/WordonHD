// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.model;

import android.net.Uri;
import com.heyzap.house.Manager;
import com.heyzap.house.cache.Entry;
import com.heyzap.house.cache.FileCache;
import com.heyzap.internal.ExecutorPool;
import com.heyzap.internal.GenericCallback;
import com.heyzap.internal.Logger;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.heyzap.house.model:
//            AdModel

public static class _cls1.val.callback
{

    public static void fetch(AdModel admodel, GenericCallback genericcallback)
    {
        Object obj = admodel.getHtmlData();
        if (obj == null)
        {
            return;
        }
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = new ArrayList();
        String s;
        for (Matcher matcher = Pattern.compile("url\\((\"[^\"]+\")\\)").matcher(((CharSequence) (obj))); matcher.find(); arraylist.add(s.substring(1, s.length() - 1)))
        {
            s = matcher.group(1);
        }

        for (obj = Pattern.compile("img.*src=\"([^\"]+)\"").matcher(((CharSequence) (obj))); ((Matcher) (obj)).find(); arraylist.add(((Matcher) (obj)).group(1))) { }
        admodel = new Runnable(arraylist, admodel, arraylist1, genericcallback) {

            final GenericCallback val$callback;
            final List val$cssUrls;
            final List val$imgUrls;
            final AdModel val$model;

            public void run()
            {
                boolean flag1 = false;
                Iterator iterator = imgUrls.iterator();
                boolean flag = false;
_L14:
                if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
                String s1 = (String)iterator.next();
                Object obj1 = AdModel.HtmlAssetFetcher.saveUrlAsFile(s1, model);
_L3:
                if (obj1 == null)
                {
                    continue; /* Loop/switch isn't completed */
                }
                model.setHtmlData(model.getHtmlData().replace(s1, ((Uri) (obj1)).toString()));
                flag = true;
                continue; /* Loop/switch isn't completed */
                obj1;
                Logger.trace(((Throwable) (obj1)));
                obj1 = null;
                flag1 = true;
                  goto _L3
_L2:
                iterator = cssUrls.iterator();
_L12:
                if (!iterator.hasNext()) goto _L5; else goto _L4
_L4:
                obj1 = (String)iterator.next();
                throw new NullPointerException();
_L8:
                if (true)
                {
                    break; /* Loop/switch isn't completed */
                }
                model.setHtmlData(model.getHtmlData().replace(String.format("\"%s\"", new Object[] {
                    obj1
                }), null.toString()));
                flag = true;
                break; /* Loop/switch isn't completed */
                Object obj2;
                obj2;
                  goto _L6
                obj2;
                Logger.trace(((Throwable) (obj2)));
                if (true) goto _L8; else goto _L7
_L5:
                if (!flag)
                {
                    break MISSING_BLOCK_LABEL_250;
                }
                if (!flag1) goto _L10; else goto _L9
_L9:
                AdModel.access$402(model, 1);
_L11:
                if (callback != null)
                {
                    callback.onCallback(model, null);
                    return;
                }
                break MISSING_BLOCK_LABEL_283;
_L10:
                AdModel.access$402(model, 2);
                  goto _L11
_L6:
                AdModel.HtmlAssetFetcherInterruptException htmlassetfetcherinterruptexception;
                try
                {
                    Logger.trace(((Throwable) (obj2)));
                    continue; /* Loop/switch isn't completed */
                }
                // Misplaced declaration of an exception variable
                catch (AdModel.HtmlAssetFetcherInterruptException htmlassetfetcherinterruptexception)
                {
                    Logger.log("HtmlAssetFetcher interrupted");
                }
                Logger.trace(htmlassetfetcherinterruptexception);
                return;
                AdModel.access$402(model, 0);
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

            
            {
                imgUrls = list;
                model = admodel;
                cssUrls = list1;
                callback = genericcallback;
                super();
            }
        };
        ExecutorPool.getInstance().execute(admodel);
    }

    private static Uri saveUrlAsFile(String s, AdModel admodel)
        throws IOException, MalformedURLException, nterruptException
    {
        File file;
        Object obj;
        if (admodel.hasBeenShown())
        {
            throw new nterruptException();
        }
        s = new URL(s);
        byte abyte0[];
        InputStream inputstream;
        int i;
        try
        {
            admodel = String.format("%032x", new Object[] {
                new BigInteger(1, MessageDigest.getInstance("MD5").digest(s.getPath().getBytes()))
            });
            file = new File(Manager.getInstance().getFileCache().getDirectory(), admodel);
            obj = Manager.getInstance().getFileCache().get(admodel);
        }
        // Misplaced declaration of an exception variable
        catch (AdModel admodel)
        {
            return Uri.parse(s.toString());
        }
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_98;
        }
        return ((Entry) (obj)).getUri();
        obj = new FileOutputStream(file);
        abyte0 = new byte[0x10000];
        inputstream = s.openStream();
_L1:
        i = inputstream.read(abyte0);
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_154;
        }
        ((OutputStream) (obj)).write(abyte0, 0, i);
          goto _L1
        ((OutputStream) (obj)).close();
        obj = new Entry();
        ((Entry) (obj)).setFilename(file.getAbsolutePath());
        ((Entry) (obj)).setIdentifier(admodel);
        ((Entry) (obj)).setDirty(Boolean.valueOf(false));
        Manager.getInstance().getFileCache().put(((Entry) (obj)));
        admodel = ((Entry) (obj)).getUri();
        return admodel;
    }


    public _cls1.val.callback()
    {
    }
}
