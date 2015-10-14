.class public Lcom/heyzap/mediation/config/MediationConfigLoader;
.super Ljava/lang/Object;
.source "MediationConfigLoader.java"

# interfaces
.implements Lcom/heyzap/mediation/config/ConfigLoader;


# instance fields
.field private final adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

.field private final adapterScanner:Lcom/heyzap/mediation/adapter/AdapterScanner;

.field private final adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

.field private final configurationCacheFuture:Lcom/heyzap/internal/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Lcom/heyzap/mediation/config/MediationConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final contextRef:Lcom/heyzap/internal/ContextReference;

.field private final displayConfigLoader:Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;

.field private final displayStrategy:Lcom/heyzap/mediation/display/WaterfallMediator;

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

.field private final filterManager:Lcom/heyzap/mediation/filters/FilterManager;

.field private final loaderStrategy:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

.field private final uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/heyzap/internal/ContextReference;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/heyzap/mediation/FetchRequestStore;Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;)V
    .locals 6

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->contextRef:Lcom/heyzap/internal/ContextReference;

    .line 53
    iput-object p2, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 54
    iput-object p4, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    .line 55
    iput-object p3, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 56
    new-instance v0, Lcom/heyzap/mediation/adapter/AdapterScanner;

    invoke-direct {v0, p1}, Lcom/heyzap/mediation/adapter/AdapterScanner;-><init>(Lcom/heyzap/internal/ContextReference;)V

    iput-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->adapterScanner:Lcom/heyzap/mediation/adapter/AdapterScanner;

    .line 57
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->configurationCacheFuture:Lcom/heyzap/internal/SettableFuture;

    .line 59
    new-instance v0, Lcom/heyzap/mediation/adapter/AdapterPool;

    iget-object v2, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    move-object v1, p1

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/heyzap/mediation/adapter/AdapterPool;-><init>(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/mediation/FetchRequestStore;Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    .line 60
    new-instance v0, Lcom/heyzap/mediation/filters/FilterManager;

    invoke-direct {v0, p1, p2}, Lcom/heyzap/mediation/filters/FilterManager;-><init>(Lcom/heyzap/internal/ContextReference;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->filterManager:Lcom/heyzap/mediation/filters/FilterManager;

    .line 63
    new-instance v0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;

    invoke-direct {v0, p1}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;-><init>(Lcom/heyzap/internal/ContextReference;)V

    iput-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->displayConfigLoader:Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;

    .line 65
    new-instance v0, Lcom/heyzap/mediation/display/WaterfallMediator;

    iget-object v1, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    iget-object v2, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->displayConfigLoader:Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;

    iget-object v3, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->filterManager:Lcom/heyzap/mediation/filters/FilterManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/heyzap/mediation/display/WaterfallMediator;-><init>(Lcom/heyzap/mediation/adapter/AdapterPool;Lcom/heyzap/mediation/display/DisplayConfigLoader;Lcom/heyzap/mediation/filters/FilterManager;)V

    iput-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->displayStrategy:Lcom/heyzap/mediation/display/WaterfallMediator;

    .line 67
    new-instance v0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

    iget-object v1, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    iget-object v2, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    invoke-direct {v0, v1, p2, v2}, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;-><init>(Lcom/heyzap/mediation/adapter/AdapterPool;Ljava/util/concurrent/ScheduledExecutorService;Lcom/heyzap/mediation/FetchRequestStore;)V

    iput-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->loaderStrategy:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

    .line 70
    iput-object p5, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->contextRef:Lcom/heyzap/internal/ContextReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/mediation/config/MediationConfigLoader;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/mediation/FetchRequestStore;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/mediation/adapter/AdapterPool;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    return-object v0
.end method

.method static synthetic access$400(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/mediation/display/WaterfallMediator;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->displayStrategy:Lcom/heyzap/mediation/display/WaterfallMediator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/mediation/ConcurrentLoaderStrategy;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->loaderStrategy:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

    return-object v0
.end method

.method static synthetic access$600(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/mediation/filters/FilterManager;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->filterManager:Lcom/heyzap/mediation/filters/FilterManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/internal/SettableFuture;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->configurationCacheFuture:Lcom/heyzap/internal/SettableFuture;

    return-object v0
.end method


# virtual methods
.method public get(Lcom/heyzap/mediation/config/ConfigLoader$MediationConfigListener;)V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->configurationCacheFuture:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/config/MediationConfigLoader$2;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/mediation/config/MediationConfigLoader$2;-><init>(Lcom/heyzap/mediation/config/MediationConfigLoader;Lcom/heyzap/mediation/config/ConfigLoader$MediationConfigListener;)V

    invoke-static {}, Lcom/heyzap/internal/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 128
    return-void
.end method

.method public getFuture()Lcom/heyzap/internal/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/heyzap/internal/ListenableFuture",
            "<",
            "Lcom/heyzap/mediation/config/MediationConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->configurationCacheFuture:Lcom/heyzap/internal/SettableFuture;

    return-object v0
.end method

.method public isOnBoard(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/AdapterPool;->get(Ljava/lang/String;)Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 8

    .prologue
    .line 74
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iget v0, v0, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    iget-object v1, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->adapterScanner:Lcom/heyzap/mediation/adapter/AdapterScanner;

    invoke-virtual {v1}, Lcom/heyzap/mediation/adapter/AdapterScanner;->scan()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterPool;->addAdapters(Ljava/util/List;)V

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->displayConfigLoader:Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;

    invoke-virtual {v0}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->start()V

    .line 86
    new-instance v6, Lcom/heyzap/internal/RetryManager;

    new-instance v7, Lcom/heyzap/mediation/config/MediationConfigLoader$1;

    invoke-direct {v7, p0}, Lcom/heyzap/mediation/config/MediationConfigLoader$1;-><init>(Lcom/heyzap/mediation/config/MediationConfigLoader;)V

    new-instance v0, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const-wide/16 v3, 0x4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v0 .. v5}, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;-><init>(DJLjava/util/concurrent/TimeUnit;)V

    iget-object v1, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v6, v7, v0, v1}, Lcom/heyzap/internal/RetryManager;-><init>(Ljava/lang/Runnable;Lcom/heyzap/internal/RetryManager$Schedule;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-virtual {v6}, Lcom/heyzap/internal/RetryManager;->start()V

    .line 113
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/heyzap/sdk/mediation/adapter/HeyzapVideoAdapter;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/heyzap/sdk/mediation/adapter/HeyzapCrossPromoAdapter;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/heyzap/mediation/config/MediationConfigLoader;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    invoke-virtual {v1, v0}, Lcom/heyzap/mediation/adapter/AdapterPool;->addAdapters(Ljava/util/List;)V

    goto :goto_0
.end method
