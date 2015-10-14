.class public Lcom/heyzap/house/Manager;
.super Ljava/lang/Object;
.source "Manager.java"


# static fields
.field public static final ACTION_URL_PLACEHOLDER:Ljava/lang/String; = "market://details?id=%s&referrer=%s"

.field public static final ACTION_URL_REFERRER:Ljava/lang/String; = "utm_source%3Dheyzap%26utm_medium%3Dmobile%26utm_campaign%3Dheyzap_ad_network"

.field public static AD_SERVER:Ljava/lang/String; = null

.field public static final FIRST_RUN_KEY:Ljava/lang/String; = "HeyzapAdsFirstRun"

.field public static final MAX_CACHE_SIZE:J = 0x1c9c380L

.field public static final PREFERENCES_KEY:Ljava/lang/String; = "com.heyzap.sdk.ads"

.field public static SLOW_CLOSE:Ljava/lang/Boolean;

.field public static applicationContext:Landroid/content/Context;

.field private static displayCache:Lcom/heyzap/house/request/DisplayCache;

.field private static fileCache:Lcom/heyzap/house/cache/FileCache;

.field public static final handler:Landroid/os/Handler;

.field private static initializationFutureRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/heyzap/internal/SettableFuture;",
            ">;"
        }
    .end annotation
.end field

.field public static lastActivity:Lcom/heyzap/house/abstr/AbstractActivity;

.field public static maxClickDifference:J

.field private static volatile ref:Lcom/heyzap/house/Manager;

.field public static started:Ljava/lang/Boolean;


# instance fields
.field private contextRef:Lcom/heyzap/internal/ContextReference;

.field private flags:I

.field public lastClickedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/heyzap/house/Manager;->maxClickDifference:J

    .line 45
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/heyzap/house/Manager;->SLOW_CLOSE:Ljava/lang/Boolean;

    .line 47
    const-string v0, "http://ads.heyzap.com/in_game_api/ads"

    sput-object v0, Lcom/heyzap/house/Manager;->AD_SERVER:Ljava/lang/String;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/heyzap/house/Manager;->handler:Landroid/os/Handler;

    .line 55
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/heyzap/house/Manager;->started:Ljava/lang/Boolean;

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/heyzap/house/Manager;->lastActivity:Lcom/heyzap/house/abstr/AbstractActivity;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/heyzap/house/Manager;->initializationFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Lcom/heyzap/internal/ContextReference;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/heyzap/house/Manager;->lastClickedTime:J

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/heyzap/house/Manager;->flags:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/house/Manager;->contextRef:Lcom/heyzap/internal/ContextReference;

    .line 70
    invoke-virtual {p0, p2}, Lcom/heyzap/house/Manager;->setPublisherId(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/heyzap/house/Manager;->setContextRef(Lcom/heyzap/internal/ContextReference;)V

    .line 72
    invoke-virtual {p0}, Lcom/heyzap/house/Manager;->clearAndCreateImageFileCache()V

    .line 73
    new-instance v0, Lcom/heyzap/house/request/DisplayCache;

    invoke-direct {v0}, Lcom/heyzap/house/request/DisplayCache;-><init>()V

    sput-object v0, Lcom/heyzap/house/Manager;->displayCache:Lcom/heyzap/house/request/DisplayCache;

    .line 74
    new-instance v0, Lcom/heyzap/house/cache/FileCache;

    invoke-static {}, Lcom/heyzap/internal/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/heyzap/internal/Utils;->getCacheDirAbsolutePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/32 v3, 0x1c9c380

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/heyzap/house/cache/FileCache;-><init>(Ljava/util/concurrent/Executor;Ljava/io/File;Ljava/lang/Long;)V

    sput-object v0, Lcom/heyzap/house/Manager;->fileCache:Lcom/heyzap/house/cache/FileCache;

    .line 76
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/heyzap/house/Manager;
    .locals 3

    .prologue
    .line 236
    const-class v0, Lcom/heyzap/house/Manager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/heyzap/house/Manager;->ref:Lcom/heyzap/house/Manager;

    if-nez v1, :cond_0

    .line 237
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Heyzap has not been started yet! Start Heyzap by calling HeyzapAds.start(<your-publisher-id>) in your launch Activity."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 240
    :cond_0
    :try_start_1
    sget-object v1, Lcom/heyzap/house/Manager;->ref:Lcom/heyzap/house/Manager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1
.end method

.method public static isStarted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/heyzap/house/Manager;->started:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method

.method public static setAdsHost(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 248
    invoke-static {p0}, Lcom/heyzap/house/request/FetchRequest;->setDefaultHost(Ljava/lang/String;)V

    .line 249
    sput-object p0, Lcom/heyzap/internal/APIClient;->DOMAIN:Ljava/lang/String;

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/in_game_api/ads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/heyzap/house/Manager;->AD_SERVER:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public static start(Lcom/heyzap/internal/ContextReference;Ljava/lang/String;)Lcom/heyzap/internal/SettableFuture;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "ran_once"

    .line 89
    sget-object v0, Lcom/heyzap/house/Manager;->initializationFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    .line 97
    new-instance v0, Lcom/heyzap/house/Manager;

    invoke-direct {v0, p0, p1}, Lcom/heyzap/house/Manager;-><init>(Lcom/heyzap/internal/ContextReference;Ljava/lang/String;)V

    sput-object v0, Lcom/heyzap/house/Manager;->ref:Lcom/heyzap/house/Manager;

    .line 99
    invoke-virtual {p0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.heyzap.sdk.ads"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 102
    const-string v2, "ran_once"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v4

    .line 106
    :goto_0
    if-eqz v0, :cond_1

    .line 107
    const-string v0, "Running first run tasks"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/heyzap/house/handler/AttributionHandler;->getInstance()Lcom/heyzap/house/handler/AttributionHandler;

    move-result-object v0

    sget-object v2, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/heyzap/house/handler/AttributionHandler;->doSelfInstall(Landroid/content/Context;)V

    .line 109
    const-string v0, "ran_once"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/PackageManager;->checkInstalledPackages(Landroid/content/Context;)V

    .line 115
    invoke-static {}, Lcom/heyzap/analytics/MetricsTracker;->sendMetrics()V

    .line 118
    sget-object v0, Lcom/heyzap/house/Manager;->ref:Lcom/heyzap/house/Manager;

    invoke-virtual {v0}, Lcom/heyzap/house/Manager;->getFileCache()Lcom/heyzap/house/cache/FileCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/cache/FileCache;->open()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    .line 120
    sget-object v1, Lcom/heyzap/house/Manager;->initializationFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/internal/SettableFuture;

    invoke-static {}, Lcom/heyzap/internal/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/heyzap/internal/FutureUtils;->bind(Lcom/heyzap/internal/SettableFuture;Lcom/heyzap/internal/SettableFuture;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 122
    sget-object v0, Lcom/heyzap/house/Manager;->initializationFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/internal/SettableFuture;

    new-instance v0, Lcom/heyzap/house/Manager$1;

    invoke-direct {v0}, Lcom/heyzap/house/Manager$1;-><init>()V

    invoke-static {}, Lcom/heyzap/internal/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 132
    :cond_2
    sget-object v0, Lcom/heyzap/house/Manager;->initializationFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/internal/SettableFuture;

    return-object p0

    :cond_3
    move v0, v3

    .line 102
    goto :goto_0
.end method


# virtual methods
.method public clearAndCreateFileCache()V
    .locals 2

    .prologue
    .line 180
    sget-object v0, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->getCacheDirAbsolutePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 182
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/heyzap/internal/Utils;->deleteDirectory(Ljava/io/File;)V

    .line 187
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public clearAndCreateImageFileCache()V
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->getImageCacheDirAbsolutePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 197
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/heyzap/internal/Utils;->deleteDirectory(Ljava/io/File;)V

    .line 202
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayCache()Lcom/heyzap/house/request/DisplayCache;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/heyzap/house/Manager;->displayCache:Lcom/heyzap/house/request/DisplayCache;

    return-object v0
.end method

.method public getFileCache()Lcom/heyzap/house/cache/FileCache;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/heyzap/house/Manager;->fileCache:Lcom/heyzap/house/cache/FileCache;

    return-object v0
.end method

.method public getLocalPackages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    sget-object v0, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    .line 148
    :cond_0
    sget-object v0, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    .line 154
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "android."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.google.android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.htc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.samsung"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.sec"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.monotype"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.verizon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.qualcomm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.vzw"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 170
    goto/16 :goto_0
.end method

.method public getPublisherId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds;->config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->publisherId:Ljava/lang/String;

    return-object v0
.end method

.method public installHeyzap(Lcom/heyzap/house/model/AdModel;)V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public isFlagEnabled(I)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/heyzap/house/Manager;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContextRef(Lcom/heyzap/internal/ContextReference;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/heyzap/house/Manager;->contextRef:Lcom/heyzap/internal/ContextReference;

    .line 220
    return-void
.end method

.method public setFlags(I)V
    .locals 0

    .prologue
    .line 226
    iput p1, p0, Lcom/heyzap/house/Manager;->flags:I

    .line 227
    return-void
.end method

.method public setPublisherId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds;->config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iput-object p1, v0, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->publisherId:Ljava/lang/String;

    .line 212
    return-void
.end method
