.class Lcom/heyzap/mediation/display/WaterfallMediator$2;
.super Lcom/heyzap/internal/FutureUtils$FutureRunnable;
.source "WaterfallMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/display/WaterfallMediator;->getDisplayAdapter(Lcom/heyzap/mediation/request/MediationRequest;)Lcom/heyzap/internal/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heyzap/internal/FutureUtils$FutureRunnable",
        "<",
        "Lcom/heyzap/mediation/display/DisplayConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/display/WaterfallMediator;

.field final synthetic val$mediationResultFuture:Lcom/heyzap/internal/SettableFuture;

.field final synthetic val$request:Lcom/heyzap/mediation/request/MediationRequest;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/display/WaterfallMediator;Lcom/heyzap/internal/ListenableFuture;Lcom/heyzap/internal/SettableFuture;Lcom/heyzap/mediation/request/MediationRequest;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->this$0:Lcom/heyzap/mediation/display/WaterfallMediator;

    iput-object p3, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$mediationResultFuture:Lcom/heyzap/internal/SettableFuture;

    iput-object p4, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-direct {p0, p2}, Lcom/heyzap/internal/FutureUtils$FutureRunnable;-><init>(Lcom/heyzap/internal/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/heyzap/mediation/display/DisplayConfig;Ljava/lang/Exception;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 58
    if-eqz p2, :cond_0

    .line 59
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$mediationResultFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v0, p2}, Lcom/heyzap/internal/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 143
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    iget v1, p1, Lcom/heyzap/mediation/display/DisplayConfig;->displayTtl:I

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/request/MediationRequest;->setTimeoutMilli(I)V

    .line 65
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v0}, Lcom/heyzap/mediation/request/MediationRequest;->isTimedOut()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    new-instance v0, Lcom/heyzap/mediation/MediationResult;

    invoke-direct {v0}, Lcom/heyzap/mediation/MediationResult;-><init>()V

    .line 67
    const-string v1, "Display timed out"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/MediationResult;->setError(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$mediationResultFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iget-object v0, p1, Lcom/heyzap/mediation/display/DisplayConfig;->networks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/display/DisplayConfig$Network;

    .line 77
    iget-object v4, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->this$0:Lcom/heyzap/mediation/display/WaterfallMediator;

    # getter for: Lcom/heyzap/mediation/display/WaterfallMediator;->adapterPool:Lcom/heyzap/mediation/adapter/AdapterPool;
    invoke-static {v4}, Lcom/heyzap/mediation/display/WaterfallMediator;->access$000(Lcom/heyzap/mediation/display/WaterfallMediator;)Lcom/heyzap/mediation/adapter/AdapterPool;

    move-result-object v4

    iget-object v5, v0, Lcom/heyzap/mediation/display/DisplayConfig$Network;->network:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/heyzap/mediation/adapter/AdapterPool;->get(Ljava/lang/String;)Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v4

    .line 79
    if-nez v4, :cond_3

    .line 80
    new-instance v5, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;

    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v6

    invoke-direct {v5, v6, v4, v0, v7}, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;-><init>(Lcom/heyzap/internal/SettableFuture;Lcom/heyzap/mediation/abstr/NetworkAdapter;Lcom/heyzap/mediation/display/DisplayConfig$Network;Lcom/heyzap/mediation/display/WaterfallMediator$1;)V

    .line 81
    const-string v0, "network not on board"

    # invokes: Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->setRejected(Ljava/lang/String;)V
    invoke-static {v5, v0}, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->access$200(Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;Ljava/lang/String;)V

    .line 82
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 86
    :cond_3
    iget-object v5, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v5}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->isAdUnitCapable(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    .line 87
    new-instance v5, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;

    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v6

    invoke-direct {v5, v6, v4, v0, v7}, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;-><init>(Lcom/heyzap/internal/SettableFuture;Lcom/heyzap/mediation/abstr/NetworkAdapter;Lcom/heyzap/mediation/display/DisplayConfig$Network;Lcom/heyzap/mediation/display/WaterfallMediator$1;)V

    .line 88
    const-string v0, "network not capable of ad unit"

    # invokes: Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->setRejected(Ljava/lang/String;)V
    invoke-static {v5, v0}, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->access$200(Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;Ljava/lang/String;)V

    .line 89
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    :cond_4
    invoke-virtual {v4}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->isInterstitialVideo()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v5}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v5

    sget-object v6, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->this$0:Lcom/heyzap/mediation/display/WaterfallMediator;

    # getter for: Lcom/heyzap/mediation/display/WaterfallMediator;->lastInterstitialVideoAt:J
    invoke-static {v5}, Lcom/heyzap/mediation/display/WaterfallMediator;->access$300(Lcom/heyzap/mediation/display/WaterfallMediator;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget v6, p1, Lcom/heyzap/mediation/display/DisplayConfig;->interstitialVideoInterval:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/heyzap/internal/Utils;->isExpired(Ljava/lang/Long;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p1, Lcom/heyzap/mediation/display/DisplayConfig;->interstitialVideoEnabled:Z

    if-nez v5, :cond_6

    .line 97
    :cond_5
    new-instance v5, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;

    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v6

    invoke-direct {v5, v6, v4, v0, v7}, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;-><init>(Lcom/heyzap/internal/SettableFuture;Lcom/heyzap/mediation/abstr/NetworkAdapter;Lcom/heyzap/mediation/display/DisplayConfig$Network;Lcom/heyzap/mediation/display/WaterfallMediator$1;)V

    .line 98
    const-string v0, "interstitial rate limited"

    # invokes: Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->setRejected(Ljava/lang/String;)V
    invoke-static {v5, v0}, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->access$200(Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;Ljava/lang/String;)V

    .line 99
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 104
    :cond_6
    iget-object v5, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v5}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->awaitAvailability(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/SettableFuture;

    move-result-object v5

    .line 106
    new-instance v6, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;

    invoke-direct {v6, v5, v4, v0, v7}, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;-><init>(Lcom/heyzap/internal/SettableFuture;Lcom/heyzap/mediation/abstr/NetworkAdapter;Lcom/heyzap/mediation/display/DisplayConfig$Network;Lcom/heyzap/mediation/display/WaterfallMediator$1;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {v5}, Lcom/heyzap/internal/SettableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    :try_start_0
    invoke-virtual {v5}, Lcom/heyzap/internal/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    iget-boolean v0, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;->success:Z

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$mediationResultFuture:Lcom/heyzap/internal/SettableFuture;

    iget-object v4, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->this$0:Lcom/heyzap/mediation/display/WaterfallMediator;

    # invokes: Lcom/heyzap/mediation/display/WaterfallMediator;->reapPending(Lcom/heyzap/mediation/display/DisplayConfig;Ljava/util/List;)Lcom/heyzap/mediation/MediationResult;
    invoke-static {v4, p1, v2}, Lcom/heyzap/mediation/display/WaterfallMediator;->access$400(Lcom/heyzap/mediation/display/WaterfallMediator;Lcom/heyzap/mediation/display/DisplayConfig;Ljava/util/List;)Lcom/heyzap/mediation/MediationResult;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 122
    :cond_7
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v1

    .line 123
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;

    .line 124
    iget-object v4, v0, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->fetchResultFuture:Lcom/heyzap/internal/SettableFuture;

    new-instance v5, Lcom/heyzap/mediation/display/WaterfallMediator$2$1;

    iget-object v0, v0, Lcom/heyzap/mediation/display/WaterfallMediator$NetworkWrapper;->fetchResultFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-direct {v5, p0, v0, v1}, Lcom/heyzap/mediation/display/WaterfallMediator$2$1;-><init>(Lcom/heyzap/mediation/display/WaterfallMediator$2;Lcom/heyzap/internal/ListenableFuture;Lcom/heyzap/internal/SettableFuture;)V

    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->this$0:Lcom/heyzap/mediation/display/WaterfallMediator;

    # getter for: Lcom/heyzap/mediation/display/WaterfallMediator;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v0}, Lcom/heyzap/mediation/display/WaterfallMediator;->access$500(Lcom/heyzap/mediation/display/WaterfallMediator;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    .line 134
    :cond_8
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->this$0:Lcom/heyzap/mediation/display/WaterfallMediator;

    # getter for: Lcom/heyzap/mediation/display/WaterfallMediator;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v0}, Lcom/heyzap/mediation/display/WaterfallMediator;->access$500(Lcom/heyzap/mediation/display/WaterfallMediator;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iget-object v3, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v3}, Lcom/heyzap/mediation/request/MediationRequest;->getRemainingTtl()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v0, v3, v4, v5}, Lcom/heyzap/internal/FutureUtils;->wrapTimeout(Lcom/heyzap/internal/ListenableFuture;Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    new-instance v1, Lcom/heyzap/mediation/display/WaterfallMediator$2$2;

    invoke-direct {v1, p0, p1, v2}, Lcom/heyzap/mediation/display/WaterfallMediator$2$2;-><init>(Lcom/heyzap/mediation/display/WaterfallMediator$2;Lcom/heyzap/mediation/display/DisplayConfig;Ljava/util/List;)V

    iget-object v2, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->this$0:Lcom/heyzap/mediation/display/WaterfallMediator;

    # getter for: Lcom/heyzap/mediation/display/WaterfallMediator;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v2}, Lcom/heyzap/mediation/display/WaterfallMediator;->access$500(Lcom/heyzap/mediation/display/WaterfallMediator;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 55
    check-cast p1, Lcom/heyzap/mediation/display/DisplayConfig;

    invoke-virtual {p0, p1, p2}, Lcom/heyzap/mediation/display/WaterfallMediator$2;->run(Lcom/heyzap/mediation/display/DisplayConfig;Ljava/lang/Exception;)V

    return-void
.end method
