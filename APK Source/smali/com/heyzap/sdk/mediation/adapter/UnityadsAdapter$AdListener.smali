.class Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;
.super Ljava/lang/Object;
.source "UnityadsAdapter.java"

# interfaces
.implements Lcom/unity3d/ads/android/IUnityAdsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;


# direct methods
.method private constructor <init>(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1;)V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;-><init>(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)V

    return-void
.end method


# virtual methods
.method public onFetchCompleted()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$100(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    # getter for: Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;
    invoke-static {}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$000()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    invoke-direct {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 281
    return-void
.end method

.method public onFetchCompleted(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->onFetchCompleted()V

    .line 286
    return-void
.end method

.method public onFetchFailed()V
    .locals 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$100(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    # getter for: Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;
    invoke-static {}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$000()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    sget-object v2, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    const-string v3, "Failed to load."

    invoke-direct {v1, v2, v3}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>(Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 291
    return-void
.end method

.method public onFetchFailed(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->onFetchFailed()V

    .line 296
    return-void
.end method

.method public onHide()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$900(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;->closeListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 301
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$900(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;->displayListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    invoke-direct {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method

.method public onVideoCompleted(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 310
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;
    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$900(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/Constants$AdUnit;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$900(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;->closeListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener$1;

    invoke-direct {v1, p0, p2}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;Z)V

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$1000(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 318
    :cond_0
    return-void
.end method

.method public onVideoStarted()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method
