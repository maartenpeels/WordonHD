.class Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5;
.super Lcom/heyzap/internal/FutureUtils$FutureRunnable;
.source "StatusListenerMultiplexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->addFetch(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;Lcom/heyzap/internal/ListenableFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heyzap/internal/FutureUtils$FutureRunnable",
        "<",
        "Lcom/heyzap/mediation/config/MediationConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

.field final synthetic val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

.field final synthetic val$fetchSuccessFuture:Lcom/heyzap/internal/SettableFuture;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;Lcom/heyzap/internal/ListenableFuture;Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;Lcom/heyzap/internal/SettableFuture;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5;->this$0:Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    iput-object p3, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    iput-object p4, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5;->val$tag:Ljava/lang/String;

    iput-object p5, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5;->val$fetchSuccessFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-direct {p0, p2}, Lcom/heyzap/internal/FutureUtils$FutureRunnable;-><init>(Lcom/heyzap/internal/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/heyzap/mediation/config/MediationConfig;Ljava/lang/Exception;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 126
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/heyzap/mediation/config/MediationConfig;->getFilterManager()Lcom/heyzap/mediation/filters/FilterManager;

    move-result-object v0

    new-instance v1, Lcom/heyzap/mediation/filters/FilterContext;

    iget-object v2, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    iget-object v3, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5;->val$tag:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/heyzap/mediation/filters/FilterContext;-><init>(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/filters/FilterManager;->accept(Lcom/heyzap/mediation/filters/FilterContext;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5;->val$fetchSuccessFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 149
    :cond_1
    return-void

    .line 130
    :cond_2
    invoke-virtual {p1}, Lcom/heyzap/mediation/config/MediationConfig;->getAdapterPool()Lcom/heyzap/mediation/adapter/AdapterPool;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/heyzap/mediation/adapter/AdapterPool;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 133
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 134
    invoke-virtual {v0}, Lcom/heyzap/mediation/adapter/AdapterPool;->getAll()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 135
    iget-object v4, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v4}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->awaitAvailability(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    .line 136
    new-instance v4, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5$1;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5$1;-><init>(Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5;Lcom/heyzap/internal/ListenableFuture;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    iget-object v5, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5;->this$0:Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    # getter for: Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->executorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v5}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->access$200(Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 123
    check-cast p1, Lcom/heyzap/mediation/config/MediationConfig;

    invoke-virtual {p0, p1, p2}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5;->run(Lcom/heyzap/mediation/config/MediationConfig;Ljava/lang/Exception;)V

    return-void
.end method
