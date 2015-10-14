.class public Lcom/heyzap/mediation/MediationManager;
.super Ljava/lang/Object;
.source "MediationManager.java"


# static fields
.field private static volatile ref:Lcom/heyzap/mediation/MediationManager;


# instance fields
.field private final adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

.field private final configLoader:Lcom/heyzap/mediation/config/MediationConfigLoader;

.field private final contextRef:Lcom/heyzap/internal/ContextReference;

.field private final executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private fetchMode:Lcom/heyzap/internal/Constants$MediationFetchMode;

.field private final fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

.field private final mediationEventReporter:Lcom/heyzap/mediation/handler/MediationEventReporter;

.field private statusListenerMultiplexers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            "Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;",
            ">;"
        }
    .end annotation
.end field

.field private final uiThreadExecutorService:Lcom/heyzap/internal/HandlerExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/heyzap/internal/Constants$MediationFetchMode;->HEYZAP:Lcom/heyzap/internal/Constants$MediationFetchMode;

    iput-object v0, p0, Lcom/heyzap/mediation/MediationManager;->fetchMode:Lcom/heyzap/internal/Constants$MediationFetchMode;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/MediationManager;->statusListenerMultiplexers:Ljava/util/HashMap;

    .line 39
    new-instance v0, Lcom/heyzap/internal/ContextReference;

    invoke-direct {v0}, Lcom/heyzap/internal/ContextReference;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/MediationManager;->contextRef:Lcom/heyzap/internal/ContextReference;

    .line 42
    new-instance v0, Lcom/heyzap/mediation/handler/MediationEventReporter;

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-static {}, Lcom/heyzap/internal/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/heyzap/mediation/handler/MediationEventReporter;-><init>(Lcom/heyzap/internal/ContextReference;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/heyzap/mediation/MediationManager;->mediationEventReporter:Lcom/heyzap/mediation/handler/MediationEventReporter;

    .line 43
    invoke-static {}, Lcom/heyzap/internal/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/mediation/MediationManager;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 44
    new-instance v0, Lcom/heyzap/mediation/FetchRequestStore;

    invoke-direct {v0}, Lcom/heyzap/mediation/FetchRequestStore;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/MediationManager;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    .line 45
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds;->config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iput-object v0, p0, Lcom/heyzap/mediation/MediationManager;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    .line 46
    new-instance v0, Lcom/heyzap/internal/HandlerExecutorService;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/heyzap/internal/HandlerExecutorService;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/heyzap/mediation/MediationManager;->uiThreadExecutorService:Lcom/heyzap/internal/HandlerExecutorService;

    .line 47
    new-instance v0, Lcom/heyzap/mediation/config/MediationConfigLoader;

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager;->contextRef:Lcom/heyzap/internal/ContextReference;

    iget-object v2, p0, Lcom/heyzap/mediation/MediationManager;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v3, p0, Lcom/heyzap/mediation/MediationManager;->uiThreadExecutorService:Lcom/heyzap/internal/HandlerExecutorService;

    iget-object v4, p0, Lcom/heyzap/mediation/MediationManager;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    iget-object v5, p0, Lcom/heyzap/mediation/MediationManager;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    invoke-direct/range {v0 .. v5}, Lcom/heyzap/mediation/config/MediationConfigLoader;-><init>(Lcom/heyzap/internal/ContextReference;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/heyzap/mediation/FetchRequestStore;Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;)V

    iput-object v0, p0, Lcom/heyzap/mediation/MediationManager;->configLoader:Lcom/heyzap/mediation/config/MediationConfigLoader;

    .line 48
    invoke-direct {p0}, Lcom/heyzap/mediation/MediationManager;->initStatusListenerMultiplexers()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/mediation/MediationManager;)Lcom/heyzap/mediation/config/MediationConfigLoader;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->configLoader:Lcom/heyzap/mediation/config/MediationConfigLoader;

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/mediation/MediationManager;)Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heyzap/mediation/MediationManager;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->statusListenerMultiplexers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/mediation/MediationManager;)Lcom/heyzap/mediation/handler/MediationEventReporter;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->mediationEventReporter:Lcom/heyzap/mediation/handler/MediationEventReporter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/heyzap/mediation/MediationManager;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/heyzap/mediation/MediationManager;
    .locals 2

    .prologue
    .line 173
    const-class v0, Lcom/heyzap/mediation/MediationManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/heyzap/mediation/MediationManager;->ref:Lcom/heyzap/mediation/MediationManager;

    if-nez v1, :cond_0

    .line 174
    new-instance v1, Lcom/heyzap/mediation/MediationManager;

    invoke-direct {v1}, Lcom/heyzap/mediation/MediationManager;-><init>()V

    sput-object v1, Lcom/heyzap/mediation/MediationManager;->ref:Lcom/heyzap/mediation/MediationManager;

    .line 177
    :cond_0
    sget-object v1, Lcom/heyzap/mediation/MediationManager;->ref:Lcom/heyzap/mediation/MediationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initStatusListenerMultiplexers()V
    .locals 6

    .prologue
    .line 52
    invoke-static {}, Lcom/heyzap/internal/Constants$AdUnit;->values()[Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 53
    new-instance v4, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    iget-object v5, p0, Lcom/heyzap/mediation/MediationManager;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v4, v5}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 54
    sget-object v5, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v3, v5}, Lcom/heyzap/internal/Constants$AdUnit;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v3, v5}, Lcom/heyzap/internal/Constants$AdUnit;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 55
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->setUsesAudio(Z)V

    .line 57
    :cond_1
    iget-object v5, p0, Lcom/heyzap/mediation/MediationManager;->statusListenerMultiplexers:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_2
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public display(Landroid/app/Activity;Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 79
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v0, p1}, Lcom/heyzap/internal/ContextReference;->updateContext(Landroid/content/Context;)V

    .line 81
    new-instance v2, Lcom/heyzap/mediation/request/MediationRequest;

    invoke-direct {v2, p2, p3}, Lcom/heyzap/mediation/request/MediationRequest;-><init>(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V

    .line 83
    iget-object v6, p0, Lcom/heyzap/mediation/MediationManager;->configLoader:Lcom/heyzap/mediation/config/MediationConfigLoader;

    new-instance v0, Lcom/heyzap/mediation/MediationManager$2;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/heyzap/mediation/MediationManager$2;-><init>(Lcom/heyzap/mediation/MediationManager;Lcom/heyzap/mediation/request/MediationRequest;Ljava/lang/String;Landroid/app/Activity;Lcom/heyzap/internal/Constants$AdUnit;)V

    invoke-virtual {v6, v0}, Lcom/heyzap/mediation/config/MediationConfigLoader;->get(Lcom/heyzap/mediation/config/ConfigLoader$MediationConfigListener;)V

    .line 126
    return-void
.end method

.method public fetch(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iget v0, v0, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/FetchRequestStore;->makeUnlimited(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 168
    :goto_0
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->statusListenerMultiplexers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager;->configLoader:Lcom/heyzap/mediation/config/MediationConfigLoader;

    invoke-virtual {v1}, Lcom/heyzap/mediation/config/MediationConfigLoader;->getFuture()Lcom/heyzap/internal/ListenableFuture;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->addFetch(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;Lcom/heyzap/internal/ListenableFuture;)V

    .line 169
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/FetchRequestStore;->add(Lcom/heyzap/internal/Constants$AdUnit;)V

    goto :goto_0
.end method

.method public getConfigLoader()Lcom/heyzap/mediation/config/MediationConfigLoader;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->configLoader:Lcom/heyzap/mediation/config/MediationConfigLoader;

    return-object v0
.end method

.method public isAvailable(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->configLoader:Lcom/heyzap/mediation/config/MediationConfigLoader;

    invoke-virtual {v0}, Lcom/heyzap/mediation/config/MediationConfigLoader;->getFuture()Lcom/heyzap/internal/ListenableFuture;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Lcom/heyzap/internal/ListenableFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 152
    :goto_0
    return v0

    .line 136
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/heyzap/internal/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/mediation/config/MediationConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    new-instance v0, Lcom/heyzap/mediation/filters/FilterContext;

    invoke-direct {v0, p1, p2}, Lcom/heyzap/mediation/filters/FilterContext;-><init>(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/heyzap/mediation/config/MediationConfig;->getFilterManager()Lcom/heyzap/mediation/filters/FilterManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/heyzap/mediation/filters/FilterManager;->accept(Lcom/heyzap/mediation/filters/FilterContext;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 144
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    move v0, v2

    .line 138
    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/heyzap/mediation/config/MediationConfig;->getAdapterPool()Lcom/heyzap/mediation/adapter/AdapterPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/adapter/AdapterPool;->getAll()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 148
    invoke-virtual {p0, p1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->isReady(Lcom/heyzap/internal/Constants$AdUnit;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 152
    goto :goto_0
.end method

.method public setOnIncentiveResultListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->statusListenerMultiplexers:Ljava/util/HashMap;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    invoke-virtual {p0, p1}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->setIncentiveListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;)V

    .line 190
    return-void
.end method

.method public setOnStatusListener(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->statusListenerMultiplexers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    invoke-virtual {p0, p2}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->setListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 186
    return-void
.end method

.method public setRecentActivity(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v0, p1}, Lcom/heyzap/internal/ContextReference;->updateContext(Landroid/content/Context;)V

    .line 182
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v0, p1}, Lcom/heyzap/internal/ContextReference;->updateContext(Landroid/content/Context;)V

    .line 66
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/heyzap/mediation/MediationManager$1;

    invoke-direct {v1, p0}, Lcom/heyzap/mediation/MediationManager$1;-><init>(Lcom/heyzap/mediation/MediationManager;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method
