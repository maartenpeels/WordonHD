.class Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1$1;
.super Lcom/heyzap/internal/RetryManager$RetryableTask;
.source "HeyzapAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1;

    invoke-direct {p0}, Lcom/heyzap/internal/RetryManager$RetryableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->start(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 81
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    .line 82
    const-string v1, "fetching"

    invoke-static {v1}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Object;)V

    .line 83
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;

    invoke-virtual {v1, v0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->fetch(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;)V

    .line 85
    iget-object v1, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1$1$1;

    invoke-direct {v2, p0, v0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1$1$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1$1;Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;)V

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->access$100(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 94
    return-void
.end method
