.class public Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;
.super Lcom/heyzap/mediation/abstr/NetworkAdapter;
.source "FacebookAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;,
        Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookListener;
    }
.end annotation


# static fields
.field private static AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

.field private static KLASS:Ljava/lang/String;


# instance fields
.field private adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

.field private final fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/mediation/adapter/FetchStateManager",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private placementId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    .line 42
    const-string v0, "com.facebook.ads.InterstitialAd"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->KLASS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;-><init>()V

    .line 36
    new-instance v0, Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    .line 40
    new-instance v0, Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/heyzap/internal/Constants$AdUnit;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private attemptNextFetch()V
    .locals 4

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->getFetchConsumer()Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/heyzap/internal/Constants$AdUnit;

    const/4 v2, 0x0

    sget-object v3, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;

    invoke-direct {v2, p0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;-><init>(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;)V

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2, v3}, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->consumeAny(Ljava/util/Collection;Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    .line 173
    return-void
.end method


# virtual methods
.method public addFetchStartedListener(Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;)V

    invoke-virtual {v0, v1, p2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->addFetchStartedListener(Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V

    .line 111
    return-void
.end method

.method public awaitAvailability(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/SettableFuture;
    .locals 2
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

    .prologue
    .line 115
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    return-object v0
.end method

.method public fetch()Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;
    .locals 5

    .prologue
    .line 130
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    .line 132
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 133
    iget-object v1, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v2, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    sget-object v3, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->CONFIGURATION_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    const-string v4, "No Activity"

    invoke-direct {v2, v3, v4}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>(Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 148
    :goto_0
    return-object v0

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$2;

    invoke-direct {v2, p0, v0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$2;-><init>(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public getAdUnitCapabilities()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "facebook"

    return-object v0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "Facebook"

    return-object v0
.end method

.method public getMarketingVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "3.21.1"

    return-object v0
.end method

.method public isInterstitialVideo()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public isOnBoard()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->KLASS:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->classExists(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isStarted(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->allStarted(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public onInit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v0

    const-string v1, "placement_id"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->placementId:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->placementId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;

    const-string v1, "placement_id is not available."

    invoke-direct {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    invoke-direct {v2}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method public show(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;Landroid/app/Activity;)Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;
    .locals 5

    .prologue
    .line 70
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, p1}, Lcom/heyzap/internal/Constants$AdUnit;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    .line 73
    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    invoke-direct {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;-><init>()V

    .line 74
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v2}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v2

    if-nez v2, :cond_2

    .line 75
    :cond_0
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v2

    iput-object v2, v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->displayListener:Lcom/heyzap/internal/SettableFuture;

    .line 76
    iget-object v2, v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->displayListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v3, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    const-string v4, "Ad not ready"

    invoke-direct {v3, v4}, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 84
    :goto_0
    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/internal/SettableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v2, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    invoke-direct {v3}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 86
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->attemptNextFetch()V

    :cond_1
    move-object v0, v1

    .line 92
    :goto_1
    return-object v0

    .line 78
    :cond_2
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->displayListener:Lcom/heyzap/internal/SettableFuture;

    iput-object v2, v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->displayListener:Lcom/heyzap/internal/SettableFuture;

    .line 79
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->clickListener:Lcom/heyzap/internal/SettableFuture;

    iput-object v2, v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->clickListener:Lcom/heyzap/internal/SettableFuture;

    .line 80
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->closeListener:Lcom/heyzap/internal/SettableFuture;

    iput-object v2, v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->closeListener:Lcom/heyzap/internal/SettableFuture;

    .line 81
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    iput-object v2, v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    .line 82
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v2}, Lcom/facebook/ads/InterstitialAd;->show()Z

    goto :goto_0

    .line 90
    :cond_3
    new-instance v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    invoke-direct {v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;-><init>()V

    .line 91
    iget-object v1, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->displayListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v2, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    const-string v3, "ad unit not supported"

    invoke-direct {v2, v3}, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public start(Ljava/util/List;)Lcom/heyzap/internal/SettableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;)",
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->start(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 122
    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->attemptNextFetch()V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    return-object v0
.end method
