.class Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;
.super Lcom/heyzap/internal/RetryManager$RetryableTask;
.source "UnityadsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1;

    invoke-direct {p0}, Lcom/heyzap/internal/RetryManager$RetryableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 103
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$100(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    # getter for: Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;
    invoke-static {}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$000()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->start(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 104
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$100(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    # getter for: Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;
    invoke-static {}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$000()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;

    .line 106
    iget-object v1, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$1;

    invoke-direct {v2, p0, v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;)V

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1;

    iget-object v3, v3, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v3}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$200(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 116
    new-instance v6, Lcom/heyzap/internal/RetryManager;

    new-instance v7, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$2;

    invoke-direct {v7, p0, v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1$2;-><init>(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;)V

    new-instance v0, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;

    const-wide/high16 v1, 0x3ff8000000000000L    # 1.5

    const-wide/16 v3, 0x4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v0 .. v5}, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;-><init>(DJLjava/util/concurrent/TimeUnit;)V

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$1;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$400(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-direct {v6, v7, v0, v1}, Lcom/heyzap/internal/RetryManager;-><init>(Ljava/lang/Runnable;Lcom/heyzap/internal/RetryManager$Schedule;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-virtual {v6}, Lcom/heyzap/internal/RetryManager;->start()V

    .line 127
    return-void
.end method
