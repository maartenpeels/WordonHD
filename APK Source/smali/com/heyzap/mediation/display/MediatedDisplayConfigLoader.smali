.class public Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;
.super Ljava/lang/Object;
.source "MediatedDisplayConfigLoader.java"

# interfaces
.implements Lcom/heyzap/mediation/display/DisplayConfigLoader;


# instance fields
.field private final contextRef:Lcom/heyzap/internal/ContextReference;

.field private currentConfigFuture:Lcom/heyzap/internal/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Lcom/heyzap/mediation/display/DisplayConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/heyzap/internal/ContextReference;)V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/heyzap/internal/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;-><init>(Lcom/heyzap/internal/ContextReference;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/heyzap/internal/ContextReference;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->contextRef:Lcom/heyzap/internal/ContextReference;

    .line 29
    iput-object p2, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->contextRef:Lcom/heyzap/internal/ContextReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;)Lcom/heyzap/http/RequestParams;
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->getParams()Lcom/heyzap/http/RequestParams;

    move-result-object v0

    return-object v0
.end method

.method private fetchNext()V
    .locals 8

    .prologue
    .line 44
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->currentConfigFuture:Lcom/heyzap/internal/SettableFuture;

    .line 47
    new-instance v6, Lcom/heyzap/internal/RetryManager;

    new-instance v7, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;

    invoke-direct {v7, p0, v0}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;-><init>(Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;Lcom/heyzap/internal/SettableFuture;)V

    new-instance v0, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;

    const-wide/high16 v1, 0x3ff8000000000000L    # 1.5

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v0 .. v5}, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;-><init>(DJLjava/util/concurrent/TimeUnit;)V

    iget-object v1, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v6, v7, v0, v1}, Lcom/heyzap/internal/RetryManager;-><init>(Ljava/lang/Runnable;Lcom/heyzap/internal/RetryManager$Schedule;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-virtual {v6}, Lcom/heyzap/internal/RetryManager;->start()V

    .line 77
    return-void
.end method

.method private getParams()Lcom/heyzap/http/RequestParams;
    .locals 5

    .prologue
    .line 80
    new-instance v0, Lcom/heyzap/http/RequestParams;

    invoke-direct {v0}, Lcom/heyzap/http/RequestParams;-><init>()V

    .line 82
    const-string v1, "connection_type"

    iget-object v2, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v2}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/heyzap/internal/Connectivity;->connectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v1}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 85
    const-string v2, "device_dpi"

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 88
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 90
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v4, v1, :cond_1

    const-string v1, "landscape"

    .line 91
    :goto_0
    const-string v4, "orientation"

    invoke-virtual {v0, v4, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "device_width"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "device_height"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v1}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 96
    if-eqz v1, :cond_0

    .line 97
    const-string v2, "locale_country"

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, "locale_lang"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    return-object v0

    .line 90
    :cond_1
    const-string v1, "portrait"

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized consume()Lcom/heyzap/internal/SettableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Lcom/heyzap/mediation/display/DisplayConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->currentConfigFuture:Lcom/heyzap/internal/SettableFuture;

    .line 39
    invoke-direct {p0}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->fetchNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->fetchNext()V

    .line 34
    return-void
.end method
