.class Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;
.super Lcom/heyzap/internal/RetryManager$RetryableTask;
.source "VungleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->attemptNextFetch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    invoke-direct {p0}, Lcom/heyzap/internal/RetryManager$RetryableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 152
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$400(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v1

    # getter for: Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;
    invoke-static {}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$300()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->start(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 153
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$400(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v1

    # getter for: Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;
    invoke-static {}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$300()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    move-object v7, v0

    .line 156
    new-instance v8, Lcom/heyzap/internal/RetryManager;

    new-instance v9, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2$1;

    invoke-direct {v9, p0, v7}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;)V

    new-instance v10, Lcom/heyzap/internal/RetryManager$DelayedSchedule;

    const/4 v11, 0x1

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v1, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    const-wide/16 v4, 0x4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v6}, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;-><init>(DJLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v10, v11, v12, v1}, Lcom/heyzap/internal/RetryManager$DelayedSchedule;-><init>(ILjava/util/concurrent/TimeUnit;Lcom/heyzap/internal/RetryManager$Schedule;)V

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$500(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-direct {v8, v9, v10, v1}, Lcom/heyzap/internal/RetryManager;-><init>(Ljava/lang/Runnable;Lcom/heyzap/internal/RetryManager$Schedule;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-virtual {v8}, Lcom/heyzap/internal/RetryManager;->start()V

    .line 173
    iget-object v1, v7, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2$2;

    invoke-direct {v2, p0, v7}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2$2;-><init>(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;)V

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v3}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$600(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 182
    return-void
.end method
