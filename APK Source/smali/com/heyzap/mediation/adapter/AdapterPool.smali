.class public Lcom/heyzap/mediation/adapter/AdapterPool;
.super Ljava/lang/Object;
.source "AdapterPool.java"


# instance fields
.field private final adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

.field private final contextRef:Lcom/heyzap/internal/ContextReference;

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final fetchStore:Lcom/heyzap/mediation/FetchRequestStore;

.field private pool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/mediation/FetchRequestStore;Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->pool:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->contextRef:Lcom/heyzap/internal/ContextReference;

    .line 38
    iput-object p2, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->fetchStore:Lcom/heyzap/mediation/FetchRequestStore;

    .line 39
    iput-object p3, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    .line 40
    iput-object p4, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 41
    iput-object p5, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/mediation/adapter/AdapterPool;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private setMediationMetricsCallbacks(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 100
    invoke-virtual {v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-virtual {v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getMarketingVersion()Ljava/lang/String;

    move-result-object v3

    .line 102
    new-instance v4, Lcom/heyzap/mediation/adapter/AdapterPool$1;

    invoke-direct {v4, p0, v2, v3}, Lcom/heyzap/mediation/adapter/AdapterPool$1;-><init>(Lcom/heyzap/mediation/adapter/AdapterPool;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v4, v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->addFetchStartedListener(Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method public addAdapters(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 45
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 46
    invoke-static {v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->createAdapterFromKlass(Ljava/lang/Class;)Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iget v0, v0, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    instance-of v0, v2, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;

    if-nez v0, :cond_0

    .line 49
    const-string v0, "Mediation is disabled, skipping %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getMarketingName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :cond_0
    invoke-virtual {v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->isOnBoard()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    const-string v0, "%s is on board."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getMarketingName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_1
    const-string v0, "%s is not on board"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getMarketingName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v0, v3}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    :cond_2
    const-string v2, "could not load adapter for %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_3
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 169
    return-void
.end method

.method public declared-synchronized clear(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/heyzap/mediation/adapter/AdapterPool;->get(Ljava/lang/String;)Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public configure(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/mediation/adapter/AdapterConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    .line 81
    invoke-virtual {v2}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/mediation/adapter/AdapterPool;->get(Ljava/lang/String;)Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->contextRef:Lcom/heyzap/internal/ContextReference;

    iget-object v3, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->fetchStore:Lcom/heyzap/mediation/FetchRequestStore;

    iget-object v4, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iget-object v5, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual/range {v0 .. v6}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->init(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/mediation/adapter/AdapterConfiguration;Lcom/heyzap/mediation/FetchRequestStore;Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;)V

    .line 85
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    const-string v1, "(CONFIG) Failed to initialize adapter: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    .line 89
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 94
    invoke-direct {p0, v7}, Lcom/heyzap/mediation/adapter/AdapterPool;->setMediationMetricsCallbacks(Ljava/util/List;)V

    .line 96
    return-void
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/heyzap/mediation/abstr/NetworkAdapter;
    .locals 3

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 139
    invoke-virtual {v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->pool:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public parseConfig(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/mediation/adapter/AdapterConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v6

    .line 65
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 67
    :try_start_0
    new-instance v2, Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/heyzap/mediation/adapter/AdapterConfiguration$AdapterConfigurationError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :catch_0
    move-exception v2

    .line 69
    const-string v3, "(CONFIG) Failed to load config for: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-static {v2}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 71
    :catch_1
    move-exception v2

    .line 72
    invoke-static {v2}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 75
    :cond_0
    return-object v0
.end method

.method public declared-synchronized put(Lcom/heyzap/mediation/abstr/NetworkAdapter;)V
    .locals 1

    .prologue
    .line 151
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_0
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Lcom/heyzap/mediation/abstr/NetworkAdapter;)V
    .locals 3

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "(POOL) Removed session: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_0
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
