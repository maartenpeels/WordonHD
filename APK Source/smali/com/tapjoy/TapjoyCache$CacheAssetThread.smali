.class public Lcom/tapjoy/TapjoyCache$CacheAssetThread;
.super Ljava/lang/Object;
.source "TapjoyCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CacheAssetThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private _offerId:Ljava/lang/String;

.field private _timeToLive:J

.field private _url:Ljava/net/URL;

.field final synthetic this$0:Lcom/tapjoy/TapjoyCache;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TapjoyCache;Ljava/net/URL;Ljava/lang/String;J)V
    .locals 4
    .param p2, "assetURL"    # Ljava/net/URL;
    .param p3, "offerId"    # Ljava/lang/String;
    .param p4, "timeToLive"    # J

    .prologue
    .line 516
    iput-object p1, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput-object p2, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    .line 518
    iput-object p3, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_offerId:Ljava/lang/String;

    .line 519
    iput-wide p4, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_timeToLive:J

    .line 521
    iget-wide v0, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_timeToLive:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 522
    const-wide/32 v0, 0x15180

    iput-wide v0, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_timeToLive:J

    .line 526
    :cond_0
    # getter for: Lcom/tapjoy/TapjoyCache;->_currentlyDownloading:Ljava/util/Vector;
    invoke-static {p1}, Lcom/tapjoy/TapjoyCache;->access$100(Lcom/tapjoy/TapjoyCache;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 527
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v18

    .line 534
    .local v18, "urlHash":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v19, v0

    # getter for: Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;
    invoke-static/range {v19 .. v19}, Lcom/tapjoy/TapjoyCache;->access$200(Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCacheMap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyCacheMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v19, v0

    # getter for: Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;
    invoke-static/range {v19 .. v19}, Lcom/tapjoy/TapjoyCache;->access$200(Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCacheMap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tapjoy/TapjoyCachedAssetData;

    .line 537
    .local v6, "cachedAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v19

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 538
    .local v7, "cachedFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 540
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_timeToLive:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_1

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v19, v0

    # getter for: Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;
    invoke-static/range {v19 .. v19}, Lcom/tapjoy/TapjoyCache;->access$200(Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCacheMap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tapjoy/TapjoyCachedAssetData;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_timeToLive:J

    move-wide/from16 v19, v0

    move-object v0, v5

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TapjoyCachedAssetData;->resetTimeToLive(J)V

    .line 547
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v19, v0

    # getter for: Lcom/tapjoy/TapjoyCache;->_currentlyDownloading:Ljava/util/Vector;
    invoke-static/range {v19 .. v19}, Lcom/tapjoy/TapjoyCache;->access$100(Lcom/tapjoy/TapjoyCache;)Ljava/util/Vector;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 548
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 642
    .end local v6    # "cachedAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    .end local v7    # "cachedFile":Ljava/io/File;
    :cond_0
    :goto_1
    return-object v19

    .line 543
    .restart local v6    # "cachedAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    .restart local v7    # "cachedFile":Ljava/io/File;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v19, v0

    # getter for: Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;
    invoke-static/range {v19 .. v19}, Lcom/tapjoy/TapjoyCache;->access$200(Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCacheMap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tapjoy/TapjoyCachedAssetData;

    const-wide/32 v19, 0x15180

    move-object v0, v5

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TapjoyCachedAssetData;->resetTimeToLive(J)V

    goto :goto_0

    .line 550
    :cond_2
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyCache;->removeAssetFromCache(Ljava/lang/String;)Z

    .line 555
    .end local v6    # "cachedAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    .end local v7    # "cachedFile":Ljava/io/File;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    div-long v16, v19, v21

    .line 557
    .local v16, "timeCachingStarted":J
    const/4 v11, 0x0

    .line 558
    .local v11, "inputStream":Ljava/io/BufferedInputStream;
    const/4 v14, 0x0

    .line 562
    .local v14, "outputStream":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v20, v0

    # getter for: Lcom/tapjoy/TapjoyCache;->_tajoyCacheDir:Ljava/io/File;
    invoke-static/range {v20 .. v20}, Lcom/tapjoy/TapjoyCache;->access$300(Lcom/tapjoy/TapjoyCache;)Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    .local v5, "assetFileLocation":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v19, v0

    # getter for: Lcom/tapjoy/TapjoyCache;->_verboseDebugging:Z
    invoke-static/range {v19 .. v19}, Lcom/tapjoy/TapjoyCache;->access$000(Lcom/tapjoy/TapjoyCache;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 569
    const-string v19, "TapjoyCache"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Downloading and caching asset from: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    .line 576
    .local v8, "connection":Ljava/net/URLConnection;
    const/16 v19, 0x3a98

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 577
    const/16 v19, 0x7530

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 578
    invoke-virtual {v8}, Ljava/net/URLConnection;->connect()V

    .line 581
    new-instance v12, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    .end local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .local v12, "inputStream":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v15, Ljava/io/BufferedOutputStream;

    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 585
    .end local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    .local v15, "outputStream":Ljava/io/BufferedOutputStream;
    :try_start_3
    invoke-static {v12, v15}, Lcom/tapjoy/TapjoyUtil;->writeFileToDevice(Ljava/io/BufferedInputStream;Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 602
    if-eqz v12, :cond_5

    .line 604
    :try_start_4
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 608
    :cond_5
    :goto_2
    if-eqz v15, :cond_6

    .line 610
    :try_start_5
    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 616
    :cond_6
    :goto_3
    new-instance v13, Lcom/tapjoy/TapjoyCachedAssetData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_timeToLive:J

    move-wide/from16 v21, v0

    move-object v0, v13

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-wide/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tapjoy/TapjoyCachedAssetData;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 619
    .local v13, "newAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_offerId:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_offerId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyCachedAssetData;->setOfferID(Ljava/lang/String;)V

    .line 624
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v19, v0

    # getter for: Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;
    invoke-static/range {v19 .. v19}, Lcom/tapjoy/TapjoyCache;->access$200(Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCacheMap;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TapjoyCacheMap;->put(Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;)Lcom/tapjoy/TapjoyCachedAssetData;

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v19, v0

    # getter for: Lcom/tapjoy/TapjoyCache;->_verboseDebugging:Z
    invoke-static/range {v19 .. v19}, Lcom/tapjoy/TapjoyCache;->access$000(Lcom/tapjoy/TapjoyCache;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 627
    const-string v19, "TapjoyCache"

    const-string v20, "------------ Asset Cached ------------"

    invoke-static/range {v19 .. v20}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v19, "TapjoyCache"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "URL: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v19, "TapjoyCache"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "File location: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v19, "TapjoyCache"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "File size: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v19, "TapjoyCache"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Downloaded from: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13}, Lcom/tapjoy/TapjoyCachedAssetData;->getAssetURL()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v19, "TapjoyCache"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cached in: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    div-long v21, v21, v23

    sub-long v21, v21, v16

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " seconds"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v19, "TapjoyCache"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Timestamp: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13}, Lcom/tapjoy/TapjoyCachedAssetData;->getTimestampInSeconds()J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v19, "TapjoyCache"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Time of death: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13}, Lcom/tapjoy/TapjoyCachedAssetData;->getTimeOfDeathInSeconds()J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v19, "TapjoyCache"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Time to live: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13}, Lcom/tapjoy/TapjoyCachedAssetData;->getTimeToLiveInSeconds()J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " seconds"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v19, "TapjoyCache"

    const-string v20, "--------------------------------------"

    invoke-static/range {v19 .. v20}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v19, v0

    # getter for: Lcom/tapjoy/TapjoyCache;->_currentlyDownloading:Ljava/util/Vector;
    invoke-static/range {v19 .. v19}, Lcom/tapjoy/TapjoyCache;->access$100(Lcom/tapjoy/TapjoyCache;)Ljava/util/Vector;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 642
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    goto/16 :goto_1

    .line 563
    .end local v5    # "assetFileLocation":Ljava/io/File;
    .end local v8    # "connection":Ljava/net/URLConnection;
    .end local v12    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v13    # "newAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    .end local v15    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v19

    move-object/from16 v10, v19

    .line 564
    .local v10, "e1":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v19, v0

    # getter for: Lcom/tapjoy/TapjoyCache;->_currentlyDownloading:Ljava/util/Vector;
    invoke-static/range {v19 .. v19}, Lcom/tapjoy/TapjoyCache;->access$100(Lcom/tapjoy/TapjoyCache;)Ljava/util/Vector;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 565
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    goto/16 :goto_1

    .line 587
    .end local v10    # "e1":Ljava/lang/Exception;
    .restart local v5    # "assetFileLocation":Ljava/io/File;
    :catch_1
    move-exception v19

    move-object/from16 v9, v19

    .line 589
    .local v9, "e":Ljava/net/SocketTimeoutException;
    :goto_4
    :try_start_6
    const-string v19, "TapjoyCache"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Network timeout during caching: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v19, v0

    # getter for: Lcom/tapjoy/TapjoyCache;->_currentlyDownloading:Ljava/util/Vector;
    invoke-static/range {v19 .. v19}, Lcom/tapjoy/TapjoyCache;->access$100(Lcom/tapjoy/TapjoyCache;)Ljava/util/Vector;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 591
    invoke-static {v5}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 592
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v19

    .line 602
    if-eqz v11, :cond_9

    .line 604
    :try_start_7
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 608
    :cond_9
    :goto_5
    if-eqz v14, :cond_0

    .line 610
    :try_start_8
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    .line 611
    :catch_2
    move-exception v20

    goto/16 :goto_1

    .line 594
    .end local v9    # "e":Ljava/net/SocketTimeoutException;
    :catch_3
    move-exception v19

    move-object/from16 v9, v19

    .line 596
    .local v9, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_9
    const-string v19, "TapjoyCache"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error caching asset: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v19, v0

    # getter for: Lcom/tapjoy/TapjoyCache;->_currentlyDownloading:Ljava/util/Vector;
    invoke-static/range {v19 .. v19}, Lcom/tapjoy/TapjoyCache;->access$100(Lcom/tapjoy/TapjoyCache;)Ljava/util/Vector;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 598
    invoke-static {v5}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 599
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v19

    .line 602
    if-eqz v11, :cond_a

    .line 604
    :try_start_a
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 608
    :cond_a
    :goto_7
    if-eqz v14, :cond_0

    .line 610
    :try_start_b
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_1

    .line 611
    :catch_4
    move-exception v20

    goto/16 :goto_1

    .line 602
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v19

    :goto_8
    if-eqz v11, :cond_b

    .line 604
    :try_start_c
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 608
    :cond_b
    :goto_9
    if-eqz v14, :cond_c

    .line 610
    :try_start_d
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 611
    :cond_c
    :goto_a
    throw v19

    .line 605
    .end local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v8    # "connection":Ljava/net/URLConnection;
    .restart local v12    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "outputStream":Ljava/io/BufferedOutputStream;
    :catch_5
    move-exception v19

    goto/16 :goto_2

    .line 611
    :catch_6
    move-exception v19

    goto/16 :goto_3

    .line 605
    .end local v8    # "connection":Ljava/net/URLConnection;
    .end local v12    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v15    # "outputStream":Ljava/io/BufferedOutputStream;
    .local v9, "e":Ljava/net/SocketTimeoutException;
    .restart local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    :catch_7
    move-exception v20

    goto :goto_5

    .local v9, "e":Ljava/lang/Exception;
    :catch_8
    move-exception v20

    goto :goto_7

    .end local v9    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v20

    goto :goto_9

    .line 611
    :catch_a
    move-exception v20

    goto :goto_a

    .line 602
    .end local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "connection":Ljava/net/URLConnection;
    .restart local v12    # "inputStream":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v19

    move-object v11, v12

    .end local v12    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "inputStream":Ljava/io/BufferedInputStream;
    goto :goto_8

    .end local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v12    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "outputStream":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v19

    move-object v14, v15

    .end local v15    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .end local v12    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "inputStream":Ljava/io/BufferedInputStream;
    goto :goto_8

    .line 594
    .end local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v12    # "inputStream":Ljava/io/BufferedInputStream;
    :catch_b
    move-exception v19

    move-object/from16 v9, v19

    move-object v11, v12

    .end local v12    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "inputStream":Ljava/io/BufferedInputStream;
    goto :goto_6

    .end local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v12    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "outputStream":Ljava/io/BufferedOutputStream;
    :catch_c
    move-exception v19

    move-object/from16 v9, v19

    move-object v14, v15

    .end local v15    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .end local v12    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "inputStream":Ljava/io/BufferedInputStream;
    goto :goto_6

    .line 587
    .end local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v12    # "inputStream":Ljava/io/BufferedInputStream;
    :catch_d
    move-exception v19

    move-object/from16 v9, v19

    move-object v11, v12

    .end local v12    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "inputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_4

    .end local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v12    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "outputStream":Ljava/io/BufferedOutputStream;
    :catch_e
    move-exception v19

    move-object/from16 v9, v19

    move-object v14, v15

    .end local v15    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .end local v12    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "inputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_4
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
