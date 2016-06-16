.class Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;
.super Lcom/heyzap/internal/RetryManager$RetryableTask;
.source "ChartboostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;

    invoke-direct {p0}, Lcom/heyzap/internal/RetryManager$RetryableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 211
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$1700(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->start(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 212
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$1700(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    move-object v7, v0

    .line 213
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    # invokes: Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetch(Lcom/heyzap/internal/Constants$AdUnit;)V
    invoke-static {v1, v2}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$1800(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 215
    new-instance v8, Lcom/heyzap/internal/RetryManager;

    new-instance v9, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$1;

    invoke-direct {v9, p0, v7}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;)V

    new-instance v1, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    const-wide/16 v4, 0x4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v6}, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;-><init>(DJLjava/util/concurrent/TimeUnit;)V

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2000(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-direct {v8, v9, v1, v2}, Lcom/heyzap/internal/RetryManager;-><init>(Ljava/lang/Runnable;Lcom/heyzap/internal/RetryManager$Schedule;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-virtual {v8}, Lcom/heyzap/internal/RetryManager;->start()V

    .line 227
    iget-object v1, v7, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$2;

    invoke-direct {v2, p0, v7}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1$2;-><init>(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;)V

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;

    iget-object v3, v3, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v3}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2100(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 236
    return-void
.end method
