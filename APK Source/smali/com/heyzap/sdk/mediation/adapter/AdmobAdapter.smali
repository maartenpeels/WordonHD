.class public Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;
.super Lcom/heyzap/mediation/abstr/NetworkAdapter;
.source "AdmobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;,
        Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobListener;,
        Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$NetworkProperties;
    }
.end annotation


# static fields
.field private static AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

.field private static KLASS:Ljava/lang/String;


# instance fields
.field private adUnitId:Ljava/lang/String;

.field private adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

.field private final fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/mediation/adapter/FetchStateManager",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private properties:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$NetworkProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    .line 28
    const-string v0, "com.google.android.gms.ads.InterstitialAd"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->KLASS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;-><init>()V

    .line 22
    new-instance v0, Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    .line 26
    new-instance v0, Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    .line 256
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->adUnitId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/heyzap/internal/Constants$AdUnit;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->attemptNextFetch()V

    return-void
.end method

.method private attemptNextFetch()V
    .locals 4

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->getFetchConsumer()Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/heyzap/internal/Constants$AdUnit;

    const/4 v2, 0x0

    sget-object v3, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3;

    invoke-direct {v2, p0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$3;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)V

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2, v3}, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->consumeAny(Ljava/util/Collection;Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    .line 151
    return-void
.end method


# virtual methods
.method public addFetchStartedListener(Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;)V

    invoke-virtual {v0, v1, p2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->addFetchStartedListener(Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V

    .line 203
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
    .line 103
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    return-object v0
.end method

.method public fetch()Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;
    .locals 5

    .prologue
    .line 107
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    .line 109
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 110
    iget-object v1, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v2, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    sget-object v3, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->CONFIGURATION_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    const-string v4, "No Activity"

    invoke-direct {v2, v3, v4}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>(Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 126
    :goto_0
    return-object v0

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$2;

    invoke-direct {v2, p0, v0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$2;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;)V

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
    .line 192
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "admob"

    return-object v0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "AdMob"

    return-object v0
.end method

.method public getMarketingVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "0.0.0"

    return-object v0
.end method

.method public getProperties()Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$NetworkProperties;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->properties:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$NetworkProperties;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$1;

    invoke-direct {v0, p0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->properties:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$NetworkProperties;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->properties:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$NetworkProperties;

    return-object v0
.end method

.method public isInterstitialVideo()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public isOnBoard()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->KLASS:Ljava/lang/String;

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
    .line 98
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

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
    .line 77
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v0

    const-string v1, "ad_unit_id"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->adUnitId:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->adUnitId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;

    const-string v1, "ad_unit_id is not available."

    invoke-direct {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    invoke-direct {v2}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public show(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;Landroid/app/Activity;)Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;
    .locals 4

    .prologue
    .line 157
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, p1}, Lcom/heyzap/internal/Constants$AdUnit;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    .line 161
    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    invoke-direct {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;-><init>()V

    .line 162
    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move-object v0, v1

    .line 186
    :goto_0
    return-object v0

    .line 184
    :cond_0
    new-instance v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    invoke-direct {v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;-><init>()V

    .line 185
    iget-object v1, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->displayListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v2, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    const-string v3, "ad unit not supported"

    invoke-direct {v2, v3}, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0
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
    .line 87
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->start(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->attemptNextFetch()V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    return-object v0
.end method
