.class public Lcom/heyzap/house/model/VideoModel$Cacher;
.super Ljava/lang/Object;
.source "VideoModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/house/model/VideoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cacher"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/heyzap/house/model/VideoModel;Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 353
    invoke-static {p0}, Lcom/heyzap/internal/Utils;->createCacheDir(Landroid/content/Context;)V

    .line 354
    invoke-virtual {p1}, Lcom/heyzap/house/model/VideoModel;->getStaticUri()Landroid/net/Uri;

    move-result-object v0

    .line 355
    invoke-virtual {p1}, Lcom/heyzap/house/model/VideoModel;->getStreamingUri()Landroid/net/Uri;

    move-result-object v1

    .line 357
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    move-object v0, v1

    .line 366
    :cond_0
    const-string v1, "video-%s.mp4"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/heyzap/house/model/VideoModel;->getCreativeId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 367
    new-instance v2, Ljava/io/File;

    invoke-static {p0, v1}, Lcom/heyzap/internal/Utils;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/heyzap/house/Manager;->getInstance()Lcom/heyzap/house/Manager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/house/Manager;->getFileCache()Lcom/heyzap/house/cache/FileCache;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/heyzap/house/cache/FileCache;->get(Ljava/lang/String;)Lcom/heyzap/house/cache/Entry;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 373
    invoke-virtual {v1}, Lcom/heyzap/house/cache/Entry;->setLastUsed()V

    .line 375
    invoke-virtual {v1}, Lcom/heyzap/house/cache/Entry;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/heyzap/house/model/VideoModel;->setCachePath(Ljava/lang/String;)V

    .line 376
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/heyzap/house/model/VideoModel;->setFileCached(Ljava/lang/Boolean;)V

    .line 377
    invoke-virtual {p1, v4}, Lcom/heyzap/house/model/VideoModel;->setIsReady(Z)V

    .line 378
    const/16 v0, 0x64

    iput v0, p1, Lcom/heyzap/house/model/VideoModel;->percentDownloaded:I

    .line 380
    invoke-static {p1, v4}, Lcom/heyzap/analytics/MetricsTracker;->putEvent(Lcom/heyzap/house/model/AdModel;Z)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/heyzap/analytics/Event;->videoCached(Z)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/analytics/Event;->commit()V

    .line 382
    const-string v0, "(VIDEO PRE-CACHED) %s"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    invoke-interface {p2, p1, v6}, Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;->onComplete(Lcom/heyzap/house/model/AdModel;Ljava/lang/Throwable;)V

    .line 502
    :cond_1
    :goto_0
    return-void

    .line 359
    :cond_2
    if-nez v0, :cond_0

    .line 360
    const-string v0, "Cacher.start null uri!"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 361
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "No video to download."

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 362
    if-eqz p2, :cond_1

    invoke-interface {p2, v6, v0}, Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;->onComplete(Lcom/heyzap/house/model/AdModel;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 390
    :cond_3
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_4

    .line 403
    :cond_4
    invoke-static {p1}, Lcom/heyzap/analytics/MetricsTracker;->getEvent(Lcom/heyzap/house/model/AdModel;)Lcom/heyzap/analytics/Event;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/heyzap/analytics/Event;->creativeHost(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/heyzap/analytics/Event;->creativePath(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/heyzap/analytics/Event;->videoDownloadStartTime(J)Lcom/heyzap/analytics/Event;

    .line 408
    new-instance v1, Lcom/heyzap/house/model/VideoModel$Cacher$1;

    invoke-direct {v1, v2, p1, v2, p2}, Lcom/heyzap/house/model/VideoModel$Cacher$1;-><init>(Ljava/io/File;Lcom/heyzap/house/model/VideoModel;Ljava/io/File;Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;)V

    .line 497
    invoke-virtual {v1, v5}, Lcom/heyzap/http/FileAsyncHttpResponseHandler;->setUseSynchronousMode(Z)V

    .line 499
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/heyzap/internal/FileFetchClient;->fetch(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/FileAsyncHttpResponseHandler;)Lcom/heyzap/http/RequestHandle;

    move-result-object v0

    .line 501
    invoke-virtual {p1, v0}, Lcom/heyzap/house/model/VideoModel;->setCacheRequestHandle(Lcom/heyzap/http/RequestHandle;)V

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    const-string v1, "Cache.start IOException"

    invoke-static {v1}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 395
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 396
    if-eqz p2, :cond_1

    .line 397
    const-string v1, "Cache.start IOException listener is null"

    invoke-static {v1}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 398
    invoke-interface {p2, v6, v0}, Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;->onComplete(Lcom/heyzap/house/model/AdModel;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
