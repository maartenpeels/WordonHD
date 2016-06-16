.class public Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;
.super Lcom/heyzap/mediation/abstr/NetworkAdapter;
.source "ChartboostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$5;,
        Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;,
        Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;,
        Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;
    }
.end annotation


# static fields
.field private static CANON:Ljava/lang/String;

.field private static EXTRA_KLASS:Ljava/lang/String;

.field private static KLASS:Ljava/lang/String;

.field private static MARKETING_NAME:Ljava/lang/String;

.field private static threwError:Z


# instance fields
.field private adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

.field private appId:Ljava/lang/String;

.field private appSignature:Ljava/lang/String;

.field private delegate:Lcom/chartboost/sdk/ChartboostDelegate;

.field private final fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/mediation/adapter/FetchStateManager",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;",
            ">;"
        }
    .end annotation
.end field

.field private incentivizedDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

.field private incentivizedLocation:Ljava/lang/String;

.field private interstitialDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

.field private interstitialLocation:Ljava/lang/String;

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
    .line 25
    const-string v0, "com.chartboost.sdk.Chartboost"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->KLASS:Ljava/lang/String;

    .line 26
    const-string v0, "com.chartboost.sdk.Model.CBError"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->EXTRA_KLASS:Ljava/lang/String;

    .line 27
    const-string v0, "chartboost"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->CANON:Ljava/lang/String;

    .line 28
    const-string v0, "Chartboost"

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->MARKETING_NAME:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->threwError:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;-><init>()V

    .line 37
    new-instance v0, Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    .line 38
    new-instance v0, Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-direct {v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    .line 138
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V

    return-void
.end method

.method static synthetic access$100(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/chartboost/sdk/ChartboostDelegate;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->delegate:Lcom/chartboost/sdk/ChartboostDelegate;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetch(Lcom/heyzap/internal/Constants$AdUnit;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;Lcom/heyzap/internal/Constants$AdUnit;)Z
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->checkReady(Lcom/heyzap/internal/Constants$AdUnit;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$2402(Z)Z
    .locals 0

    .prologue
    .line 23
    sput-boolean p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->threwError:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->interstitialDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->incentivizedDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->appId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->appSignature:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/internal/ContextReference;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    return-object v0
.end method

.method private attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 4

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getFetchConsumer()Lcom/heyzap/mediation/adapter/FetchRequestConsumer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/heyzap/internal/Constants$AdUnit;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;

    invoke-direct {v2, p0, p1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;-><init>(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2, v3}, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->consumeAny(Ljava/util/Collection;Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    .line 240
    return-void
.end method

.method private checkReady(Lcom/heyzap/internal/Constants$AdUnit;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 175
    sget-boolean v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->threwError:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 184
    :goto_0
    return v0

    .line 178
    :cond_0
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$5;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    invoke-virtual {p1}, Lcom/heyzap/internal/Constants$AdUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 184
    goto :goto_0

    .line 180
    :pswitch_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->incentivizedLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->interstitialLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doInitialSetupIfNeeded()Lcom/heyzap/internal/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/heyzap/internal/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$2;

    invoke-direct {v1, p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$2;-><init>(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->setupFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/internal/ListenableFuture;

    return-object p0
.end method

.method private fetch(Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 2

    .prologue
    .line 189
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$5;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    invoke-virtual {p1}, Lcom/heyzap/internal/Constants$AdUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 202
    :goto_0
    return-void

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->incentivizedLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->interstitialLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->cacheInterstitial(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addFetchStartedListener(Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$4;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$4;-><init>(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;)V

    invoke-virtual {v0, v1, p2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->addFetchStartedListener(Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V

    .line 282
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
    .line 135
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    return-object v0
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
    .line 271
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->CANON:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->MARKETING_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketingVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "5.1.0"

    return-object v0
.end method

.method public isInterstitialVideo()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public isOnBoard()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->KLASS:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->classExists(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->EXTRA_KLASS:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->classExists(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 130
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-virtual {v0, p1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->allStarted(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 431
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onInit()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->interstitialLocation:Ljava/lang/String;

    .line 72
    const-string v0, "Main Menu"

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->incentivizedLocation:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;

    const-string v1, "Context is not an Activity. Please pass an Activity to HeyzapAds.start to enable chartboost."

    invoke-direct {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v0

    const-string v1, "app_id"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->appId:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getConfiguration()Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    move-result-object v0

    const-string v1, "app_signature"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->appSignature:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->appId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->appSignature:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 81
    :cond_1
    new-instance v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;

    const-string v1, "App id or signature not defined."

    invoke-direct {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_2
    new-instance v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;

    invoke-direct {v0, p0, p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;-><init>(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->delegate:Lcom/chartboost/sdk/ChartboostDelegate;

    .line 86
    new-instance v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    invoke-direct {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;-><init>()V

    .line 87
    iget-object v1, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v2, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    sget-object v3, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->CONFIGURATION_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    const-string v4, "unsupported ad unit"

    invoke-direct {v2, v3, v4}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>(Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 88
    invoke-static {}, Lcom/heyzap/internal/Constants$AdUnit;->values()[Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 89
    iget-object v5, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v5, v4, v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    invoke-direct {v2}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    invoke-direct {v2}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public show(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;Landroid/app/Activity;)Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 244
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->delegate:Lcom/chartboost/sdk/ChartboostDelegate;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 245
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$5;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    invoke-virtual {p1}, Lcom/heyzap/internal/Constants$AdUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 263
    new-instance v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    invoke-direct {v0, p1, v2}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;-><init>(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$1;)V

    .line 264
    iget-object v1, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;->displayListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v2, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    const-string v3, "invalid ad unit"

    invoke-direct {v2, v3}, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 265
    :goto_0
    return-object v0

    .line 247
    :pswitch_0
    new-instance v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    invoke-direct {v0, p1, v2}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;-><init>(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$1;)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->interstitialDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    .line 248
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->interstitialLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->showInterstitial(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    invoke-direct {v2}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 251
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-direct {p0, v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 253
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->interstitialDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    goto :goto_0

    .line 255
    :pswitch_1
    new-instance v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    invoke-direct {v0, p1, v2}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;-><init>(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$1;)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->incentivizedDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    .line 256
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->incentivizedLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->showRewardedVideo(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    invoke-direct {v2}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 259
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-direct {p0, v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 261
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->incentivizedDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
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
            "Lcom/heyzap/internal/SettableFuture;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->adUnitStateManager:Lcom/heyzap/mediation/adapter/AdUnitStateManager;

    invoke-virtual {v1, p1}, Lcom/heyzap/mediation/adapter/AdUnitStateManager;->start(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    .line 101
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->getAdUnitCapabilities()Ljava/util/EnumSet;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 103
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->doInitialSetupIfNeeded()Lcom/heyzap/internal/ListenableFuture;

    move-result-object v2

    new-instance v3, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;Ljava/util/Set;Lcom/heyzap/internal/SettableFuture;)V

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2, v3, v1}, Lcom/heyzap/internal/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 125
    :goto_0
    return-object v0

    .line 122
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method
