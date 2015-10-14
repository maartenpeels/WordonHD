.class final Lcom/heyzap/house/model/VideoModel$Cacher$1;
.super Lcom/heyzap/http/FileAsyncHttpResponseHandler;
.source "VideoModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/model/VideoModel$Cacher;->start(Landroid/content/Context;Lcom/heyzap/house/model/VideoModel;Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private firedFinished:Z

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$listener:Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;

.field final synthetic val$model:Lcom/heyzap/house/model/VideoModel;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/heyzap/house/model/VideoModel;Ljava/io/File;Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;)V
    .locals 1

    .prologue
    .line 408
    iput-object p2, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$model:Lcom/heyzap/house/model/VideoModel;

    iput-object p3, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$file:Ljava/io/File;

    iput-object p4, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$listener:Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;

    invoke-direct {p0, p1}, Lcom/heyzap/http/FileAsyncHttpResponseHandler;-><init>(Ljava/io/File;)V

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->firedFinished:Z

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .prologue
    .line 489
    const-string v0, "(DOWNLOAD CANCELLED) %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$model:Lcom/heyzap/house/model/VideoModel;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "cancelled"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$listener:Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$listener:Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;

    iget-object v2, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$model:Lcom/heyzap/house/model/VideoModel;

    invoke-interface {v1, v2, v0}, Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;->onComplete(Lcom/heyzap/house/model/AdModel;Ljava/lang/Throwable;)V

    .line 493
    :cond_0
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 430
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No space left on device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    const-string v0, "Dumping caches."

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 433
    :try_start_0
    invoke-static {}, Lcom/heyzap/house/Manager;->getInstance()Lcom/heyzap/house/Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/Manager;->clearAndCreateFileCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :cond_0
    :goto_0
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$model:Lcom/heyzap/house/model/VideoModel;

    invoke-static {v0}, Lcom/heyzap/analytics/MetricsTracker;->getEvent(Lcom/heyzap/house/model/AdModel;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/heyzap/analytics/Event;->videoDownloadFailed(Z)Lcom/heyzap/analytics/Event;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$model:Lcom/heyzap/house/model/VideoModel;

    iget-object v1, v1, Lcom/heyzap/house/model/VideoModel;->impressionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heyzap/analytics/Event;->impressionId(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/analytics/Event;->commit()V

    .line 447
    const-string v0, "(DOWNLOAD ERROR) Error: %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$model:Lcom/heyzap/house/model/VideoModel;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$listener:Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$listener:Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p3}, Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;->onComplete(Lcom/heyzap/house/model/AdModel;Ljava/lang/Throwable;)V

    .line 450
    :cond_2
    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 436
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onProgress(II)V
    .locals 5

    .prologue
    .line 413
    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, p2

    .line 414
    iget-object v1, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$model:Lcom/heyzap/house/model/VideoModel;

    iput p2, v1, Lcom/heyzap/house/model/VideoModel;->size:I

    .line 415
    iget-object v1, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$model:Lcom/heyzap/house/model/VideoModel;

    iput v0, v1, Lcom/heyzap/house/model/VideoModel;->percentDownloaded:I

    .line 416
    iget-object v1, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$model:Lcom/heyzap/house/model/VideoModel;

    iget-object v1, v1, Lcom/heyzap/house/model/VideoModel;->requiredDownloadPercent:Ljava/lang/Double;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$model:Lcom/heyzap/house/model/VideoModel;

    iget-object v1, v1, Lcom/heyzap/house/model/VideoModel;->requiredDownloadPercent:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    int-to-double v3, v0

    cmpg-double v0, v1, v3

    if-gez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$model:Lcom/heyzap/house/model/VideoModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/heyzap/house/model/VideoModel;->setIsReady(Z)V

    .line 418
    const/16 v0, 0xc8

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/http/Header;

    iget-object v2, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$file:Ljava/io/File;

    invoke-virtual {p0, v0, v1, v2}, Lcom/heyzap/house/model/VideoModel$Cacher$1;->onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V

    .line 420
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 424
    const-string v0, "(DOWNLOADING) %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$model:Lcom/heyzap/house/model/VideoModel;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 454
    iget-boolean v0, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->firedFinished:Z

    if-eqz v0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iput-boolean v3, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->firedFinished:Z

    .line 459
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 460
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Downloaded video does not exist on filesystem."

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/heyzap/house/model/VideoModel$Cacher$1;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V

    goto :goto_0

    .line 465
    :cond_2
    new-instance v0, Lcom/heyzap/house/cache/Entry;

    invoke-direct {v0}, Lcom/heyzap/house/cache/Entry;-><init>()V

    .line 466
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/house/cache/Entry;->setFilename(Ljava/lang/String;)V

    .line 467
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/house/cache/Entry;->setDirty(Ljava/lang/Boolean;)V

    .line 468
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/house/cache/Entry;->setIdentifier(Ljava/lang/String;)V

    .line 470
    invoke-static {}, Lcom/heyzap/house/Manager;->getInstance()Lcom/heyzap/house/Manager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/house/Manager;->getFileCache()Lcom/heyzap/house/cache/FileCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/heyzap/house/cache/FileCache;->put(Lcom/heyzap/house/cache/Entry;)V

    .line 471
    invoke-static {}, Lcom/heyzap/house/Manager;->getInstance()Lcom/heyzap/house/Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/Manager;->getFileCache()Lcom/heyzap/house/cache/FileCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/cache/FileCache;->sync()Lcom/heyzap/internal/SettableFuture;

    .line 473
    const-string v0, "(CACHED) %s"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$model:Lcom/heyzap/house/model/VideoModel;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$model:Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/house/model/VideoModel;->setCachePath(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$model:Lcom/heyzap/house/model/VideoModel;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/house/model/VideoModel;->setFileCached(Ljava/lang/Boolean;)V

    .line 477
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$model:Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v0, v3}, Lcom/heyzap/house/model/VideoModel;->setIsReady(Z)V

    .line 479
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$model:Lcom/heyzap/house/model/VideoModel;

    invoke-static {v0}, Lcom/heyzap/analytics/MetricsTracker;->getEvent(Lcom/heyzap/house/model/AdModel;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/analytics/Event;->videoDownloadEndTime(J)Lcom/heyzap/analytics/Event;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$model:Lcom/heyzap/house/model/VideoModel;

    iget-object v1, v1, Lcom/heyzap/house/model/VideoModel;->impressionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heyzap/analytics/Event;->impressionId(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/analytics/Event;->commit()V

    .line 483
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$listener:Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$listener:Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;

    iget-object v1, p0, Lcom/heyzap/house/model/VideoModel$Cacher$1;->val$model:Lcom/heyzap/house/model/VideoModel;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;->onComplete(Lcom/heyzap/house/model/AdModel;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
