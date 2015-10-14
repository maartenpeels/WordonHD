.class public Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;
.super Lcom/heyzap/mediation/abstr/NetworkAdapter;
.source "ApplovinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$4;,
        Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;,
        Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AppLovinErrorCodes;,
        Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;,
        Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;,
        Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;
    }
.end annotation


# static fields
.field private static CANON:Ljava/lang/String;

.field private static KLASS:Ljava/lang/String;

.field private static MARKETING_NAME:Ljava/lang/String;


# instance fields
.field private adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

.field private final fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/mediation/adapter/FetchStateManager",
            "<",
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;",
            ">;>;"
        }
    .end annotation
.end field

.field sdk:Lcom/applovin/sdk/AppLovinSdk;

.field private setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/heyzap/internal/SettableFuture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "AppLovin"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->MARKETING_NAME:Ljava/lang/String;

    .line 33
    const-string v0, "com.applovin.sdk.AppLovinSdk"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->KLASS:Ljava/lang/String;

    .line 34
    const-string v0, "applovin"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->CANON:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->sdk:Lcom/applovin/sdk/AppLovinSdk;

    .line 38
    new-instance v0, Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    .line 39
    new-instance v0, Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 323
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V

    return-void
.end method

.method static synthetic access$100(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;)Lcom/heyzap/internal/SettableFuture;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->createFetchFuture()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/internal/SettableFuture;

    .line 134
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->getFetchConsumer()Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/heyzap/internal/Constants$AdUnit;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;

    invoke-direct {v3, p0, p1, v0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;-><init>(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/internal/SettableFuture;)V

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v1, v2, v3, v0}, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->consumeAny(Ljava/util/Collection;Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    .line 160
    return-void
.end method

.method private createFetchFuture()Lcom/heyzap/internal/SettableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    return-object v0
.end method

.method private doInitialSetupIfNeeded()Lcom/heyzap/internal/SettableFuture;
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Lcom/applovin/sdk/AppLovinSdkSettings;

    invoke-direct {v0}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>()V

    .line 114
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/heyzap/internal/Utils;->isDebug(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/AppLovinSdkSettings;->setVerboseLogging(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v1

    const-string v2, "sdk_key"

    invoke-virtual {v1, v2}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->sdk:Lcom/applovin/sdk/AppLovinSdk;

    .line 116
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/internal/SettableFuture;

    return-object p0
.end method


# virtual methods
.method public addFetchStartedListener(Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$3;-><init>(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;)V

    invoke-virtual {v0, v1, p2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->addFetchStartedListener(Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V

    .line 235
    return-void
.end method

.method public awaitAvailability(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/SettableFuture;
    .locals 1
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
    .line 123
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/internal/SettableFuture;

    return-object p0
.end method

.method public fetch(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/SettableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ")",
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    .line 165
    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$4;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    invoke-virtual {p1}, Lcom/heyzap/internal/Constants$AdUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 174
    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;

    sget-object v2, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->CONFIGURATION_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    const-string v3, "ad unit not supported"

    invoke-direct {v1, v2, v3}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;-><init>(Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 177
    :goto_0
    return-object v0

    .line 167
    :pswitch_0
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->sdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v1

    sget-object v2, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;-><init>(Lcom/heyzap/internal/SettableFuture;Lcom/applovin/adview/AppLovinIncentivizedInterstitial;)V

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_0

    .line 170
    :pswitch_1
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->sdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-static {v1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v1

    .line 171
    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;

    invoke-direct {v2, v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdFetchListener;-><init>(Lcom/heyzap/internal/SettableFuture;Lcom/applovin/adview/AppLovinIncentivizedInterstitial;)V

    invoke-virtual {v1, v2}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAdUnitCapabilities()Ljava/util/EnumSet;
    .locals 2
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
    .line 224
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->CANON:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->MARKETING_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketingVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "5.4.3"

    return-object v0
.end method

.method public isInterstitialVideo()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public isOnBoard()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->KLASS:Ljava/lang/String;

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
    .line 128
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->allStarted(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public onInit()V
    .locals 4

    .prologue
    .line 72
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;

    sget-object v2, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->CONFIGURATION_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    const-string v3, "unsupported ad unit"

    invoke-direct {v1, v2, v3}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;-><init>(Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 74
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v1, v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;->setDefaultValue(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->createFetchFuture()Lcom/heyzap/internal/SettableFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->createFetchFuture()Lcom/heyzap/internal/SettableFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public show(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;Landroid/app/Activity;)Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 182
    new-instance v8, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;

    invoke-direct {v8}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;-><init>()V

    .line 183
    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;

    invoke-direct {v3, v8, v2}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;-><init>(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1;)V

    .line 185
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v1, p1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/heyzap/internal/SettableFuture;

    move-object v7, v0

    .line 187
    invoke-virtual {v7}, Lcom/heyzap/internal/SettableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    :try_start_0
    invoke-virtual {v7}, Lcom/heyzap/internal/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;->success:Z

    if-nez v2, :cond_2

    .line 196
    :cond_0
    iget-object v1, v8, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;->displayListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v2, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    const-string v3, "Ad not ready"

    invoke-direct {v2, v3}, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    move-object v1, v8

    .line 219
    :goto_1
    return-object v1

    .line 190
    :catch_0
    move-exception v1

    .line 191
    invoke-static {v1}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    :cond_1
    move-object v1, v2

    goto :goto_0

    .line 200
    :cond_2
    sget-object v2, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$4;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    invoke-virtual {p1}, Lcom/heyzap/internal/Constants$AdUnit;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 212
    iget-object v1, v8, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;->displayListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v2, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    const-string v3, "Unsupported ad unit"

    invoke-direct {v2, v3}, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 214
    :goto_2
    invoke-virtual {v7}, Lcom/heyzap/internal/SettableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->createFetchFuture()Lcom/heyzap/internal/SettableFuture;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 216
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V

    :cond_3
    move-object v1, v8

    .line 219
    goto :goto_1

    .line 202
    :pswitch_0
    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->sdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-static {v2, p3}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v2

    .line 203
    invoke-interface {v2, v3}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 204
    invoke-interface {v2, v3}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    .line 205
    invoke-interface {v2, v3}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 206
    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;->cachedAd:Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {v2, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_2

    .line 209
    :pswitch_1
    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;->incentivizedInterstitial:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    goto :goto_2

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->start(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->getAdUnitCapabilities()Ljava/util/EnumSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 84
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v1

    .line 85
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->doInitialSetupIfNeeded()Lcom/heyzap/internal/SettableFuture;

    move-result-object v2

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;Ljava/util/Set;Lcom/heyzap/internal/SettableFuture;)V

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v2, v3, v0}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 106
    :goto_0
    return-object v1

    .line 104
    :cond_0
    new-instance v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    invoke-direct {v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>()V

    invoke-virtual {v1, v0}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method
