.class Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;
.super Lcom/heyzap/internal/RetryManager$RetryableTask;
.source "ApplovinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;

    invoke-direct {p0}, Lcom/heyzap/internal/RetryManager$RetryableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->access$300(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->start(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 141
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->fetch(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;->val$fetchResultFuture:Lcom/heyzap/internal/SettableFuture;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->access$400(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/heyzap/internal/FutureUtils;->bind(Lcom/heyzap/internal/SettableFuture;Lcom/heyzap/internal/SettableFuture;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 143
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;->val$fetchResultFuture:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1$1;

    invoke-direct {v1, p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;)V

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->access$600(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 156
    return-void
.end method
