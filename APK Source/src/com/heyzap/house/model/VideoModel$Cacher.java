// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.model;

import android.content.Context;
import android.net.Uri;
import com.heyzap.analytics.Event;
import com.heyzap.analytics.MetricsTracker;
import com.heyzap.house.Manager;
import com.heyzap.house.cache.Entry;
import com.heyzap.house.cache.FileCache;
import com.heyzap.http.FileAsyncHttpResponseHandler;
import com.heyzap.internal.FileFetchClient;
import com.heyzap.internal.Logger;
import com.heyzap.internal.Utils;
import java.io.File;
import java.io.IOException;
import org.apache.http.Header;

// Referenced classes of package com.heyzap.house.model:
//            VideoModel

public static class _cls1.firedFinished
{

    public static void start(Context context, VideoModel videomodel, etchCompleteListener etchcompletelistener)
    {
        Object obj;
        Object obj1;
        Utils.createCacheDir(context);
        obj1 = videomodel.getStaticUri();
        obj = videomodel.getStreamingUri();
        if (obj1 != null || obj == null) goto _L2; else goto _L1
_L1:
        Entry entry;
        obj1 = new File(Utils.getCachePath(context, String.format("video-%s.mp4", new Object[] {
            Integer.valueOf(videomodel.getCreativeId())
        })));
        entry = Manager.getInstance().getFileCache().get(((File) (obj1)).getPath());
        if (entry == null) goto _L4; else goto _L3
_L3:
        entry.setLastUsed();
        videomodel.setCachePath(entry.getFilename());
        videomodel.setFileCached(Boolean.valueOf(true));
        videomodel.setIsReady(true);
        videomodel.percentDownloaded = 100;
        MetricsTracker.putEvent(videomodel, true).videoCached(true).commit();
        Logger.format("(VIDEO PRE-CACHED) %s", new Object[] {
            videomodel
        });
        etchcompletelistener.onComplete(videomodel, null);
_L7:
        return;
_L2:
        obj = obj1;
        if (obj1 != null) goto _L1; else goto _L5
_L5:
        Logger.log("Cacher.start null uri!");
        context = new Throwable("No video to download.");
        if (etchcompletelistener == null) goto _L7; else goto _L6
_L6:
        etchcompletelistener.onComplete(null, context);
        return;
_L4:
        boolean flag = ((File) (obj1)).createNewFile();
        if (flag);
        MetricsTracker.getEvent(videomodel).creativeHost(((Uri) (obj)).getAuthority()).creativePath(((Uri) (obj)).getPath()).videoDownloadStartTime(System.currentTimeMillis());
        etchcompletelistener = new FileAsyncHttpResponseHandler(((File) (obj1)), videomodel, ((File) (obj1)), etchcompletelistener) {

            private boolean firedFinished;
            final File val$file;
            final AdModel.ModelPostFetchCompleteListener val$listener;
            final VideoModel val$model;

            public void onCancel()
            {
                Logger.format("(DOWNLOAD CANCELLED) %s", new Object[] {
                    model
                });
                Throwable throwable = new Throwable("cancelled");
                if (listener != null)
                {
                    listener.onComplete(model, throwable);
                }
            }

            public void onFailure(int i, Header aheader[], Throwable throwable, File file1)
            {
                if (throwable.getMessage().equals("No space left on device"))
                {
                    Logger.log("Dumping caches.");
                    try
                    {
                        Manager.getInstance().clearAndCreateFileCache();
                    }
                    // Misplaced declaration of an exception variable
                    catch (Header aheader[])
                    {
                        Logger.trace(aheader);
                    }
                }
                if (file1.exists())
                {
                    file1.delete();
                }
                MetricsTracker.getEvent(model).videoDownloadFailed(true).impressionId(model.impressionId).commit();
                Logger.format("(DOWNLOAD ERROR) Error: %s %s", new Object[] {
                    throwable.toString(), model
                });
                if (listener != null)
                {
                    listener.onComplete(null, throwable);
                }
            }

            public void onProgress(int i, int j)
            {
                i = (i * 100) / j;
                model.size = j;
                model.percentDownloaded = i;
                if (model.requiredDownloadPercent != null && model.requiredDownloadPercent.doubleValue() < (double)i)
                {
                    model.setIsReady(true);
                    File file1 = file;
                    onSuccess(200, new Header[0], file1);
                }
            }

            public void onStart()
            {
                Logger.format("(DOWNLOADING) %s", new Object[] {
                    model
                });
            }

            public void onSuccess(int i, Header aheader[], File file1)
            {
                if (!firedFinished)
                {
                    firedFinished = true;
                    if (!file1.exists())
                    {
                        onFailure(i, aheader, new Throwable("Downloaded video does not exist on filesystem."), file1);
                        return;
                    }
                    aheader = new Entry();
                    aheader.setFilename(file1.getAbsolutePath());
                    aheader.setDirty(Boolean.valueOf(false));
                    aheader.setIdentifier(file1.getAbsolutePath());
                    Manager.getInstance().getFileCache().put(aheader);
                    Manager.getInstance().getFileCache().sync();
                    Logger.format("(CACHED) %s", new Object[] {
                        model
                    });
                    model.setCachePath(file1.getAbsolutePath());
                    model.setFileCached(Boolean.valueOf(true));
                    model.setIsReady(true);
                    MetricsTracker.getEvent(model).videoDownloadEndTime(System.currentTimeMillis()).impressionId(model.impressionId).commit();
                    if (listener != null)
                    {
                        listener.onComplete(model, null);
                        return;
                    }
                }
            }

            
            {
                model = videomodel;
                file = file2;
                listener = modelpostfetchcompletelistener;
                super(file1);
                firedFinished = false;
            }
        };
        etchcompletelistener.setUseSynchronousMode(false);
        videomodel.setCacheRequestHandle(FileFetchClient.fetch(context, ((Uri) (obj)).toString(), etchcompletelistener));
        return;
        context;
        Logger.log("Cache.start IOException");
        Logger.trace(context);
        if (etchcompletelistener != null)
        {
            Logger.log("Cache.start IOException listener is null");
            etchcompletelistener.onComplete(null, context);
            return;
        }
          goto _L7
    }

    public _cls1.firedFinished()
    {
    }
}
