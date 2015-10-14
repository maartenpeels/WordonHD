.class public Lcom/heyzap/mediation/handler/MediationEventReporter;
.super Ljava/lang/Object;
.source "MediationEventReporter.java"


# instance fields
.field private final contextRef:Lcom/heyzap/internal/ContextReference;

.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/heyzap/internal/ContextReference;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/heyzap/mediation/handler/MediationEventReporter;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 22
    iput-object p1, p0, Lcom/heyzap/mediation/handler/MediationEventReporter;->contextRef:Lcom/heyzap/internal/ContextReference;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/mediation/handler/MediationEventReporter;Lcom/heyzap/http/RequestParams;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/heyzap/mediation/handler/MediationEventReporter;->onImpression(Lcom/heyzap/http/RequestParams;)V

    return-void
.end method

.method static synthetic access$100(Lcom/heyzap/mediation/handler/MediationEventReporter;Lcom/heyzap/http/RequestParams;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/heyzap/mediation/handler/MediationEventReporter;->onClick(Lcom/heyzap/http/RequestParams;)V

    return-void
.end method

.method static synthetic access$200(Lcom/heyzap/mediation/handler/MediationEventReporter;Lcom/heyzap/http/RequestParams;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/heyzap/mediation/handler/MediationEventReporter;->onIncentiveComplete(Lcom/heyzap/http/RequestParams;Ljava/lang/Boolean;)V

    return-void
.end method

.method private createParams(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;Lcom/heyzap/mediation/MediationResult$NetworkResult;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/mediation/request/MediationRequest;",
            "Lcom/heyzap/mediation/MediationResult;",
            "Lcom/heyzap/mediation/MediationResult$NetworkResult;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    const-string v1, "tracking_id"

    iget-object v2, p3, Lcom/heyzap/mediation/MediationResult$NetworkResult;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "mediation_id"

    iget-object v2, p2, Lcom/heyzap/mediation/MediationResult;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "network"

    iget-object v2, p3, Lcom/heyzap/mediation/MediationResult$NetworkResult;->network:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "ad_unit"

    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/heyzap/internal/Constants$AdUnit;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "tag"

    invoke-virtual {p1}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/heyzap/internal/Constants;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "network_version"

    iget-object v2, p3, Lcom/heyzap/mediation/MediationResult$NetworkResult;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    if-nez v2, :cond_0

    const-string v2, "unknown"

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v1, "ordinal"

    iget v2, p3, Lcom/heyzap/mediation/MediationResult$NetworkResult;->ordinal:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "score"

    iget-object v2, p3, Lcom/heyzap/mediation/MediationResult$NetworkResult;->score:Ljava/lang/Double;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-object v0

    .line 112
    :cond_0
    iget-object v2, p3, Lcom/heyzap/mediation/MediationResult$NetworkResult;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    invoke-virtual {v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getMarketingVersion()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private onClick(Lcom/heyzap/http/RequestParams;)V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/heyzap/mediation/handler/MediationEventReporter;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://med.heyzap.com/click"

    new-instance v2, Lcom/heyzap/mediation/handler/MediationEventReporter$5;

    invoke-direct {v2, p0}, Lcom/heyzap/mediation/handler/MediationEventReporter$5;-><init>(Lcom/heyzap/mediation/handler/MediationEventReporter;)V

    invoke-static {v0, v1, p1, v2}, Lcom/heyzap/internal/APIClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 77
    return-void
.end method

.method private onFetch(Lcom/heyzap/http/RequestParams;Lcom/heyzap/mediation/MediationResult$NetworkResult;)V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p2, Lcom/heyzap/mediation/MediationResult$NetworkResult;->fetchResult:Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    iget-object v0, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;->errorCode:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "failure_reason"

    iget-object v1, p2, Lcom/heyzap/mediation/MediationResult$NetworkResult;->fetchResult:Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    iget-object v1, v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;->errorCode:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    invoke-virtual {v1}, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    const-string v0, "success"

    iget-object v1, p2, Lcom/heyzap/mediation/MediationResult$NetworkResult;->fetchResult:Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    iget-boolean v1, v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;->success:Z

    if-eqz v1, :cond_1

    const-string v1, "1"

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/heyzap/mediation/handler/MediationEventReporter;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://med.heyzap.com/fetch"

    new-instance v2, Lcom/heyzap/mediation/handler/MediationEventReporter$6;

    invoke-direct {v2, p0}, Lcom/heyzap/mediation/handler/MediationEventReporter$6;-><init>(Lcom/heyzap/mediation/handler/MediationEventReporter;)V

    invoke-static {v0, v1, p1, v2}, Lcom/heyzap/internal/APIClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 90
    return-void

    .line 85
    :cond_1
    const-string v1, "0"

    goto :goto_0
.end method

.method private onImpression(Lcom/heyzap/http/RequestParams;)V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/heyzap/mediation/handler/MediationEventReporter;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://med.heyzap.com/impression"

    new-instance v2, Lcom/heyzap/mediation/handler/MediationEventReporter$4;

    invoke-direct {v2, p0}, Lcom/heyzap/mediation/handler/MediationEventReporter$4;-><init>(Lcom/heyzap/mediation/handler/MediationEventReporter;)V

    invoke-static {v0, v1, p1, v2}, Lcom/heyzap/internal/APIClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 70
    return-void
.end method

.method private onIncentiveComplete(Lcom/heyzap/http/RequestParams;Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    const-string v1, "complete"

    .line 94
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "complete"

    const-string v0, "1"

    invoke-virtual {p1, v1, v0}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/heyzap/mediation/handler/MediationEventReporter;->contextRef:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://med.heyzap.com/complete"

    new-instance v2, Lcom/heyzap/mediation/handler/MediationEventReporter$7;

    invoke-direct {v2, p0}, Lcom/heyzap/mediation/handler/MediationEventReporter$7;-><init>(Lcom/heyzap/mediation/handler/MediationEventReporter;)V

    invoke-static {v0, v1, p1, v2}, Lcom/heyzap/internal/APIClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 103
    return-void

    .line 97
    :cond_0
    const-string v0, "complete"

    const-string v0, "0"

    invoke-virtual {p1, v1, v0}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public bindDisplayCallbacks(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;)V
    .locals 4

    .prologue
    .line 34
    iget-object v0, p2, Lcom/heyzap/mediation/MediationResult;->selectedNetwork:Lcom/heyzap/mediation/MediationResult$NetworkResult;

    invoke-direct {p0, p1, p2, v0}, Lcom/heyzap/mediation/handler/MediationEventReporter;->createParams(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;Lcom/heyzap/mediation/MediationResult$NetworkResult;)Ljava/util/Map;

    move-result-object v0

    .line 36
    iget-object v1, p3, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->displayListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v2, Lcom/heyzap/mediation/handler/MediationEventReporter$1;

    iget-object v3, p3, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->displayListener:Lcom/heyzap/internal/SettableFuture;

    invoke-direct {v2, p0, v3, v0}, Lcom/heyzap/mediation/handler/MediationEventReporter$1;-><init>(Lcom/heyzap/mediation/handler/MediationEventReporter;Lcom/heyzap/internal/ListenableFuture;Ljava/util/Map;)V

    iget-object v3, p0, Lcom/heyzap/mediation/handler/MediationEventReporter;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v2, v3}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 45
    iget-object v1, p3, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->clickListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v2, Lcom/heyzap/mediation/handler/MediationEventReporter$2;

    iget-object v3, p3, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->clickListener:Lcom/heyzap/internal/SettableFuture;

    invoke-direct {v2, p0, v3, v0}, Lcom/heyzap/mediation/handler/MediationEventReporter$2;-><init>(Lcom/heyzap/mediation/handler/MediationEventReporter;Lcom/heyzap/internal/ListenableFuture;Ljava/util/Map;)V

    iget-object v3, p0, Lcom/heyzap/mediation/handler/MediationEventReporter;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v2, v3}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 55
    iget-object v1, p3, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v2, Lcom/heyzap/mediation/handler/MediationEventReporter$3;

    iget-object v3, p3, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    invoke-direct {v2, p0, v3, v0}, Lcom/heyzap/mediation/handler/MediationEventReporter$3;-><init>(Lcom/heyzap/mediation/handler/MediationEventReporter;Lcom/heyzap/internal/ListenableFuture;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/heyzap/mediation/handler/MediationEventReporter;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v2, v0}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 63
    return-void
.end method

.method public sendFetchResults(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;)V
    .locals 4

    .prologue
    .line 26
    iget-object v0, p2, Lcom/heyzap/mediation/MediationResult;->networkResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/MediationResult$NetworkResult;

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/heyzap/mediation/handler/MediationEventReporter;->createParams(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;Lcom/heyzap/mediation/MediationResult$NetworkResult;)Ljava/util/Map;

    move-result-object v2

    .line 28
    new-instance v3, Lcom/heyzap/http/RequestParams;

    invoke-direct {v3, v2}, Lcom/heyzap/http/RequestParams;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v3, v0}, Lcom/heyzap/mediation/handler/MediationEventReporter;->onFetch(Lcom/heyzap/http/RequestParams;Lcom/heyzap/mediation/MediationResult$NetworkResult;)V

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method
