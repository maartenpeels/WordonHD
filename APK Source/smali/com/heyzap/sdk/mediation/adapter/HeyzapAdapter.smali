.class public Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;
.super Lcom/heyzap/mediation/abstr/NetworkAdapter;
.source "HeyzapAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;,
        Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;
    }
.end annotation


# static fields
.field private static AUCTION_TYPE:Lcom/heyzap/internal/Constants$AuctionType;

.field private static CREATIVE_TYPES:I


# instance fields
.field protected adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

.field protected adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

.field protected final fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/mediation/adapter/FetchStateManager",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/heyzap/internal/Constants$CreativeType;->INTERSTITIAL:I

    sput v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->CREATIVE_TYPES:I

    .line 28
    sget-object v0, Lcom/heyzap/internal/Constants$AuctionType;->MONETIZATION:Lcom/heyzap/internal/Constants$AuctionType;

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->AUCTION_TYPE:Lcom/heyzap/internal/Constants$AuctionType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;-><init>()V

    .line 24
    new-instance v0, Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    .line 25
    new-instance v0, Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    .line 26
    new-instance v0, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    .line 252
    return-void
.end method

.method static synthetic access$100(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V

    return-void
.end method

.method static synthetic access$400(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 4

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->getFetchConsumer()Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->getAdUnitCapabilities()Ljava/util/EnumSet;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2, v3}, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->consumeAny(Ljava/util/Collection;Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    .line 98
    return-void
.end method


# virtual methods
.method public addFetchStartedListener(Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$3;-><init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;)V

    invoke-virtual {v0, v1, p2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->addFetchStartedListener(Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V

    .line 155
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
    .line 159
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-virtual {v1, p1}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    return-object v0
.end method

.method public createRequest()Lcom/heyzap/house/request/AdRequest;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lcom/heyzap/house/request/AdRequest;

    sget v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->CREATIVE_TYPES:I

    sget-object v2, Lcom/heyzap/internal/Constants;->DEFAULT_TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/heyzap/house/request/AdRequest;-><init>(ILjava/lang/String;)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/AdRequest;->setIsImmediate(Z)V

    .line 57
    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->AUCTION_TYPE:Lcom/heyzap/internal/Constants$AuctionType;

    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/AdRequest;->setAuctionType(Lcom/heyzap/internal/Constants$AuctionType;)V

    .line 58
    return-object v0
.end method

.method public fetch(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;)V
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->createRequest()Lcom/heyzap/house/request/AdRequest;

    move-result-object v0

    .line 64
    iput-object v0, p1, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->adRequest:Lcom/heyzap/house/request/AdRequest;

    .line 65
    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;-><init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1;)V

    .line 67
    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/AdRequest;->setOnStatusListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 68
    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/AdRequest;->setOnIncentiveListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/AdRequest;->fetch(Landroid/content/Context;)V

    .line 71
    return-void
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
    .line 144
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "heyzap"

    return-object v0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "Heyzap"

    return-object v0
.end method

.method public getMarketingVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInterstitialVideo()Z
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnBoard()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isStarted(Ljava/util/List;)Z
    .locals 2
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
    .line 190
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-virtual {v1, p1}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->allStarted(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public onInit()V
    .locals 7

    .prologue
    .line 131
    new-instance v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    invoke-direct {v0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;-><init>()V

    .line 132
    iget-object v1, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v2, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    sget-object v3, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->CONFIGURATION_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    const-string v4, "Ad unit not supported"

    invoke-direct {v2, v3, v4}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>(Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 133
    invoke-static {}, Lcom/heyzap/internal/Constants$AdUnit;->values()[Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 134
    iget-object v5, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->getAdUnitCapabilities()Ljava/util/EnumSet;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    invoke-direct {v6}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;-><init>()V

    :goto_1
    invoke-virtual {v5, v4, v6}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v6, v0

    .line 134
    goto :goto_1

    .line 140
    :cond_1
    return-void
.end method

.method public show(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;Landroid/app/Activity;)Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;
    .locals 6

    .prologue
    .line 103
    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    invoke-direct {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;-><init>()V

    .line 104
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-virtual {v2, p1}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    .line 105
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->adRequest:Lcom/heyzap/house/request/AdRequest;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->adRequest:Lcom/heyzap/house/request/AdRequest;

    invoke-virtual {v2}, Lcom/heyzap/house/request/AdRequest;->isReady()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->closeListener:Lcom/heyzap/internal/SettableFuture;

    iput-object v2, v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->closeListener:Lcom/heyzap/internal/SettableFuture;

    .line 107
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->displayListener:Lcom/heyzap/internal/SettableFuture;

    iput-object v2, v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->displayListener:Lcom/heyzap/internal/SettableFuture;

    .line 108
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->closeListener:Lcom/heyzap/internal/SettableFuture;

    iput-object v2, v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->closeListener:Lcom/heyzap/internal/SettableFuture;

    .line 109
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    iput-object v2, v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    .line 110
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->clickListener:Lcom/heyzap/internal/SettableFuture;

    iput-object v2, v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->clickListener:Lcom/heyzap/internal/SettableFuture;

    .line 111
    iget-object v2, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->adRequest:Lcom/heyzap/house/request/AdRequest;

    invoke-virtual {v2, p3, p1, p2}, Lcom/heyzap/house/request/AdRequest;->show(Landroid/app/Activity;Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-virtual {v3, p1}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v3

    new-instance v4, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    invoke-direct {v4}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 114
    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->impressionListener:Lcom/heyzap/internal/SettableFuture;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/heyzap/internal/FutureUtils;->wrapTimeout(Lcom/heyzap/internal/ListenableFuture;Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$2;

    invoke-direct {v2, p0, p1}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$2;-><init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v2, v3}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 126
    :goto_0
    return-object v1

    .line 124
    :cond_0
    iget-object v0, v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->displayListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v2, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    const-string v3, "ad not ready"

    invoke-direct {v2, v3}, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public start(Ljava/util/List;)Lcom/heyzap/internal/SettableFuture;
    .locals 4
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

    .prologue
    .line 164
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    invoke-virtual {v1, p1}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->start(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->getAdUnitCapabilities()Ljava/util/EnumSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 168
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v1

    .line 170
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v2

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iget-object v3, v3, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->publisherId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/heyzap/house/Manager;->start(Lcom/heyzap/internal/ContextReference;Ljava/lang/String;)Lcom/heyzap/internal/SettableFuture;

    move-result-object v2

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$4;-><init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;Ljava/util/Set;Lcom/heyzap/internal/SettableFuture;)V

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v2, v3, v0}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 185
    :goto_0
    return-object v1

    .line 183
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method
