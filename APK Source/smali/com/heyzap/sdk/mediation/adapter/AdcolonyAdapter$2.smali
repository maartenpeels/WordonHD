.class Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;
.super Ljava/lang/Object;
.source "AdcolonyAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->doInitialSetupIfNeeded()Lcom/heyzap/internal/SettableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->interstitialZoneId:Ljava/lang/String;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$300(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->incentivizedZoneId:Ljava/lang/String;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$400(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # invokes: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$500(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->configStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$600(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->appId:Ljava/lang/String;
    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$700(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->interstitialZoneId:Ljava/lang/String;
    invoke-static {v5}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$300(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->incentivizedZoneId:Ljava/lang/String;
    invoke-static {v5}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$400(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/jirbo/adcolony/AdColony;->configure(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 162
    :cond_0
    :goto_0
    new-instance v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$IncentiveListener;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$IncentiveListener;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$1;)V

    invoke-static {v0}, Lcom/jirbo/adcolony/AdColony;->addV4VCListener(Lcom/jirbo/adcolony/AdColonyV4VCListener;)V

    .line 163
    new-instance v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AvailabilityListener;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$1100(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->zoneToAdUnitMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$1200(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AvailabilityListener;-><init>(Lcom/heyzap/mediation/adapter/FetchStateManager;Ljava/util/Map;Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$1;)V

    invoke-static {v0}, Lcom/jirbo/adcolony/AdColony;->addAdAvailabilityListener(Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;)V

    .line 165
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # invokes: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$1600(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2$1;

    invoke-direct {v1, p0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;)V

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$1500(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/internal/ContextReference;->addActivityUpdateListener(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->initializationFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/internal/SettableFuture;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 177
    :goto_1
    return-void

    .line 156
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->interstitialZoneId:Ljava/lang/String;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$300(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # invokes: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$800(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->configStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$600(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->appId:Ljava/lang/String;
    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$700(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->interstitialZoneId:Ljava/lang/String;
    invoke-static {v5}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$300(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/jirbo/adcolony/AdColony;->configure(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 173
    :try_start_2
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->initializationFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->initializationFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/internal/SettableFuture;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_1

    .line 158
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->incentivizedZoneId:Ljava/lang/String;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$400(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # invokes: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$900(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->configStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$600(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->appId:Ljava/lang/String;
    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$700(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->incentivizedZoneId:Ljava/lang/String;
    invoke-static {v5}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$400(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/jirbo/adcolony/AdColony;->configure(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 175
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->initializationFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/internal/SettableFuture;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    throw v0
.end method
