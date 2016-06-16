.class public Lcom/heyzap/mediation/display/WaterfallMediator;
.super Ljava/lang/Object;
.source "WaterfallMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;
    }
.end annotation


# instance fields
.field private final adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

.field private final displayConfigLoader:Lcom/heyzap/mediation/display/DisplayConfigLoader;

.field private final filterManager:Lcom/heyzap/mediation/filters/FilterManager;

.field private lastInterstitialVideoAt:J

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/heyzap/mediation/adapter/AdapterPool;Lcom/heyzap/mediation/display/DisplayConfigLoader;Lcom/heyzap/mediation/filters/FilterManager;)V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/heyzap/internal/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/heyzap/mediation/display/WaterfallMediator;-><init>(Lcom/heyzap/mediation/adapter/AdapterPool;Lcom/heyzap/mediation/display/DisplayConfigLoader;Ljava/util/concurrent/ScheduledExecutorService;Lcom/heyzap/mediation/filters/FilterManager;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/heyzap/mediation/adapter/AdapterPool;Lcom/heyzap/mediation/display/DisplayConfigLoader;Ljava/util/concurrent/ScheduledExecutorService;Lcom/heyzap/mediation/filters/FilterManager;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->lastInterstitialVideoAt:J

    .line 33
    iput-object p1, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    .line 34
    iput-object p2, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->displayConfigLoader:Lcom/heyzap/mediation/display/DisplayConfigLoader;

    .line 35
    iput-object p3, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 36
    iput-object p4, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->filterManager:Lcom/heyzap/mediation/filters/FilterManager;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/mediation/display/WaterfallMediator;)Lcom/heyzap/mediation/adapter/AdapterPool;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/mediation/display/WaterfallMediator;)J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->lastInterstitialVideoAt:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/heyzap/mediation/display/WaterfallMediator;J)J
    .locals 0

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->lastInterstitialVideoAt:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/heyzap/mediation/display/WaterfallMediator;Lcom/heyzap/mediation/display/DisplayConfig;Ljava/util/List;)Lcom/heyzap/mediation/MediationResult;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/heyzap/mediation/display/WaterfallMediator;->reapPending(Lcom/heyzap/mediation/display/DisplayConfig;Ljava/util/List;)Lcom/heyzap/mediation/MediationResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/heyzap/mediation/display/WaterfallMediator;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private reapPending(Lcom/heyzap/mediation/display/DisplayConfig;Ljava/util/List;)Lcom/heyzap/mediation/MediationResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/mediation/display/DisplayConfig;",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;",
            ">;)",
            "Lcom/heyzap/mediation/MediationResult;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 149
    new-instance v8, Lcom/heyzap/mediation/MediationResult;

    invoke-direct {v8}, Lcom/heyzap/mediation/MediationResult;-><init>()V

    .line 150
    iget-object v0, p1, Lcom/heyzap/mediation/display/DisplayConfig;->id:Ljava/lang/String;

    iput-object v0, v8, Lcom/heyzap/mediation/MediationResult;->id:Ljava/lang/String;

    .line 152
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v7, v10

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;

    .line 154
    iget-boolean v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->rejected:Z

    if-eqz v0, :cond_1

    .line 155
    new-instance v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    sget-object v1, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->SKIPPED:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    iget-object v2, p0, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->rejectionCause:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>(Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;Ljava/lang/String;)V

    move-object v6, v0

    .line 166
    :goto_1
    new-instance v0, Lcom/heyzap/mediation/MediationResult$NetworkResult;

    iget-object v1, p0, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v1, v1, Lcom/heyzap/mediation/display/DisplayConfig$Network;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v2, v2, Lcom/heyzap/mediation/display/DisplayConfig$Network;->score:Ljava/lang/Double;

    iget-object v3, p0, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    iget-object v4, p0, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    if-nez v4, :cond_3

    move v4, v10

    :goto_2
    iget-object v5, p0, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->networkConfig:Lcom/heyzap/mediation/display/DisplayConfig$Network;

    iget-object v5, v5, Lcom/heyzap/mediation/display/DisplayConfig$Network;->network:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/heyzap/mediation/MediationResult$NetworkResult;-><init>(Ljava/lang/String;Ljava/lang/Double;Lcom/heyzap/mediation/abstr/NetworkAdapter;ZLjava/lang/String;Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;I)V

    .line 171
    iget-object v1, v8, Lcom/heyzap/mediation/MediationResult;->networkResults:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-boolean v1, v6, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;->success:Z

    if-eqz v1, :cond_4

    .line 174
    iput-object v0, v8, Lcom/heyzap/mediation/MediationResult;->selectedNetwork:Lcom/heyzap/mediation/MediationResult$NetworkResult;

    .line 181
    :cond_0
    return-object v8

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->fetchResultFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/internal/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    new-instance v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    sget-object v1, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->TIMEOUT:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    const-string v2, "display timed out"

    invoke-direct {v0, v1, v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>(Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;Ljava/lang/String;)V

    move-object v6, v0

    goto :goto_1

    .line 160
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->fetchResultFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/internal/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 163
    goto :goto_1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    sget-object v2, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->UNKNOWN:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>(Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;Ljava/lang/String;)V

    move-object v6, v1

    goto :goto_1

    .line 166
    :cond_3
    iget-object v4, p0, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    invoke-virtual {v4}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->isInterstitialVideo()Z

    move-result v4

    goto :goto_2

    .line 178
    :cond_4
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    .line 179
    goto :goto_0
.end method


# virtual methods
.method public addDisplay(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult$NetworkResult;Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;)V
    .locals 3

    .prologue
    .line 186
    iget-boolean v0, p2, Lcom/heyzap/mediation/MediationResult$NetworkResult;->isVideo:Z

    if-nez v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/Constants$AdUnit;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p3, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->displayListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/display/WaterfallMediator$3;

    invoke-direct {v1, p0, p3}, Lcom/heyzap/mediation/display/WaterfallMediator$3;-><init>(Lcom/heyzap/mediation/display/WaterfallMediator;Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;)V

    iget-object v2, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method

.method public getDisplayAdapter(Lcom/heyzap/mediation/request/MediationRequest;)Lcom/heyzap/internal/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/mediation/request/MediationRequest;",
            ")",
            "Lcom/heyzap/internal/ListenableFuture",
            "<",
            "Lcom/heyzap/mediation/MediationResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->displayConfigLoader:Lcom/heyzap/mediation/display/DisplayConfigLoader;

    invoke-interface {v1}, Lcom/heyzap/mediation/display/DisplayConfigLoader;->consume()Lcom/heyzap/internal/SettableFuture;

    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getRemainingTtl()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/heyzap/internal/FutureUtils;->addTimeout(Lcom/heyzap/internal/SettableFuture;Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)Lcom/heyzap/internal/SettableFuture;

    .line 46
    new-instance v2, Lcom/heyzap/mediation/display/WaterfallMediator$1;

    invoke-direct {v2, p0, v1}, Lcom/heyzap/mediation/display/WaterfallMediator$1;-><init>(Lcom/heyzap/mediation/display/WaterfallMediator;Lcom/heyzap/internal/SettableFuture;)V

    iget-object v3, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v2, v3}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 55
    new-instance v2, Lcom/heyzap/mediation/display/WaterfallMediator$2;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/heyzap/mediation/display/WaterfallMediator$2;-><init>(Lcom/heyzap/mediation/display/WaterfallMediator;Lcom/heyzap/internal/ListenableFuture;Lcom/heyzap/internal/SettableFuture;Lcom/heyzap/mediation/request/MediationRequest;)V

    iget-object v3, p0, Lcom/heyzap/mediation/display/WaterfallMediator;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v1, v2, v3}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 145
    return-object v0
.end method
