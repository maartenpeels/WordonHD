.class public Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;
.super Lcom/heyzap/mediation/abstr/NetworkAdapter;
.source "VungleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;,
        Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;,
        Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;
    }
.end annotation


# static fields
.field private static AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

.field private static APP_ID_KEY:Ljava/lang/String;

.field private static CANON:Ljava/lang/String;

.field private static KLASS:Ljava/lang/String;

.field private static MARKETING_NAME:Ljava/lang/String;

.field private static isConfigured:Ljava/lang/Boolean;


# instance fields
.field private appId:Ljava/lang/String;

.field private displayHolder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

.field private final fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/mediation/adapter/FetchStateManager",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;",
            ">;"
        }
    .end annotation
.end field

.field private started:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->isConfigured:Ljava/lang/Boolean;

    .line 23
    const-string v0, "app_id"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->APP_ID_KEY:Ljava/lang/String;

    .line 24
    const-string v0, "vungle"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->CANON:Ljava/lang/String;

    .line 25
    const-string v0, "com.vungle.publisher.VunglePub"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->KLASS:Ljava/lang/String;

    .line 26
    const-string v0, "Vungle"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->MARKETING_NAME:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;-><init>()V

    .line 29
    new-instance v0, Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    return-void
.end method

.method static synthetic access$300()Lcom/heyzap/internal/Constants$AdUnit;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    return-object v0
.end method

.method static synthetic access$400(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    return-object v0
.end method

.method private attemptNextFetch()V
    .locals 8

    .prologue
    .line 149
    new-instance v6, Lcom/heyzap/internal/RetryManager;

    new-instance v7, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;

    invoke-direct {v7, p0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;-><init>(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)V

    new-instance v0, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v0 .. v5}, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;-><init>(DJLjava/util/concurrent/TimeUnit;)V

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v6, v7, v0, v1}, Lcom/heyzap/internal/RetryManager;-><init>(Ljava/lang/Runnable;Lcom/heyzap/internal/RetryManager$Schedule;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-virtual {v6}, Lcom/heyzap/internal/RetryManager;->start()V

    .line 185
    return-void
.end method


# virtual methods
.method public addFetchStartedListener(Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;)V

    invoke-virtual {v0, v1, p2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->addFetchStartedListener(Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V

    .line 82
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
    .line 86
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->isCachedAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    invoke-direct {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    return-object v0
.end method

.method public getAdUnitCapabilities()Ljava/util/EnumSet;
    .locals 3
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
    .line 71
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->CANON:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->MARKETING_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketingVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    const-string v0, "VungleDroid/3.2.2"

    return-object v0
.end method

.method public isInterstitialVideo()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public isOnBoard()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->KLASS:Ljava/lang/String;

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
    .line 111
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onInit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v0

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->APP_ID_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->appId:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->appId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;

    const-string v1, "Vungle App ID not present."

    invoke-direct {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;-><init>(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public show(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;Landroid/app/Activity;)Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 116
    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    invoke-direct {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;-><init>()V

    .line 118
    new-instance v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    invoke-direct {v0, p1, v4}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;-><init>(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$1;)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    .line 120
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->isCachedAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->playAd()V

    .line 123
    new-instance v0, Lcom/vungle/publisher/AdConfig;

    invoke-direct {v0}, Lcom/vungle/publisher/AdConfig;-><init>()V

    .line 125
    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {p1, v2}, Lcom/heyzap/internal/Constants$AdUnit;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {v0, v3}, Lcom/vungle/publisher/AdConfig;->setIncentivized(Z)V

    .line 127
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/AdConfig;->setBackButtonImmediatelyEnabled(Z)V

    .line 129
    :cond_0
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/publisher/VunglePub;->getGlobalAdConfig()Lcom/vungle/publisher/AdConfig;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/AdConfig;->setBackButtonImmediatelyEnabled(Z)V

    .line 131
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/vungle/publisher/VunglePub;->playAd(Lcom/vungle/publisher/AdConfig;)V

    .line 132
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->clickListener:Lcom/heyzap/internal/SettableFuture;

    iput-object v0, v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->clickListener:Lcom/heyzap/internal/SettableFuture;

    .line 133
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->closeListener:Lcom/heyzap/internal/SettableFuture;

    iput-object v0, v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->closeListener:Lcom/heyzap/internal/SettableFuture;

    .line 134
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->displayListener:Lcom/heyzap/internal/SettableFuture;

    iput-object v0, v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->displayListener:Lcom/heyzap/internal/SettableFuture;

    .line 135
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    iput-object v0, v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v2, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/internal/SettableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v2, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    invoke-direct {v3, v4}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;-><init>(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$1;)V

    invoke-virtual {v0, v2, v3}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 141
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->attemptNextFetch()V

    .line 143
    :cond_1
    return-object v1

    .line 137
    :cond_2
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
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 94
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/VunglePub;->init(Landroid/content/Context;Ljava/lang/String;)Z

    .line 97
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->getGlobalAdConfig()Lcom/vungle/publisher/AdConfig;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v3}, Lcom/vungle/publisher/AdConfig;->setSoundEnabled(Z)V

    .line 100
    sget-object v1, Lcom/vungle/publisher/Orientation;->autoRotate:Lcom/vungle/publisher/Orientation;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/AdConfig;->setOrientation(Lcom/vungle/publisher/Orientation;)V

    .line 101
    invoke-virtual {v0, v3}, Lcom/vungle/publisher/AdConfig;->setBackButtonImmediatelyEnabled(Z)V

    .line 103
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;-><init>(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$1;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/VunglePub;->setEventListener(Lcom/vungle/publisher/EventListener;)V

    .line 104
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->attemptNextFetch()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    return-object v0
.end method
