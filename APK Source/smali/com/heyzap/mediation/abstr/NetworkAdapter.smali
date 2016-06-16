.class public abstract Lcom/heyzap/mediation/abstr/NetworkAdapter;
.super Ljava/lang/Object;
.source "NetworkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;,
        Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;,
        Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;,
        Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;,
        Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;
    }
.end annotation


# static fields
.field private static networkAdapterSingletons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

.field private config:Lcom/heyzap/mediation/adapter/AdapterConfiguration;

.field private contextRef:Lcom/heyzap/internal/ContextReference;

.field protected executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private fetchConsumer:Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

.field private fetchStore:Lcom/heyzap/mediation/FetchRequestStore;

.field private initialized:Z

.field protected uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->networkAdapterSingletons:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method protected constructor <init>(Lcom/heyzap/mediation/adapter/AdapterConfiguration;Lcom/heyzap/internal/ContextReference;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->config:Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    .line 35
    return-void
.end method

.method public static createAdapterFromKlass(Ljava/lang/Class;)Lcom/heyzap/mediation/abstr/NetworkAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter;",
            ">;)",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter;"
        }
    .end annotation

    .prologue
    .line 104
    sget-object v1, Lcom/heyzap/mediation/abstr/NetworkAdapter;->networkAdapterSingletons:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 105
    if-nez v1, :cond_0

    .line 107
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 108
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-object v1, v0

    .line 109
    sget-object v2, Lcom/heyzap/mediation/abstr/NetworkAdapter;->networkAdapterSingletons:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    return-object v1

    .line 110
    :catch_0
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    .line 111
    invoke-static {v1}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public abstract addFetchStartedListener(Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
.end method

.method public abstract awaitAvailability(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ")",
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAdUnitCapabilities()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCanonicalName()Ljava/lang/String;
.end method

.method public final getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->config:Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    return-object v0
.end method

.method protected final getContextRef()Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->contextRef:Lcom/heyzap/internal/ContextReference;

    return-object v0
.end method

.method protected getFetchConsumer()Lcom/heyzap/mediation/adapter/FetchRequestConsumer;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->fetchConsumer:Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    return-object v0
.end method

.method public getFetchStore()Lcom/heyzap/mediation/FetchRequestStore;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->fetchStore:Lcom/heyzap/mediation/FetchRequestStore;

    return-object v0
.end method

.method public abstract getMarketingName()Ljava/lang/String;
.end method

.method public abstract getMarketingVersion()Ljava/lang/String;
.end method

.method public init(Lcom/heyzap/internal/ContextReference;Lcom/heyzap/mediation/adapter/AdapterConfiguration;Lcom/heyzap/mediation/FetchRequestStore;Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 58
    iput-object p1, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->contextRef:Lcom/heyzap/internal/ContextReference;

    .line 59
    iput-object p2, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->config:Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    .line 60
    new-instance v0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    invoke-direct {v0, p3}, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;-><init>(Lcom/heyzap/mediation/FetchRequestStore;)V

    iput-object v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->fetchConsumer:Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    .line 61
    iput-object p4, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    .line 62
    iput-object p5, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 63
    iput-object p6, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 64
    iput-object p3, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->fetchStore:Lcom/heyzap/mediation/FetchRequestStore;

    .line 65
    invoke-virtual {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onInit()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->initialized:Z

    .line 67
    return-void
.end method

.method public final isAdUnitCapable(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getAdUnitCapabilities()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->initialized:Z

    return v0
.end method

.method public abstract isInterstitialVideo()Z
.end method

.method public abstract isOnBoard()Ljava/lang/Boolean;
.end method

.method public final isReady(Lcom/heyzap/internal/Constants$AdUnit;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-virtual {p0, p1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->awaitAvailability(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/heyzap/internal/SettableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    :try_start_0
    invoke-virtual {v0}, Lcom/heyzap/internal/SettableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    iget-boolean v0, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;->success:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    move v0, v2

    .line 76
    goto :goto_0

    :cond_0
    move v0, v2

    .line 79
    goto :goto_0
.end method

.method public abstract isStarted(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract onInit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;
        }
    .end annotation
.end method

.method public final setConfiguration(Lcom/heyzap/mediation/adapter/AdapterConfiguration;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;->config:Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    .line 93
    return-void
.end method

.method public abstract show(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;Landroid/app/Activity;)Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;
.end method

.method public abstract start(Ljava/util/List;)Lcom/heyzap/internal/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;)",
            "Lcom/heyzap/internal/SettableFuture;"
        }
    .end annotation
.end method
